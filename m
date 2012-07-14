Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7845E0034D
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:35:46 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so9165575pbb.35
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=7OlKUA8yqJ4BRkUqUyDdnmstCdcG0H7k2hpRIWr8Xng=;
	b=eGzqz5TUbifz6pL2drvpvXCEa6CFzeHj3a2PyHyixxAH1bgNVswLCgM8hcdg9OMom9
	xd/jyHLVYDoPl/MuxysTlk31RZrTNGK/O29+etz8FJdW3fruTvNjjYhZd1QeUGJDWJdS
	qKjFff4aLBA44eUYbZvcL2sFH1iNOBL7fOKPmUQfdOGfm3Wyyqe049VSARCzv5/51Hle
	wynj2NRs+tuvB5FscySaisskQ/dxe9krZhJLFd0wSkX8dI88F3z9eWdmNFlm4Ys29NC1
	ypkuYcj0QHce7b3ZAfW1/d3CLxwtuL6R2q8dKsZSdPCT1VRhb3KB0JLbs8Y8DaZv0ANL
	QBFA==
Received: by 10.68.225.231 with SMTP id rn7mr13242863pbc.13.1342290946445;
	Sat, 14 Jul 2012 11:35:46 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pe2sm8455387pbc.59.2012.07.14.11.35.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 14 Jul 2012 11:35:45 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sr_frnNj1F1Sw6ZqW+CFJ=MR6jKqGSXKroVrufVeC4OEw@mail.gmail.com>
Date: Sat, 14 Jul 2012 22:35:40 +0400
Message-Id: <9D875507-95C7-40E6-BB5E-BB2611CA524D@gmail.com>
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
X-List-Received-Date: Sat, 14 Jul 2012 18:35:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                   Thanks a lot for this timely patch, I was stuck with =
this problem all day!! :-)
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

Will this patch make its way to oe-core/poky?=20

I just noticed that for linux kernels 3.0.0 and 3.3.0 for powerpc =
(virtex5) , it doesn't seem to have this problem.

The error manifests for 2.6.3.x kernels. Any idea why?

Best regards,

Elvis Dowson=

