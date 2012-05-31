Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB1AE01423
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 18:57:17 -0700 (PDT)
Received: by eekb45 with SMTP id b45so153653eek.35
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 18:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fQ3Z9RT+kduS7q3MSlkiNCObHFRuFZYfK2ObXHkEQ2I=;
	b=LT5NV6UmCQiFW3txu/31OIh99zsviAGNj0FmSS2u9H2PP9AOwYr1d/efpUuuMRJS9T
	+hCyDcvPaDRiTUjWBdnckNf+o2P2yQGmupaY3J5a9Kto/EWWzu4gEu1Vx60BbWeYwNLy
	KRp3i/p/2KSJq2v6UawkSiY3okiUlnClGZj7jK8HFtCHlXOxpBd+P7dIGSvgN0qaYtMn
	i33qUvEHSYhliKa5PjD4xlmB6uZfHDiP1uFM9KDIEDKDckB41oBVsVRW8fmkchvUtQDL
	PvUoQxa6LRj4ewIn9kaEINs13TaN6Vs0dVRta7uh0qBHP8foIBqlFNrRHH+gUdgdjYlO
	xPtQ==
Received: by 10.14.100.194 with SMTP id z42mr8259352eef.146.1338429436453;
	Wed, 30 May 2012 18:57:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Wed, 30 May 2012 18:56:46 -0700 (PDT)
In-Reply-To: <CAPhnLPC6auSpiJ-ZQkgMwC3XGroAvmhOK702J_4EC0PXbc6tmg@mail.gmail.com>
References: <CAPhnLPC6auSpiJ-ZQkgMwC3XGroAvmhOK702J_4EC0PXbc6tmg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 May 2012 18:56:46 -0700
Message-ID: <CAMKF1so9n=0dQJpjjR6gMRykcyonQEK1icOuxAXPV7FrccuxPA@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Weekly build availability
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
X-List-Received-Date: Thu, 31 May 2012 01:57:18 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 30, 2012 at 6:03 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> The weekly build for the milestone 1 of 1.3 will be available
> very shortly at :
> http://autobuilder.yoctoproject.org/pub/nightly/20120530-2
>
> We currently have two issues:
> poky-tiny failure:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2523

Does this patch help ?
https://dev.openwrt.org/changeset/12107

>
> non-gplv3 failure:
> NOTE: package gnome-doc-utils-native-0.20.6-r8: task do_install: Failed
> I looked to verify that this wasn't an infrastructure issue. It
> appears not to be.
> If anyone has more info on this, I'd appreciate it.
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

