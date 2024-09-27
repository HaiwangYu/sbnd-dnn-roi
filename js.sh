cfg1=/exp/sbnd/app/users/yuhw/dnn-roi/moon/wire-cell-toolkit/cfg/
cfg=/exp/sbnd/app/users/yuhw/wire-cell-toolkit/cfg

name=$2
name=${name%.*}

if [[ $1 == "json" || $1 == "all" ]]; then
jsonnet \
--ext-str epoch="perfect" \
--ext-str raw_input_label="daq" \
--ext-str signal_output_form="sparse" \
--ext-code nticks=3415 \
--ext-code use_dnnroi=true \
--ext-code nchunks=4 \
-J $cfg \
-J $cfg1 \
${name}.jsonnet \
-o ${name}.json
fi

if [[ $1 == "pdf" || $1 == "all" ]]; then
    wirecell-pgraph dotify --jpath -1 --no-services --no-params ${name}.json ${name}.pdf
    #wirecell-pgraph dotify --no-services --jpath -1 ${name}.json ${name}.pdf
fi
