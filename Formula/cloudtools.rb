
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
    root_url "https://artifactory.jamf.build/artifactory/binaries/cloud-ops-tools/v0.8.3",
      using: ArtifactoryBottleDownloadStrategy
    sha256 cellar: :any, arm64_sonoma: "35133b016c1e15fdb91fe513eb3e110fe4203b70c3cffe359d260ab9f63535d6"
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
    depends_on "libxml2"
    depends_on "libxslt"
    depends_on "freetype"
    depends_on "openjpeg"

    
    resource "art" do
        url "https://files.pythonhosted.org/packages/d4/7d/7d80509bbd19fb747edef94ba487dbadd2747944774ccc0528ad0d005a36/art-6.5.tar.gz"
        sha256 "a98d77b42c278697ec6cf4b5bdcdfd997f6b2425332da078d4e31e31377d1844"
    end
    
    resource "atlassian-python-api" do
        url "https://files.pythonhosted.org/packages/40/e8/f23b7273e410c6fe9f98f9db25268c6736572f22a9566d1dc9ed3614bb68/atlassian_python_api-4.0.7.tar.gz"
        sha256 "8d9cc6068b1d2a48eb434e22e57f6bbd918a47fac9e46b95b7a3cefb00fceacb"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
        sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
    end
    
    resource "awxkit" do
        url "https://files.pythonhosted.org/packages/77/c6/81c16afefcb662e3d6aae070298d603a7783cb9744892e21ba4669123b37/awxkit-24.6.1.tar.gz"
        sha256 "015421c2c525c5c5dd13890624f453ac3fc7ca2bc3e301b82db871bc4b8da23c"
    end
    
    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/85/2e/3e5079847e653b1f6dc647aa24549d68c6addb4c595cc0d902d1b19308ad/beautifulsoup4-4.13.5.tar.gz"
        sha256 "5e70131382930e7c3de33450a2f54a63d5e4b19386eab43a5b34d594268f3695"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/d8/54/5ba3f69a892ff486f5925008da21618665cf321880f279e9605399d9cec3/boto3-1.40.21.tar.gz"
        sha256 "876ccc0b25517b992bd27976282510773a11ebc771aa5b836a238ea426c82187"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/50/11/d9a500a0e86b74017854e3ff12fd943f74f4358337799e0b272eaa6b4e27/botocore-1.40.21.tar.gz"
        sha256 "f77e9c199df0252b14ea739a9ac99723940f6bde90f4c2e7802701553a62827b"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/dc/67/960ebe6bf230a96cda2e0abcf73af550ec4f090005363542f0765df162e0/certifi-2025.8.3.tar.gz"
        sha256 "e564105f78ded564e3ae7c923924435e1daa7463faeab5bb932bc53ffae63407"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
        sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/83/2d/5fd176ceb9b2fc619e63405525573493ca23441330fcdaee6bef9460e924/charset_normalizer-3.4.3.tar.gz"
        sha256 "6fce4b8500244f6fcb71465d4a4930d132ba9ab8e71a7859e6a5d59851068d14"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/d6/0d/d13399c94234ee8f3df384819dc67e0c5ce215fb751d567a55a1f4b028c7/cryptography-45.0.6.tar.gz"
        sha256 "5c966c732cf6e4a276ce83b6e4c729edda2df6929083a952cc7da973c539c719"
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
    
    resource "et_xmlfile" do
        url "https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9055e934af8d6eb0c2313/et_xmlfile-2.0.0.tar.gz"
        sha256 "dab3f4764309081ce75662649be815c4c9081e88f0837825f90fd28317d4da54"
    end
    
    resource "humanize" do
        url "https://files.pythonhosted.org/packages/98/1d/3062fcc89ee05a715c0b9bfe6490c00c576314f27ffee3a704122c6fd259/humanize-4.13.0.tar.gz"
        sha256 "78f79e68f76f0b04d711c4e55d32bebef5be387148862cb1ef83d2b58e7935a0"
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
        url "https://files.pythonhosted.org/packages/f7/ed/1aa2d585304ec07262e1a83a9889880701079dde796ac7b1d1826f40c63d/jaraco_functools-4.3.0.tar.gz"
        sha256 "cfd13ad0dd2c47a3600b439ef72d8615d482cedcff1632930d6f28924d92f294"
    end
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/65/73/ee4daa7cf4eea457180de0ea78b730b44bb5ad2829dae49cf708a1460819/jira-3.10.5.tar.gz"
        sha256 "2d09ae3bf4741a2787dd889dfea5926a5d509aac3b28ab3b98c098709e6ee72d"
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
        url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
        sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
    end
    
    resource "mdurl" do
        url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
        sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    end
    
    resource "more-itertools" do
        url "https://files.pythonhosted.org/packages/ce/a0/834b0cebabbfc7e311f30b46c8188790a37f89fc8d756660346fe5abfd09/more_itertools-10.7.0.tar.gz"
        sha256 "9fddd5403be01a94b204faadcff459ec3568cf110265d3c54323e1e866ad29d3"
    end
    
    resource "msal" do
        url "https://files.pythonhosted.org/packages/d5/da/81acbe0c1fd7e9e4ec35f55dadeba9833a847b9a6ba2e2d1e4432da901dd/msal-1.33.0.tar.gz"
        sha256 "836ad80faa3e25a7d71015c990ce61f704a87328b1e73bcbb0623a18cbf17510"
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
        url "https://files.pythonhosted.org/packages/23/7c/009c12b86c7cc6c403aec80f8a4308598dfc5995e5c523a5491faaa3952e/pendulum-3.1.0.tar.gz"
        sha256 "66f96303560f41d097bee7d2dc98ffca716fbb3a832c4b3062034c2d45865015"
    end
    
    resource "pfzy" do
        url "https://files.pythonhosted.org/packages/d9/5a/32b50c077c86bfccc7bed4881c5a2b823518f5450a30e639db5d3711952e/pfzy-0.3.4.tar.gz"
        sha256 "717ea765dd10b63618e7298b2d98efd819e0b30cd5905c9707223dceeb94b3f1"
    end
    
    resource "platformdirs" do
        url "https://files.pythonhosted.org/packages/23/e8/21db9c9987b0e728855bd57bff6984f67952bea55d6f75e055c46b5383e8/platformdirs-4.4.0.tar.gz"
        sha256 "ca753cf4d81dc309bc67b0ea38fd15dc97bc30ce419a7f58d13eb3bf14c4febf"
    end
    
    resource "ply" do
        url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
        sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
    end
    
    resource "prompt_toolkit" do
        url "https://files.pythonhosted.org/packages/a1/96/06e01a7b38dce6fe1db213e061a4602dd6032a8a97ef6c1a862537732421/prompt_toolkit-3.0.52.tar.gz"
        sha256 "28cde192929c8e7321de85de1ddbe736f1375148b02f2e17edd840042b1be855"
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
        url "https://files.pythonhosted.org/packages/f8/bf/abbd3cdfb8fbc7fb3d4d38d320f2441b1e7cbe29be4f23797b4a2b5d8aac/pytz-2025.2.tar.gz"
        sha256 "360b9e3dbb49a209c21ad61809c7fb453643e048b38924c765813546746e81c3"
    end
    
    resource "PyYAML" do
        url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
        sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
    end
    
    resource "requests" do
        url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
        sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
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
        url "https://files.pythonhosted.org/packages/fe/75/af448d8e52bf1d8fa6a9d089ca6c07ff4453d86c65c145d0a300bb073b9b/rich-14.1.0.tar.gz"
        sha256 "e497a48b844b0320d45007cdebfeaeed8db2a4f4bcf49f15e455cfc4af11eaa8"
    end
    
    resource "s3transfer" do
        url "https://files.pythonhosted.org/packages/6d/05/d52bf1e65044b4e5e27d4e63e8d1579dbdec54fce685908ae09bc3720030/s3transfer-0.13.1.tar.gz"
        sha256 "c3fdba22ba1bd367922f27ec8032d6a1cf5f10c934fb5d68cf60fd5a23d936cf"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/18/5d/3bf57dcd21979b887f014ea83c24ae194cfcd12b9e0fda66b957c69d1fca/setuptools-80.9.0.tar.gz"
        sha256 "f36b47402ecde768dbfafc46e8e4207b4360c654f1f3bb84475f0a28628fb19c"
    end
    
    resource "simple-salesforce" do
        url "https://files.pythonhosted.org/packages/65/3f/45d257baacb8ab9e31906d5252541c151e062cedbf2152df7cef5960342d/simple_salesforce-1.12.9.tar.gz"
        sha256 "86d63c43cf6581847284f2538fd8b17aaea0727c63a947267759f7f242a4ef8e"
    end
    
    resource "six" do
        url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
        sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/73/1e/bbf7fdd00306f097ddb839c23628b7e271128cc8f584b9cae8f704b3924e/slack_sdk-3.36.0.tar.gz"
        sha256 "8586022bdbdf9f8f8d32f394540436c53b1e7c8da9d21e1eab4560ba70cfcffa"
    end
    
    resource "soupsieve" do
        url "https://files.pythonhosted.org/packages/6d/e6/21ccce3262dd4889aa3332e5a119a3491a95e8f60939870a3a035aabac0d/soupsieve-2.8.tar.gz"
        sha256 "e2dd4a40a628cb5f28f6d4b0db8800b8f581b65bb380b97de22ba5ca8d72572f"
    end
    
    resource "splunk-sdk" do
        url "https://files.pythonhosted.org/packages/16/c8/c54008fdb14c081fa4c60ed363b3dff9a2104ee77eb1717d717767486493/splunk-sdk-2.1.1.tar.gz"
        sha256 "46300d52f09e0aed7e5962ce2ba08ef54421ffb3a538c6af6164dcbf9f075faa"
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
    
    resource "typing_extensions" do
        url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
        sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
    end
    
    resource "tzdata" do
        url "https://files.pythonhosted.org/packages/95/32/1a225d6164441be760d75c2c42e2780dc0873fe382da3e98a2e1e48361e5/tzdata-2025.2.tar.gz"
        sha256 "b60a638fcc0daffadf82fe0f57e53d06bdec2f36c4df66280ae79bce6bd6f2b9"
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
        url "https://files.pythonhosted.org/packages/95/8f/aeb76c5b46e273670962298c23e7ddde79916cb74db802131d49a85e4b7d/wrapt-1.17.3.tar.gz"
        sha256 "f66eb08feaa410fe4eebd17f2a2c8e2e46d3476e9f8c783daa8e09e0faa666d0"
    end
    
    resource "yaspin" do
        url "https://files.pythonhosted.org/packages/07/3c/70df5034e6712fcc238b76f6afd1871de143a2a124d80ae2c377cde180f3/yaspin-3.1.0.tar.gz"
        sha256 "7b97c7e257ec598f98cef9878e038bfa619ceb54ac31d61d8ead2b3128f8d7c7"
    end
    
    resource "zeep" do
        url "https://files.pythonhosted.org/packages/09/35/4a91181499a1e098cb01e04a26a053714adf2fb1c25b40fdc5f46cfe2e4f/zeep-4.3.1.tar.gz"
        sha256 "f45385e9e1b09d5550e0f51ab9fa7c6842713cab7194139372fd82a99c56a06e"
    end
    

    def python3
        "python3.12"
    end
  
    def install
        # Set environment variables for lxml to find libxml2 and libxslt
        ENV.append "CFLAGS", "-I#{Formula["libxml2"].opt_include}/libxml2"
        ENV.append "CFLAGS", "-I#{Formula["libxslt"].opt_include}"
        ENV.append "LDFLAGS", "-L#{Formula["libxml2"].opt_lib}"
        ENV.append "LDFLAGS", "-L#{Formula["libxslt"].opt_lib}"
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