Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0384DE0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 10:20:03 -0700 (PDT)
Received: by eaab16 with SMTP id b16so3227104eaa.35
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 10:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=T5nWEAJEPB8pEA4FXQyCbOxVyu1IONycJ7kYlNgYo5E=;
	b=EjRdCVgF7sNCx9NqUjzrIED1VavGmxksZpq0eXq6Fhh+6nsz2+l4e1g/sKZLdaLFpK
	14qStseZHgmTLNRKTvCTkkoPqG3B/8lOYS8HXJ4yi1+356KalP5/XTGX/AZLr/qxQ0pG
	LkJsFS5ljJgp3HpLHm/Hb/vlZkCLnrAy0cwYBoXCc8Ae1nMfxbHwytgldrk44GMQZcWt
	2exI0LP/Y9g4ZAai+ylFZd3Xhg7j+ffBXEyUG+DA15c46II7QcB3FAhNgei+jmo+AuQI
	/lSoXqqRw+6RttNlrPkVLq5Kk0urKKPX0j6CaShBPl7Md6q+CdRpjWgWyN1Yu1QlEodX
	7SXQ==
Received: by 10.14.53.4 with SMTP id f4mr5475576eec.93.1340212802837; Wed, 20
	Jun 2012 10:20:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Wed, 20 Jun 2012 10:19:32 -0700 (PDT)
In-Reply-To: <CC07B632.119F0%belen.barros.pena@intel.com>
References: <CC07B632.119F0%belen.barros.pena@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Jun 2012 10:19:32 -0700
Message-ID: <CAMKF1sqBSsVLM-jn4L4mR-9QUtbQx=uj-LvkVKNf-n3ECtK1PA@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Selecting base images in Hob
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
X-List-Received-Date: Wed, 20 Jun 2012 17:20:04 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 20, 2012 at 9:17 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> In Hob, we use a drop-down list to select your image. But with 19 base
> images now available, we have already outgrown the capacity of this UI
> widget (the guidelines recommend using them when you have between 3 and 10
> items). I filed bug 2345 (nice number) to look at alternative ways of
> presenting and selecting base images in Hob.
>
>
> The solution I am looking at is based on grouping the base images. I
> thought I might ask for some help from the list to create those groups.
> This is what I've come up with:
>
> Group 1: Stripped-down images. It includes:
>
> core-image-base
> core-image-basic
> core-image-minimal
> core-image-minimal-dev
> core-image-minimal-initramfs
> core-image-minimal-mtdutils
>
> Group 2: GUI images. It includes:
>
> core-image-clutter
> core-image-core

core-image-core is a console image so prolly move it to above group.

> core-image-sato
> core-image-sato-dev
> core-image-sato-sdk
> qt4e-demo-image
>
> Group 3: LSB-conforming. It includes:
>
> core-image-lsb
> core-image-lsb-dev
> core-image-lsb-sdk
>
> Group 4: For real-time use. It includes:
>
> core-image-rt
> core-image-rt-sdk
>
> Group 5 is just the self-hosted-image
>
> Group 6 would be the 'Create you own image' option
>
> Any suggestions on how to better group these images and recommendations on
> how to name the groups would be very welcome.

may be all dev/sdk images can be grouped together ?
current grouping is nice though

>
>
> Thanks!
>
> Belen
>
>
>
>
>
>
>
>
>
>
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

