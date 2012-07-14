Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A1CE006EA
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 09:41:28 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10625590pbb.35
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 09:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=ST85vYV/s7ocYB0A1v/rWN910pAqEegScgWeAioNwFk=;
	b=nmCc9grtT43XGvqIumTxBqVZary3FBldJ+0Xw+r/gFVg6MM3UL+MoXjcug184WpB4B
	xTS1jAK8VOE23JKhfi8TNDFu5p39zTjv64VZLNEjf+ScD7te07mn9fxrYIw3HvOO1yYl
	iJkKN42V8Ux4k+pvKHtovVTVepfGkyneO0Yt76YZHPGq/1QJz0wCAsc75oS7RJRxPBVH
	Tc+tT3fob0WUSC2nyGeCJUy3I1qUbikvtcgYXNdhgZN3lK6BNEYnhfUKQr58rBZPNgjO
	XdX6QUvw2SqwG+myNDLr7WllyiBq4ozdPLLGUICsuyYujEVV+uvWy+VXR+1thtK8w7h6
	A69g==
Received: by 10.68.220.104 with SMTP id pv8mr20343069pbc.119.1342370488160;
	Sun, 15 Jul 2012 09:41:28 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ip5sm10162776pbc.3.2012.07.15.09.41.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 Jul 2012 09:41:27 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sr_frnNj1F1Sw6ZqW+CFJ=MR6jKqGSXKroVrufVeC4OEw@mail.gmail.com>
Date: Sat, 14 Jul 2012 23:07:42 +0400
Message-Id: <8E7EB961-54AE-4CFC-8D94-301C45DE6615@gmail.com>
References: <3D46D1AB-7917-4EB0-8515-D68409DD089A@gmail.com>
	<CAMKF1sr_frnNj1F1Sw6ZqW+CFJ=MR6jKqGSXKroVrufVeC4OEw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: Architecture did not match (20 to 62) on /work/virtex5-poky-linux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 15 Jul 2012 16:41:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Jul 14, 2012, at 10:26 PM, Khem Raj wrote:

> On Fri, Jul 13, 2012 at 10:17 PM, Elvis Dowson =
<elvis.dowson@gmail.com> wrote:
>> ERROR: QA Issue: Architecture did not match (20 to 62) on
>> =
/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00/packages-split/kernel-dev=
/usr/src/kernel/scripts/kconfig/kxgettext.o
>> ERROR: QA run found fatal errors. Please consider fixing them.
>=20
> This is because kernel is trying to package tools which are built for
> your build host.
> Try this patch
>=20
> =
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mis=
c&id=3De061aca8a9ad2e4342927b3d2ca4216ef3874936

The patch that you sent me works! Thank you very much for this!

I've built both linux-2.6.38 and linux-3.0.0 for the PowerPC440 =
processor on the Xilinx Virtex-5 processor, against the latest updates =
to the yocto repos, as of today.

Do you think you could apply your patch to oe-core, so that it's =
available mainstream?

Best regards,

Elvis=

