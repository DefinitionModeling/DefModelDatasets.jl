module DefModelDatasets
using DataDeps

function __init__()
    register(DataDep(
        "Definition",
        """
        Dataset: WordNet
        Reference: https://arxiv.org/abs/1612.00394
        Source: https://github.com/northanapon/torch-defseq
        Website: https://github.com/DefinitionModeling/torch-defseq
        """,
        "https://github.com/DefinitionModeling/torch-defseq/archive/master.tar.gz",
        "94d4a4257038ef0c9865d7eb6564134629d115efaa80d01a19004d17f99eb038",
        post_fetch_method=(file -> unpack(file))
    ))

    register(DataDep(
        "Learning",
        """
        Datasets: Oxford, Urban Dictionary, Wikipedia, WordNet
        Reference: https://aclanthology.org/N19-1350/
        Source: https://github.com/shonosuke/ishiwatari-naacl2019
        Website: https://github.com/DefinitionModeling/ishiwatari-naacl2019
        """,
        "http://www.tkl.iis.u-tokyo.ac.jp/~ishiwatari/naacl_data.zip",
        "d8775ea04757c9281f13e9a45ef5234eec5f9eea91b5411ea0781a93e3a134b2",
        post_fetch_method=(file -> unpack(file))
    ))

    register(DataDep(
        "Evaluating",
        """
        Datasets: WordNet, Wiktionary, OmegaWiki
        Website: https://github.com/DefinitionModeling/Multi-sense-Multi-lingual-Definition-Modeling
        """,
        "https://github.com/DefinitionModeling/Multi-sense-Multi-lingual-Definition-Modeling/archive/master.tar.gz",
        "b95d1cd007eba7b4e734dc93692cab517a13ef86402dcb9bde9aefb76d041a98",
        post_fetch_method=(file -> unpack(file))
    ))

    register(DataDep(
        "Generationary",
        """
        Dataset: Hei++, SamplEval
        Reference: https://aclanthology.org/2020.emnlp-main.585/
        Source: https://sapienzanlp.github.io/generationary-web/
        """,
        "https://sapienzanlp.github.io/generationary-web/res/HEI++1.0_SamplEval.zip",
        "e5b1335d92bc9c4a3659d962147f72c547125dac7333b9266ffa07d9da24f450",
        post_fetch_method=(file -> unpack(file))
    ))
end

end