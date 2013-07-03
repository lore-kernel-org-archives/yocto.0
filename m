Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A18F8E0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 01:14:45 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id b10so5642857vea.30
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 01:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=svPwcJUmInsxWFVdP53ZLTz41cO5DK6YqIKsl9wSJZ0=;
	b=gblL8Kx6ZpRPfSJRba0/eu6RD3/Ny4IsiKpzBpnnzkTtPPQNN1Aiy4AwIrRwYQBf+D
	aFWLOocuzxV/9dZiHtj6icUAlt7x9CWz+FgvK/HgvMMliXtggfXtre/lo5VHt2ArrhIy
	L+rx3OkuMjZ52nxxeWM5FakVLxe0HwyzHYP8hUMd5yRHS/k1drohHBj+RgUCV6QhaFqa
	2eXDmA16FvNKzc98tw7foAxVUPRQAj/1RoacgP+RCyUmLLlASFN4/U4CeBW7mjY+AYMZ
	YVLByKnxcMXywK22ieErl23WpZjP4Nbk1rNyHUHus66GZOr4sD0FiFKdz6E6uhJKVahR
	nppg==
X-Received: by 10.52.29.106 with SMTP id j10mr10212723vdh.77.1372839284567;
	Wed, 03 Jul 2013 01:14:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 3 Jul 2013 01:14:24 -0700 (PDT)
In-Reply-To: <6915E88EED1243A0989D0097AC115254@PAULD>
References: <6915E88EED1243A0989D0097AC115254@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Jul 2013 09:14:24 +0100
Message-ID: <CAJTo0LbEzXwXK5MCvRqFeotATAgnBpJGboLH4KvebyNZbKAFzg@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQlJB1hkiN6ih/H65YSVGsV8eviFKDC60AHzCnuKKfaBPNs0C/XNQ4oWsA+p5IPlfuQIALSJ
Cc: yocto@yoctoproject.org
Subject: Re: Creating a volatile image
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
X-List-Received-Date: Wed, 03 Jul 2013 08:14:45 -0000
Content-Type: text/plain; charset=UTF-8

On 3 July 2013 08:48, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Alternatively, is it practical to make the existing file system readonly? My
> system is based on core-image-base, with no graphics. What will break if it
> can't write to anything outside of /tmp or /run or /media/ram or
> /var/volatile? And is there a built-in way to do that?

You can set the "read-only-rootfs" image feature (never tried it
myself, so YMMV), but if you turn off atime writes to / you won't be
making that many writes to / anyway.

Ross

