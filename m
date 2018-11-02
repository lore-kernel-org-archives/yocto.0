Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA20EE00C09; Fri,  2 Nov 2018 01:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76C34E00971
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 01:55:08 -0700 (PDT)
Received: by mail-pl1-f181.google.com with SMTP id b5-v6so701121pla.6
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 01:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=9sF9tAYhQP+sulbZpRQ29nLBK1aC0ythd9SZeN6LsA8=;
	b=uHtG/3c54kICVemFEl/Im7kEoJuMyrsLRprWv28XZgQJibrmSBOtTsS4SRdoIa1FoF
	MEE4iOsgG4GK9Fqz5kkem4raoIHRqtzsnIFwVeCzGFhfidspjD9xjTuRoQQHz6Wq5rOq
	IqUM3skJDYi/VT1fC3ECYM2JaAI5zyXXsicZwnRrYo6imQQ79wfQIABjCkZCJb0tzLYv
	SCpa/2GQWyEEe6YQsUzCLf6qK2Vk6GLJu2FgevYl9XDOWE1z9+uJ4O05VtZ+pW1c4P4/
	iswUQanqPmT485GYlGO+YwNDrtF4KlDF5iEZgRW01JPVWXMSw9Xg2AKIuyfbtKoBlk7D
	716A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=9sF9tAYhQP+sulbZpRQ29nLBK1aC0ythd9SZeN6LsA8=;
	b=YsKgI0cDR+q99OhNOzJnQUwOW5LrDuuI7svMTbiFGFeL3Tu12fk7Q+4DxIwQURV+0j
	1it6uPzWLDt22VRKxRxdEkM31gE2nZsfxkSIKoH7/wUgJEySrhsXzYa8ODYrcqdr8U97
	fZIREejQTiSnxUSl1ognyqGdHKD1DC01GFRn6/aFbCF9Fe0MyQBr/kcOc2+lS84W2UHG
	9/D3o6NTVEFv9S93KvJnM/j0bwZ0iAVQNLkbnrG4dfiesAKSXY6t14M8rgho8kw87KHk
	r6i896xtKAuBJO3eIbljj5KU7yUGhuu9J57L5g7A1n4FK8Tr+2oNSMMg1xlsMkOFrw37
	FBxA==
X-Gm-Message-State: AGRZ1gJowlz3GpjrWFjud/wrYR/i4Hl2IWvCQ7WHEOfsELl1aD3ZLqiM
	FtIVENUR1iZSEMOSR/m+ZEbQ/NAHoot1GukDLVunhTAT
X-Google-Smtp-Source: AJdET5dygej21MJa0Jdr+HtpI+47PCEBCDYJ0lELzOmyzM1wd/AbEkC4Gt5fHkvj1vq/krIFaMjThbagi/tzCQhyRi4=
X-Received: by 2002:a17:902:6f16:: with SMTP id
	w22-v6mr11117939plk.309.1541148907836; 
	Fri, 02 Nov 2018 01:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <0f39aeec-de33-54c1-d1c3-e5953cec912e@berginkonsult.se>
In-Reply-To: <0f39aeec-de33-54c1-d1c3-e5953cec912e@berginkonsult.se>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Fri, 2 Nov 2018 09:54:56 +0100
Message-ID: <CALNvYWPONCQ6SEoCeaqX3LvR2W1RoFZghgabbE56J5v9eMXZpg@mail.gmail.com>
To: peter@berginkonsult.se
Cc: yocto@yoctoproject.org
Subject: Re: Can not build SDK in rocko 'nothing provides /usr/bin/python...'
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
X-List-Received-Date: Fri, 02 Nov 2018 08:55:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 2, 2018 at 8:30 AM Peter Bergin <peter@berginkonsult.se> wrote:
>
> Hi,
>
> I'm working in rocko branch and trying to build a SDK with kernel-devsrc =
on a standard qemux86 machine. During task populate_sdk I get the following=
 error:
>
> ERROR: core-image-base-1.0-r0 do_populate_sdk: Could not invoke dnf. Comm=
and '/work/yocto/rocko/qemux86/tmp/work/qemux86-poky-linux/core-image-base/=
1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /work/yocto/rocko/qemux86/tm=
p/work/qemux86-poky-linux/core-image-base/1.0-r0/sdk/image/opt/poky/2.4.3/s=
ysroots/i586-poky-linux/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/work/yocto/=
rocko/qemux86/tmp/work/qemux86-poky-linux/core-image-base/1.0-r0/sdk/image/=
opt/poky/2.4.3/sysroots/i586-poky-linux/etc/yum.repos.d --repofrompath=3Doe=
-repo,/work/yocto/rocko/qemux86/tmp/work/qemux86-poky-linux/core-image-base=
/1.0-r0/oe-sdk-repo --installroot=3D/work/yocto/rocko/qemux86/tmp/work/qemu=
x86-poky-linux/core-image-base/1.0-r0/sdk/image/opt/poky/2.4.3/sysroots/i58=
6-poky-linux --setopt=3Dlogdir=3D/work/yocto/rocko/qemux86/tmp/work/qemux86=
-poky-linux/core-image-base/1.0-r0/temp --nogpgcheck install packagegroup-c=
ore-standalone-sdk-target run-postinsts psplash packagegroup-base-extended =
packagegroup-core-boot linux-libc-headers-dev kernel-devsrc' returned 1:
> Added oe-repo repo from /work/yocto/rocko/qemux86/tmp/work/qemux86-poky-l=
inux/core-image-base/1.0-r0/oe-sdk-repo
> Last metadata expiration check: 0:00:00 ago on Fri 02 Nov 2018 07:14:37 A=
M UTC.
> Error:
>  Problem: conflicting requests
>   - nothing provides /usr/bin/python needed by kernel-devsrc-1.0-r0.qemux=
86
>
> ERROR: core-image-base-1.0-r0 do_populate_sdk: Function failed: do_popula=
te_sdk
> ERROR: Logfile of failure stored in: /work/yocto/rocko/qemux86/tmp/work/q=
emux86-poky-linux/core-image-base/1.0-r0/temp/log.do_populate_sdk.25760
> ERROR: Task (/work/yocto/rocko/layers/poky/meta/recipes-core/images/core-=
image-base.bb:do_populate_sdk) failed with exit code '1'
>
> Any ideas about what the problem is and how to fix?

I had a quick look at how the kernel-devsrc recipe looks in master,
and there they have added python to RDEPENDS. Adding that should pull
python in to the SDK as well.

See http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-kernel=
/linux/kernel-devsrc.bb?h=3Dmaster#n234

Cheers,
Erik
>
> My addition to standard Yocto configuration is:
>
> TOOLCHAIN_TARGET_TASK_append =3D " \
>     kernel-devsrc \
>     linux-libc-headers-dev \
> "
>
> I first build image with 'bitbake core-image-base' then I got the error w=
hen building SDK with 'bitbake core-image-base -c populate_sdk'
>
>
> Thanks,
> /Peter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

