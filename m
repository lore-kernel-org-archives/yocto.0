Return-Path: <aenbacka@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59666E014D5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:29:35 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id lf10so464224pab.32
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=O7cNj6XQzEoqTHQwatZr8VWfF86m8qOOZrl5C06qWBQ=;
	b=x2N/Y+qSM4LM3p6ZL15VS83DHwkbsNgFE760cCu87qMB2lNia15w/uqZPgAO7WObOk
	xc7+vjkKB/EeleeMQio+NsGcpI9jfeyrSQmI7vTA4+oQrYsPW0gcw/17pIROxZhsgZQp
	LinXuVnbC3FoL70MLQxUKDrl49VpX2dTu4+7Kp4iviaVjxWvibEX7bR62DhDnYZ/Fkci
	yqqRSptRN/qSTyny5Zvq1ZEXXwuhHHZuj17WUqz2iDFctf/2BnMyDDzIFOllfw3LlfzF
	ZJ0Est/lV3ELQfpGvHDnURhGIV5h46k26n+EbQ/dJ4Min4jp6hNpi9rlCCiSaGKq7cHV
	EN8Q==
X-Received: by 10.68.136.132 with SMTP id qa4mr39996247pbb.3.1366720175016;
	Tue, 23 Apr 2013 05:29:35 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id dr4sm29392225pbb.19.2013.04.23.05.29.32
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 23 Apr 2013 05:29:33 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
	<CAJTo0Lbf_TOUcuYCJKsqb6n6RfnL6W9+kSmaJWV-A7AszZ5R4g@mail.gmail.com>
In-Reply-To: <CAJTo0Lbf_TOUcuYCJKsqb6n6RfnL6W9+kSmaJWV-A7AszZ5R4g@mail.gmail.com>
Date: Tue, 23 Apr 2013 15:29:25 +0300
Message-ID: <010401ce401e$3399b130$9acd1390$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJ0agU91SWHrqS/aC17pHrJVTScbQKfJcFTl4JvEZA=
Cc: yocto@yoctoproject.org
Subject: Re: Splashscreen using psplash
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
X-List-Received-Date: Tue, 23 Apr 2013 12:29:35 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Hello,

Thanks a lot for info, I will try with that.

//Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 23. huhtikuuta 2013 15:09
To: Andreas Enbacka
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Splashscreen using psplash

On 23 April 2013 13:03, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I am creating a custom image based on core-image-sato, with a custom =
splash
> screen (using psplash). I have been able to replace the default yocto
> splashscreen in my image,  however, my question is whether it is =
possible to
> hide the initial console output text displayed on the screen prior to
> showing the splashscreen?  Currently most of the boot process is =
completed
> at the stage when the splash screen is being displayed on screen. This =
is
> because the image should be used as part of an embedded device, and =
the
> end-user should not see any traces of the underlying linux distro.

Passing "quiet" to the kernel (APPEND+=3D"quiet" in local.conf will do
it for testing) should stop the majority of the text.  A full
splash-from-bootloader is possible if you have a bootloader that
displays the image, and then a silent kernel from there.

Ross


