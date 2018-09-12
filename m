Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EC1FE00566; Wed, 12 Sep 2018 09:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD83E00519
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:16 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id l14-v6so647630iob.7
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fJefRFB4ZZ8YIe4KG01e9257S3OPoexLgWuSuGZAVbI=;
	b=SmvLXDJRsBG9KUTZVwRT2Rjj+Uj/YjQnr8PRARJfFZ77mT1PCzxzlCCqBT5WLWqM9F
	CLOC+blIkMI9YpDgA6dWKrtavnlAnk1UTe6GLfPZjLWBb+X4+GX/WGfgu52hRCCb3PK1
	M2nGjJKRAJ8bXD6Mu4qtDIbaXGG85UdY8Kt7ZPeb1f0rOLp6Be7i6Ydv84QcjOlu5S6z
	38lgOvJxyoeA3QLTQJzQZ/S26GeR3MVkVLmvvqVrW/G01fp+TgEWe67AXG+3TiOMpJza
	3AwTHumcKdb/1890JEhg+LpY3WpcFb7n63bOTwSBUxs77IpMrqaIoPLTjvQrt+jhi9i6
	F3mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fJefRFB4ZZ8YIe4KG01e9257S3OPoexLgWuSuGZAVbI=;
	b=sg+RMPywJYe/Oa2IBySBkin8+IJHyTstTZ2fJaikuBxVwiTjQOLffixypzJc0nXxzv
	iWphMxxTRlFQBit+zF0xDnlsrCZEcABaSxRujyt3vOrhbqgH5J2fI8tkc+Iev1c96u0n
	i8wDLOH6Vd/rjiMfFI4JGuD0ZpiHhh1a/f1AyC1WhAmtLOihlCxhsZ2gmzC4DlIcY1Fd
	hyWU0gR5NqWI1j4n2VdrVRyQ1J7OdD7yERBQBxTBUtMmZ+nMAIEJPDB4Kmi1caUSi7g1
	Pqf2EYDhSuTegkEFzmSDdI7GpY6pgSnpmiLXzZPBDEg4KCgUWnvXNfaDp7cDjpuz4ms5
	rU8Q==
X-Gm-Message-State: APzg51CvTjvHt91I7Y0DUJfXDgGUs2I+R09mx+rCI+BCL+qHXV/50NH+
	jbSHbr6z21dxqo7gqax4D0hwoEco
X-Google-Smtp-Source: ANB0VdZJknbzYypAyKjSByAdZ/qUeBF47eun5LevIvi5qUtpGdGM0BZlyZN40FGk3X0Gc4pUPRsdqA==
X-Received: by 2002:a5e:980c:: with SMTP id
	s12-v6mr2480316ioj.113.1536768736368; 
	Wed, 12 Sep 2018 09:12:16 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	a6-v6sm354797ioq.73.2018.09.12.09.12.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Sep 2018 09:12:15 -0700 (PDT)
Date: Wed, 12 Sep 2018 12:12:10 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Shyam Saini <shyam.saini@amarulasolutions.com>
Message-ID: <20180912161210.GA21553@linux-uys3>
References: <20180912141004.7929-1-shyam.saini@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20180912141004.7929-1-shyam.saini@amarulasolutions.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, michael@amarulasolutions.com,
	jagan@amarulasolutions.com
Subject: Re: [meta-rockchip] conf: machine: Add support for vyasa-rk3288
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
X-List-Received-Date: Wed, 12 Sep 2018 16:12:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello Shyam,

Thank you for your contribution!

I just have 3 small nits with your patch, which I am happy to fix myself
without you needing to send a v2 (if that's okay with you):

1. I see that there's a mistake in meta-rockchip's README file which I will
   fix, the email subject should be prefixed with "[meta-rockchip][PATCH]".
   Sorry! I will fix this in the README.

On Wed 2018-09-12 @ 07:40:04 PM, Shyam Saini wrote:
> This patch adds initial support for the Amarula Vyasa Board.

2. I'm going to remove the following second sentence from the commit message.
   In 2 years, reading the commit logs regarding future promises/TODOs will
   seem funny. The sentence above fully explains this patch.

> With this patch, we would have working images for vyasa,
> single gpt and wic image support would be added later on.


> 
> Signed-off-by: Shyam Saini <shyam.saini@amarulasolutions.com>
> ---
>  conf/machine/vyasa-rk3288.conf | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 conf/machine/vyasa-rk3288.conf
> 
> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
> new file mode 100644
> index 000000000000..9c634325451e
> --- /dev/null
> +++ b/conf/machine/vyasa-rk3288.conf
> @@ -0,0 +1,14 @@
> +# Copyright (C) 2018 Amarula Solutions
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +#@TYPE: Machine
> +#@NAME: Amarula Vyasa RK3288
> +#@DESCRIPTION: Amarula Vyasa is Rockchip RK3288 SOC based Single board computer with fully supported opensource software.
> +
> +require conf/machine/include/rk3288.inc
> +
> +KERNEL_IMAGETYPE = "uImage"
> +KERNEL_DEVICETREE = "rk3288-vyasa.dtb"

3. I'm going to add a space after += for consistency.

> +KERNEL_EXTRA_ARGS +="LOADADDR=0x02000000"
> +
> +UBOOT_MACHINE = "vyasa-rk3288_defconfig"
> -- 
> 2.11.0
> 

Once again, thank you for your contribution!

