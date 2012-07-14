Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C69CE0034D
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:26:40 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1510813eaa.35
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=v2TYeQT80meEhWzzeteTrGx/nSG8ThQ0g83BuLqx8nc=;
	b=Fs3NJ9i0kKAbp2PipOTCQL4o3Mez1AnWGildoe5qXiTaqEopDP/Y36tSeug4dzCd1d
	vB183WDdJDe2AxxIhUr2OsJkdDpII3AVMYF+sLUm2H/WIb3gBOF/HvM1n7vx3XNPc+yo
	H1pfbVnpuefY6DdnbPR2/Q+fZlmPdZBsfr3NpjOc4v1qd0GeDkKW6YGNyMTzJ7rP0AyX
	RnIlj1nOlgl5S8e33FTizPLn67xTjhx/1+a+rrzJH1xOwtJ16FQBtwX2P3Aunlopl/Gn
	QQ6W7zvIOsrKxuPvOUg3Qu9UHYchd+F20qQepMn4IjWREz0ZL2QeAfwTQrq2j6camlEh
	47zw==
Received: by 10.14.3.195 with SMTP id 43mr2772770eeh.24.1342290399684; Sat, 14
	Jul 2012 11:26:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Sat, 14 Jul 2012 11:26:09 -0700 (PDT)
In-Reply-To: <3D46D1AB-7917-4EB0-8515-D68409DD089A@gmail.com>
References: <3D46D1AB-7917-4EB0-8515-D68409DD089A@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 Jul 2012 11:26:09 -0700
Message-ID: <CAMKF1sr_frnNj1F1Sw6ZqW+CFJ=MR6jKqGSXKroVrufVeC4OEw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
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
X-List-Received-Date: Sat, 14 Jul 2012 18:26:40 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 13, 2012 at 10:17 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> ERROR: QA Issue: Architecture did not match (20 to 62) on
> /work/virtex5-poky-linux/linux-xilinx-2.6.38-r00/packages-split/kernel-dev/usr/src/kernel/scripts/kconfig/kxgettext.o
> ERROR: QA run found fatal errors. Please consider fixing them.

This is because kernel is trying to package tools which are built for
your build host.
Try this patch

http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/misc&id=e061aca8a9ad2e4342927b3d2ca4216ef3874936

