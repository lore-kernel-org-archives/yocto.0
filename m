Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA7C5C433EF
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 23:11:04 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.1482.1653606662591505767
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:11:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T6gLKKdS;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 m14-20020a17090a414e00b001df77d29587so5679432pjg.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=5ZscIEjzydB7r/cf+VFwRo/4xGXYrapf0jmKcuk0fUY=;
        b=T6gLKKdSF/JRjLxh839nW9AqWnKeCONQ6tkB0Dc6wh16vkgXVLso8gtgr/Eg3uW+D+
         q7WEzvPM/UQL8/q19iPPBMhnwVsCmwM05W2Iwo+BD6sd5fjwC/GLL/1F2myBWjAchRQC
         AC/5KcRNkYI3AC4g+3plp+0IxViWnRt6BH9wWaB9kPegCA6OY6TOVCtLm+b4qfE4Oz4c
         pU0Mue+eJixOatAHDpC0sEBIWUpxK3xgBrF/PqFkTdia8JMEuiwrp6dWBiOFqTuIWOww
         UiDCEG1rwHssMVBsqBUd2XeUwocT80v1vHdnpdM+g8FOFAvktHDEoBX25gVXmqJmWfuR
         cVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5ZscIEjzydB7r/cf+VFwRo/4xGXYrapf0jmKcuk0fUY=;
        b=QjPzR8toTgejy6QIi4HS2RTo8xI0vrKyy0XDLZzJnApou/3Pal9WRlC6Rqoig5aSTu
         qARJqtuWWr50xog7N8c7+UnZiyjvJR1hofMLm0xyVdtfiCf2ouLDvPxDVXFlEIH2RqpB
         1QKTxy8uoKEOBbQvnpOfR896e6mBvqP8GeA+Ybmeeolm/HfWff97tUSbtmvHS8X6yu30
         8wcnLy5jbI/Ngj/IaDn3vvUDR4VRZUyy2khfjXBBfcLVV617EFsA+X+y7XEg4Pi9+651
         b4nmHkuRO5Q/9Nq3D0TGOIusu7fZPJGNMSVRCYveVZpBWT6hhKK1ZEj7eRfdOWh7Ez8T
         iBmQ==
X-Gm-Message-State: AOAM532c8QE19if+xuHGcQ/Kz5ZpSvwiAZlcTlcc+9rqhjoAkBZtySKM
	NpXIgYxIn22JkS5/Y1Q0o1E5wPsknbGTmw==
X-Google-Smtp-Source: 
 ABdhPJyroa8zRhFwlso/5Ge9mRznO9p2TlEonNx2mZ1hb/8Qsfa+Nx5QHgVk+2njMBiPGy79lO060g==
X-Received: by 2002:a17:902:cf05:b0:156:9d:ca01 with SMTP id
 i5-20020a170902cf0500b00156009dca01mr39673886plg.111.1653606662083;
        Thu, 26 May 2022 16:11:02 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:c5c:7325:b02a:1f3c?
 ([2601:202:4180:a5c0:c5c:7325:b02a:1f3c])
        by smtp.gmail.com with ESMTPSA id
 s4-20020a170902a50400b0016168e90f2dsm2080727plq.219.2022.05.26.16.11.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 16:11:01 -0700 (PDT)
Message-ID: <3e48492e-b5c9-783d-36ae-fe568eae66da@gmail.com>
Date: Thu, 26 May 2022 16:11:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [meta-security][PATCH] meta-parsec: Update Parsec runtime
 tests
Content-Language: en-US
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20220524180541.726620-1-Anton.Antonov@arm.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220524180541.726620-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 23:11:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57198

merged.



