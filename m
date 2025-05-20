Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 845EBC3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 09:54:01 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.16959.1747734839956012903
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 02:54:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DGU9JyRn;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad54e5389cdso430440066b.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 02:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747734838; x=1748339638; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VUuCz7MC9FXuDmo6j7t5PBYZJH8SUf96yfvCsMx5O0U=;
        b=DGU9JyRnb8J/PYNhPhzt9+ztRo0X07Vxj3nrGRd0+SpeOTELKdH9DWRUOmjeCaUtup
         bXp8mCPiKwOKHYAITSSqvjFnwxayh7pI3OPUxKVrsP8yQFP6e0hwc/pb2VNVE7uuu+aE
         vrmpXACO5oh2yjLHPVr7DIYipE0Xt1qvC6cSyFMMf8kvmSXfnHOhKze1JfOOCK1YdZKU
         73AeUpI88Xs3HtsxhGfvNTBDlRdeC5w2s08dCWKVqUzcUv+vhq842OAmHFAyzvIFgIM+
         f6jC7VHhgTxPzIHgs1Z09bK4XVCHLfNSwBk7/OwmCqXK9vHF/jH/o2nluUTXtUTUPY8j
         ze+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747734838; x=1748339638;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VUuCz7MC9FXuDmo6j7t5PBYZJH8SUf96yfvCsMx5O0U=;
        b=LAkSOJoS+WvSjMTk3UdjRjCLv11F11UaS2zcSe49mAk34Tfkg2oR9TzTTw1rQKYo/k
         zV13kRxgh76BbCBCmBIgx3R7RMBSROET/xLcvcr+oH1cefbOu/7gf0EKDoAOawx5EcmN
         xJbNPOippIJDRrSlv+Mp1JtV278p9nstnDgjuJSADBnCc9Doq8z6JWhciRfkQxg2BXYg
         snhD/Os8TNHXlw7OsaqoBwX14Gfvz+C04Bk1EKOioQRp11JtD5MTNfDnjNLytFup+vMn
         iyUHjuUNXhdukObwukzgytKIockxNYfgNGRyz0GhKQtsBbM5zxfxpAJ0STOWA2G9ECYZ
         zuIQ==
X-Gm-Message-State: AOJu0YzeyZ2pRsGJ28dFoftr5b4ekwgwG3mR+qQn/IHf2ahs9PnrIQQe
	nncABmRKPvhjCWqMBFnQTKhs7DOguK1oRIXspTV8XZn+FrIYinbuDaVC1+IyUw==
X-Gm-Gg: ASbGncstrMv8wv5SLvCvfepMWti8/xTP1iqkgFFfTyGgjaSYf+9P8l28b1ZC3Tiu7j/
	aBFAo3QnFPO2mGtcqmXEJdTbERhuePwE39r8G9XgLjHS3AfVSrHW6aDBXZBFJqjQiR7cJocHvku
	MahbloOe7y+0a5KXH68yDxvqC4Xcw/3RyNOgyNhh2Ct/QlQSy5dTgyFQu1AioN/EUaadEEfmyx0
	+QxZucXEEAOlk7oe/ZjALdO8kXP3SldH8/Gvw0wkJkvbd0B/Mak7Wp9nZvY9sXYMlG1Rzm6xN/e
	w9eWpXUvElQk+039/AgoBCj9Bs6kjO5A07JHThZ6nHsPvCHqnFx6cIbtxo8=
X-Google-Smtp-Source: AGHT+IH/mkUodV5tMRUWZvRayEfrDT2ZiC79Lahy1ctBXyxKv9rE2TlLsIJtp+HFM3w5WeAAww1q1g==
X-Received: by 2002:a17:907:2da1:b0:ad5:7bc4:84b5 with SMTP id a640c23a62f3a-ad57bc48ff6mr565143466b.57.1747734837792;
        Tue, 20 May 2025 02:53:57 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4383d6sm710713566b.102.2025.05.20.02.53.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 02:53:57 -0700 (PDT)
Message-ID: <419c6874-d2a3-4fc2-a072-0237a0c6e1ec@gmail.com>
Date: Tue, 20 May 2025 11:53:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] cbindgen unable to unpack it using meta-rust layer
 (dunfell)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <OwhE.1747734286219462368.fqbc@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <OwhE.1747734286219462368.fqbc@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 09:54:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65361


On 5/20/25 11:44, sateesh m via lists.yoctoproject.org wrote:
> Hi team,
> =C2=A0
> I am facing issue cbindgen unable to unpack issue. I am not clear what
> could be the reason? any updated patch is avilabale or hostools do I
> need to install please let me know. I want some leads here.=C2=A0
> =C2=A0
> ERROR: cbindgen-0.24.5-r0 do_unpack: Unpack failure for URL:
> 'https://crates.io/api/v1/crates/cbindgen/0.24.5/download'. Unpack
> command
> PATH=3D"/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/sysroots-u=
ninative/x86_64-linux/usr/bin:/home/p_6012/hdd/Basic/subcore/poky/scripts=
:/home/p_60120/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-ne=
on-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/usr/b=
in/arm-telechips-linux-gnueabi:/home/p_6012/hdd/Basic/subcore/build/tcc80=
30-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r=
0/recipe-sysroot/usr/bin/crossscripts:/home/p_6012/hdd/Basic/subcore/buil=
d/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0=
=2E24.5-r0/recipe-sysroot-native/usr/sbin:/home/p_6012/hdd/Basic/subcore/=
build/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindg=
en/0.24.5-r0/recipe-sysroot-native/usr/bin:/home/p_6012/hdd/Basic/subcore=
/build/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbind=
gen/0.24.5-r0/recipe-sysroot-native/sbin:/home/p_6012/hdd/Basic/subcore/b=
uild/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindge=
n/0.24.5-r0/recipe-sysroot-native/bin:/home/p_6012/hdd/Basic/subcore/poky=
/bitbake/bin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/hosttoo=
ls"
> tar -xz --no-same-owner -f
> /home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/downloads/cbindgen-0.2=
4.5.crate
> failed with return value 2
> ERROR: Logfile of failure stored in:
> /home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-ne=
on-telechips-linux-gnueabi/cbindgen/0.24.5-r0/temp/log.do_unpack.25960

It is trying to execute "tar -xz --no-same-owner -f
/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/downloads/cbindgen-0.24.=
5.crate"
command. Check what happens when you try it manually. You could also add
"v" option for verbose output. Also, check the integrity of the crate,
i.e. compare it's hash with a freshly downloaded crate from crates.io.
(If I remember well, Dunfell didn't enforce downloaded artifact
hash-checking). If it looks broken, do a "bitbake -c cleanall cbindgen"
and try tp build again.

> ERROR: Task
> (/home/p_60120/hdd/Basic/subcore/poky/meta-rust/recipes-devtools/cbindg=
en/cbindgen_0.24.5.bb:do_unpack)
> failed with exit code '1'
> =C2=A0
> Thanking you in advance.
> =C2=A0
> Regards,
> Sateesh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65360): https://lists.yoctoproject.org/g/yocto/mess=
age/65360
> Mute This Topic: https://lists.yoctoproject.org/mt/113208150/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


