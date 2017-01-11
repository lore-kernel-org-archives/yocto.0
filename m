Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E45E6E0049A; Wed, 11 Jan 2017 08:29:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E88BE003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 08:29:08 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id i68so55728314uad.1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 08:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i55eZqLYPJqJ5rKckF963esSR5yuCnj1PoRMSFQP/tQ=;
	b=ZbewayE9i/LwkLPTKH/vMq39xxlUipNaEGmETj6GGDANPc4dYvvcvwQqaAmJktmwoE
	CgJ7Ru3rAEoIlJNi9l4zifEdlXRd2UfYRCC03TgFeXHM/xiD8T5BUirfO1FXUkC7g8ci
	weHUu53fZuzSCwMQlEUwKAPdSWfnqi4FONee3rvwrSBz3Fm55HVS5MB6L5Jr84Y+BzuQ
	6Bq13BVCgYZWBMrU3JbwnsmlUULFLBEVddQAeOMSKsVX2sn4JnT/wvVe75k3gLixiE+p
	lBBgLkItlLqvw2mn4yVw0v15VLYRsUtuTgcrACAU42nJUtjwg7KnzSRPYN4qbBAG5tz0
	NSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i55eZqLYPJqJ5rKckF963esSR5yuCnj1PoRMSFQP/tQ=;
	b=L1wZ+7gZ5am0lPMDbgWWCD/V1vL5UTsa/fUHdKo2+3jWnQt/k2FffVh71g3qmWZciB
	ERq7PZ1He07IHmXDpg3fymr7POMZ0v96/iPLT1FDQf8nuI0Xh4n8WUPpEYGGcB39TOfw
	SII7Adi4jK/Z1gcYCpNmR1Wt+QYUtEZ1M+pyHB6lnkz8vzgyxkLCCXefQK0TTzMrH3Rx
	X5ksegQ1VMjn35ewjcryDrayON5Lov26S4qWdcGHY/80WA0T4LDm3TKoGHDRr3vlUvG1
	LRO/3Lxav1pEDiBsMxlWypiu+CRgkDmC3CIqk/Tm/4TlofQIuz3aDGpsedI8o4HxkcBn
	RrTg==
X-Gm-Message-State: AIkVDXI2IKHDAENXaShCcVSS6oUBhkavh/KfdmWCAnNaw3L6ffCb9DElmorsZKp7Cw1XVBUFa9BKvwNAP9EJsQ==
X-Received: by 10.159.52.219 with SMTP id b27mr3190353uac.31.1484152147612;
	Wed, 11 Jan 2017 08:29:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Wed, 11 Jan 2017 08:28:37 -0800 (PST)
In-Reply-To: <MMXP123MB012561EAC82EB3E38F223035DA660@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMKF1sqAb+CStmPbEcTNb15kUBgj-HTdjCiY89CTwdVmjA-DPQ@mail.gmail.com>
	<MMXP123MB012561EAC82EB3E38F223035DA660@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jan 2017 08:28:37 -0800
Message-ID: <CAMKF1so9esgV_ynfDo5KEKZ4f+gR8x6JFR-7oJ3w5oN-uBUmuA@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Failure Inheriting rpm_sign
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
X-List-Received-Date: Wed, 11 Jan 2017 16:29:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 11, 2017 at 4:33 AM, Chris Trobridge
<christrobridge@hotmail.com> wrote:
> On Mon, 2017-01-09 at 10:47 -0800, Khem Raj wrote:
>> On Fri, Jan 6, 2017 at 3:52 AM, Chris Trobridge
>> <christrobridge@hotmail.com> wrote:
>> > I am getting "Exception: OSError: [Errno 7] Argument list too long"
>> > for sign_rpm in the do_package_write_rpm tasks for the
>> > linux-yocto and glibc-locale recipes.
>> >
>> > This is building core-image-minimal (and also my own image) with
>> > morty (5aa481d) on Fedora 25.
>> >
>> > I have enabled the rpm signing with:
>> >
>> > INHERIT += " sign_rpm"
>> > RPM_GPG_NAME = "{name}"
>> > RPM_GPG_PASSPHRASE = "{passphrase}"
>> > IMAGE_INSTALL_append = " signing-keys-rpm"
>> >
>> > The error message makes some sense in as much as these recipes
>> > produce a lot of packages (for example, glibc-locale produces 1791
>> > packages) and the command line in the log is pretty big, although
>> > reading around I didn't find a consensus on what the max command
>> > line should be.
>> >
>> > The code to sign rpms is in meta/lib/oe/gpg_sign.py
>> > b/meta/lib/oe/gpg_sign.py and it builds up one command line with
>> > all the packages.
>> >
>> > I changed the code (patch appended) to sign each rpm in a separate
>> > command and the build completed successfully.  The signing
>> > operations take a large amount of time so I think this might be a
>> > reasonable change but you may have other concerns.
>>
>> This certainly is useful, perhaps the signing bits can be moved to
>> individual
>> recipe packaging tasks that way it may be parallelized a bit
>>
>
> Thanks Raj,
>
> Something needs to be done as, unless I've messed up somewhere, you
> cannot build even core-image-minimal with rpm signing enabled so the
> sign_rpm class is effectively broken.

Its possible. I personally dont use rpm package management system, so
dont have first hand usecase here. may be you can open a bug as well


>
> The change I made works, but it's true is less efficient than signing
> rpms individually.  The expense of the signature generation meant it
> wasn't inefficient to sign each package in a recipe with a separate
> command.

existing logic must have worked at some point of time. It just is that
some bug has creeped in over period of time, may be due to it being
a less tested combination

>
> However, looking in package_rpm.bbclass, the end of do_package_rpm()
> has:
>
> if d.getVar('RPM_SIGN_PACKAGES', True) == '1':
>     bb.build.exec_func("sign_rpm", d)
>
> So, to avoid confusion, all the rpms in one recipe are packaged in
> task, and then that task calls the function  sign all the packages.  I
> don't know if there's a way for do_package_rpm() to spawn tasks to sign
> each package individually.

I think it could be made so that all rpms coming out of a given recipe are
signed together

>
> I also found I needed 'IMAGE_INSTALL_append = " signing-keys-rpm"'
> local.conf, to deploy the public key but in sign_rpms.bbclass there is:
>
> do_package_index[depends] += "signing-keys:do_deploy"
> do_rootfs[depends] += "signing-keys:do_populate_sysroot"
>
> It may be this isn't quite what is required.

Perhaps turning this into a distro feature is a better option.

>
> Regards,
> Chris
>

