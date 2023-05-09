Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D85FC77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 07:53:31 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.26343.1683618804085233661
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 00:53:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=fKefqYvB;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 12842240016;
	Tue,  9 May 2023 07:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1683618802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XvjzvO2JHJz/wVAgXn+3DS7hLdBWkjncnGewXFXjwn4=;
	b=fKefqYvBH9CzjkGuHhzZLOrSjzshKWuKsFWUkQievi3JHaktrFAhTmNxI05IYN557FarM1
	KQrbjSUjH7dzQp1ty1prFk7ewjP929WZMIIEeYjxO6Qjzyeez792qDhHPEA0W1s/gnE6dI
	XJ11V18R0Knlih/V2dPsjl8toQ7zwiUS9jwKgQ84+9zbfYQOdahvcChMHvOTXLWc30Idzt
	sADeIeiLq8po6Y/A5dA3bkxs/aPJkRZmBE7s8oxjCTp+0xvuvm4suDNiGBGT5PElb1qPw5
	v3GBKEzjLa1X3ZtuLgiPvVVqkS2W1aby2fOQii3iv+sppPjubZN7B5iFzmigxg==
Message-ID: <e3dbc417-fb92-6e48-4e4b-c42498d0be28@bootlin.com>
Date: Tue, 9 May 2023 09:53:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][kirkstone][PATCH v2] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Content-Language: en-US
To: peter.marko@siemens.com
References: <20230508145044.429707-1-peter.marko@siemens.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20230508145044.429707-1-peter.marko@siemens.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 07:53:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59913

Hi Peter

On 08.05.23 at 16:50, Peter Marko via lists.yoctoproject.org wrote:
> Changelog:
>    3.2.2
>      A buffer overflow in tss2-rc as CVE-2023-22745.
>      The drv layer in tss2-rc should have been the policy layer.
>      Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
>      This is API breaking but considered a bug since it deviated from the FAPI spec.
>      FAPI: undefined reference to curl_url_strerror when using curl less than 7.80.0.
>    3.2.1
>      Makefile.am: make all EXTRA_DIST includes unconditional to fix pristine tars
>      Fix usage of NULL pointer if Esys_TR_SetAuth is calles with ESYS_TR_NONE.
>      Store VERSION into the release tarball.
>      fapi: fix usage of policy_nv with a TPM nv index.
>      Tss2_Sys_Flushcontext: flushHandle was encoded as a handleArea handle and not as parameter one, this affected the contents of cpHash.
>      linking tcti for libtpms against tss2-tctildr. It should be linked against tss2-mu.
>      build: Remove erroneous trailing comma in linker option. Bug #2391.
>      esys: fix allow usage of HMAC sessions for Esys_TR_FromTPMPublic.
>      test: build with opaque FILE structure like in musl libc.
>      Usage of a second profile in a path was not possible because the default profile was always used.
>      FAPI: Fix provisioning if auth value for storage hierarchy was set.
>      FAPI: Fix recreation of EK.
>      FAPI: Fix usage of lockout auth value in Fapi_Provison.
>      FAPI: Fix loading of key in policy execution.
>      FAPI: Fix Fapi_ChangeAuth updates on hierarchy objects not being reflected across profiles.
>      Esys_PCR_SetAuthValue: remembers the auth like other SetAutg ESAPI functions.
>      tests: esys-pcr-auth-value.int moved to destructive tests.
>      FAPI: Fix double free if keystore is corrupted.
>      Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
>          This is API breaking but considered a bug since it deviated from the FAPI spec.
>
> Signed-off-by: Peter Marko <peter.marko@siemens.com>


Thanks for the patch!
However, we'd need you to add one thing to your git configuration, so 
that your patches are given an "Author" field which matches your 
"Signed-off-by" information. See 
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#Fixing_your_From_identity 
for details.

Don't hesitate to send a patch test directly to me, if you wish.
Thanks again,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


