Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11665E006D8; Tue,  7 Aug 2018 03:38:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B92CE0043F
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 03:38:29 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id 13-v6so27596208ois.1
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2018 03:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HWAxn6qNLaVcEywtq5Lc+6RN38I+jkp+WzsOPnE0K7U=;
	b=DRfAJ24TvWB0aPvYYEjfQtWNkW0miLzbQ6Klrd1peFinw0uXbmbR5RsMCC3gq0uACf
	XLER0BuzGjMWQ7S/wvirdPU3lnHdW2m1ZeT+S54eOypVL8tmulWsOEMpFkRzL3EzTO//
	BEmcYTVSTVJT5fn18DOrGDAPzbBIfqzkwVYiUO/v4CnkDU9XzCoohT9HH6GLUrWv0a2c
	Pr8CaiOD6kDJPcKDTllKWK59PQMDcsssX94l5tDmhDww6FgjHx5GTmpy8YBordl8iCzb
	hPzLbV4Ck9w/UbRjLjtiPuZmDzJ9xc/LyHPDIqY+h/xG/cpvhHb2u/t6h1MphhDXrBFg
	dtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HWAxn6qNLaVcEywtq5Lc+6RN38I+jkp+WzsOPnE0K7U=;
	b=syGs4jB0/yyOLVqBaKLx6Px5UaCLSNI7o73fMzTkInGxOLTLAE+HbVMXBdiIotQ9r0
	u0h/tPt6EpTqzP6U1+g8TTfuS8Ytwl5Ayyag7GIgxdAMs4AysBuOwgHBhyn5DyEFxiJt
	uGgTGZo7qYqp7LZSCl2T8R7YRFeSgozvIZy+KZCLkFiBmik7Zh/EfFpyLd4t054BL+R6
	uY1TqPfc2u7pAjJa36RtwFaXu0wXUZMA4+FBVVHuTelK3XwS4rkIpnXWhIIgBckNHOLL
	PT464CY+nHpyhdKwyN4doXGLueQAYt/xiBMBFuEAkRrjejEsyjf+0yH7qNbt/5YC0KQi
	HY6A==
X-Gm-Message-State: AOUpUlEnPhoreL0X8b/R+/JOoa0ScVj9dcxMvRLLiK6UIkIWUY6/LJQ5
	R8L+5gxKSeanS75TLLqgLvI+/7EOJK9NuYlttQ5Mbg==
X-Google-Smtp-Source: AA+uWPwR5qTDtPY++cskrv/OOw1xkr2XctkmLMCmso9D/RLnuNFcSmL+QPmgILrEU3QceEzMlWHflop9bnQu9ELVeuo=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr19755228oig.245.1533638309016; 
	Tue, 07 Aug 2018 03:38:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Tue, 7 Aug 2018 03:38:08 -0700 (PDT)
In-Reply-To: <1533636928.8352.5.camel@collabora.co.uk>
References: <1533630587.8352.1.camel@collabora.co.uk>
	<CAJTo0La6RFY0VKfbsUoPGcV1MB_Z0DuhHKQSAs=a74q0+qRERA@mail.gmail.com>
	<1533636928.8352.5.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Aug 2018 11:38:08 +0100
Message-ID: <CAJTo0LZeNUVt5asvd63=UswR9z3RisPTTrq7D+R-ZFJzsBAhtw@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Extract GPL sources
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Aug 2018 10:38:30 -0000
Content-Type: text/plain; charset="UTF-8"

I believe this is fixed in Pyro 2.3.4.

Ross


On 7 August 2018 at 11:15, Fabien Lahoudere
<fabien.lahoudere@collabora.co.uk> wrote:
> Thanks Ross,
>
> I have an issue when using the archiver:
>
> local.conf:
>
> INHERIT += "archiver"
> ARCHIVER_MODE[src] = "patched"
> COPYLEFT_LICENSE_INCLUDE = 'GPL* LGPL*'
>
> ERROR: gmp-native-6.1.2-r0 do_unpack_and_patch: Command Error: 'quilt --quiltrc
> /home/aragua/src/poky/build2/tmp/work/x86_64-linux/gmp-native/6.1.2-r0/archiver-work//recipe-
> sysroot-native/etc/quiltrc push' exited with 0  Output:
> /bin/sh: quilt: command not found
> ERROR: gmp-native-6.1.2-r0 do_unpack_and_patch: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in: /home/aragua/src/poky/build2/tmp/work/x86_64-linux/gmp-
> native/6.1.2-r0/temp/log.do_unpack_and_patch.8027
> ERROR: Task (virtual:native:/home/aragua/src/poky/meta/recipes-
> support/gmp/gmp_6.1.2.bb:do_unpack_and_patch) failed with exit code '1'
>
> I tried to drop native from COPYLEFT_RECIPE_TYPES without effect.
>
> Where can I add quilt-native dependency?
>
> For information I use pyro release. Is there any known bug for that release?
>
> Thanks
>
> On Tue, 2018-08-07 at 10:10 +0100, Burton, Ross wrote:
>> Have a look at the archiver class.
>>
>> Ross
>>
>> On 7 August 2018 at 09:29, Fabien Lahoudere
>> <fabien.lahoudere@collabora.co.uk> wrote:
>> > Hello
>> >
>> > I need to extract all *GPL* sources patched related to an image in order to publish them.
>> > I want to do it automatically, ie 'bitbake myimage -c extract-gpl-sources'
>> > Is there a mechanism to do that?
>> > If not do you have any idea how I can implement it?
>> >
>> > Thanks
>> >
>> > --
>> > Fabien
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
> --
> Fabien

