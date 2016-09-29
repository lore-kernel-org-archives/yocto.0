Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05BEDE00404; Thu, 29 Sep 2016 08:50:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.66 listed in dnsbl.sorbs.net]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC5B6E002AC
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 08:50:36 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id cd13so1771445pac.3
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 08:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=VHHE+7Y0/NhMYv+eLdeDE0cFGxdLqfcHImnWPShTMHo=;
	b=qpZ37neeONk6N2Z4LyNBL4OXO9XvkU8lYnLg4UhAtYm6svNI4KptSU6BEVpVwuecHE
	/p+7RbkHVTxBMjD7UIOOgZeiSyLRALOWksfEhEEsVLtA3PI2/rnqEzy0MH1tRRRPhdK8
	c4xve+7hYtwtCTpg9LSmUiY2nDG42/X6WOjnqsiUJWuuhYFW0PQHD15GAI725xkG8e6e
	lkcY17ea7UOjkw7TAGR6lJFhhTUgn6mb41uWjgksYh9+rSpbXndrhucAR5CIgHGN8wey
	IB/D42OFnq7hQCRdNMR/MhoPVDNqw+ChVdjvixYL20wdbFxTX5bLgqMB18Zx1FRTuyJb
	XHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=VHHE+7Y0/NhMYv+eLdeDE0cFGxdLqfcHImnWPShTMHo=;
	b=mDusoKKqTZLFPoXp/er4pDf8EqMhGqCVwACB4/LRZTspxyIY2BlFGLoPQH8yPoW4AA
	svwG2JnNn4vdwjaBxe7E9mNsy2Zd/zRnFSXZm1wUQPpVClPQFNiGm5DzJhLpiOvNOpMd
	DHaOmmx1Vs+dGVeZEtJo2zZfQu4r83Dx+VGcsnxWg9J/xJSQuywLR22syaeSi6w+M0EZ
	xPZZgGLps5UiGfQGzVPneoor0mfLhoNYbMJfaFFUGezqVtWKahWoCxy/OfRh+hWyWN3h
	f4b5pF6EVYTU7cbx1Y8UpzrhdkyacN13CPJMvv9J+kBKXhZUXu4syOnqxvALImN2BuVh
	zo0w==
X-Gm-Message-State: AA6/9RkACVenzveMkSMfhAaRq+P76XvwofpQyH7Cn5vGE9CuXP6vNxuNH0G6LqE48FCuYA==
X-Received: by 10.67.3.102 with SMTP id bv6mr3571171pad.61.1475164236142;
	Thu, 29 Sep 2016 08:50:36 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:8d18:8d09:2d56:eaa1?
	([2601:202:4001:9ea0:8d18:8d09:2d56:eaa1])
	by smtp.gmail.com with ESMTPSA id
	wa9sm21314102pac.35.2016.09.29.08.50.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Sep 2016 08:50:35 -0700 (PDT)
To: jackie.huang@windriver.com, yocto@yoctoproject.org
References: <20160929053856.24032-1-jackie.huang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <49e896ad-d664-2ed3-7e45-0f1a45fa6e2a@gmail.com>
Date: Thu, 29 Sep 2016 08:50:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20160929053856.24032-1-jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH] scapy: upgrade to 2.3.2
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
X-List-Received-Date: Thu, 29 Sep 2016 15:50:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 09/28/2016 10:38 PM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> * update the SRC_URI since it's been moved
>    from bitbucket to github.
>
> * add ptest support

Merged.

thanks,
Armin
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   recipes-security/scapy/scapy/run-ptest                    |  4 ++++
>   recipes-security/scapy/{scapy_2.3.1.bb => scapy_2.3.2.bb} | 15 +++++++++++----
>   2 files changed, 15 insertions(+), 4 deletions(-)
>   create mode 100755 recipes-security/scapy/scapy/run-ptest
>   rename recipes-security/scapy/{scapy_2.3.1.bb => scapy_2.3.2.bb} (71%)
>
> diff --git a/recipes-security/scapy/scapy/run-ptest b/recipes-security/scapy/scapy/run-ptest
> new file mode 100755
> index 0000000..91b29f9
> --- /dev/null
> +++ b/recipes-security/scapy/scapy/run-ptest
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +UTscapy -t regression.uts -f text -l -C \
> +    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
> +    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
> diff --git a/recipes-security/scapy/scapy_2.3.1.bb b/recipes-security/scapy/scapy_2.3.2.bb
> similarity index 71%
> rename from recipes-security/scapy/scapy_2.3.1.bb
> rename to recipes-security/scapy/scapy_2.3.2.bb
> index d8c731b..0a42ad9 100644
> --- a/recipes-security/scapy/scapy_2.3.1.bb
> +++ b/recipes-security/scapy/scapy_2.3.2.bb
> @@ -5,12 +5,19 @@ LICENSE = "GPLv2"
>   
>   LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
>   
> -SRC_URI = "https://bitbucket.org/secdev/${PN}/downloads/${BP}.zip"
> +SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
> +           file://run-ptest \
> +"
>   
> -SRC_URI[md5sum] = "a30d828e59801d1d092219b349f1da9e"
> -SRC_URI[sha256sum] = "8972c02e39a826a10c02c2bdd5025f7251dce9589c57befd9bb55c65f02e4934"
> +SRC_URI[md5sum] = "00f11df3d6b46fe6ac306efd757486f9"
> +SRC_URI[sha256sum] = "1b8a86d687feb8ed01114c0c016b428674cbfec04e3eb6f5249a018c427c4f6a"
>   
> -inherit setuptools
> +inherit setuptools ptest
> +
> +do_install_ptest() {
> +    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
> +    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
> +}
>   
>   RDEPENDS_${PN} = "tcpdump python-subprocess python-compression python-netclient  \
>                     python-netserver python-pydoc python-pkgutil python-shell \


