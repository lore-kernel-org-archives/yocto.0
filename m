Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19FBEE007E1; Thu, 12 May 2016 08:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EFC2E006D8
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 08:59:38 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id n129so16754303wmn.1
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 08:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:date:message-id:in-reply-to:references:user-agent:subject
	:mime-version:content-transfer-encoding;
	bh=tJQMC5mI8pLS/7j7OWmkxSeKEstUgj/CCqj6eoGeVbE=;
	b=Rjw/uOcUBTVXVETbTDlImrqWZe2KlnX722yPRSc1gHuzf2E1kvMxuMECUjJ3ZDL0aI
	LwwZHM3hKlNLBOWgWSOvRTvoSznqT9RgQOVZwOmFEfwzxS3vFS5fyY4a3KX5KBIfU82a
	8/Pnda5bvaXgtXZdXLIPWSe8SibSp0/GlV9215bXUr9Y6b7HBITnGP6FAH4ptXZl+3RA
	n/VqTaME8Ty4cciJcXbcNmYgbVydNMu0Y3u2eBpADqcPTwTDf8Qd4F+LQTkYnd2jGWKj
	iblNlVKM/NHNV4l03MID0czF/nBjibEQV8N6gHAYo7ttdszLiFINl0A7r2Ca96KgdzYD
	oqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version:content-transfer-encoding;
	bh=tJQMC5mI8pLS/7j7OWmkxSeKEstUgj/CCqj6eoGeVbE=;
	b=VctNFatsrE3bHw/+x7nCXx1cDZrx41OsAn/uhqfLFWw+aLu13By9aYHxZHmPD5pE/J
	IpvVcrI2XLO4AxZ8zRYPzgXSaes+ZUpTDuxEThKwPv7Rf1nUY7mo0+pkoeSQtq32r2xo
	Nq02C47jOwcnAL55O2SeGM3/fXZIK3w15I39orSo84FXAWtz/Lv81NHwL4XFFGDPB/Sn
	mKcT3zKqtUfgbUA7easRXOslFRqKbp24ekrx9StWvJG3+xQiUUIhJ4ZLqdDWvl0X8PtT
	cmGENTeXhYP9U/k7f8XfovHJnzgim2IXyX/OCGRgYIVHbXDjz9yLjG0U+tz0L3l3NidO
	fsNQ==
X-Gm-Message-State: AOPr4FUQ8Y9z9CpqE15AGfvqaiqdQgDgt0BfLbonnbxK46rEgXKyJeh8BW0hlH3hNSiGNg==
X-Received: by 10.28.47.208 with SMTP id v199mr7402159wmv.56.1463068772761;
	Thu, 12 May 2016 08:59:32 -0700 (PDT)
Received: from [192.168.23.165]
	(HSI-KBW-078-043-133-099.hsi4.kabel-badenwuerttemberg.de.
	[78.43.133.99])
	by smtp.gmail.com with ESMTPSA id 63sm41811906wmz.5.2016.05.12.08.59.31
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 May 2016 08:59:31 -0700 (PDT)
From: Christian Ege <k4230r6@gmail.com>
To: <yocto@yoctoproject.org>
Date: Thu, 12 May 2016 17:59:28 +0200
Message-ID: <154a5b1b700.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com>
In-Reply-To: <OF5A7F2133.CD24CBDC-ONC1257FB1.004DAD37-C1257FB1.004FD28D@esa-grimma.de>
References: <OF5A7F2133.CD24CBDC-ONC1257FB1.004DAD37-C1257FB1.004FD28D@esa-grimma.de>
User-Agent: AquaMail/1.6.1.5 (build: 26000005)
MIME-Version: 1.0
Subject: Re: how to install a kernel module
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
X-List-Received-Date: Thu, 12 May 2016 15:59:40 -0000
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

> Hej
>
> I created a recipe for a own modul. It's similar to the example given at:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod
>
> I checked the bitbake process. A "kernel-module-<module name>" package is
> created and filled with the ko-file.

Not sure what you already tried. You can check this as a example:

https://github.com/graugans/meta-udoo/blob/master/conf/machine/udooneo.conf

I do use autoload  and recommends to add modules to the image.

Regards,
Christian
 >
> Actually I am failing to bring the module into my image and run it. Are
> there a special command for the "local.conf" or so?
>
> How and where to include the module?
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Geschäftsführer:
> Dipl.-Ing. Jörg Gaitzsch
> Jörg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich
> erhalten
> haben, informieren Sie bitte sofort den Absender und löschen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If you
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
>
>
> ----------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>




