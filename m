Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1030E00A49; Mon, 10 Jun 2019 01:09:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FBC1E008E3
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 01:09:34 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45Mm4r3kMqz4D;
	Mon, 10 Jun 2019 10:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1560154172;
	bh=JDJtZC3Erx6/4uKjXU4ZlCmf8MKn/rnMrrXuF7UOhf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=daE8MEGcT8xpmEWnbVTyGcfIeOfubbTAAp9FM7teV9Qec//xkZFIjX/RbAYB+yQBA
	+zAsr8C3a9x3O9/IMfi8aicjTSx5tAjlVaNj89JrIHNjpx6b/XUkGZzDVyH7/lL5c4
	OP5y/uC/Lv50CJyKq9GaEbIzSVTwsR0iNebgLzMsrlafgHjKlCP+rxcm4ClbhB52Vo
	Bmt2tY9d8kDWf59zW+hc3+4/jhARDYEl0mg+eT9/2QZ9Gdxn5Uq+gqX3/gEIIT21CA
	lNoxsigs5zkycMUhCC112SUMBeodwPSQYbQoqOYg2ElJWc6HfMepwleQdsf/FNPWRa
	hDnO74VOLYAcH0Gv9dQEpz0TDvRc53iWcRzhtCyrol95kmoj4AGbGqlrVY2PpW1LAH
	ybHQKlWbUVl/1ZL0h5+3egO7QIBbGL9t7ydAl/Ji5/Nx+JPuv2NAAxSin81Qu6hsZ9
	aq+RO/fQVYYG3vf4t7W/pJ7ZBvBoM+vr8Kmkbh3zy/2qCKkrmswzM3QebecENFDRb6
	Q8UJfYeDxRghCTkDR6tNXYhHZPJerFeiFLyAJ8g8ZFglC0e92Ua6RPNbTc58YPPx8H
	etLmyYY7TzKMOMX2puvf1k2eYcztq2c1FcFnkapaVsQrqnPYUZTAb8I72CymVHFPdT
	9xaathIB/p0Fh0FY+zCbPNAc=
Date: Mon, 10 Jun 2019 11:09:30 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
Message-ID: <20190610080930.GA5894@localhost>
References: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
	<20190610072424.14779-4-zangrc.fnst@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <20190610072424.14779-4-zangrc.fnst@cn.fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][master][warrior][PATCH 3/3] python3-scapy: solved the conflict with python-scapy
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
X-List-Received-Date: Mon, 10 Jun 2019 08:09:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Jun 10, 2019 at 03:24:24PM +0800, Zang Ruochen wrote:
> -Rename the following file to resolve the conflict with python-scapy:
> 	Rename /usr/bin/UTscapy to /usr/bin/UTscapy3
> 	Rename /usr/bin/scapy to /usr/bin/scapy3
> 
> Signed-off-by: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
> ---
>  recipes-security/scapy/python3-scapy_2.4.2.bb | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-security/scapy/python3-scapy_2.4.2.bb
> index 83c79f4..abcaeeb 100644
> --- a/recipes-security/scapy/python3-scapy_2.4.2.bb
> +++ b/recipes-security/scapy/python3-scapy_2.4.2.bb
> @@ -3,3 +3,7 @@ require python-scapy.inc
>  
>  SRC_URI += "file://run-ptest"
>  
> +do_install_append() {
> +        mv ${D}${bindir}/scapy ${D}${bindir}/scapy3
> +        mv ${D}${bindir}/UTscapy ${D}${bindir}/UTscapy3
> +}

A proper solution would require using alternatives so that installing 
either the python2 or the python3 version would provide the binary.

But given that python2 is reaching end of life I would suggest to just 
rename the python2 binaries and keep the python3 binaries that will stay
long-term at their upstream names.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


