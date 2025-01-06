
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
    root_url "https://artifactory.jamf.build/artifactory/binaries/cloud-ops-tools/v0.3.3",
      using: ArtifactoryBottleDownloadStrategy
    sha256 cellar: :any, arm64_sonoma: "7f8e94e7e8bbc86c9a50f1cb7759e2f22f3d7c7ef1aa125050ce3dc65a59217a"
    sha256 cellar: :any, ventura:      "7bb4df65224850a7d5a68173ab6c52b0e86a2b038ca5bf4246dfc36f45d757da"
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
        url "https://files.pythonhosted.org/packages/f5/49/9d40caffc16ab712bef515afd19dc069d36c47c86ef54e22e73068cfcfea/art-6.3.tar.gz"
        sha256 "0fbc28864583ba54bcdc17ec24ef6c51a1fc81729a5c68d9b38658bc0afbc598"
    end
    
    resource "atlassian-python-api" do
        url "https://files.pythonhosted.org/packages/9a/04/15839ae4b60f8f15195a75bf512ab926374832affdbd83463da8edae2b62/atlassian_python_api-3.41.16.tar.gz"
        sha256 "dc0144ff8b8884562bb2af650586292524ad25f120cd21940df80f0d2ac64411"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/fc/0f/aafca9af9315aee06a89ffde799a10a582fe8de76c563ee80bbcdc08b3fb/attrs-24.2.0.tar.gz"
        sha256 "5cfb1b9148b5b086569baec03f20d7b6bf3bcacc9a42bebf87ffaaca362f6346"
    end
    
    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
        sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/69/68/632769113ba3679fe63601d871bce1b1b4cdebac04c05bb071c3187032b5/boto3-1.35.58.tar.gz"
        sha256 "1ee139e63f1545ee0192914cfe422b68360b8c344a94e4612ac657dd7ece93de"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/cd/d8/49a69f2aa71efcd9a278370171185160be3ac35f5e09ed303c08612c6336/botocore-1.35.58.tar.gz"
        sha256 "8303309c7b59ddf04b11d79813530809d6b10b411ac9f93916d2032c283d6881"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/b0/ee/9b19140fe824b367c04c5e1b369942dd754c4c5462d5674002f75c4dedc1/certifi-2024.8.30.tar.gz"
        sha256 "bec941d2aa8195e248a60b31ff9f0558284cf01a52591ceda73ea9afffd69fd9"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
        sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/f2/4f/e1808dc01273379acc506d18f1504eb2d299bd4131743b9fc54d7be4df1e/charset_normalizer-3.4.0.tar.gz"
        sha256 "223217c3d4f82c3ac5e29032b3f1c2eb0fb591b72161f86d93f5719079dae93e"
    end
    
    resource "configparser" do
        url "https://files.pythonhosted.org/packages/a5/2e/a8d83652990ecb5df54680baa0c53d182051d9e164a25baa0582363841d1/configparser-7.1.0.tar.gz"
        sha256 "eb82646c892dbdf773dae19c633044d163c3129971ae09b49410a303b8e0a5f7"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/0d/05/07b55d1fa21ac18c3a8c79f764e2514e6f6a9698f1be44994f5adf0d29db/cryptography-43.0.3.tar.gz"
        sha256 "315b9001266a492a6ff443b61238f956b214dbec9910a081ba5b6646a055a805"
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
        url "https://files.pythonhosted.org/packages/92/14/1e41f504a246fc224d2ac264c227975427a85caf37c3979979edb9b1b232/Deprecated-1.2.14.tar.gz"
        sha256 "e5323eb936458dccc2582dc6f9c322c852a775a27065ff2b0c4970b9d53d01b3"
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
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/78/b4/557e4c80c0ea12164ffeec0e29372c085bfb263faad53cef5e1455523bec/jira-3.8.0.tar.gz"
        sha256 "63719c529a570aaa01c3373dbb5a104dab70381c5be447f6c27f997302fa335a"
    end
    
    resource "jmespath" do
        url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
        sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end
    
    resource "keyring" do
        url "https://files.pythonhosted.org/packages/f6/24/64447b13df6a0e2797b586dad715766d756c932ce8ace7f67bd384d76ae0/keyring-25.5.0.tar.gz"
        sha256 "4c753b3ec91717fe713c4edd522d625889d8973a349b0e582622f49766de58e6"
    end
    
    resource "lxml" do
        url "https://files.pythonhosted.org/packages/e7/6b/20c3a4b24751377aaa6307eb230b66701024012c29dd374999cc92983269/lxml-5.3.0.tar.gz"
        sha256 "4e109ca30d1edec1ac60cdbe341905dc3b8f55b16855e03a54aaf59e51ec8c6f"
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
        url "https://files.pythonhosted.org/packages/51/78/65922308c4248e0eb08ebcbe67c95d48615cc6f27854b6f2e57143e9178f/more-itertools-10.5.0.tar.gz"
        sha256 "5482bfef7849c25dc3c6dd53a6173ae4795da2a41a80faea6700d9f5846c5da6"
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
        url "https://files.pythonhosted.org/packages/a5/26/0d95c04c868f6bdb0c447e3ee2de5564411845e36a858cfd63766bc7b563/pillow-11.0.0.tar.gz"
        sha256 "72bacbaf24ac003fea9bff9837d1eedb6088758d41e100c1552930151f677739"
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
        url "https://files.pythonhosted.org/packages/3b/8a/de4dc1a6098621781c266b3fb3964009af1e9023527180cb8a3b0dd9d09e/prettytable-3.12.0.tar.gz"
        sha256 "f04b3e1ba35747ac86e96ec33e3bb9748ce08e254dc2a1c6253945901beec804"
    end
    
    resource "prompt_toolkit" do
        url "https://files.pythonhosted.org/packages/2d/4f/feb5e137aff82f7c7f3248267b97451da3644f6cdc218edfe549fb354127/prompt_toolkit-3.0.48.tar.gz"
        sha256 "d6623ab0477a80df74e646bdbc93621143f5caf104206aa29294d53de1a03d90"
    end
    
    resource "protobuf" do
        url "https://files.pythonhosted.org/packages/74/6e/e69eb906fddcb38f8530a12f4b410699972ab7ced4e21524ece9d546ac27/protobuf-5.28.3.tar.gz"
        sha256 "64badbc49180a5e401f373f9ce7ab1d18b63f7dd4a9cdc43c92b9f0b481cef7b"
    end
    
    resource "psutil" do
        url "https://files.pythonhosted.org/packages/26/10/2a30b13c61e7cf937f4adf90710776b7918ed0a9c434e2c38224732af310/psutil-6.1.0.tar.gz"
        sha256 "353815f59a7f64cdaca1c0307ee13558a0512f6db064e92fe833784f08539c7a"
    end
    
    resource "pycparser" do
        url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
        sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
    end
    
    resource "Pygments" do
        url "https://files.pythonhosted.org/packages/8e/62/8336eff65bcbc8e4cb5d05b55faf041285951b6e80f33e2bff2024788f31/pygments-2.18.0.tar.gz"
        sha256 "786ff802f32e91311bff3889f6e9a86e81505fe99f2735bb6d60ae0c5004f199"
    end
    
    resource "PyJWT" do
        url "https://files.pythonhosted.org/packages/fb/68/ce067f09fca4abeca8771fe667d89cc347d1e99da3e093112ac329c6020e/pyjwt-2.9.0.tar.gz"
        sha256 "7e1e5b56cc735432a7369cbfa0efe50fa113ebecdc04ae6922deba8b84582d0c"
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
        url "https://files.pythonhosted.org/packages/3a/31/3c70bf7603cc2dca0f19bdc53b4537a797747a58875b552c8c413d963a3f/pytz-2024.2.tar.gz"
        sha256 "2aa355083c50a0f93fa581709deac0c9ad65cca8a9e9beac660adcbd493c798a"
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
        url "https://files.pythonhosted.org/packages/a0/a8/e0a98fd7bd874914f0608ef7c90ffde17e116aefad765021de0f012690a2/s3transfer-0.10.3.tar.gz"
        sha256 "4f50ed74ab84d474ce614475e0b8d5047ff080810aac5d01ea25231cfc944b0c"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/aa/60/5db2249526c9b453c5bb8b9f6965fcab0ddb7f40ad734420b3b421f7da44/setuptools-70.0.0.tar.gz"
        sha256 "f211a66637b8fa059bb28183da127d4e86396c991a942b028c6650d4319c3fd0"
    end
    
    resource "simple-salesforce" do
        url "https://files.pythonhosted.org/packages/13/a7/22d3992b8413cb775191a2f7af8b193cdaa9d244bf1613a2affeb26bc9f3/simple-salesforce-1.12.6.tar.gz"
        sha256 "77590606c781905f6b75430562951dd2b062438da7f55fca2b61e4cde31df15b"
    end
    
    resource "six" do
        url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
        sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/e6/80/1deaf0d20bdfd04613f67f0b8603c374dbde29199433bf070f29dc8f44aa/slack_sdk-3.33.3.tar.gz"
        sha256 "4cc44c9ffe4bb28a01fbe3264c2f466c783b893a4eca62026ab845ec7c176ff1"
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
        url "https://files.pythonhosted.org/packages/73/82/dfa23ec2cbed08a801deab02fe7c904bfb00765256b155941d789a338c68/sqlparse-0.5.1.tar.gz"
        sha256 "bb6b4df465655ef332548e24f08e205afc81b9ab86cb1c45657a7ff173a3a00e"
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
        url "https://files.pythonhosted.org/packages/e8/4f/0153c21dc5779a49a0598c445b1978126b1344bab9ee71e53e44877e14e0/tqdm-4.67.0.tar.gz"
        sha256 "fe5a6f95e6fe0b9755e9469b77b9c3cf850048224ecaa8293d7d2d31f97d869a"
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
        url "https://files.pythonhosted.org/packages/e1/34/943888654477a574a86a98e9896bae89c7aa15078ec29f490fef2f1e5384/tzdata-2024.2.tar.gz"
        sha256 "7d85cc416e9382e69095b7bdf4afd9e3880418a2413feec7069d533d6b4e31cc"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/ed/63/22ba4ebfe7430b76388e7cd448d5478814d3032121827c12a2cc287e2260/urllib3-2.2.3.tar.gz"
        sha256 "e7d814a81dad81e6caf2ec9fdedb284ecc9c73076b62654547cc64ccdcae26e9"
    end
    
    resource "wcwidth" do
        url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
        sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
    end
    
    resource "wrapt" do
        url "https://files.pythonhosted.org/packages/95/4c/063a912e20bcef7124e0df97282a8af3ff3e4b603ce84c481d6d7346be0a/wrapt-1.16.0.tar.gz"
        sha256 "5f370f952971e7d17c7d1ead40e49f32345a7f7a5373571ef44d800d06b1899d"
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
        url "https://files.pythonhosted.org/packages/3c/f5/1079cab32302359cc09bd1dca9656e680601e0e8af9397322ab0fe85f368/zope.interface-7.1.1.tar.gz"
        sha256 "4284d664ef0ff7b709836d4de7b13d80873dc5faeffc073abdb280058bfac5e3"
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