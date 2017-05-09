Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E58E00B2F; Tue,  9 May 2017 14:24:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36150E00B23
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 14:24:19 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id u26so1395499pfd.2
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 14:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=HZgi1vcfVHwzcxBFJcHghDsP3X4tP209kPdekdMEJWQ=;
	b=tq7uvGSNU1a3KpxqVVmaEowjZGvhEi8gQwnEs3VGxt7JYW54VWwPjORfB1h36MI5lR
	foUUDlyWFhG6Vu0LJdabnUiuq5NUpIMEeWDX2UKFFSz+n2ZtHpmDXf19y/L6102dvyYD
	hCdSFPAj/An94xI3J8FfjPh8cAicf7jNJlWlUa2MxOg/fqK9op6K5UWWzI5nBWMU8Mvb
	K87UCFJkP0gpLYkN2JtexbWLkt02NdX3LFLZ4M3o+EDwTBj7oR2KvpFz1XsskvlM+itx
	0q2kexEaAWGVCczyZuCJFoxIDFE8S1C4fTWayrH0D9rkdsWA2WP3sBGyH60EN01OzayV
	ygVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=HZgi1vcfVHwzcxBFJcHghDsP3X4tP209kPdekdMEJWQ=;
	b=YXxxBEAGEs+iyq0Z6ot9Sm5UsaJcZr2MZhMO3itYhRXlqZ1XKbTqaeDJL4h4s4tr6l
	WOHQViTCGGWoeBegsTFyZ+rNHt4A8SVP0Xsp0ROD93i79tGcTfTnAckP58L+s4X8ts14
	2NXZkj28XDoRtzkFFhDlHk/WscNxwhEIbNw6emB/H2Q6kOJpg5to/1w2zNBI3/ClfkMK
	HzfQNhrP3chv2cVS468nzvDZ1HcJmHE+JK44+TyN3hLxt+yPpIwShcAtSYCe+L2UffCm
	yhhHD+YfU4X7n+CB4/2IeiNbEwWFpO/neajEnx+S97VLwsgviBh5bySwNKt9ukv04jgn
	bGZA==
X-Gm-Message-State: AODbwcAvo0mSdCbOPr2905mVneQ69uDn1aSI5Ex1N7buSgrwMGVZMu4w
	dzCUdm9hS/Cv/78K+ME=
X-Received: by 10.84.241.77 with SMTP id u13mr3059566plm.28.1494365059501;
	Tue, 09 May 2017 14:24:19 -0700 (PDT)
Received: from [10.43.100.166] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	w23sm1376777pfl.133.2017.05.09.14.24.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 May 2017 14:24:19 -0700 (PDT)
To: Marek Belisko <marek.belisko@open-nandra.com>, yocto@yoctoproject.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <1494364209-17742-1-git-send-email-marek.belisko@open-nandra.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <3615c946-3e41-61bf-8f39-1eeb8c839335@gmail.com>
Date: Tue, 9 May 2017 14:24:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1494364209-17742-1-git-send-email-marek.belisko@open-nandra.com>
Subject: Re: [PATCH] recipes-support: Add recipe for libgpiod
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
X-List-Received-Date: Tue, 09 May 2017 21:24:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Marek,

There is another mailing list that is geared towards the core 
development and recipes like this that are targeted for the main "meta" 
layer.

You should resend this patch to: openembedded-core@lists.openembedded.org.

regards,

Armin


On 05/09/2017 02:10 PM, Marek Belisko wrote:
> libgpiod - C library and tools for interacting with the linux GPIO
> character device
>
> Since linux 4.8 the GPIO sysfs interface is deprecated.
> User space should use the character device instead.
> This library encapsulates the ioctl calls and data structures behind a
> straightforward API.
>
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>   meta/recipes-support/libgpiod/libgpiod_0.2.bb | 25 +++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
>   create mode 100644 meta/recipes-support/libgpiod/libgpiod_0.2.bb
>
> diff --git a/meta/recipes-support/libgpiod/libgpiod_0.2.bb b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
> new file mode 100644
> index 0000000..fe2cd80
> --- /dev/null
> +++ b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
> @@ -0,0 +1,25 @@
> +SUMMARY = "C library and tools for interacting with the linux GPIO character device"
> +HOMEPAGE = "https://github.com/brgl/libgpiod"
> +
> +LICENSE = "LGPLv2.1+"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=2caced0b25dfefd4c601d92bd15116de"
> +
> +UPSTREAM_CHECK_URI = "https://github.com/brgl/libgpiod/releases"
> +
> +SRC_URI = "https://github.com/brgl/libgpiod/archive/v${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "e3430f35b6efa842693d659c0bfb7ad5"
> +SRC_URI[sha256sum] = "de1947f3cb2cc4174364af430309fe6238976658575655bdbd76c60cffa7df92"
> +
> +inherit autotools pkgconfig
> +
> +# enable tools
> +PACKAGECONFIG ?= "tools"
> +
> +PACKAGECONFIG[tests] = "--enable-tests,--disable-tests,kmod udev"
> +PACKAGECONFIG[tools] = "--enable-tools,--disable-tools,"
> +
> +PACKAGES += " ${PN}-tools"
> +
> +FILES_${PN} = "${libdir}/*"
> +FILES_${PN}-tools = "${bindir}/*"


