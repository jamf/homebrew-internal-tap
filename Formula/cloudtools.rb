
require 'json'
require 'formula'
require_relative 'lib/private'
require_relative 'lib/artifactory'
require_relative 'lib/bottle'

class Cloudtools < Formula
    include Language::Python::Virtualenv
    desc "Cloud Operations Tools Homebrew Dev"
    homepage "https://github.com/jamf/cloud-ops-tools"

  bottle do
    root_url "https://artifactory.jamf.build/artifactory/binaries/cloud-ops-tools/v0.6.8",
      using: ArtifactoryBottleDownloadStrategy
    sha256 cellar: :any, arm64_sonoma: "af227b693aaa3e208c011dbfd4206ac9533e2ecbce2e048bbe05361c70f00f82"
  end

    release = JSON.parse(File.open(File.expand_path('../../cloud/release.json', __FILE__)).read)
    version release['version']
    license "MIT"

    if File.exist?("/tmp/cloudtools-#{version}.tar.gz")
        url "file:///tmp/cloudtools-#{version}.tar.gz"
    else
        url "https://github.com/jamf/cloud-ops-tools/releases/download/#{version}/cloudtools-#{version}.tar.gz", :using => DownloadFactory
    end
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
        url "https://files.pythonhosted.org/packages/b3/41/5a38f64380c9b101bc2da14b7e54f500a30b3cdb2c512e568715fca2c723/atlassian_python_api-4.0.4.tar.gz"
        sha256 "351e378cf489f31c3fbf9e71670fa7ee2a7b68c20d616665d4e8bca17a3d2983"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
        sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
    end
    
    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/d8/e4/0c4c39e18fd76d6a628d4dd8da40543d136ce2d1752bd6eeeab0791f4d6b/beautifulsoup4-4.13.4.tar.gz"
        sha256 "dbb3c4e1ceae6aefebdaf2423247260cd062430a410e38c66f2baa50a8437195"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/08/65/9bb28b0297a1cefd912fb6974a4231d581fb3188707526e7601c3ccdf6dd/boto3-1.37.10.tar.gz"
        sha256 "0c6eb8191b1ea4c7a139e56425399405d46e86c7e814ef497176b9af1f7ca056"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/6d/16/c782d8bb598da5e123cf6208bbe6527b5c391c81ae73f9fa7371a6f1820f/botocore-1.37.10.tar.gz"
        sha256 "ab311982a9872eeb4e71906d3e3fcd2ba331a869d0fed16836ade7ce2e58bcea"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/b3/76/52c535bcebe74590f296d6c77c86dabf761c41980e1347a2422e4aa2ae41/certifi-2025.7.14.tar.gz"
        sha256 "8ea99dbdfaaf2ba2f9bac77b9249ef62ec5218e7c2b2e903378ed5fccf765995"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
        sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/e4/33/89c2ced2b67d1c2a61c19c6751aa8902d46ce3dacb23600a283619f5a12d/charset_normalizer-3.4.2.tar.gz"
        sha256 "5baececa9ecba31eff645232d59845c07aa030f0c81ee70184a90d35099a0e63"
    end
    
    resource "configparser" do
        url "https://files.pythonhosted.org/packages/8b/ac/ea19242153b5e8be412a726a70e82c7b5c1537c83f61b20995b2eda3dcd7/configparser-7.2.0.tar.gz"
        sha256 "b629cc8ae916e3afbd36d1b3d093f34193d851e11998920fdcfc4552218b7b70"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/cd/25/4ce80c78963834b8a9fd1cc1266be5ed8d1840785c0f2e1b73b8d128d505/cryptography-44.0.2.tar.gz"
        sha256 "c63454aa261a0cf0c5b4718349629793e9e634993538db841165b3df74f37ec0"
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
    
    resource "humanize" do
        url "https://files.pythonhosted.org/packages/22/d1/bbc4d251187a43f69844f7fd8941426549bbe4723e8ff0a7441796b0789f/humanize-4.12.3.tar.gz"
        sha256 "8430be3a615106fdfceb0b2c1b41c4c98c6b0fc5cc59663a5539b111dd325fb0"
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
    
    resource "msal" do
        url "https://files.pythonhosted.org/packages/3f/f3/cdf2681e83a73c3355883c2884b6ff2f2d2aadfc399c28e9ac4edc3994fd/msal-1.31.1.tar.gz"
        sha256 "11b5e6a3f802ffd3a72107203e20c4eac6ef53401961b880af2835b723d80578"
    end
    
    resource "oauthlib" do
        url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
        sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
    end
    
    resource "openpyxl" do
        url "https://files.pythonhosted.org/packages/3d/f9/88d94a75de065ea32619465d2f77b29a0469500e99012523b91cc4141cd1/openpyxl-3.1.5.tar.gz"
        sha256 "cf0e3cf56142039133628b5acffe8ef0c12bc902d2aadd3e0fe5878dc08d1050"
    end
    
    resource "packaging" do
        url "https://files.pythonhosted.org/packages/a1/d4/1fc4078c65507b51b96ca8f8c3ba19e6a61c8253c72794544580a7b6c24d/packaging-25.0.tar.gz"
        sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
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
        url "https://files.pythonhosted.org/packages/38/95/78080e58efbdde46cda8d4498737bf9687839ed4a9744b068cc730a073ed/prettytable-3.15.1.tar.gz"
        sha256 "f0edb38060cb9161b2417939bfd5cd9877da73388fb19d1e8bf7987e8558896e"
    end
    
    resource "prompt_toolkit" do
        url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.50.tar.gz"
        sha256 "544748f3860a2623ca5cd6d2795e7a14f3d0e1c3c9728359013f79877fc89bab"
    end
    
    resource "psutil" do
        url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
        sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
    end
    
    resource "pycparser" do
        url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
        sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
    end
    
    resource "Pygments" do
        url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
        sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
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
        url "https://files.pythonhosted.org/packages/e1/0a/929373653770d8a0d7ea76c37de6e41f11eb07559b103b1c02cafb3f7cf8/requests-2.32.4.tar.gz"
        sha256 "27d0316682c8a29834d3264820024b62a36942083d52caf2f14c0591336d3422"
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
        url "https://files.pythonhosted.org/packages/0f/ec/aa1a215e5c126fe5decbee2e107468f51d9ce190b9763cb649f76bb45938/s3transfer-0.11.4.tar.gz"
        sha256 "559f161658e1cf0a911f45940552c696735f5c74e64362e515f333ebed87d679"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/18/5d/3bf57dcd21979b887f014ea83c24ae194cfcd12b9e0fda66b957c69d1fca/setuptools-80.9.0.tar.gz"
        sha256 "f36b47402ecde768dbfafc46e8e4207b4360c654f1f3bb84475f0a28628fb19c"
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
        url "https://files.pythonhosted.org/packages/3f/f4/4a80cd6ef364b2e8b65b15816a843c0980f7a5a2b4dc701fc574952aa19f/soupsieve-2.7.tar.gz"
        sha256 "ad282f9b6926286d2ead4750552c8a6142bc4c783fd66b0293547c8fe6ae126a"
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
    
    resource "tqdm" do
        url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
        sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
    end
    
    resource "typing" do
        url "https://files.pythonhosted.org/packages/05/d9/6eebe19d46bd05360c9a9aae822e67a80f9242aabbfc58b641b957546607/typing-3.7.4.3.tar.gz"
        sha256 "1187fb9c82fd670d10aa07bbb6cfcfe4bdda42d6fab8d5134f04e8c4d0b71cc9"
    end
    
    resource "typing_extensions" do
        url "https://files.pythonhosted.org/packages/98/5a/da40306b885cc8c09109dc2e1abd358d5684b1425678151cdaed4731c822/typing_extensions-4.14.1.tar.gz"
        sha256 "38b39f4aeeab64884ce9f74c94263ef78f3c22467c8724005483154c26648d36"
    end
    
    resource "tzdata" do
        url "https://files.pythonhosted.org/packages/43/0f/fa4723f22942480be4ca9527bbde8d43f6c3f2fe8412f00e7f5f6746bc8b/tzdata-2025.1.tar.gz"
        sha256 "24894909e88cdb28bd1636c6887801df64cb485bd593f2fd83ef29075a81d694"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
        sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
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

        #install bash script
        bin.install "src/scripts/update_jamf_os_aliases"

        #install other executables
        #bin.install "path/to/executable"
    end
  
    test do
    end
  end