Return-Path: <paul.betafive@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 697EBE00820
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 16:45:57 -0800 (PST)
Received: by mail-oa0-f50.google.com with SMTP id n16so2417501oag.9
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 16:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=XvROMpojcm3Ru2XBtf+KHAAaic3EPY0CVEaXq0TTxcA=;
	b=x+8ZecKW9UnuVPCAIWHnpkQQPVe5w4uN/JDhrYF2Kglsxj6+0vTm7nVTIg61xtphmn
	trQ9jNxyhixulyNhqE0R4UvrSgx+a2hWDvtgcEW25NIRT490gXGBpq2n6H6dWzBL1weZ
	KTfaGW8Ksva+lbLPm6z/0zXF64+xDIAWzccVM9YSrbVU3s07eAtzN6Rrr3CStl6Hpcyt
	BYL/dBT4mKkcQoyCMdN5IYYT3J6+1IxAAxtIwgxMi7mTa5i/u7cYdw9u61uS3ddRnpJe
	djvGbjkxMltKt5mMkDRGz45EWkI01eC6auo3hMzLYWo80yG76MrWTkOBHznN1mFhs0fz
	ei2g==
X-Received: by 10.182.157.114 with SMTP id wl18mr4207106obb.52.1390005956271; 
	Fri, 17 Jan 2014 16:45:56 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.76.122.171 with HTTP; Fri, 17 Jan 2014 16:45:16 -0800 (PST)
In-Reply-To: <1389971801-23724-4-git-send-email-andrei@gherzan.ro>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
	<1389971801-23724-4-git-send-email-andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 18 Jan 2014 00:45:16 +0000
X-Google-Sender-Auth: yMKPAHfCC1TuwKFmu0A87q_Hm9U
Message-ID: <CANyK_8dMpZPu1E_-y+KkRvxg-42ACfwGg3HpupZe1OFpweb=Yw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/5] userland: Update to remove HEAD
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
X-List-Received-Date: Sat, 18 Jan 2014 00:46:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 17 January 2014 15:16, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Change-Id: Ib98889d05b33ec2647966f2827e1fbf84f35fd95
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/userland/userland_git.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 2993044..cba1709 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
>  LICENSE = "Broadcom"
>  LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
>
> -PR = "r3"
> +PR = "r4"
>
>  PROVIDES = "virtual/libgles2 \
>              virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -SRCREV = "d2c9f912da389c23ed27e81e940be3540f64fc59"
> +SRCREV = "6da40ffd91f2b3c2aa8471195813322ae5d0cb0d"
>  SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
>            "
>  S = "${WORKDIR}/git"

The subject seems confusing... should this be "remote HEAD" not "remove HEAD"?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

