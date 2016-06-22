Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BF42E00A6D; Wed, 22 Jun 2016 07:29:32 -0700 (PDT)
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10386E009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:29:29 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id t7so8098360vkf.2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yvKYGHLuGHky80wA1TltlVg98j5kqlLL1sqR9Pmzm8A=;
	b=euzipxrQ6XKAaX9ZnDWxbukIXTHHLuqs5RLxNxCdaH4DEvzN4Iik3o4UFFr7D372Hr
	/krcbfQINA/XJwHjEdlgyPlkidSfx4A6S94ojgYSprdtib7pWUh1IwSuoDkX9x/LV7Dk
	uZtopAoBAwIHx5ZJ6v/vgcFfVU5h7WpDmv9D0eKTxh9S4a9ad6OWBhgGHRzvQJQmbgYO
	I+2uPqDWQpis2PQTRF15PiXtDTVjqmfov8ZmBahAOResfF2Bcqtts00kNe+8ok6t3t9S
	1hqK/GZmCv4+kTRYM6Qj1Z7DT9CvJX07KzKOhGStcpul7M/V7zFKj0+VogBtSXY7YD+0
	1VuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yvKYGHLuGHky80wA1TltlVg98j5kqlLL1sqR9Pmzm8A=;
	b=hHEci24zaj928UyCQDDN+rcHaiHbLjbt+IBN9e4NvUhmeHecl1HxCdwh9qQqWWEiZL
	vdQUu5NseXO7Bzs7eRyaty56uO+i4xLeKcVi1wSEVBNNzAd5UrqgJ/H9aT/09KUrPfqm
	2xdGW/aCKJktOaaMw84V5G7ejxp+57SbSqJghOQP+VftdRZ90PxT+/ApaRaYhpT5YfjW
	6LQIYlPqgZSJEWl0OaH7n/3eawIXBV6s8KBiCsns+WUTmT/QjUK4G3jsay8Ri6KqklLB
	TuKMFu0yb7FAvbN+KW4SVfOHIKXL5Md3Hn7HSovEzv7f/EMa5HzMODuZSb7j6s4XYBSZ
	p/Cw==
X-Gm-Message-State: ALyK8tKsfhCmJO2bRm4vejQ79tYFhTm7bwGZ4X6xdfCz/qz7dOhyxcWDqsTjDMsEDSdOh6319zU9nCI7RHgTnQ==
X-Received: by 10.159.33.175 with SMTP id 44mr12319403uac.142.1466605768413;
	Wed, 22 Jun 2016 07:29:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 22 Jun 2016 07:29:27 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1606221017510.27720@localhost.localdomain>
References: <alpine.LFD.2.20.1606220556090.21955@localhost.localdomain>
	<CAF3SDA56FGwK7inSaOxdr9s4gZMX6V65WzNmjmjafJkebT72YQ@mail.gmail.com>
	<alpine.LFD.2.20.1606221017510.27720@localhost.localdomain>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 22 Jun 2016 11:29:27 -0300
Message-ID: <CAF3SDA6a0rn9B=y6nAazJXXUcFHVEcct=4coNf3un-Kbpe3mtg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there really an "INITRD_IMAGE" variable?
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
X-List-Received-Date: Wed, 22 Jun 2016 14:29:32 -0000
Content-Type: text/plain; charset=UTF-8

It seem to be INITRD_IMAGE_LIVE now.

http://patchwork.openembedded.org/patch/116335/

2016-06-22 11:20 GMT-03:00 Robert P. J. Day <rpjday@crashcourse.ca>:
> On Wed, 22 Jun 2016, Daniel. wrote:
>
>> Well I'm in Daisy and I can see that variable, so I think that the
>> documentation is out of date :)
>>
>> [geckos@csi24 yocto-daisy]$ find sources/ -name "*.bb*" -exec grep
>> --color -H INITRD_IMAGE {} \;
>> sources/poky/meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE
>> = "core-image-testmaster-initramfs"
>> sources/poky/meta/classes/image-live.bbclass:INITRD_IMAGE ?=
>> "core-image-minimal-initramfs"
>> sources/poky/meta/classes/image-live.bbclass:INITRD ?=
>> "${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE}-${MACHINE}.cpio.gz"
>> sources/poky/meta/classes/image-live.bbclass:do_bootimg[depends] +=
>> "${INITRD_IMAGE}:do_rootfs"
>> [geckos@csi24 yocto-daisy]$
>
>   it looks like there was a shift from INITRD_IMAGE to one of
> INITRD_IMAGE_VM or INITRD_IMAGE_LIVE on feb 24, 2016 in this commit in
> oe-core:
>
> commit e38c94d6bf83ed3ca7f046d9503e81b927487bf2
> Author: Robert Yang <liezhi.yang@windriver.com>
> Date:   Wed Feb 24 01:23:58 2016 -0800
>
>     syslinux.bbclass: make vm and live can be built together
>
>     * The vm image(hdddirect, vmdk, qcow2, vdi) and live image (hddimg, iso)
>       couldn't be built together because the following vars settings are
>       conflicted:
>       - SYSLINUX_ROOT (/dev/sda2 vs /dev/ram0)
>       - LABELS (boot vs boot install)
>       - INITRD (None vs live install)
>       - SYSLINUX_CFG (see above)
>       Introduce new vars (SYSLINUX_ROOT_VM/_LIVE, the samilar to others) to
>       make them can work together, now we can build all of them together:
>
>       IMAGE_FSTYPES += "live iso hddimg hdddirect vmdk qcow2 vdi"
>
>     * Use SYSLINUX_CFG rather than SYSLINUXCFG to keep align with others
>       SYSLINUX vars.
>
>     * The SYSLINUX_TIMEOUT had been set, but it didn't work since
>       AUTO_SYSLINUXMENU wasn't set, this would cause confusions, so also set
>       AUTO_SYSLINUXMENU.
>
>     * Move SYSLINUX_PROMPT and SYSLINUX_TIMEOUT to syslinux.bbclass rather
>       than in separate classes since they are the same.
>
>     * Set SYSLINUX_TIMEOUT to 50 to have a unique timeout for syslinux.
>
>     [YOCTO #9161]
>
>     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>     Signed-off-by: Ross Burton <ross.burton@intel.com>
>
> and i guess someone just didn't notice the remaining references to
> INITRD_IMAGE.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>



-- 
"Do or do not. There is no try"
  Yoda Master

