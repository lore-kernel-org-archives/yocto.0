Return-Path: <laurent.gauthier@soccasys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B2A5E00B76; Tue, 13 Jun 2017 05:16:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283B4E00B76
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 05:16:54 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id b6so17268049oia.1
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 05:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=soccasys-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=93XOSd6aeYqGBYodJTTzg5gcB4vPiidkOPz+hgKZy/s=;
	b=GXuG1lZKEYiD6Mcaepn248wPA+O7TWZLCFAHNrRDzxVtHR/sWjo3y42Ggaab7hvm+c
	gPaGIy1Kwe4ivj5nrw1oj62UCte1SmrS3n5kM+ypmhPxlHO8w+xfK3Dltmp1uxWNX/ig
	xB67beovSL/W5qRTT+sWjfdhRYDVHaGy4ybbCvY0eejYAXQMFZqVhU228YxCyPxHZVYz
	0uaL1iLC0KADEQd1/0d7g8qetiIHniE4yWLNewVmO2ZpY61P5LRY239GRo1H8J0bL4Yh
	Zklvu/BusrbQL7Me9RtIJmQn9CWT6TCxnvaeTb998WEE2TQg2ofzQkyPIw/Ute/1Sy2b
	q4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=93XOSd6aeYqGBYodJTTzg5gcB4vPiidkOPz+hgKZy/s=;
	b=qmrqihFapYElGCVLkiglEd69YC3F6LnddPQRO1B/nGJKwP3NbeE3OIlypAjDfPwD7Q
	NOZc/sB0ZHBJfZpuRhTi1AEAW1llA0i813DkPnKwMOFykjWWBeajV52sIqEgaXAi20gB
	4XL5FKEjWlR67EFsHuCohySUwe6r+S+6ito9Ejz6mCwquq6S2Cr4u1xmuQAHSdoFTkrf
	qOX+c5Xn8NIBSdTVLfTnWjBakAWlKahE2oDJ0yFjPiKvySkxCfQ4pRDpIFidfcwFTJcx
	26nWNBaSmk1F/Mnw6cKMyuSwWSA0fS7gTBrwqGC7qdEyGsJdgJeFUlVXCD/jOJLBnMkk
	JcRA==
X-Gm-Message-State: AODbwcDx4TmtI+nFITx9UPMoRrhBSviJdDO5g0yviF9Iryn0zxWEq9G4
	2nX0mEaTxT7rAN6usw9UTjKaLC8rjFb+XSM=
X-Received: by 10.202.196.67 with SMTP id u64mr27786414oif.40.1497356213462;
	Tue, 13 Jun 2017 05:16:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.144.146 with HTTP; Tue, 13 Jun 2017 05:16:13 -0700 (PDT)
In-Reply-To: <20170613063146.GA21721@graute-opti>
References: <20170613063146.GA21721@graute-opti>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Tue, 13 Jun 2017 14:16:13 +0200
Message-ID: <CAGbd71RCvSdq95qrtDVuSR5e6mCm5PnpxUN5Y-cN67V+KzSGeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Setting directories permissions
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
X-List-Received-Date: Tue, 13 Jun 2017 12:16:58 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Oliver,

It is not not clear to me what the root cause of this could be... Is
this directory shared by several pacakages by any chance?

One trick I am using to figure out in which recipe/package a file or
directory is found is the following (from the build directory):

echo tmp*/work/*/*/*/packages-split/*/etc/folder1

This will give you all recipes and packages that might deliver the
/etc/folder1 directory...

One thing you might want to try is setting its permissions during the
post installation of the package which you can specifiy in your recipe
as follows:

pkg_postinst_${PN} () {
       chmod 775 /etc/folder1
}

I hope this helps, Laurent.

On Tue, Jun 13, 2017 at 8:31 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> Hello List,
>
> I try to define a directory permission for a folder to 0775 instead of
> 0755 in my recipe. But somewhere in the install and packaging process
> this is overwritten.
>
> in my receipe I do this:
>
> do_install() {
>     install -m 0775 -d ${D}${sysconfdir}/folder1/folder2/
>
>
> I expect this on the target:
>
> root@box:/etc/folder1# ls -la
> drwxrwxr-x    2 root     webgrp         512 Jan  1  1970 folder2
>
> but I get only this permissions:
>
> root@box:/etc/folder1# ls -la
> drwxr-xr-x    2 root     webgrp         512 Jan  1  1970 folder2
>
>
> I also tried to define it in the fs-perms.txt file. But this didn't work
> either.
>
> /etc/folder1/folder2           0775    root    webgrp  false - - -
>
> some clue how to handle such directory permissions the yocto way?
>
>
> Best Regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com

