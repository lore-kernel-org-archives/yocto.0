Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DBBFE009BD; Wed, 15 Apr 2015 04:50:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vn0-f46.google.com (mail-vn0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8CCE00954
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 04:50:23 -0700 (PDT)
Received: by vnbg129 with SMTP id g129so13988794vnb.4
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 04:50:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=vqn0FJGPszLTZOw3Rt0zxypTTmy/1yf07ok74+EKJQc=;
	b=ds9UuU/ySFVeJxXc+UjN2d4O+r8/+auWxD/9jKCTXs+B0fJiNi+e5J00vi0Tce9TlK
	82VjWg0o0kTCItoOstkD9i7bu1SERnoMfxdUQD7MAUKq9b+1M6Bux5OyTnu33XTQV8OR
	6Y5AqYv/Jrq+2rpp7TSbbc3fuOiJKJ/0wQbzXZ/4D3VuzADG/fXRlwq4xZzi59sLcCY/
	V2iEp06niGRld4GOao4C3OhV2gmWGV6LhRRHy4jov6X/yPSd1YDsShH5Exee79X7IxvW
	Bc14T8T7Bx11KdgfxVkyzVbTO3dw5+5pPRdoBEl7xA9PYSkJyRbd5I7rNqAV0aBI/NIi
	sOJQ==
X-Gm-Message-State: ALoCoQk7sBow6ctsQGXrI8nesWApY0KAP+Lv/lwFYE/PxkmLtF6dFrPW+Qo7eokfXhDIsXB9b4LZ
MIME-Version: 1.0
X-Received: by 10.52.26.113 with SMTP id k17mr6483537vdg.51.1429098623345;
	Wed, 15 Apr 2015 04:50:23 -0700 (PDT)
Received: by 10.52.184.73 with HTTP; Wed, 15 Apr 2015 04:50:23 -0700 (PDT)
In-Reply-To: <552DDC1C.3090401@windriver.com>
References: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>
	<552DDC1C.3090401@windriver.com>
Date: Wed, 15 Apr 2015 12:50:23 +0100
Message-ID: <CAPhnLPB+zxYDc2UFkPNKh6xMPbsLE9AgTqy0=HjPf_0=QEyANA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Yi Zhao <yi.zhao@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.7.1 ADT-installer errors
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
X-List-Received-Date: Wed, 15 Apr 2015 11:50:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 15 April 2015 at 04:33, Yi Zhao <yi.zhao@windriver.com> wrote:
> Hi,
>
> I can confirm it is an issue.  I got  a 404 not found error when I tried =
to
> download the core-image-sato-sdk-qemux86.tar.bz2 from
> http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/. Looks like the
> symbolic link is broken.
>
> Beth,
> Would you please have a look at this and fix it ?
>

Sure, it'll take me a bit to get access to the infrastructure but I'll
get to it when I have access.

-b

> Thanks,
> Yi
>
>
> =E5=9C=A8 2015=E5=B9=B404=E6=9C=8814=E6=97=A5 16:24, heli Atck =E5=86=99=
=E9=81=93:
>
> Hi, I'm new to Yocto (and embedded Linux for that matter). I was followin=
g
> the ADT manual to get started with application development. I tried using
> the ADT-installer script, but ran into some errors.
>
> Here's the relevant part of the installer log file:
>
> Creating directory /home/spe/test-yocto/qemux86...
> Extracting rootfs: core-image-sato-sdk-qemux86.tar.bz2, using pseudo...
> tar (child): ./download_image/core-image-sato-sdk-qemux86.tar.bz2: Cannot
> open: No such file or directory
> tar (child): Error is not recoverable: exiting now
> tar: Child returned status 2
> tar: Error is not recoverable: exiting now
>
> There are no files in my /download_image directory so I guess they have n=
ot
> been properly retrieved from the repository. I looked at the repository f=
or
> 1.7.1 at http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/ and some o=
f
> the relevant files seem to be missing.
>
> Or did I mis a step somewhere?
>
> Sammy
>
>
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

