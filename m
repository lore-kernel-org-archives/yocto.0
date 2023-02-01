Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B74C05027
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 15:19:32 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.26226.1675264770305173112
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Feb 2023 07:19:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=he2HAHkp;
 spf=pass (domain: linaro.org, ip: 209.85.218.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-ej1-f54.google.com with SMTP id lu11so15083893ejb.3
        for <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 07:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=APGDpwq4FaDPj89TNY6yO/Tx9+Mmvrfv/wvtt1xGeZY=;
        b=he2HAHkp1GpCnu6imlMuFnAxYjEEMv1RK3NFy7gdfIO/pQvpDCiUJTnLWzff60Ngts
         m6dAwy8Oc8yK/z7Z7vHgln++lCl5HVebPuxQOM9EvJmUJGA4J+LVsiseAjSDaNJOiUu2
         fLuO92zBgFjvq/2m4DrKejybm11D7hSK632SKbRQveFiSg0HeuSwo34KdOa0ypFFQlIT
         rI9Gq6i97rQ9U8OLUBu5hi4YTHPtuU/vg0X1oTNjHyIY//BHbamyVpWmmRWxKd1hyxjn
         jdJ8WcjNSPCfELn1Detnzcpu6US7IeX0Tk3FKu+kEJ6D0qMsuRWDmbCkwr2yq8Jp45zp
         2DWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APGDpwq4FaDPj89TNY6yO/Tx9+Mmvrfv/wvtt1xGeZY=;
        b=CaZ6Lfi3lLHoVrtZvYGUN/6QkjohTkJga73Ke2dUKAWeKyNCSW4a2VYroaq9LhDIvp
         4w6fGEmNYW2UrrfTmX2hiWvBEM5QYdKaz+F5StyrfHLo30i+aangYKuOQwMQRCrPzKDq
         aBykiNyyQvyoU1/nyMTWrwuR50LCs7S6/MNknQUJB95H68ZGw8DipWIlyjsVv1x2s3Gv
         I2Un1G534ge3TEZVW8kTLAMdXetR76U8Mcqr72r01ZLWjHwPurw4/ytq8Xr0/EMlEkCM
         TzUTu/uML/xtfpamY3byBWNl779VZsWp1I5qrKLmMZ96WHbhWEAF7NCaDSpdzgWH71sO
         PTsQ==
X-Gm-Message-State: AO0yUKXNI/4Y29kKECvtYXiOpkZk6wwM3KHC74R6I0i+z+1vGMnN9rbr
	iTh7sYpNKHoQANHRd0xT1qgUkA==
X-Google-Smtp-Source: AK7set+083bFRh5WHDtThxhML1LSVloYAXaZ2qgX9zNL2ZTVbpZd1qNSTlZR/uybHFFoKDdiX2Kj/Q==
X-Received: by 2002:a17:907:994f:b0:86f:d0c9:4bdd with SMTP id kl15-20020a170907994f00b0086fd0c94bddmr2638389ejc.27.1675264768692;
        Wed, 01 Feb 2023 07:19:28 -0800 (PST)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id a4-20020a170906274400b0088224df181asm7294969ejd.224.2023.02.01.07.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:19:28 -0800 (PST)
Date: Wed, 1 Feb 2023 17:19:26 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [kirkstone][meta-tpm][PATCH 1/3] oeqa/swtpm: add swtpm
 runtime
Message-ID: <Y9qC/rwhVKP/clbd@nuoska>
References: <20230201132614.2840970-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230201132614.2840970-1-akuster808@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 15:19:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59136

Hi,

I don't mind but is the meta-security policy to accept new features in
stable branches?

FWIW, meta-security meta-tpm master branch does work on kirkstone too.

On Wed, Feb 01, 2023 at 08:26:12AM -0500, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> (cherry picked from commit 50eff83d428598630d5277904eeeb4b668c31c22)
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-tpm/lib/oeqa/runtime/cases/swtpm.py | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 meta-tpm/lib/oeqa/runtime/cases/swtpm.py
> 
> diff --git a/meta-tpm/lib/oeqa/runtime/cases/swtpm.py b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
> new file mode 100644
> index 0000000..df47b35
> --- /dev/null
> +++ b/meta-tpm/lib/oeqa/runtime/cases/swtpm.py
> @@ -0,0 +1,24 @@
> +# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
> +#
> +from oeqa.runtime.case import OERuntimeTestCase
> +from oeqa.core.decorator.depends import OETestDepends
> +from oeqa.runtime.decorator.package import OEHasPackage
> +from oeqa.core.decorator.data import skipIfNotFeature

While this test is great to see, it only tests the case where TPM device
is only visible for the userspace of the Linux system. Exposing the TPM
device to bootloader etc requires starting it outside of qemu and
configuring qemu to expose the char device.

With poky master branch with QB_SETUP_CMD support, this can be done
in machine config with:

# setup SW based TPM for testing, note socket file path has 107 character
# length limitations from sockaddr_un
QB_SETUP_CMD = " \
   set -ex; pwd; which swtpm; swtpm --version; which swtpm_setup; \
   test -d '${IMAGE_BASENAME}_swtpm' || ( mkdir -p '${IMAGE_BASENAME}_swtpm' && \
       swtpm_setup --reconfigure --tpmstate '${IMAGE_BASENAME}_swtpm' --tpm2 --pcr-banks sha256 --config $(dirname $( which swtpm ) )/../../etc/swtpm_setup.conf ) && \
   test -f '${IMAGE_BASENAME}_swtpm/tpm2-00.permall' && \
   swtpm socket --tpmstate dir='${IMAGE_BASENAME}_swtpm' \
         --ctrl type=unixio,path='${IMAGE_BASENAME}_swtpm/swtpm-sock' \
         --flags startup-clear \
         --log level=30 --tpm2 -t -d \
"
QB_OPT_APPEND += "-chardev socket,id=chrtpm,path='${IMAGE_BASENAME}_swtpm/swtpm-sock' -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis-device,tpmdev=tpm0"

In normal cases swtpm exits when client qemu machine exits. If the qemu
machines exits before it connects to the swtpm device, the swtpm process
is leaked but I haven't fixed this yet.

Cheers,

-Mikko

> +class SwTpmTest(OERuntimeTestCase):
> +    @classmethod
> +    def setUpClass(cls):
> +        cls.tc.target.run('mkdir /tmp/myvtpm2')
> +        cls.tc.target.run('chown tss:root /tmp/myvtpm2')
> +
> +    @classmethod
> +    def tearDownClass(cls):
> +        cls.tc.target.run('rm -fr /tmp/myvtpm2')
> +
> +    @skipIfNotFeature('tpm2','Test tpm2_swtpm_socket requires tpm2 to be in DISTRO_FEATURES')
> +    @OETestDepends(['ssh.SSHTest.test_ssh'])
> +    @OEHasPackage(['swtpm'])
> +    def test_swtpm2_ek_cert(self):
> +            cmd = 'swtpm_setup --tpmstate /tmp/myvtpm2 --create-ek-cert --create-platform-cert --tpm2',
> +            status, output = self.target.run(cmd)
> +            self.assertEqual(status, 0, msg="swtpm create-ek-cert failed: %s" % output)
> -- 
> 2.37.3
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59129): https://lists.yoctoproject.org/g/yocto/message/59129
> Mute This Topic: https://lists.yoctoproject.org/mt/96675158/7159507
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


