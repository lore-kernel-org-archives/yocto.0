Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4852.1574935669300383032
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 02:07:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qLtXg8cI;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D72A2E0108B; Thu, 28 Nov 2019 02:07:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAFACE00E8D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 02:07:47 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id y16so16218268iln.0
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 02:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ndZs/mS2jLtzWag4vz2zU1dYPXwnwoCM9l5R3DDj+jM=;
        b=qLtXg8cIcd2SeZkXbjCSOuJUYbnmEesbdWroszreVlxLLpQvUhy0DfIZYL/7OE6BCl
         yQ9mDUYe5ULvfxWQGwXLYhiNHhr8tpEGQgfiL0Rum6u6AOqCy83IQnMsaqA8i+assuBY
         geGU4sUlqGGxyMsGd5s8wwvnaNytlMZ//SV4F9j3waJebvSSLWNSR3HFMMEeRDvBpYlg
         ODCLrKXG64eLKnsdgn7ZVgbip10h30tjMZ4ch0q98c5E7a0iDQJi/AVolKf6v4P/viK6
         Zj8w4CIRwwmynpq/I123pwYH9OpIDYhckplU2s0/WteAx6iDa8O1qNQkwPLg9E2KliWj
         BAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ndZs/mS2jLtzWag4vz2zU1dYPXwnwoCM9l5R3DDj+jM=;
        b=R+U4DwIiUnMqn7asmJLRRWAusD5FHbimpRb2V2BelrC6MX30/QpDTnSoovwRs+XhbI
         czmRh5c7U0W+3sbRd9fJGQeknvSRLEQkkGeZ7VMY48WOJlk8UApci4Vj5BLGe/HUNNcC
         8g5YArm59ncrr0cNCDUFBzoTMIO+Zorx2JUQjaqHnjsSriaBotNusUIgmCeO4nqHwJ69
         fxqceQ0iivSG8rGy7NQ5xeQ/ntMLSjNH96LzpniNa5+f90NwT1ybKs1vVpnIjvpt8GJY
         sBACeNEL8RMzkYy5vBZJbsJrVQ3GX8mGgfOOa0YMjBeR7mF5ne/O9Ee+WayutwTk5EUs
         xh5A==
X-Gm-Message-State: APjAAAUBF7cA/eWOmKCA0LDfYmkH2/Y4P9E9btiOw1ImFDCiGgEx9EeQ
	xDmr9UXofLNfERa3qtZ8bkJWnt5462BXuR5qDQNQzdmw
X-Google-Smtp-Source: APXvYqxzkatZkKOwvrWzk4qNXowfDnllOx2duv/aMsWW1QXKCGgqut3xMvxJ+wGSuxu7UBkms0t/vWX5yfy9gV9eNZo=
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr5728274ilq.192.1574935667210;
 Thu, 28 Nov 2019 02:07:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Thu, 28 Nov 2019 02:07:46
 -0800 (PST)
In-Reply-To: <adab910e-0212-239a-0eda-8857affe85dd@ibeeto.com>
References: <CAA=hcWSLMGabXY8pKZpNzoYhcZMGJU6T5awJr88_NTKP6xWaLQ@mail.gmail.com>
 <adab910e-0212-239a-0eda-8857affe85dd@ibeeto.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 28 Nov 2019 21:07:46 +1100
Message-ID: <CAA=hcWSv5q7HFHtgx0hey8zhGhYVKK2JrH5x4RUJjpt+A5Uh-Q@mail.gmail.com>
Subject: Re: [yocto] How to reduce rootfs image size?
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Josef, Fabien and Rudolf, it's been great help to clarify it,
very appreciated.

On 11/28/19, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> Hi JH,
>
> The image root file system size is based on the actual content of the
> root file system. Besides ROOTFS_SIZE there are other variables that
> control how the root file system is sized:
>
> IMAGE_ROOTFS_SIZE: Defines the size in kilobytes of the created root
> filesystem image. The
> build system uses this value as a request or recommendation. The final
> root filesystem
> image size may be larger depending on the actual space required. The
> default value is
> 65536.
>
> IMAGE_ROOTFS_ALIGNMENT: Defines the alignment of the root filesystem
> image in
> kilobytes. If the final size of the root filesystem image is not a
> multiple of this value, it is
> rounded up to the nearest multiple of it. The default value is 1.
>
> IMAGE_ROOTFS_EXTRA_SPACE: Adds extra free space to the root filesystem
> image. The
> variable specifies the value in kilobytes. For example, to add an
> additional 4 GB of space, set
> the variable to IMAGE_ROOTFS_EXTRA_SPACE =3D "4194304". The default value
> is 0.
>
> IMAGE_OVERHEAD_FACTOR: This variable specifies a multiplicator for the
> root filesystem
> image. The factor is applied after the actual space required by the root
> filesystem has been
> determined. The default value is 1.3.
>
>
> Here is some pseudo code on how these variables are used to determine
> the final root file system size:
>
> _get_rootfs_size():
>     ROOTFS_SIZE =3D`du -ks IMAGE_ROOTFS`
>     BASE_SIZE =3D ROOTFS_SIZE * IMAGE_OVERHEAD_FACTOR
>
>     if (BASE_SIZE < IMAGE_ROOTFS_SIZE):
>         IMG_SIZE =3D IMAGE_ROOTFS_SIZE + IMAGE_ROOTFS_EXTRA_SPACE
>     else:
>         IMG_SIZE =3D BASE_SIZE + IMAGE_ROOTFS_EXTRA_SPACE
>
>     IMG_SIZE =3D IMG_SIZE + IMAGE_ROOTFS_ALIGNMENT =E2=80=93 1
>     IMG_SIZE =3D IMG_SIZE % IMAGE_ROOTFS_ALIGNMENT
>
>     return IMG_SIZE
>
>
> :rjs
>
> On 11/27/19 3:12 AM, JH wrote:
>> Hi,
>>
>> Does the Yocto rootfs image size is based on real contents included in
>> the image-rootfs.tar.gz?
>>
>> When I build the image with very large size of applications and
>> libraries such as boost, I have my image-rootfs.tr.gz about 44 MB,
>> then I removed all large size of applications and libraries, I changed
>> IMAGE_ROOTFS_SIZE to a small size IMAGE_ROOTFS_SIZE =3D 20000, I thought
>> the image-rootfs.tar.gz should be reduced to a small size, but it is
>> still 43 MB I don't believe it is that big, which variable I should
>> use to reduce the image size?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47433):
>> https://lists.yoctoproject.org/g/yocto/message/47433
>> Mute This Topic: https://lists.yoctoproject.org/mt/62495609/3617932
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> [rudolf.streif@ibeeto.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>
