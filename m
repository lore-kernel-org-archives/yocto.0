Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89EBEE00CE5; Wed, 23 Jan 2019 03:33:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.67 listed in list.dnswl.org]
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
	[209.85.161.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5903BE00872
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:33:34 -0800 (PST)
Received: by mail-yw1-f67.google.com with SMTP id x2so732019ywc.9
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=HTUjO1JkED7Vbod9Qq5HxT5T3BYZsV6LFbMico337sc=;
	b=rWB6qQ8CekNluV8WWwm2VnFLHxPin6aaEq/xNfKyt2GokggVJxwdv62eiCqt//nKV+
	Av8wALUDjs4QWHx8etjC0G68Kj5wOVgtPognV2Nt9+2Vk+RKX1Kz1NWzLHIaOsUVZBcl
	qtcaM0q2+cpk/2znPCB4HMxOYVwd8isyxx2DLs4CWV/Z+9/3UrwMzRcIH9r8Y8dCBwhz
	B0zDw1RAoOW/2bn3tsbehhMj7HwuM7nEIsYvBFc2/BSEIrOpRX2+8EOcykRN5yqCpHNW
	loBkfSraMDLqSeB9hSOKCVLUMcFS+2vVTwvMJCwnoIUppYLgIGDKpjzjnH8we1wJCT+l
	Yrxw==
X-Gm-Message-State: AJcUukcQvgP61eroA6TczwZXYfdbAx2wrr7Lruk3jFMELF3Fv4FSasDT
	mBnK3tEbYl91oIY+wJspU25eRlQ3rMycv/NKslJiag==
X-Google-Smtp-Source: ALg8bN5GIwsEyldkA+46FribJBn3AczHFxVg6TkclTlDn/jPFO8V+9xhKhqmCmIBgroGbQ/Ds3ISCh1rA1Ytcq4jBPA=
X-Received: by 2002:a0d:c4c2:: with SMTP id g185mr1549580ywd.31.1548243213345; 
	Wed, 23 Jan 2019 03:33:33 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
In-Reply-To: <CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Wed, 23 Jan 2019 12:33:22 +0100
Message-ID: <CAB6-VtLn85HFNZxY7jqbpJGJcLg4h1bCwKGFTxrcCzx5vJrDPw@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Wed, 23 Jan 2019 11:33:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is a longshot but I am currently investigating an issue we have
with a packagegroup.

I get a similar error but I can fix it by moving the package in my
RDEPENDS in the packagegroup.

If you move your libx_media up or down in the packagegroup, does it help?

For me i got:
    Error:
      Problem: conflicting requests
      - nothing provides libserved-utilsoversion needed by
packagegroup-base-1.0-r0.0.noarch

When I had:
    RDEPENDS_${PN} =3D "\
        libdomain-somelib \
        libsomeotherlib \
        served-util \
    "

But changing to:
    RDEPENDS_${PN} =3D "\
        libdomain-somelib \
        served-util \
        libsomeotherlib \
    "
Made it work.

If you're down to trying anything you might as well try this =3D)

// Einar

On Wed, Jan 23, 2019 at 12:03 PM M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:
>
> I have toke the rpm file that was produced. I found the file under the bu=
ild directory under tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-rpms=
/imx8mq/temp/x_media-1.0-r44.imx8mq.rpm. I used the following commands
> 7z x x_media-1.0-r44.imx8mq.rpm
> 7z x x_media-1.0-r44.imx8mq.cpio
>
> The result from this gave me the file tree where I then could run
> file usr/lib/libx_media_1.0.so
> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ver=
sion 1 (SYSV), dynamically linked, stripped
>
> So I believe that I have concluded that the rpm include the file that dnf=
 is complaining about. I don't understand why dnf thinks that this dependen=
cy is not meet when it clearly is part of the package. I have added verbose=
 flags to the dnf call but dose not give any more information.
> I am not sure how I can proceed to find out what I have done wrong. The r=
ecipe is a bit of a freak of nature because the binaries that I am packagin=
g is actually built using another toolchain but it is for the same arch can=
 dnf detect that?
>
> BR
> M=C3=A5ns Zigher
>
> Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher <mans.zigher@gmail.c=
om>:
>>
>> Hi,
>>
>> I am struggling with a recipe which more or less just downloads binaries=
 and creating a package. We have previously been using ipkg but now we have=
 switched to rpm in our builds. One of the binaries in the packages is a li=
brary let's call it libx_media_1.0.so. This library is part of the package =
that the recipe is producing. The library is placed under /usr/lib/. When b=
uilding the image I am getting the following error
>>
>> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
>> .....
>> ...
>> Error:
>>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media, =
but none of the providers can be installed
>>   - conflicting requests
>>   - nothing provides libx_media_1.0.so()(64bit) needed by x_media-1.0-r4=
4.imx8mq
>>
>> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>
>> Here is the output from running the command file on the library
>>
>> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ve=
rsion 1 (SYSV), dynamically linked, stripped
>>
>> I have also verified that the library is part of the produced rpm so tha=
t is not the issue.
>>
>> Dose anyone have any suggestion on how to debug this problem? Because I =
am out of ideas
>>
>> BR
>> M=C3=A5ns Zigher
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

