Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01DDBE01507
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 04:53:55 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 07 Sep 2012 04:53:53 -0700
Received: by obbtb18 with SMTP id tb18so5532465obb.35
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2012 04:53:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=yrstzJxQUaLr7Po6QybW32DE8afAxy8uQaawCbobMKc=;
	b=XWmfVkM/oPyicm+OB0tnPP3IDuqlVvVHi8j6ekeaN2DRUDuWnnC21zO1K/+AJkPItf
	hOSGijAOr8CLDx8s5S5+Wzi1c3YO8zc3TgZ4y9JCMBWVDHoM2k5KeBTv8MN8T9B20inu
	C6fd7ISuSho9Lun/s+k6TUE9bsibOzPggH+vPcsVXGa1zm8VfBosb27KOEHHztNMH+4r
	y9rrKnC/mgGO4TSX6jm039sRZWtuTQ548eEpJ6Zxj0jCPq2BIqv7RhZxn9zsoDeb3p40
	zDVEgW1aeUGXHPHtqB5wBsXImqNsQmI2OCgm4WfEcxxfrHJ/wgzdi/QYMDMHoO+0Fd9N
	htqw==
Received: by 10.60.19.132 with SMTP id f4mr5612759oee.17.1347018832366; Fri,
	07 Sep 2012 04:53:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Fri, 7 Sep 2012 04:53:31 -0700 (PDT)
In-Reply-To: <CANwz6nyaMDWRTdd=_g0yYcg3bsvvJ7Qx56RN8zeWAxFsmjTSsQ@mail.gmail.com>
References: <CANwz6nyaMDWRTdd=_g0yYcg3bsvvJ7Qx56RN8zeWAxFsmjTSsQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Sep 2012 12:53:31 +0100
Message-ID: <CAJTo0La0Gz0n+eEBLBNztOursVmgEe4d6yMimKkY6ur4D0uOhA@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQlm+cAhyQQjIFfb3BE2opCRy+PdtGoN0Mop/6/q9elVLjjJWmlW0PkYu0BZjZ/hpQ4vAi78
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard: change to xserver-xorg, not -lite
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
X-List-Received-Date: Fri, 07 Sep 2012 11:53:56 -0000
Content-Type: text/plain; charset=UTF-8

On 7 September 2012 12:46, Edward Vidal <vidal.develone@gmail.com> wrote:
> hello,
> I did a new build of poky
> git clone git://git.yoctoproject.org/poky.git
> With gitk I see that the patch has been applied to
>
> meta-yocto-bsp/conf/machine/beagleboard.conf
>
>
>
> When I execute MACHINE=beagleboard bitbake -v core-image-sato
> I get the following
>
> Summary: 4 tasks failed:
>   /home/vidal/poky/meta/recipes-graphics/xorg-proto/glproto_1.4.16.bb,
> do_compile
>
>
>   /home/vidal/poky/meta/recipes-graphics/xorg-proto/dri2proto_2.8.bb,
> do_compile
>   /home/vidal/poky/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb,
> do_configure
>
>
>   /home/vidal/poky/meta/recipes-graphics/xorg-proto/fontsproto_2.1.2.bb,
> do_configure
> Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
>
> Is this error related to change from
>
> xorg-xserver instead of xorg-xserver-lite
> Any help will be appreciated.

I've done a beagleboard build with xserver-xorg, so please can you
actually list the error messages that you got?

Ross

