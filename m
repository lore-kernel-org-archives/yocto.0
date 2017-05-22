Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C91D0E00B5E; Mon, 22 May 2017 09:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DBB7E00B51
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 09:08:54 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id p85so5649817vkd.3
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 09:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WVrWqSozn55PTtyZQiiDU5P+8kOV2VUyt7NaVJDMwQY=;
	b=Wfg1xz/Z/3SK0kHAHUlGbz7pV19NqXBn+x8ZM5dztc9FqTFcWMH7B+BP92y26JCxC8
	KXcY//LJA6uqjAdldmaIOAOK3A7pgvqnS57yI3Wm/u52u+99fQDDBJJx68Q2/ymsYlif
	+yzDeOsDfiAMgASl8rbLnN68weQrUM4gjoD54ksxExw+6c7Lh9Xy7BIxyJ3vXviOP6w9
	p5QOMLJ3OoOwCAaYpeCMgz8aiYzKjMx90xAf8Q08vDy3Ed2f8KlaiIEbe90LJw9Xiefd
	lSulnphGXzb3+jyNuokDKVGuxhmC0TLZ2WM00D7j7bB77EjEIp6qOH6gwzYbq2TwjVnS
	kLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WVrWqSozn55PTtyZQiiDU5P+8kOV2VUyt7NaVJDMwQY=;
	b=b+Jph5iBgLSf4nswEyJfyFMo5+nKtXs+OQsUZn7IV9LesCO8iXFFPnCmAeT9MF2DFr
	5Lob7vZIgJqP/n++Ld3d1BbQHCc8o/t+y4DeKMwQbew8z0qP5GbBVT2hmWd8+G0gz7hE
	QazVLacENpBFObopjBw/MyyF/xUeLVM27TvMDZdAVHZomIOkEX0UPoUHDJEgJmC/EP77
	ItfrzgGvDEB8AqPk3Yp4a2O54pq/qDE1PI9EpWCW8jj4HzVyUBXbmB5V9YVfxLzW/xvk
	CTmh3vReCFBG0WL5yf0RGt8l1FUM3i2oL1RcJaoNxClac56xlRiH5gW+BjKd8mJ7cu36
	23XA==
X-Gm-Message-State: AODbwcBXJ10Y4+uw4+4btOeRab8O7hglOKnT6dw6uRIta+4sUuo0C957
	hVtyqk4EfPLL9snokzyUnLuT22O6FvSW
X-Received: by 10.31.72.2 with SMTP id v2mr8288852vka.72.1495469334090; Mon,
	22 May 2017 09:08:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Mon, 22 May 2017 09:08:53 -0700 (PDT)
In-Reply-To: <20170522151716.4792-1-romain.perier@collabora.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 22 May 2017 12:08:53 -0400
Message-ID: <CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Mon, 22 May 2017 16:08:57 -0000
Content-Type: text/plain; charset="UTF-8"

u-boot 2017.05 was released May 10. Wouldn't it be better to update
oe-core's u-boot to 2017.05 then just add any differences in
meta-rockchip?

On Mon, May 22, 2017 at 11:17 AM, Romain Perier
<romain.perier@collabora.com> wrote:
> This set of patches add a new u-boot-common file for 2017.05, so
> it can be shared between u-boot-rockchip and a u-boot recipe for
> mainline. Then, it add a bbappend to bump u-boot to the last
> v2017.05.
>
> Romain Perier (3):
>   u-boot: Add u-boot-common_2017.05.inc
>   u-boot-rockchip: Use u-boot-common_2017.05.inc
>   u-boot: Add bbappend for u-boot mainline
>
>  recipes-bsp/u-boot/u-boot-common_2017.05.inc | 14 ++++++++++++++
>  recipes-bsp/u-boot/u-boot-rockchip_git.bb    |  2 +-
>  recipes-bsp/u-boot/u-boot_%.bbappend         |  5 +++++
>  3 files changed, 20 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-bsp/u-boot/u-boot-common_2017.05.inc
>  create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
>
> --
> 1.8.3.1
>

