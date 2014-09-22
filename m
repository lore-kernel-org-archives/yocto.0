Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F3FE0086B; Mon, 22 Sep 2014 05:23:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C0AE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:23:49 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id m20so6067254qcx.5
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=xtHqmhgqFvdW+bjbIqIZL0BixJUuvPr7c0rk4QK8y1Q=;
	b=HleY2vmGR+Ayw/AseVLpQNQCd1wi/gOOiz7peHV/YUxpo0ZjXsEfC0VXkAEoriKgJw
	UjH0YL4OFZmvy2mV/zFf0VLK1Ndo1tVutEAcwFvxDAZ2Jj1xzkM5TZ4+tPXNTFsN2z/S
	WcyIu1aRjYm6HfdzIb+37pSiFy5Ttap7xjX1uV0r7UgX+hC/1RgVWvUju209tHjsFjI0
	KHs3bKL+ROuqDlYrS7MpcF9jBZC1ZegicXfPQla5DJLDTJWuKpvlZFF4reKdCD51IW5P
	pxy1756CIAmB2m1wAY/7RtvYwpNDrTabE2As2utTcNq5bVe+xh5rBk0Y9MSA6QjBqa4v
	OJpw==
X-Gm-Message-State: ALoCoQnFYr45TCt/MPkVUGY2Rb9XvI0aYz2k1nyzwVgW8V9thqqa0WvJu/OC8AKV15+kmKKaMLJH
X-Received: by 10.224.103.65 with SMTP id j1mr21966844qao.17.1411388628607;
	Mon, 22 Sep 2014 05:23:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 05:23:28 -0700 (PDT)
In-Reply-To: <CAJrRHk71oTAv_Yko4m1_LAWP=cXJy-6jA93qiG40-xkb2-Z=mA@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
	<CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
	<CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
	<CAJrRHk71oTAv_Yko4m1_LAWP=cXJy-6jA93qiG40-xkb2-Z=mA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 13:23:28 +0100
Message-ID: <CAJTo0Lba3u=9jxAaFG5yq3cGBJzf9fHkdYFB0koAqqeTXX0HkA@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 12:23:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 September 2014 13:14, Joseph Andrew de la Pe=C3=B1a
<jdelapena@lexmark.com> wrote:
> Certainly not. How can I get pass this?

You use bitbake -e nativesdk-curl, search that for "krb5", and it
should tell you where the krb5 dependency came from.  What you do then
depends on what and how added that dependency.

Ross

