Return-Path: <busytester@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1132C4C80335
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 13:26:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so2130024qwj.35
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 11:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=WNY+bpA1awsg5YZvTMe7mYspU9/mFn5ECnjOyTUf5hk=;
	b=pFNe9MaHimKHCZUUgbyX4CDfTqwp3DOTxtX2oPY23Nx01GIo8LmwmzfXo2cCuqZ8fF
	lKDRjTqb8l4F5NJrdwT5FzsM49LSV/C3SqEEv27dkJrufmf8vH9fTOuq+zrcxD2ruX6P
	AEutKIncXWwuWnH6Zbm71L0g6Z41llI1fJrn4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=fInNotD9qN0BeHSAqfDDRECwC8k1Ke0NYqOqIBIpj6dxrmJxhgFDprRqgfcXUsnman
	/Zhho92X1Y65bIoVTGNTsjafPXOYPCMf/iTDPv+B4GCqGO/DMfI6MgoiO85ZfM4g7ktt
	94v7HiliXlR1+1c3+Cv4Yzg4d+dPTB0VjHHek=
MIME-Version: 1.0
Received: by 10.229.124.145 with SMTP id u17mr2674593qcr.71.1305829587747;
	Thu, 19 May 2011 11:26:27 -0700 (PDT)
Received: by 10.229.98.140 with HTTP; Thu, 19 May 2011 11:26:27 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
References: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
Date: Thu, 19 May 2011 11:26:27 -0700
Message-ID: <BANLkTikHmPEiXKqRKZuRuZAB-Bm1vj9_bg@mail.gmail.com>
From: Daniel Lazzari <busytester@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't create a new project with Yocto BitBake Commander plugin
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
X-List-Received-Date: Thu, 19 May 2011 18:26:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

I want a Bitbake Commander project as I'll be creating and editing
recipes, classes, and configuration files. I am using the Bernard
release I downloaded from
http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
though I renamed the directory to Yocto. I am using the 1.0 Eclipse
plugin. I did have a build directory so I moved that outside of the
Yocto directory, but still no luck.

Thanks for the help,
Daniel Lazzari Jr.

On Wed, May 18, 2011 at 1:55 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> Hi Daniel,
>
> One more thing to check, do you have a build dir under your Yocto checkou=
t? =A0If so that maybe the reason prevent a new bitbake commander project b=
eing created since the build dir can contain large contents that Eclipse IP=
roject tree view can't handle, so the work around is to move your build dir=
 outside your Yocto checkout through oe-init-build-env path_of_build_dir...
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Daniel Lazzari
> Sent: Tuesday, May 17, 2011 5:46 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Can't create a new project with Yocto BitBake Commander =
plugin
>
> Hi everyone,
>
> I searched and couldn't find anything on this issue, but it seems so
> obvious that I'm guessing I'm doing something wrong. I installed the
> Yocto Eclipse Plugin in Eclipse Helios Service Release 2 on an Ubuntu
> 10.04 machine. I selected File->New->Project, Selected Yocto BitBake
> Commander->New Yocto Project, set the Project Name to Yocto and
> selected the workspace folder where I have my Yocto checkout. It says
> everything is valid at the top, I click Finish, and it just flashes
> and keeps the dialog box up. No new project is created.
>
> Has anyone else experienced this and knows of a fix or workaround? I'd
> be happy to provide more details or log a bug for it if that helps.
>
> Thanks,
> Daniel Lazzari Jr.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