On 5/24/22 11:05, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>
> ---
>   meta-parsec/README.md                         |  65 +++++++++
>   meta-parsec/lib/oeqa/runtime/cases/parsec.py  | 135 ++++++++++++++++--
>   .../images/security-parsec-image.bb           |   5 +-
>   .../packagegroup-security-parsec.bb           |   1 -
>   meta-tpm/classes/sanity-meta-tpm.bbclass      |   4 +-
>   5 files changed, 191 insertions(+), 19 deletions(-)
>
> diff --git a/meta-parsec/README.md b/meta-parsec/README.md
> index 97026ea..f720cd2 100644
> --- a/meta-parsec/README.md
> +++ b/meta-parsec/README.md
> @@ -88,6 +88,71 @@ https://github.com/meta-rust/cargo-bitbake
>   2. Run cargo-bitbake inside the repository. It will produce a BB file.
>   3. Create a new include file with SRC_URI and LIC_FILES_CHKSUM from the BB file.
>   
> +Automated Parsec testing with runqemu
> +=====================================
> +
> + The Yocto build system has the ability to run a series of automated tests for qemu images.
> +All the tests are actually commands run on the target system over ssh.
> +
> + Meta-parsec includes automated unittests which run end to end Parsec tests.
> +The tests are run against:
> +- all providers pre-configured in the Parsec config file included in the image.
> +- PKCS11 and TPM providers with software backends if softhsm and
> +  swtpm packages included in the image.
> +
> +Meta-parsec also contains a recipe for `security-parsec-image` image with Parsec,
> +softhsm and swtpm included.
> +
> + Please notice that the account you use to run bitbake should have access to `/dev/kvm`.
> +You might need to change permissions or add the account into `kvm` unix group.
> +
> +1. Testing Parsec with your own image where `parsec-service` and `parsec-tool` are already included.
> +
> +- Add into your `local.conf`:
> +```
> +INHERIT += "testimage"
> +TEST_SUITES = "ping ssh parsec"
> +```
> +- Build your image
> +```bash
> +bitbake <your-image>
> +```
> +- Run tests
> +```bash
> +bitbake <your-image> -c testimage
> +```
> +
> +2. Testing Parsec with pre-defined `security-parsec-image` image.
> +
> +- Add into your `local.conf`:
> +```
> +DISTRO_FEATURES += " tpm2"
> +INHERIT += "testimage"
> +TEST_SUITES = "ping ssh parsec"
> +```
> +- Build security-parsec-image image
> +```bash
> +bitbake security-parsec-image
> +```
> +- Run tests
> +```bash
> +bitbake security-parsec-image -c testimage
> +```
> +
> +Output of a successfull tests run should look similar to:
> +```
> +RESULTS:
> +RESULTS - ping.PingTest.test_ping: PASSED (0.05s)
> +RESULTS - ssh.SSHTest.test_ssh: PASSED (0.25s)
> +RESULTS - parsec.ParsecTest.test_all_providers: PASSED (1.84s)
> +RESULTS - parsec.ParsecTest.test_pkcs11_provider: PASSED (2.91s)
> +RESULTS - parsec.ParsecTest.test_tpm_provider: PASSED (3.33s)
> +SUMMARY:
> +security-parsec-image () - Ran 5 tests in 8.386s
> +security-parsec-image - OK - All required tests passed (successes=5, skipped=0, failures=0, errors=0)
> +```
> +
> +
>   Manual testing with runqemu
>   ===========================
>   
> diff --git a/meta-parsec/lib/oeqa/runtime/cases/parsec.py b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> index 547f74c..d3d3f2e 100644
> --- a/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> +++ b/meta-parsec/lib/oeqa/runtime/cases/parsec.py
> @@ -1,33 +1,138 @@
>   # Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
> +# Copyright (C) 2022 Anton Antonov <Anton.Antonov@arm.com>
>   #
>   import re
> +from tempfile import mkstemp
>   
>   from oeqa.runtime.case import OERuntimeTestCase
>   from oeqa.core.decorator.depends import OETestDepends
>   from oeqa.runtime.decorator.package import OEHasPackage
> +from oeqa.core.decorator.data import skipIfNotFeature
>   
>   class ParsecTest(OERuntimeTestCase):
> +    @classmethod
> +    def setUpClass(cls):
> +        cls.toml_file = '/etc/parsec/config.toml'
> +
> +    def setUp(self):
> +        super(ParsecTest, self).setUp()
> +        if 'systemd' in self.tc.td['DISTRO_FEATURES']:
> +            self.parsec_status='systemctl status -l parsec'
> +            self.parsec_reload='systemctl restart parsec'
> +        else:
> +            self.parsec_status='pgrep -l parsec'
> +            self.parsec_reload='/etc/init.d/parsec reload'
> +
> +    def copy_subconfig(self, cfg, provider):
> +        """ Copy a provider configuration to target and append it to Parsec config """
> +
> +        tmp_fd, tmp_path = mkstemp()
> +        with os.fdopen(tmp_fd, 'w') as f:
> +            f.write('\n'.join(cfg))
> +
> +        (status, output) = self.target.copyTo(tmp_path, "%s-%s" % (self.toml_file, provider))
> +        self.assertEqual(status, 0, msg='File could not be copied.\n%s' % output)
> +        status, output = self.target.run('cat %s-%s >>%s' % (self.toml_file, provider, self.toml_file))
> +        os.remove(tmp_path)
> +
> +    def check_parsec_providers(self, provider=None, prov_id=None):
> +        """ Get Parsec providers list and check for one if defined """
> +
> +        status, output = self.target.run(self.parsec_status)
> +        self.assertEqual(status, 0, msg='Parsec service is not running.\n%s' % output)
> +
> +        status, output = self.target.run('parsec-tool list-providers')
> +        self.assertEqual(status, 0, msg='Cannot get a list of Parsec providers.\n%s' % output)
> +        if provider and prov_id:
> +            self.assertIn("ID: 0x0%d (%s provider)" % (prov_id, provider),
> +                          output, msg='%s provider is not configured.' % provider)
> +
> +    def run_cli_tests(self, prov_id=None):
> +        """ Run Parsec CLI end-to-end tests against one or all providers """
> +
> +        status, output = self.target.run('parsec-cli-tests.sh %s' % ("-%d" % prov_id if prov_id else ""))
> +        self.assertEqual(status, 0, msg='Parsec CLI tests failed.\n %s' % output)
> +
>       @OEHasPackage(['parsec-service'])
>       @OETestDepends(['ssh.SSHTest.test_ssh'])
> -    def test_parsec_service(self):
> -        toml_file = '/etc/parsec/config.tom'
> -        status, output = self.target.run('echo library_path = "/usr/lib/softhsm/libsofthsm2.so" >> %s' %(toml_file))
> -        status, output = self.target.run('echo slot_number = 0 >> %s' %(toml_file))
> -        status, output = self.target.run('echo user_pin = "123456" >> %s' %(toml_file))
> +    def test_all_providers(self):
> +        """ Test Parsec service with all pre-defined providers """
> +
> +        self.check_parsec_providers()
> +        self.run_cli_tests()
> +
> +    def configure_tpm_provider(self):
> +        """ Create Parsec TPM provider configuration """
> +
> +        cfg = [
> +                '',
> +                '[[provider]]',
> +                'name = "tpm-provider"',
> +                'provider_type = "Tpm"',
> +                'key_info_manager = "sqlite-manager"',
> +                'tcti = "swtpm:port=2321"',
> +                'owner_hierarchy_auth = ""',
> +              ]
> +        self.copy_subconfig(cfg, "TPM")
> +
>           cmds = [
> -                '/etc/init.d/parsec stop',
> -                'sleep 5',
> -                'softhsm2-util --init-token --slot 0 --label "Parsec Service" --pin 123456 --so-pin 123456',
> -                'for d in /var/lib/softhsm/tokens/*; do chown -R parsec $d; done',
>                   'mkdir /tmp/myvtpm',
> -                'swtpm socket --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init &',
> -                'export TPM2TOOLS_TCTI="swtpm:port=2321"',
> -                'tpm2_startup -c',
> -                'sleep 2',
> -                '/etc/init.d/parsec start',
> -                'parsec-cli-tests.sh'
> +                'swtpm socket -d --tpmstate dir=/tmp/myvtpm --tpm2 --ctrl type=tcp,port=2322 --server type=tcp,port=2321 --flags not-need-init',
> +                'tpm2_startup -c -T "swtpm:port=2321"',
> +                self.parsec_reload,
>                  ]
>   
>           for cmd in cmds:
>               status, output = self.target.run(cmd)
>               self.assertEqual(status, 0, msg='\n'.join([cmd, output]))
> +
> +    @OEHasPackage(['parsec-service'])
> +    @OEHasPackage(['swtpm'])
> +    @skipIfNotFeature('tpm2','Test parsec_tpm_provider requires tpm2 to be in DISTRO_FEATURES')
> +    @OETestDepends(['ssh.SSHTest.test_ssh', 'parsec.ParsecTest.test_all_providers'])
> +    def test_tpm_provider(self):
> +        """ Configure and test Parsec TPM provider with swtpm as a backend """
> +
> +        prov_id = 3
> +        self.configure_tpm_provider()
> +        self.check_parsec_providers("TPM", prov_id)
> +        self.run_cli_tests(prov_id)
> +
> +    def configure_pkcs11_provider(self):
> +        """ Create Parsec PKCS11 provider configuration """
> +
> +        status, output = self.target.run('softhsm2-util --init-token --free --label "Parsec Service" --pin 123456 --so-pin 123456')
> +        self.assertEqual(status, 0, msg='Failed to init PKCS11 token.\n%s' % output)
> +
> +        slot = re.search('The token has been initialized and is reassigned to slot (\d*)', output)
> +        if slot is None:
> +            self.fail('Failed to get PKCS11 slot serial number.\n%s' % output)
> +        self.assertNotEqual(slot.group(1), None, msg='Failed to get PKCS11 slot serial number.\n%s' % output)
> +
> +        cfg = [
> +                '',
> +                '[[provider]]',
> +                'name = "pkcs11-provider"',
> +                'provider_type = "Pkcs11"',
> +                'key_info_manager = "sqlite-manager"',
> +                'library_path = "/usr/lib/softhsm/libsofthsm2.so"',
> +                'slot_number = %s' % slot.group(1),
> +                'user_pin = "123456"',
> +                'allow_export = true',
> +              ]
> +        self.copy_subconfig(cfg, "PKCS11")
> +
> +        status, output = self.target.run('for d in /var/lib/softhsm/tokens/*; do chown -R parsec $d; done')
> +        status, output = self.target.run(self.parsec_reload)
> +        self.assertEqual(status, 0, msg='Failed to reload Parsec.\n%s' % output)
> +
> +    @OEHasPackage(['parsec-service'])
> +    @OEHasPackage(['softhsm'])
> +    @OETestDepends(['ssh.SSHTest.test_ssh', 'parsec.ParsecTest.test_all_providers'])
> +    def test_pkcs11_provider(self):
> +        """ Configure and test Parsec PKCS11 provider with softhsm as a backend """
> +
> +        prov_id = 2
> +        self.configure_pkcs11_provider()
> +        self.check_parsec_providers("PKCS #11", prov_id)
> +        self.run_cli_tests(prov_id)
> diff --git a/meta-parsec/recipes-core/images/security-parsec-image.bb b/meta-parsec/recipes-core/images/security-parsec-image.bb
> index 2ddc543..7add74b 100644
> --- a/meta-parsec/recipes-core/images/security-parsec-image.bb
> +++ b/meta-parsec/recipes-core/images/security-parsec-image.bb
> @@ -1,4 +1,4 @@
> -DESCRIPTION = "A small image for building meta-parsec packages"
> +DESCRIPTION = "A small image for testing Parsec service with MbedCrypto, TPM and PKCS11 providers"
>   
>   inherit core-image
>   
> @@ -10,7 +10,8 @@ IMAGE_INSTALL = "\
>       packagegroup-security-tpm2 \
>       packagegroup-security-parsec \
>       swtpm \
> -    os-release"
> +    softhsm \
> +    os-release"
>   
>   export IMAGE_BASENAME = "security-parsec-image"
>   
> diff --git a/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
> index b6c4f59..0af9c3d 100644
> --- a/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
> +++ b/meta-parsec/recipes-core/packagegroups/packagegroup-security-parsec.bb
> @@ -11,7 +11,6 @@ PACKAGES = "\
>   
>   SUMMARY:packagegroup-security-parsec = "Security Parsec"
>   RDEPENDS:packagegroup-security-parsec = "\
> -    softhsm \
>       parsec-tool \
>       parsec-service \
>       "
> diff --git a/meta-tpm/classes/sanity-meta-tpm.bbclass b/meta-tpm/classes/sanity-meta-tpm.bbclass
> index 2f8b52d..1ab03c8 100644
> --- a/meta-tpm/classes/sanity-meta-tpm.bbclass
> +++ b/meta-tpm/classes/sanity-meta-tpm.bbclass
> @@ -2,7 +2,9 @@ addhandler tpm_machinecheck
>   tpm_machinecheck[eventmask] = "bb.event.SanityCheck"
>   python tpm_machinecheck() {
>       skip_check = e.data.getVar('SKIP_META_TPM_SANITY_CHECK') == "1"
> -    if 'tpm' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
> +    if 'tpm' not in e.data.getVar('DISTRO_FEATURES').split() and \
> +       'tpm2' not in e.data.getVar('DISTRO_FEATURES').split() and \
> +       not skip_check:
>           bb.warn("You have included the meta-tpm layer, but \
>   'tpm or tpm2' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
>   and preferred version setting may not take effect. See the meta-tpm README \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57182): https://lists.yoctoproject.org/g/yocto/message/57182
> Mute This Topic: https://lists.yoctoproject.org/mt/91317215/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


