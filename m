Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48CA7E00B4C; Fri, 14 Apr 2017 16:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF93E00B45
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 16:43:48 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id o21so13928242wrb.3
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 16:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9NVkGeUz9n/1nxvGzgbWM6dTyQYJL958niG01jnvKds=;
	b=cJKw6x2BqLVbF9CLqSCOcYxh4gdMsRsL62ux5v1IsKlFDpZbmgRKtZU9BJAkeWDK23
	/zjgJK1xqI01Mx7MZwUQnxmoQcX+HaYsNwvlgPgjrWPx7vbv6i+E6pxbulDqw25fSro8
	bNBfZA5Qq7Sl31m3hh//ea0rlTCvnh01tQz/S6NKLjfKEppxPq4rhIa5L0uSxvyQpmaH
	LSDxF9q18LKRQRc0pNM6nMdb14CA/fsLfyt6cnhzt6gdIZq4qIfCaFy9M5Kq0FV4jLae
	r3OgDTM7Qs+eiG/0E3W4/thS+UgG+Z1p0rKSYJGwMlc1VDq1atGSRCZrNF04DnG4Zrrf
	0X8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9NVkGeUz9n/1nxvGzgbWM6dTyQYJL958niG01jnvKds=;
	b=NLIxooOy6dVqh6Uzj6AxWRxSEPL6Lne7tUWuprPba2Ttuml+O0nSXqRd5Ly/Z3+kxl
	FwbT+yB+OAIkyzoNm3bGukZBUlQr9D914IbSsnhMqwTPESsNycvgSqO68i5YhUqYpDTC
	0pf8e0uxrRUpXiCBLo50syX0aKp3EmSIzjofz5iGrF7sVJ+42OoTyc/8IKWOW1hu19JO
	qDSqKUhENLBSxsJxkSe42eaRHV8Uk/vecPDqmZh4wHOw5rz996Pe6Xdo5UIbhD97wPCG
	Wf1DfS+hf2Mvlw2O7Ym0h5ySuhpxzFZ2VU5tbQNSrOSt0Gs1x3osDw9YqClybhUyeHBb
	AjQw==
X-Gm-Message-State: AN3rC/6QzCSGixb4AfWJsYlVW5Lbx5HPDu3AwmJCAwkpELbgjzM7oYQG
	wzRsPgYJZlOMjOtwb/ZgAjSLgIH3ag==
X-Received: by 10.223.139.146 with SMTP id o18mr8714353wra.175.1492213427344; 
	Fri, 14 Apr 2017 16:43:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Fri, 14 Apr 2017 16:43:16 -0700 (PDT)
In-Reply-To: <20170414201313.3138-3-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-3-andrei@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Apr 2017 16:43:16 -0700
Message-ID: <CAMKF1srG2DFUZiRbJzRdgQxNcdtbTLAhGddmv_Lf5umGPw9f-A@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/7] firmware.inc: Bump to 20170405
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
X-List-Received-Date: Fri, 14 Apr 2017 23:43:50 -0000
Content-Type: text/plain; charset=UTF-8

same :) see my series.

On Fri, Apr 14, 2017 at 1:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bsp/common/firmware.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 53c469e..1c3a911 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,10 +1,10 @@
> -RPIFW_DATE ?= "20170303"
> +RPIFW_DATE ?= "20170405"
>  RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>  RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRC_URI[md5sum] = "c87bc1bffbb8f254fc739e34baa03b02"
> -SRC_URI[sha256sum] = "ee8758d7e63c8fea7c8b7b476ff1c09f9591c74349b7751036a78ae5b88eca36"
> +SRC_URI[md5sum] = "ea82d14a7cd8cfae9b78e00d4e56bc71"
> +SRC_URI[sha256sum] = "2f4e5bddbac1372590db203002c35cbba3fb9d6172a93c314ee27bf05ae13bff"
>
>  PV = "${RPIFW_DATE}"
>
> --
> 2.12.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

