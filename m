Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54EAEE00D05; Tue, 24 Oct 2017 14:22:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 445CEE00CFF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 14:22:34 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 78so16051615wmb.1
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 14:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Gtzvo/ZtTvyWgGiIlpvkRNwqfW0WYTqujA3x9zS72S4=;
	b=xegLx1dX7upuLSCpcq1uyHG6/3/ik9Eng0Lxo3VcFsHz1sykNEwoHBduzE8nmB1aWU
	sHrNW0jJAveWG+mi+TZ9GQPlRJbIgHW5xMlb/XShwda15kO7eSC8J+yrLCWvlaMWm+Oh
	nWAQxJbQhqiqddgQIj1qKcNs2ZfQy88kUOnKPss5ogSUNDqYDUIyodISvGwfOIRmaDHx
	hiZ6nM/CTjRlUnWesuMpvGX7MCZxJUCgeLF/1RM44OHrPtGKtvKIC/+WsdQ5xo+gI0I/
	oo1JTxRz6wFDXpTIeWJsG1cl1bRC2PVjgnyqUn3IFXowSFbVsNXcThZtxHTDd/sTXpM3
	z/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Gtzvo/ZtTvyWgGiIlpvkRNwqfW0WYTqujA3x9zS72S4=;
	b=eTs2sedbACCI3s/E1h+MBQujXa0GISOSxrA00S6L5dhMHOHH54ZOe29FnZG6VHWYGD
	Wp0JXivTkvUrd+kFk9sPr4l6vkGUbtIdbfOscTZ/iq4QYvRmNIW/dDnQ+owiOKh7rH7x
	SUoOPOSrdH3aQFMy3Cg0rXDIMI/3xv+pd6cdGyZ0mR4NR+rDj7EAh2qkhomPcD9XI3Ln
	bQAdNKp34ls6zvTttYqKY48sWOrNEPeSJq1boO66Huh/hyfjc9IoZplY+u9dsEpZ7xTC
	/Dzl5h6L5fO183sffxYvbpbukUewcp//Fgx6VaGYxtUDEgVj78tFqKZSTpPZ5+b2ahIk
	g0mA==
X-Gm-Message-State: AMCzsaXlWxMxdcOFMMgtK5LOBXu3JvkIkjvyqfFRjYhx1XXihqnc68MQ
	uKdxJqRdpoBXDYNCsPCLQVO4Ir8Rdpg=
X-Google-Smtp-Source: ABhQp+Qas06yOCenCiGjWsNJVF5HzJw7XuZ8+Pm9ZE+xnNEDPNaFsI9l/BYsafExxxzgbTcdm149+A==
X-Received: by 10.28.98.65 with SMTP id w62mr90261wmb.73.1508880153782;
	Tue, 24 Oct 2017 14:22:33 -0700 (PDT)
Received: from [10.253.10.43] ([62.168.35.105])
	by smtp.gmail.com with ESMTPSA id
	e77sm1353687wmi.16.2017.10.24.14.22.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Oct 2017 14:22:32 -0700 (PDT)
To: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, yocto@yoctoproject.org
References: <20171023152608.4149-1-git@andred.net>
	<20171023155119.10958-1-git@andred.net>
From: akuster <akuster@mvista.com>
Message-ID: <666392a8-7e83-cfc2-3e91-70dee035d76a@mvista.com>
Date: Tue, 24 Oct 2017 14:22:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171023155119.10958-1-git@andred.net>
Subject: Re: [meta-security][PATCH v2] fscryptctl: add v0.1.0
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
X-List-Received-Date: Tue, 24 Oct 2017 21:22:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 10/23/2017 08:51 AM, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
>
> fscryptctl is a low-level tool written in C that handles
> raw keys and manages policies for Linux filesystem
> encryption [1].
>
> For a tool that presents a higher level interface and
> manages metadata, key generation, key wrapping, PAM
> integration, and passphrase hashing, see fscrypt [2].
>
> [1] https://lwn.net/Articles/639427
> [2] https://github.com/google/fscrypt
>
> Signed-off-by: André Draszik <adraszik@tycoint.com>
Merged,

Thanks,
Armin
>
> ---
> v2: add RRECOMMENDS on keyutils, as that might be useful when
> dealing with kernel keys.
> ---
>  recipes-security/fscryptctl/fscryptctl_0.1.0.bb | 27 +++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 recipes-security/fscryptctl/fscryptctl_0.1.0.bb
>
> diff --git a/recipes-security/fscryptctl/fscryptctl_0.1.0.bb b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
> new file mode 100644
> index 0000000..4f0b12c
> --- /dev/null
> +++ b/recipes-security/fscryptctl/fscryptctl_0.1.0.bb
> @@ -0,0 +1,27 @@
> +SUMMARY = "low-level tool handling Linux filesystem encryption"
> +DESCIPTION = "fscryptctl is a low-level tool written in C that handles raw keys and manages \
> +policies for Linux filesystem encryption (https://lwn.net/Articles/639427). \
> +For a tool that presents a higher level interface and manages metadata, key \
> +generation, key wrapping, PAM integration, and passphrase hashing, see \
> +fscrypt (https://github.com/google/fscrypt)."
> +HOMEPAGE = "https://github.com/google/fscryptctl"
> +SECTION = "base"
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> +
> +SRCREV = "e4c4d0984dee2531897e13c32a18d5e54a2a4aa6"
> +SRC_URI = "git://github.com/google/fscryptctl.git"
> +
> +S = "${WORKDIR}/git"
> +
> +do_install() {
> +    oe_runmake DESTDIR=${D}${bindir} install
> +}
> +
> +RRECOMMENDS_${PN} += "\
> +    keyutils \
> +    kernel-module-cbc \
> +    kernel-module-cts \
> +    kernel-module-ecb \
> +    kernel-module-xts \
> +"


