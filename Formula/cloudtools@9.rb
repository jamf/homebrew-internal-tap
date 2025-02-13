
require 'json'
require 'formula'
require_relative 'lib/private'
require_relative 'lib/artifactory'

class CloudtoolsAT9 < Formula
    include Language::Python::Virtualenv
    desc "Cloud Operations Tools Homebrew Dev"
    homepage "https://github.com/jamf/cloud-ops-tools"

    release = JSON.parse(File.open(File.expand_path('../../cloud/release-dev.json', __FILE__)).read)
    version release['version']
    license "MIT"

    url "https://github.com/jamf/cloud-ops-tools/releases/download/#{version}/cloudtools-#{version}.tar.gz", :using => DownloadFactory
    sha256 release['sha256']
    
    depends_on "python@3.12"
    depends_on "pkg-config"
    depends_on "rust"
    depends_on "certifi"
    depends_on "cryptography"
    depends_on "mozjpeg"
    depends_on "cmake"
    depends_on "libxml2"
    depends_on "libxslt"
    depends_on "freetype"
    depends_on "openjpeg"

    
    resource "art" do
        url "https://files.pythonhosted.org/packages/ee/6e/dc8dc5c2d99a171cb97a02b817c2dd8db3b33c53bdb29852ba2802676fd1/art-6.4.tar.gz"
        sha256 "417fea674bff8cea7ed058291ad1b81a6032dfce5152f28e629fa4a798a2c14c"
    end
    
    resource "atlassian-python-api" do
        url "https://files.pythonhosted.org/packages/f8/10/e1ccfe7a9cc091056a4eadc9a55849505b1249312b9cd448925ed489450f/atlassian_python_api-3.41.19.tar.gz"
        sha256 "694a81ed082a4ca8f4fa7a197d60ee2b3f34a45664a74bdfeb835c4d7ff0e305"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/49/7c/fdf464bcc51d23881d110abd74b512a42b3d5d376a55a831b44c603ae17f/attrs-25.1.0.tar.gz"
        sha256 "1c97078a80c814273a76b2a298a932eb681c87415c11dee0a6921de7f1b02c3e"
    end
    
    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/f0/3c/adaf39ce1fb4afdd21b611e3d530b183bb7759c9b673d60db0e347fd4439/beautifulsoup4-4.13.3.tar.gz"
        sha256 "1bd32405dacc920b42b83ba01644747ed77456a65760e285fbc47633ceddaf8b"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/77/2a/d0cd75ce8ab6cb475b2dd7b087e81ead98a42f4566f063a614960a339da3/boto3-1.36.19.tar.gz"
        sha256 "8c2c2a4ccdfe35dd2611ee1b7473dd2383948415c777e42dc4e7f1ebe371fe8c"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/75/6f/d708853ddb391a05b5288b107e9113fcfb7fdd23521b939470c4857b8177/botocore-1.36.19.tar.gz"
        sha256 "cdf6729f601f82b1acdb9004b1f88b57cfb470f576394cdb3bbf5150f7fafb5b"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
        sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
        sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
        sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
    end
    
    resource "configparser" do
        url "https://files.pythonhosted.org/packages/a5/2e/a8d83652990ecb5df54680baa0c53d182051d9e164a25baa0582363841d1/configparser-7.1.0.tar.gz"
        sha256 "eb82646c892dbdf773dae19c633044d163c3129971ae09b49410a303b8e0a5f7"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/c7/67/545c79fe50f7af51dbad56d16b23fe33f63ee6a5d956b3cb68ea110cbe64/cryptography-44.0.1.tar.gz"
        sha256 "f51f5705ab27898afda1aaa430f34ad90dc117421057782022edf0600bec5f14"
    end
    
    resource "DateTime" do
        url "https://files.pythonhosted.org/packages/2f/66/e284b9978fede35185e5d18fb3ae855b8f573d8c90a56de5f6d03e8ef99e/DateTime-5.5.tar.gz"
        sha256 "21ec6331f87a7fcb57bd7c59e8a68bfffe6fcbf5acdbbc7b356d6a9a020191d3"
    end
    
    resource "defusedxml" do
        url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
        sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
    end
    
    resource "Deprecated" do
        url "https://files.pythonhosted.org/packages/98/97/06afe62762c9a8a86af0cfb7bfdab22a43ad17138b07af5b1a58442690a2/deprecated-1.2.18.tar.gz"
        sha256 "422b6f6d859da6f2ef57857761bfb392480502a64c3028ca9bbe86085d72115d"
    end
    
    resource "deprecation" do
        url "https://files.pythonhosted.org/packages/5a/d3/8ae2869247df154b64c1884d7346d412fed0c49df84db635aab2d1c40e62/deprecation-2.1.0.tar.gz"
        sha256 "72b3bde64e5d778694b0cf68178aed03d15e15477116add3fb773e581f9518ff"
    end
    
    resource "dropbox" do
        url "https://files.pythonhosted.org/packages/9e/56/ac085f58e8e0d0bcafdf98c2605e454ac946e3d0c72679669ae112dc30be/dropbox-12.0.2.tar.gz"
        sha256 "50057fd5ad5fcf047f542dfc6747a896e7ef982f1b5f8500daf51f3abd609962"
    end
    
    resource "et_xmlfile" do
        url "https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9055e934af8d6eb0c2313/et_xmlfile-2.0.0.tar.gz"
        sha256 "dab3f4764309081ce75662649be815c4c9081e88f0837825f90fd28317d4da54"
    end
    
    resource "idna" do
        url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
        sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
    end
    
    resource "inquirerpy" do
        url "https://files.pythonhosted.org/packages/64/73/7570847b9da026e07053da3bbe2ac7ea6cde6bb2cbd3c7a5a950fa0ae40b/InquirerPy-0.3.4.tar.gz"
        sha256 "89d2ada0111f337483cb41ae31073108b2ec1e618a49d7110b0d7ade89fc197e"
    end
    
    resource "isodate" do
        url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
        sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
    end
    
    resource "jaraco.classes" do
        url "https://files.pythonhosted.org/packages/06/c0/ed4a27bc5571b99e3cff68f8a9fa5b56ff7df1c2251cc715a652ddd26402/jaraco.classes-3.4.0.tar.gz"
        sha256 "47a024b51d0239c0dd8c8540c6c7f484be3b8fcf0b2d85c13825780d3b3f3acd"
    end
    
    resource "jaraco.context" do
        url "https://files.pythonhosted.org/packages/df/ad/f3777b81bf0b6e7bc7514a1656d3e637b2e8e15fab2ce3235730b3e7a4e6/jaraco_context-6.0.1.tar.gz"
        sha256 "9bae4ea555cf0b14938dc0aee7c9f32ed303aa20a3b73e7dc80111628792d1b3"
    end
    
    resource "jaraco.functools" do
        url "https://files.pythonhosted.org/packages/ab/23/9894b3df5d0a6eb44611c36aec777823fc2e07740dabbd0b810e19594013/jaraco_functools-4.1.0.tar.gz"
        sha256 "70f7e0e2ae076498e212562325e805204fc092d7b4c17e0e86c959e249701a9d"
    end
    
    resource "jeepney" do
        url "https://files.pythonhosted.org/packages/d6/f4/154cf374c2daf2020e05c3c6a03c91348d59b23c5366e968feb198306fdf/jeepney-0.8.0.tar.gz"
        sha256 "5efe48d255973902f6badc3ce55e2aa6c5c3b3bc642059ef3a91247bcfcc5806"
    end
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/78/b4/557e4c80c0ea12164ffeec0e29372c085bfb263faad53cef5e1455523bec/jira-3.8.0.tar.gz"
        sha256 "63719c529a570aaa01c3373dbb5a104dab70381c5be447f6c27f997302fa335a"
    end
    
    resource "jmespath" do
        url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
        sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end
    
    resource "keyring" do
        url "https://files.pythonhosted.org/packages/70/09/d904a6e96f76ff214be59e7aa6ef7190008f52a0ab6689760a98de0bf37d/keyring-25.6.0.tar.gz"
        sha256 "0b39998aa941431eb3d9b0d4b2460bc773b9df6fed7621c2dfb291a7e0187a66"
    end
    
    resource "lxml" do
        url "https://files.pythonhosted.org/packages/ef/f6/c15ca8e5646e937c148e147244817672cf920b56ac0bf2cc1512ae674be8/lxml-5.3.1.tar.gz"
        sha256 "106b7b5d2977b339f1e97efe2778e2ab20e99994cbb0ec5e55771ed0795920c8"
    end
    
    resource "markdown-it-py" do
        url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
        sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
    end
    
    resource "mdurl" do
        url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
        sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    end
    
    resource "more-itertools" do
        url "https://files.pythonhosted.org/packages/88/3b/7fa1fe835e2e93fd6d7b52b2f95ae810cf5ba133e1845f726f5a992d62c2/more-itertools-10.6.0.tar.gz"
        sha256 "2cd7fad1009c31cc9fb6a035108509e6547547a7a738374f10bd49a09eb3ee3b"
    end
    
    resource "oauthlib" do
        url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
        sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
    end
    
    resource "openpyxl" do
        url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
        sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
    end
    
    resource "packaging" do
        url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
        sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
    end
    
    resource "pendulum" do
        url "https://files.pythonhosted.org/packages/b8/fe/27c7438c6ac8b8f8bef3c6e571855602ee784b85d072efddfff0ceb1cd77/pendulum-3.0.0.tar.gz"
        sha256 "5d034998dea404ec31fae27af6b22cff1708f830a1ed7353be4d1019bb9f584e"
    end
    
    resource "pfzy" do
        url "https://files.pythonhosted.org/packages/d9/5a/32b50c077c86bfccc7bed4881c5a2b823518f5450a30e639db5d3711952e/pfzy-0.3.4.tar.gz"
        sha256 "717ea765dd10b63618e7298b2d98efd819e0b30cd5905c9707223dceeb94b3f1"
    end
    
    resource "pillow" do
        url "https://files.pythonhosted.org/packages/f3/af/c097e544e7bd278333db77933e535098c259609c4eb3b85381109602fb5b/pillow-11.1.0.tar.gz"
        sha256 "368da70808b36d73b4b390a8ffac11069f8a5c85f29eff1f1b01bcf3ef5b2a20"
    end
    
    resource "platformdirs" do
        url "https://files.pythonhosted.org/packages/13/fc/128cc9cb8f03208bdbf93d3aa862e16d376844a14f9a0ce5cf4507372de4/platformdirs-4.3.6.tar.gz"
        sha256 "357fb2acbc885b0419afd3ce3ed34564c13c9b95c89360cd9563f73aa5e2b907"
    end
    
    resource "ply" do
        url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
        sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
    end
    
    resource "prettytable" do
        url "https://files.pythonhosted.org/packages/02/7b/18bb59d7c3a4ac9ac7d986cfe49dd3c2e5f5ae3e65ca3db8816764e0c1df/prettytable-3.14.0.tar.gz"
        sha256 "b804b8d51db23959b96b329094debdbbdf10c8c3aa75958c5988cfd7f78501dd"
    end
    
    resource "prompt_toolkit" do
        url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.50.tar.gz"
        sha256 "544748f3860a2623ca5cd6d2795e7a14f3d0e1c3c9728359013f79877fc89bab"
    end
    
    resource "psutil" do
        url "https://files.pythonhosted.org/packages/1f/5a/07871137bb752428aa4b659f910b399ba6f291156bdea939be3e96cae7cb/psutil-6.1.1.tar.gz"
        sha256 "cf8496728c18f2d0b45198f06895be52f36611711746b7f30c464b422b50e2f5"
    end
    
    resource "pycparser" do
        url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
        sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
    end
    
    resource "Pygments" do
        url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
        sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
    end
    
    resource "PyJWT" do
        url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
        sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
    end
    
    resource "pyperclip" do
        url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
        sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
    end
    
    resource "python-dateutil" do
        url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
        sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
    end
    
    resource "pytz" do
        url "https://files.pythonhosted.org/packages/5f/57/df1c9157c8d5a05117e455d66fd7cf6dbc46974f832b1058ed4856785d8a/pytz-2025.1.tar.gz"
        sha256 "c2db42be2a2518b28e65f9207c4d05e6ff547d1efa4086469ef855e4ab70178e"
    end
    
    resource "requests" do
        url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
        sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
    end
    
    resource "requests-aws-sign" do
        url "https://files.pythonhosted.org/packages/e8/14/27d8eed7ef7870525ed9888eaa273d6c564562367a1678a85496d6b4ccf2/requests_aws_sign-0.1.6.tar.gz"
        sha256 "17b2d21f7677df638cbe22d531bda59f7dbe36493f0fe0b8f5c19b36780b8111"
    end
    
    resource "requests-file" do
        url "https://files.pythonhosted.org/packages/72/97/bf44e6c6bd8ddbb99943baf7ba8b1a8485bcd2fe0e55e5708d7fee4ff1ae/requests_file-2.1.0.tar.gz"
        sha256 "0f549a3f3b0699415ac04d167e9cb39bccfb730cb832b4d20be3d9867356e658"
    end
    
    resource "requests-oauthlib" do
        url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
        sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
    end
    
    resource "requests-toolbelt" do
        url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
        sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
    end
    
    resource "rich" do
        url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
        sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
    end
    
    resource "s3transfer" do
        url "https://files.pythonhosted.org/packages/62/45/2323b5928f86fd29f9afdcef4659f68fa73eaa5356912b774227f5cf46b5/s3transfer-0.11.2.tar.gz"
        sha256 "3b39185cb72f5acc77db1a58b6e25b977f28d20496b6e58d6813d75f464d632f"
    end
    
    resource "SecretStorage" do
        url "https://files.pythonhosted.org/packages/53/a4/f48c9d79cb507ed1373477dbceaba7401fd8a23af63b837fa61f1dcd3691/SecretStorage-3.3.3.tar.gz"
        sha256 "2403533ef369eca6d2ba81718576c5e0f564d5cca1b58f73a8b23e7d4eeebd77"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/92/ec/089608b791d210aec4e7f97488e67ab0d33add3efccb83a056cbafe3a2a6/setuptools-75.8.0.tar.gz"
        sha256 "c5afc8f407c626b8313a86e10311dd3f661c6cd9c09d4bf8c15c0e11f9f2b0e6"
    end
    
    resource "simple-salesforce" do
        url "https://files.pythonhosted.org/packages/13/a7/22d3992b8413cb775191a2f7af8b193cdaa9d244bf1613a2affeb26bc9f3/simple-salesforce-1.12.6.tar.gz"
        sha256 "77590606c781905f6b75430562951dd2b062438da7f55fca2b61e4cde31df15b"
    end
    
    resource "six" do
        url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
        sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/6e/ff/6eb67fd5bd179fa804dbd859d88d872d3ae343955e63a319a73a132d406f/slack_sdk-3.34.0.tar.gz"
        sha256 "ff61db7012160eed742285ea91f11c72b7a38a6500a7f6c5335662b4bc6b853d"
    end
    
    resource "soupsieve" do
        url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
        sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
    end
    
    resource "splunk-sdk" do
        url "https://files.pythonhosted.org/packages/2c/89/31974e00319b750a5a126717d286e8addb683554454fed1ae6c86977cbcf/splunk-sdk-2.1.0.tar.gz"
        sha256 "63f9a259a7c84d0c3b0b32cae652365b03f0f926acdb894b51456005df74ae21"
    end
    
    resource "sqlparse" do
        url "https://files.pythonhosted.org/packages/e5/40/edede8dd6977b0d3da179a342c198ed100dd2aba4be081861ee5911e4da4/sqlparse-0.5.3.tar.gz"
        sha256 "09f67787f56a0b16ecdbde1bfc7f5d9c3371ca683cfeaa8e6ff60b4807ec9272"
    end
    
    resource "stone" do
        url "https://files.pythonhosted.org/packages/61/4f/b5a9138e86b13e00e2439c62fb4d045d595e0e260454977741f62448c624/stone-3.2.1.tar.gz"
        sha256 "9bc78b40143b4ef33bf569e515408c2996ffebefbb1a897616ebe8aa6f2d7e75"
    end
    
    resource "tabulate" do
        url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
        sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
    end
    
    resource "termcolor" do
        url "https://files.pythonhosted.org/packages/b8/85/147a0529b4e80b6b9d021ca8db3a820fcac53ec7374b87073d004aaf444c/termcolor-2.3.0.tar.gz"
        sha256 "b5b08f68937f138fe92f6c089b99f1e2da0ae56c52b78bf7075fd95420fd9a5a"
    end
    
    resource "time-machine" do
        url "https://files.pythonhosted.org/packages/fb/dd/5022939b9cadefe3af04f4012186c29b8afbe858b1ec2cfa38baeec94dab/time_machine-2.16.0.tar.gz"
        sha256 "4a99acc273d2f98add23a89b94d4dd9e14969c01214c8514bfa78e4e9364c7e2"
    end
    
    resource "tqdm" do
        url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
        sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
    end
    
    resource "typing" do
        url "https://files.pythonhosted.org/packages/05/d9/6eebe19d46bd05360c9a9aae822e67a80f9242aabbfc58b641b957546607/typing-3.7.4.3.tar.gz"
        sha256 "1187fb9c82fd670d10aa07bbb6cfcfe4bdda42d6fab8d5134f04e8c4d0b71cc9"
    end
    
    resource "typing_extensions" do
        url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
        sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
    end
    
    resource "tzdata" do
        url "https://files.pythonhosted.org/packages/43/0f/fa4723f22942480be4ca9527bbde8d43f6c3f2fe8412f00e7f5f6746bc8b/tzdata-2025.1.tar.gz"
        sha256 "24894909e88cdb28bd1636c6887801df64cb485bd593f2fd83ef29075a81d694"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
        sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
    end
    
    resource "wcwidth" do
        url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
        sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
    end
    
    resource "wrapt" do
        url "https://files.pythonhosted.org/packages/c3/fc/e91cc220803d7bc4db93fb02facd8461c37364151b8494762cc88b0fbcef/wrapt-1.17.2.tar.gz"
        sha256 "41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3"
    end
    
    resource "yaspin" do
        url "https://files.pythonhosted.org/packages/07/3c/70df5034e6712fcc238b76f6afd1871de143a2a124d80ae2c377cde180f3/yaspin-3.1.0.tar.gz"
        sha256 "7b97c7e257ec598f98cef9878e038bfa619ceb54ac31d61d8ead2b3128f8d7c7"
    end
    
    resource "zeep" do
        url "https://files.pythonhosted.org/packages/09/35/4a91181499a1e098cb01e04a26a053714adf2fb1c25b40fdc5f46cfe2e4f/zeep-4.3.1.tar.gz"
        sha256 "f45385e9e1b09d5550e0f51ab9fa7c6842713cab7194139372fd82a99c56a06e"
    end
    
    resource "zope.interface" do
        url "https://files.pythonhosted.org/packages/30/93/9210e7606be57a2dfc6277ac97dcc864fd8d39f142ca194fdc186d596fda/zope.interface-7.2.tar.gz"
        sha256 "8b49f1a3d1ee4cdaf5b32d2e738362c7f5e40ac8b46dd7d1a65e82a4872728fe"
    end
    

    def python3
        "python3.12"
    end
  
    def install
        venv = virtualenv_create(libexec, python3)
        venv.pip_install resources
        venv.pip_install_and_link buildpath
    end
  
    test do
    end
  end