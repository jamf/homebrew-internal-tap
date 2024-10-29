
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

    
    resource "aiohappyeyeballs" do
        url "https://files.pythonhosted.org/packages/bc/69/2f6d5a019bd02e920a3417689a89887b39ad1e350b562f9955693d900c40/aiohappyeyeballs-2.4.3.tar.gz"
        sha256 "75cf88a15106a5002a8eb1dab212525c00d1f4c0fa96e551c9fbe6f09a621586"
    end
    
    resource "aiohttp" do
        url "https://files.pythonhosted.org/packages/17/7e/16e57e6cf20eb62481a2f9ce8674328407187950ccc602ad07c685279141/aiohttp-3.10.10.tar.gz"
        sha256 "0631dd7c9f0822cc61c88586ca76d5b5ada26538097d0f1df510b082bad3411a"
    end
    
    resource "aiosignal" do
        url "https://files.pythonhosted.org/packages/ae/67/0952ed97a9793b4958e5736f6d2b346b414a2cd63e82d05940032f45b32f/aiosignal-1.3.1.tar.gz"
        sha256 "54cd96e15e1649b75d6c87526a6ff0b6c1b0dd3459f43d9ca11d48c339b68cfc"
    end
    
    resource "alabaster" do
        url "https://files.pythonhosted.org/packages/a6/f8/d9c74d0daf3f742840fd818d69cfae176fa332022fd44e3469487d5a9420/alabaster-1.0.0.tar.gz"
        sha256 "c00dca57bca26fa62a6d7d0a9fcce65f3e026e9bfe33e9c538fd3fbb2144fd9e"
    end
    
    resource "art" do
        url "https://files.pythonhosted.org/packages/3a/82/4991758c0f6a38aa851bbc0d16103b990b419ddab7ba422d6688f15b481c/art-6.2.tar.gz"
        sha256 "506a0c4f261289a0e0d088de7beffcb1835078c4e44b0c5353bdaf47b490e76f"
    end
    
    resource "async-timeout" do
        url "https://files.pythonhosted.org/packages/87/d6/21b30a550dafea84b1b8eee21b5e23fa16d010ae006011221f33dcd8d7f8/async-timeout-4.0.3.tar.gz"
        sha256 "4640d96be84d82d02ed59ea2b7105a0f7b33abe8703703cd0ab0bf87c427522f"
    end
    
    resource "atlassian-python-api" do
        url "https://files.pythonhosted.org/packages/e8/79/45570cff478697595891179e91ed989a1c039f0343c8d29fcd605353c8b5/atlassian_python_api-3.41.14.tar.gz"
        sha256 "12e4a09b03aebe3d84d14577ea20bfe58d3f1dc14d7af0e9cebc1c170955c124"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/fc/0f/aafca9af9315aee06a89ffde799a10a582fe8de76c563ee80bbcdc08b3fb/attrs-24.2.0.tar.gz"
        sha256 "5cfb1b9148b5b086569baec03f20d7b6bf3bcacc9a42bebf87ffaaca362f6346"
    end
    
    resource "babel" do
        url "https://files.pythonhosted.org/packages/2a/74/f1bc80f23eeba13393b7222b11d95ca3af2c1e28edca18af487137eefed9/babel-2.16.0.tar.gz"
        sha256 "d1f3554ca26605fe173f3de0c65f750f5a42f924499bf134de6423582298e316"
    end
    
    resource "bcrypt" do
        url "https://files.pythonhosted.org/packages/ca/e9/0b36987abbcd8c9210c7b86673d88ff0a481b4610630710fb80ba5661356/bcrypt-4.1.3.tar.gz"
        sha256 "2ee15dd749f5952fe3f0430d0ff6b74082e159c50332a1413d51b5689cf06623"
    end
    
    resource "beautifulsoup4" do
        url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
        sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
    end
    
    resource "bidict" do
        url "https://files.pythonhosted.org/packages/9a/6e/026678aa5a830e07cd9498a05d3e7e650a4f56a42f267a53d22bcda1bdc9/bidict-0.23.1.tar.gz"
        sha256 "03069d763bc387bbd20e7d49914e75fc4132a41937fa3405417e1a5a2d006d71"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/42/e5/738f7bf96f4f5597c8393e11be2c28bef5f876b5635c1ea9d86888e59657/boto3-1.34.144.tar.gz"
        sha256 "2f3e88b10b8fcc5f6100a9d74cd28230edc9d4fa226d99dd40a3ab38ac213673"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/8c/66/01d63edf404b2ef2c5594701565ac0c031ce7253231298d423e2514566b8/botocore-1.34.144.tar.gz"
        sha256 "4215db28d25309d59c99507f1f77df9089e5bebbad35f6e19c7c44ec5383a3e8"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/b0/ee/9b19140fe824b367c04c5e1b369942dd754c4c5462d5674002f75c4dedc1/certifi-2024.8.30.tar.gz"
        sha256 "bec941d2aa8195e248a60b31ff9f0558284cf01a52591ceda73ea9afffd69fd9"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
        sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/f2/4f/e1808dc01273379acc506d18f1504eb2d299bd4131743b9fc54d7be4df1e/charset_normalizer-3.4.0.tar.gz"
        sha256 "223217c3d4f82c3ac5e29032b3f1c2eb0fb591b72161f86d93f5719079dae93e"
    end
    
    resource "configparser" do
        url "https://files.pythonhosted.org/packages/fd/1d/a0f55c373f80437607b898956518443b9edd435b5a226392a9ef11d79fa0/configparser-7.0.0.tar.gz"
        sha256 "af3c618a67aaaedc4d689fd7317d238f566b9aa03cae50102e92d7f0dfe78ba0"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/93/a7/1498799a2ea06148463a9a2c10ab2f6a921a74fb19e231b27dc412a748e2/cryptography-42.0.8.tar.gz"
        sha256 "8d09d05439ce7baa8e9e95b07ec5b6c886f548deb7e0f69ef25f64b3bce842f2"
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
    
    resource "dnspython" do
        url "https://files.pythonhosted.org/packages/b5/4a/263763cb2ba3816dd94b08ad3a33d5fdae34ecb856678773cc40a3605829/dnspython-2.7.0.tar.gz"
        sha256 "ce9c432eda0dc91cf618a5cedf1a4e142651196bbcd2c80e89ed5a907e5cfaf1"
    end
    
    resource "docutils" do
        url "https://files.pythonhosted.org/packages/ae/ed/aefcc8cd0ba62a0560c3c18c33925362d46c6075480bfa4df87b28e169a9/docutils-0.21.2.tar.gz"
        sha256 "3a6b18732edf182daa3cd12775bbb338cf5691468f91eeeb109deff6ebfa986f"
    end
    
    resource "dropbox" do
        url "https://files.pythonhosted.org/packages/9e/56/ac085f58e8e0d0bcafdf98c2605e454ac946e3d0c72679669ae112dc30be/dropbox-12.0.2.tar.gz"
        sha256 "50057fd5ad5fcf047f542dfc6747a896e7ef982f1b5f8500daf51f3abd609962"
    end
    
    resource "et-xmlfile" do
        url "https://files.pythonhosted.org/packages/3d/5d/0413a31d184a20c763ad741cc7852a659bf15094c24840c5bdd1754765cd/et_xmlfile-1.1.0.tar.gz"
        sha256 "8eb9e2bc2f8c97e37a2dc85a09ecdcdec9d8a396530a6d5a33b30b9a92da0c5c"
    end
    
    resource "eventlet" do
        url "https://files.pythonhosted.org/packages/54/8c/d68a786f212bdf362ac91ab248ae94aaf413aeecfd652a08ced9a3d63427/eventlet-0.37.0.tar.gz"
        sha256 "fa49bf5a549cdbaa06919679979ea022ac8f8f3cf0499f26849a1cd8e64c30b1"
    end
    
    resource "frozenlist" do
        url "https://files.pythonhosted.org/packages/8f/ed/0f4cec13a93c02c47ec32d81d11c0c1efbadf4a471e3f3ce7cad366cbbd3/frozenlist-1.5.0.tar.gz"
        sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
    end
    
    resource "furo" do
        url "https://files.pythonhosted.org/packages/a0/e2/d351d69a9a9e4badb4a5be062c2d0e87bd9e6c23b5e57337fef14bef34c8/furo-2024.8.6.tar.gz"
        sha256 "b63e4cee8abfc3136d3bc03a3d45a76a850bada4d6374d24c1716b0e01394a01"
    end
    
    resource "greenlet" do
        url "https://files.pythonhosted.org/packages/2f/ff/df5fede753cc10f6a5be0931204ea30c35fa2f2ea7a35b25bdaf4fe40e46/greenlet-3.1.1.tar.gz"
        sha256 "4ce3ac6cdb6adf7946475d7ef31777c26d94bccc377e070a7986bd2d5c515467"
    end
    
    resource "grpcio" do
        url "https://files.pythonhosted.org/packages/20/53/d9282a66a5db45981499190b77790570617a604a38f3d103d0400974aeb5/grpcio-1.67.1.tar.gz"
        sha256 "3dc2ed4cabea4dc14d5e708c2b426205956077cc5de419b4d4079315017e9732"
    end
    
    resource "grpcio-tools" do
        url "https://files.pythonhosted.org/packages/ae/f9/6facde12a5a8da4398a3a8947f8ba6ef33b408dfc9767c8cefc0074ddd68/grpcio_tools-1.67.1.tar.gz"
        sha256 "d9657f5ddc62b52f58904e6054b7d8a8909ed08a1e28b734be3a707087bcf004"
    end
    
    resource "h11" do
        url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
        sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
    end
    
    resource "idna" do
        url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
        sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
    end
    
    resource "imagesize" do
        url "https://files.pythonhosted.org/packages/a7/84/62473fb57d61e31fef6e36d64a179c8781605429fd927b5dd608c997be31/imagesize-1.4.1.tar.gz"
        sha256 "69150444affb9cb0d5cc5a92b3676f0b2fb7cd9ae39e947a5e11a36b4497cd4a"
    end
    
    resource "inquirerpy" do
        url "https://files.pythonhosted.org/packages/64/73/7570847b9da026e07053da3bbe2ac7ea6cde6bb2cbd3c7a5a950fa0ae40b/InquirerPy-0.3.4.tar.gz"
        sha256 "89d2ada0111f337483cb41ae31073108b2ec1e618a49d7110b0d7ade89fc197e"
    end
    
    resource "isodate" do
        url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
        sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
    end
    
    resource "jaraco.classes" do
        url "https://files.pythonhosted.org/packages/06/c0/ed4a27bc5571b99e3cff68f8a9fa5b56ff7df1c2251cc715a652ddd26402/jaraco.classes-3.4.0.tar.gz"
        sha256 "47a024b51d0239c0dd8c8540c6c7f484be3b8fcf0b2d85c13825780d3b3f3acd"
    end
    
    resource "jaraco.context" do
        url "https://files.pythonhosted.org/packages/c9/60/e83781b07f9a66d1d102a0459e5028f3a7816fdd0894cba90bee2bbbda14/jaraco.context-5.3.0.tar.gz"
        sha256 "c2f67165ce1f9be20f32f650f25d8edfc1646a8aeee48ae06fb35f90763576d2"
    end
    
    resource "jaraco.functools" do
        url "https://files.pythonhosted.org/packages/bc/66/746091bed45b3683d1026cb13b8b7719e11ccc9857b18d29177a18838dc9/jaraco_functools-4.0.1.tar.gz"
        sha256 "d33fa765374c0611b52f8b3a795f8900869aa88c84769d4d1746cd68fb28c3e8"
    end
    
    resource "Jinja2" do
        url "https://files.pythonhosted.org/packages/ed/55/39036716d19cab0747a5020fc7e907f362fbf48c984b14e62127f7e68e5d/jinja2-3.1.4.tar.gz"
        sha256 "4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369"
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
        url "https://files.pythonhosted.org/packages/3e/e9/54f232e659f635a000d94cfbca40b9d5d617707593c3d552ec14d3ba27f1/keyring-25.2.1.tar.gz"
        sha256 "daaffd42dbda25ddafb1ad5fec4024e5bbcfe424597ca1ca452b299861e49f1b"
    end
    
    resource "libsodium" do
        url "https://files.pythonhosted.org/packages/59/83/29001457c9d518f5bc44bab4482b9d27e006b2581c8b6a13cd16ce23cc60/libsodium-2.7.4.tar.gz"
        sha256 "4365bba14f497ed31cf60f72254e7e51fd70810ddbbdd49450aa76a4dedaa8de"
    end
    
    resource "lxml" do
        url "https://files.pythonhosted.org/packages/63/f7/ffbb6d2eb67b80a45b8a0834baa5557a14a5ffce0979439e7cd7f0c4055b/lxml-5.2.2.tar.gz"
        sha256 "bb2dc4898180bea79863d5487e5f9c7c34297414bad54bcd0f0852aee9cfdb87"
    end
    
    resource "markdown-it-py" do
        url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
        sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
    end
    
    resource "MarkupSafe" do
        url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
        sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
    end
    
    resource "mdurl" do
        url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
        sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    end
    
    resource "more-itertools" do
        url "https://files.pythonhosted.org/packages/01/33/77f586de725fc990d12dda3d4efca4a41635be0f99a987b9cc3a78364c13/more-itertools-10.3.0.tar.gz"
        sha256 "e5d93ef411224fbcef366a6e8ddc4c5781bc6359d43412a65dd5964e46111463"
    end
    
    resource "multidict" do
        url "https://files.pythonhosted.org/packages/d6/be/504b89a5e9ca731cd47487e91c469064f8ae5af93b7259758dcfc2b9c848/multidict-6.1.0.tar.gz"
        sha256 "22ae2ebf9b0c69d206c003e2f6a914ea33f0a932d4aa16f236afc049d9958f4a"
    end
    
    resource "mysql-connector-python" do
        url "https://files.pythonhosted.org/packages/a7/21/322c3d5c2d04d4e8d0abac44d3de847ce1dc743e08a4606055b94be8c5d4/mysql-connector-python-8.0.23.tar.gz"
        sha256 "5e84dcc25d4b505118e0c28f07de496a41bc0ab121232a2aba83d0248cd49257"
    end
    
    resource "numpy" do
        url "https://files.pythonhosted.org/packages/05/35/fb1ada118002df3fe91b5c3b28bc0d90f879b881a5d8f68b1f9b79c44bfe/numpy-2.0.0.tar.gz"
        sha256 "cf5d1c9e6837f8af9f92b6bd3e86d513cdc11f60fd62185cc49ec7d1aba34864"
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
        url "https://files.pythonhosted.org/packages/51/65/50db4dda066951078f0a96cf12f4b9ada6e4b811516bf0262c0f4f7064d4/packaging-24.1.tar.gz"
        sha256 "026ed72c8ed3fcce5bf8950572258698927fd1dbda10a5e981cdf0ac37f4f002"
    end
    
    resource "pandas" do
        url "https://files.pythonhosted.org/packages/88/d9/ecf715f34c73ccb1d8ceb82fc01cd1028a65a5f6dbc57bfa6ea155119058/pandas-2.2.2.tar.gz"
        sha256 "9e79019aba43cb4fda9e4d983f8e88ca0373adbb697ae9c6c43093218de28b54"
    end
    
    resource "paramiko" do
        url "https://files.pythonhosted.org/packages/cc/af/11996c4df4f9caff87997ad2d3fd8825078c277d6a928446d2b6cf249889/paramiko-3.4.0.tar.gz"
        sha256 "aac08f26a31dc4dffd92821527d1682d99d52f9ef6851968114a8728f3c274d3"
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
        url "https://files.pythonhosted.org/packages/cd/74/ad3d526f3bf7b6d3f408b73fde271ec69dfac8b81341a318ce825f2b3812/pillow-10.4.0.tar.gz"
        sha256 "166c1cd4d24309b30d61f79f4a9114b7b2313d7450912277855ff5dfd7cd4a06"
    end
    
    resource "platformdirs" do
        url "https://files.pythonhosted.org/packages/f5/52/0763d1d976d5c262df53ddda8d8d4719eedf9594d046f117c25a27261a19/platformdirs-4.2.2.tar.gz"
        sha256 "38b7b51f512eed9e84a22788b4bce1de17c0adb134d6becb09836e37d8654cd3"
    end
    
    resource "ply" do
        url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
        sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
    end
    
    resource "prettytable" do
        url "https://files.pythonhosted.org/packages/4c/90/e1c8c06235d53c3adaae74d295669612beea5f5a2052b3184a763e7bdd62/prettytable-3.10.2.tar.gz"
        sha256 "29ec6c34260191d42cd4928c28d56adec360ac2b1208a26c7e4f14b90cc8bc84"
    end
    
    resource "prompt_toolkit" do
        url "https://files.pythonhosted.org/packages/47/6d/0279b119dafc74c1220420028d490c4399b790fc1256998666e3a341879f/prompt_toolkit-3.0.47.tar.gz"
        sha256 "1e1b29cb58080b1e69f207c893a1a7bf16d127a5c30c9d17a25a5d77792e5360"
    end
    
    resource "propcache" do
        url "https://files.pythonhosted.org/packages/a9/4d/5e5a60b78dbc1d464f8a7bbaeb30957257afdc8512cbb9dfd5659304f5cd/propcache-0.2.0.tar.gz"
        sha256 "df81779732feb9d01e5d513fad0122efb3d53bbc75f61b2a4f29a020bc985e70"
    end
    
    resource "protobuf" do
        url "https://files.pythonhosted.org/packages/74/6e/e69eb906fddcb38f8530a12f4b410699972ab7ced4e21524ece9d546ac27/protobuf-5.28.3.tar.gz"
        sha256 "64badbc49180a5e401f373f9ce7ab1d18b63f7dd4a9cdc43c92b9f0b481cef7b"
    end
    
    resource "psutil" do
        url "https://files.pythonhosted.org/packages/18/c7/8c6872f7372eb6a6b2e4708b88419fb46b857f7a2e1892966b851cc79fc9/psutil-6.0.0.tar.gz"
        sha256 "8faae4f310b6d969fa26ca0545338b21f73c6b15db7c4a8d934a5482faa818f2"
    end
    
    resource "pycparser" do
        url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
        sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
    end
    
    resource "pycryptodome" do
        url "https://files.pythonhosted.org/packages/13/52/13b9db4a913eee948152a079fe58d035bd3d1a519584155da8e786f767e6/pycryptodome-3.21.0.tar.gz"
        sha256 "f7787e0d469bdae763b876174cf2e6c0f7be79808af26b1da96f1a64bcf47297"
    end
    
    resource "Pygments" do
        url "https://files.pythonhosted.org/packages/8e/62/8336eff65bcbc8e4cb5d05b55faf041285951b6e80f33e2bff2024788f31/pygments-2.18.0.tar.gz"
        sha256 "786ff802f32e91311bff3889f6e9a86e81505fe99f2735bb6d60ae0c5004f199"
    end
    
    resource "PyJWT" do
        url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
        sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
    end
    
    resource "PyNaCl" do
        url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
        sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
    end
    
    resource "pyperclip" do
        url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
        sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
    end
    
    resource "python-dateutil" do
        url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
        sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
    end
    
    resource "python-engineio" do
        url "https://files.pythonhosted.org/packages/9e/d2/b985b0affc5944620e1f812969322f40204f75297c5087fc4cdd44f1a14e/python_engineio-4.10.1.tar.gz"
        sha256 "166cea8dd7429638c5c4e3a4895beae95196e860bc6f29ed0b9fe753d1ef2072"
    end
    
    resource "python-socketio" do
        url "https://files.pythonhosted.org/packages/32/31/4ba0d9d86c645ba335d645f49167ca58b0874ca0e421682f97964e8adb42/python_socketio-5.11.4.tar.gz"
        sha256 "8b0b8ff2964b2957c865835e936310190639c00310a47d77321a594d1665355e"
    end
    
    resource "pytz" do
        url "https://files.pythonhosted.org/packages/90/26/9f1f00a5d021fff16dee3de13d43e5e978f3d58928e129c3a62cf7eb9738/pytz-2024.1.tar.gz"
        sha256 "2a29735ea9c18baf14b448846bde5a48030ed267578472d8955cd0e7443a9812"
    end
    
    resource "repoze.lru" do
        url "https://files.pythonhosted.org/packages/12/bc/595a77c4b5e204847fdf19268314ef59c85193a9dc9f83630fc459c0fee5/repoze.lru-0.7.tar.gz"
        sha256 "0429a75e19380e4ed50c0694e26ac8819b4ea7851ee1fc7583c8572db80aff77"
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
        url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
        sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
    end
    
    resource "Routes" do
        url "https://files.pythonhosted.org/packages/62/01/1504b710f68840f4152d460a4ffbc6b8265485b636235ddd72a8dfe686ae/Routes-2.5.1.tar.gz"
        sha256 "b6346459a15f0cbab01a45a90c3d25caf980d4733d628b4cc1952b865125d053"
    end
    
    resource "s3transfer" do
        url "https://files.pythonhosted.org/packages/cb/67/94c6730ee4c34505b14d94040e2f31edf144c230b6b49e971b4f25ff8fab/s3transfer-0.10.2.tar.gz"
        sha256 "0711534e9356d3cc692fdde846b4a1e4b0cb6519971860796e6bc4c7aea00ef6"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/d6/4f/b10f707e14ef7de524fe1f8988a294fb262a29c9b5b12275c7e188864aed/setuptools-69.5.1.tar.gz"
        sha256 "6c1fccdac05a97e598fb0ae3bbed5904ccb317337a51139dcd51453611bbb987"
    end
    
    resource "simple-salesforce" do
        url "https://files.pythonhosted.org/packages/13/a7/22d3992b8413cb775191a2f7af8b193cdaa9d244bf1613a2affeb26bc9f3/simple-salesforce-1.12.6.tar.gz"
        sha256 "77590606c781905f6b75430562951dd2b062438da7f55fca2b61e4cde31df15b"
    end
    
    resource "simple-websocket" do
        url "https://files.pythonhosted.org/packages/b0/d4/bfa032f961103eba93de583b161f0e6a5b63cebb8f2c7d0c6e6efe1e3d2e/simple_websocket-1.1.0.tar.gz"
        sha256 "7939234e7aa067c534abdab3a9ed933ec9ce4691b0713c78acb195560aa52ae4"
    end
    
    resource "six" do
        url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
        sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/a5/e3/4a2491cbf793bb8da8a51120207df8c097faeda42bf720f7acf7c40e4ca8/slack_sdk-3.31.0.tar.gz"
        sha256 "740d2f9c49cbfcbd46fca56b4be9d527934c225312aac18fd2c0fca0ef6bc935"
    end
    
    resource "snowballstemmer" do
        url "https://files.pythonhosted.org/packages/44/7b/af302bebf22c749c56c9c3e8ae13190b5b5db37a33d9068652e8f73b7089/snowballstemmer-2.2.0.tar.gz"
        sha256 "09b16deb8547d3412ad7b590689584cd0fe25ec8db3be37788be3810cbf19cb1"
    end
    
    resource "sonora" do
        url "https://files.pythonhosted.org/packages/a0/19/283829f92c7ef5624788531d959af9c20e4b2ceab0091e16ce6c44065c61/sonora-0.2.3.tar.gz"
        sha256 "75cbe8d073ed33891dac782a101191f2947b6b9076b9b34ba50aa8e0a86c14ab"
    end
    
    resource "soupsieve" do
        url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
        sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
    end
    
    resource "Sphinx" do
        url "https://files.pythonhosted.org/packages/6f/6d/be0b61178fe2cdcb67e2a92fc9ebb488e3c51c4f74a36a7824c0adf23425/sphinx-8.1.3.tar.gz"
        sha256 "43c1911eecb0d3e161ad78611bc905d1ad0e523e4ddc202a58a821773dc4c927"
    end
    
    resource "sphinx-basic-ng" do
        url "https://files.pythonhosted.org/packages/98/0b/a866924ded68efec7a1759587a4e478aec7559d8165fac8b2ad1c0e774d6/sphinx_basic_ng-1.0.0b2.tar.gz"
        sha256 "9ec55a47c90c8c002b5960c57492ec3021f5193cb26cebc2dc4ea226848651c9"
    end
    
    resource "sphinxcontrib-applehelp" do
        url "https://files.pythonhosted.org/packages/ba/6e/b837e84a1a704953c62ef8776d45c3e8d759876b4a84fe14eba2859106fe/sphinxcontrib_applehelp-2.0.0.tar.gz"
        sha256 "2f29ef331735ce958efa4734873f084941970894c6090408b079c61b2e1c06d1"
    end
    
    resource "sphinxcontrib-devhelp" do
        url "https://files.pythonhosted.org/packages/f6/d2/5beee64d3e4e747f316bae86b55943f51e82bb86ecd325883ef65741e7da/sphinxcontrib_devhelp-2.0.0.tar.gz"
        sha256 "411f5d96d445d1d73bb5d52133377b4248ec79db5c793ce7dbe59e074b4dd1ad"
    end
    
    resource "sphinxcontrib-htmlhelp" do
        url "https://files.pythonhosted.org/packages/43/93/983afd9aa001e5201eab16b5a444ed5b9b0a7a010541e0ddfbbfd0b2470c/sphinxcontrib_htmlhelp-2.1.0.tar.gz"
        sha256 "c9e2916ace8aad64cc13a0d233ee22317f2b9025b9cf3295249fa985cc7082e9"
    end
    
    resource "sphinxcontrib-jsmath" do
        url "https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsmath-1.0.1.tar.gz"
        sha256 "a9925e4a4587247ed2191a22df5f6970656cb8ca2bd6284309578f2153e0c4b8"
    end
    
    resource "sphinxcontrib-qthelp" do
        url "https://files.pythonhosted.org/packages/68/bc/9104308fc285eb3e0b31b67688235db556cd5b0ef31d96f30e45f2e51cae/sphinxcontrib_qthelp-2.0.0.tar.gz"
        sha256 "4fe7d0ac8fc171045be623aba3e2a8f613f8682731f9153bb2e40ece16b9bbab"
    end
    
    resource "sphinxcontrib-serializinghtml" do
        url "https://files.pythonhosted.org/packages/3b/44/6716b257b0aa6bfd51a1b31665d1c205fb12cb5ad56de752dfa15657de2f/sphinxcontrib_serializinghtml-2.0.0.tar.gz"
        sha256 "e9d912827f872c029017a53f0ef2180b327c3f7fd23c87229f7a8e8b70031d4d"
    end
    
    resource "splunk-sdk" do
        url "https://files.pythonhosted.org/packages/7a/3c/7c2f19d1a8fc25f83291586d1129bad5880ed2a7a9e3df661e5436484950/splunk-sdk-2.0.2.tar.gz"
        sha256 "d5ccf6e1b96e493b1399e071ef10f8337e0a39ac2b2acc73fdd375b87b4104cb"
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
        url "https://files.pythonhosted.org/packages/76/52/cfcf2de9300816ea35ccdfee7097d0226793516588423497c1ae35a75372/time_machine-2.14.2.tar.gz"
        sha256 "6e5150cdf1e128c4b3bea214204b4d7747456d9c7ce8e3d83c204e59f9640b72"
    end
    
    resource "tqdm" do
        url "https://files.pythonhosted.org/packages/5a/c0/b7599d6e13fe0844b0cda01b9aaef9a0e87dbb10b06e4ee255d3fa1c79a2/tqdm-4.66.4.tar.gz"
        sha256 "e4d936c9de8727928f3be6079590e97d9abfe8d39a590be678eb5919ffc186bb"
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
        url "https://files.pythonhosted.org/packages/74/5b/e025d02cb3b66b7b76093404392d4b44343c69101cc85f4d180dd5784717/tzdata-2024.1.tar.gz"
        sha256 "2674120f8d891909751c38abcdfd386ac0a5a1127954fbc332af6b5ceae07efd"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/e4/e8/6ff5e6bc22095cfc59b6ea711b687e2b7ed4bdb373f7eeec370a97d7392f/urllib3-1.26.20.tar.gz"
        sha256 "40c2dc0c681e47eb8f90e7e27bf6ff7df2e677421fd46756da1161c39ca70d32"
    end
    
    resource "wcwidth" do
        url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
        sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
    end
    
    resource "websockets" do
        url "https://files.pythonhosted.org/packages/e2/73/9223dbc7be3dcaf2a7bbf756c351ec8da04b1fa573edaf545b95f6b0c7fd/websockets-13.1.tar.gz"
        sha256 "a3b3366087c1bc0a2795111edcadddb8b3b59509d5db5d7ea3fdd69f954a8878"
    end
    
    resource "Werkzeug" do
        url "https://files.pythonhosted.org/packages/d4/f9/0ba83eaa0df9b9e9d1efeb2ea351d0677c37d41ee5d0f91e98423c7281c9/werkzeug-3.0.6.tar.gz"
        sha256 "a8dd59d4de28ca70471a34cba79bed5f7ef2e036a76b3ab0835474246eb41f8d"
    end
    
    resource "wrapt" do
        url "https://files.pythonhosted.org/packages/95/4c/063a912e20bcef7124e0df97282a8af3ff3e4b603ce84c481d6d7346be0a/wrapt-1.16.0.tar.gz"
        sha256 "5f370f952971e7d17c7d1ead40e49f32345a7f7a5373571ef44d800d06b1899d"
    end
    
    resource "wsproto" do
        url "https://files.pythonhosted.org/packages/c9/4a/44d3c295350d776427904d73c189e10aeae66d7f555bb2feee16d1e4ba5a/wsproto-1.2.0.tar.gz"
        sha256 "ad565f26ecb92588a3e43bc3d96164de84cd9902482b130d0ddbaa9664a85065"
    end
    
    resource "yarl" do
        url "https://files.pythonhosted.org/packages/55/8f/d2d546f8b674335fa7ef83cc5c1892294f3f516c570893e65a7ea8ed49c9/yarl-1.17.0.tar.gz"
        sha256 "d3f13583f378930377e02002b4085a3d025b00402d5a80911726d43a67911cd9"
    end
    
    resource "yaspin" do
        url "https://files.pythonhosted.org/packages/45/92/945d168f13d7e64ae7f013cb9db8a6fbde62a2cb1ce72ba6e0d2af05b402/yaspin-3.0.2.tar.gz"
        sha256 "35cae59c682506794a218310445e8326cd8fec410879d1c44953b494b1121e77"
    end
    
    resource "zeep" do
        url "https://files.pythonhosted.org/packages/fd/a4/8fa2337f1807fd9e671b85980b2c90052d524edf9d39b515aed4c5874c38/zeep-4.2.1.tar.gz"
        sha256 "72093acfdb1d8360ed400869b73fbf1882b95c4287f798084c42ee0c1ff0e425"
    end
    
    resource "zope.interface" do
        url "https://files.pythonhosted.org/packages/09/06/7c1202972bc99dd1b731c3c01157855cbc8d0944894c3b234473b1f4119c/zope.interface-6.4.post2.tar.gz"
        sha256 "1c207e6f6dfd5749a26f5a5fd966602d6b824ec00d2df84a7e9a924e8933654e"
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