Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1653E00405; Wed,  4 Jan 2017 17:23:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79EE2E0033D
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 17:23:22 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id 96so32054630uaq.2
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 17:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tnYOqn4P3+2x+X3UNOKQIUz93Ryf8jg/n3pZ/WdHtdA=;
	b=s56Ia81UDGB8vFKJN2LS7nOuGMEHXDN8F4ds867qB2k2NOvFh6JLlhO03h/6HArR74
	9LZ9H9DYCD2FA7h6Im3IAg8kFQeqwmvltWwA2Iq+4DgInGgDrT0eFdfsjW1FjdqDF6rX
	/qa1EKNebcbIKoN5PnvSq9wTIRd0ya0LE5DrMfDHIgYQB0lkVjzvtk1oy/QyFSS37Zsr
	ehqj90lMnEBg5LOsumfOvn+8+1eLc4eSRwA5dXz1pIk2OieHrt5IZR+8ijCuK0m94Cvv
	Pg1QLOGDEM9qaIX6iZapKnXIM3zJBJD8dzyad9tlS3KSXIw+0GyTLJkyHVqjQ8f+5jMe
	19YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tnYOqn4P3+2x+X3UNOKQIUz93Ryf8jg/n3pZ/WdHtdA=;
	b=Vp4MVBpRvDpMoYqX0dTahe2ldH3ep+LnMwS434oA6VdTqtQH4/JpklcUrgbuw9p05j
	gwJOX4aSXaSdpkn6q+Nm6o+Is6AVbOJ8lKWVs2gbqTUXEkJCJJM7ZHTKueTTJD65a03s
	vqVPTfjFcEAggKD5lHOosSxqiLZ8z0qJ80wuWLx2a7kkwMsfVbv4DsP8gnYnI5OBl4d5
	b6EuFQn2FiZMsL8rK/1jP3xomqJamOw04/Fm4LWEhYsWF2WvjMhNilEh7azOSq2hTiBg
	xC4VGTiHfPXxTDlHl2SBng/jnsExnPu7LSLYSfZncDDQO3JSPg1WItPkSARnK02KRlxY
	xuXw==
X-Gm-Message-State: AIkVDXKxGH6qIM312av5nM5mI6BqRZKPJjJww4jfe74RcTtMyfLnqf1PZlt4ESAfuN4Kh3lQEf+bVDzBWcNREw==
X-Received: by 10.176.1.17 with SMTP id 17mr42951270uak.143.1483579401324;
	Wed, 04 Jan 2017 17:23:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 4 Jan 2017 17:22:50 -0800 (PST)
In-Reply-To: <BLUPR0601MB16492D49CB64E48D8814700DE6610@BLUPR0601MB1649.namprd06.prod.outlook.com>
References: <BLUPR0601MB16492D49CB64E48D8814700DE6610@BLUPR0601MB1649.namprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 4 Jan 2017 17:22:50 -0800
Message-ID: <CAMKF1sowg1wSwZdOyFmWPwpLo+U=VpiV6MH90Wzn=RNyOULx-w@mail.gmail.com>
To: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK: Missing 32 bit sysroot
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
X-List-Received-Date: Thu, 05 Jan 2017 01:23:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 4, 2017 at 6:35 AM, Schmitt, Richard
<Richard.Schmitt@commscope.com> wrote:
> I have a ARM 32/64 multilib environment set up in my yocto based project.
> Everythings working fine.  Almost.  I am using the poky krogoth branch wi=
th
> the patch for =E2=80=9Cbug 1357=E2=80=9D
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1357 cherry-picked.
>
>
>
> When I populate the SDK and install it, I do get two toolchains with the
> correct multilibs and the correct environment setup files
>
>
>
> The two environment setup files are:
>
>
>
> environment-setup-aarch32hf-neon-fp-armv8-pokymllib32-linux-gnueabi
>
> environment-setup-aarch64-poky-linux
>
>
>
> The two respective toolchains are:
>
>
>
> arm-pokymllib32-linux-gnueabi-
>
> aarch64-poky-linux-
>
>
>
> Both of these toolchains are set up to use the 64 bit arm sysroot:
>
>
>
> /opt/poky/2.1.2/sysroots/aarch64-poky-linux
>
>
>
> There is one small issue.  The ARM sysroot that is exported contains linu=
x
> include files that can only be used by the 64 bit toolchain.  For example=
:
>
>
>
> Within the aarch64 sysroot, the linux include file:
>
>
>
> /opt/poky/2.1.2/sysroots/aarch64-poky-linux/usr/include/asm/sigcontext.h
>
>
>
> Contains the implicit type __uint128_t.  This type is not defined when us=
ing
> the arm-pokymllib32-linux-gnueabi- toolchain so any 32 bit that includes
> <signal.h> will fail to compile.


__uint128_t is implicit type defined by gcc internally on certain
architectures which can support 128bit int.
however this does mean that the headers which are assuming this to be
available should be made multilib
so you might need to use oe_multilib_header to install multilib
specific versions of the file which is asking
for this type.

>
>
>
> In my yocto build directory, I have a target sysroot for both the 32 bit =
and
> 64 bit environments:
>
>
>
> tmp/sysroot/lib32-machine
>
> tmp/sysroot/machine
>
>
>
> where machine is the value of the MACHINE define.
>
>
>
> These two sysroots contain different usr/include/asm/sigcontext.h files.
>
>
>
> If I copy over the lib32-machine sysroot to the opt/poky/sysroots directo=
ry
> and use that sysroot when compiling 32 bit apps, things appear to work.
>
>
>
> Now I am not quite sure the right way to fix this.  There are at least th=
ree
> possibilities:
>
>
>
> 1.       The 32 bit toolchain should be able to understand __uint128_t ev=
en
> if it interprets to an array blob
>
> 2.       Yocto populate_sdk should export the 32 and 64 bit sysroots
>
> 3.       glibc should create include files that are useable in both 32 an=
d
> 64 bit environments.
>
>
>
> What are folks thoughts here?  Right now I=E2=80=99m manually doing #2.
>
>
>
> Thanks,
>
> Rich
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

