Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72BDEE00D68; Tue,  3 Sep 2019 09:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80DA3E003E1
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 09:13:30 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id u40so11988433qth.11
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2019 09:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WEuoXePpJN+j06pPyCT30nVi7vJ5Dp5trgHjZSqyBPw=;
	b=m3cHtZyZhS46F9SDO8gTD7MFDQhDhPGXis4UVnozKEV4+3P4TaelGMRMqqE2fcdVbg
	+B5Wyi/xSPcbVo6DDVADiuvN/SyEC09/Ac8Jd06bef7EwMpyjS2OTpxHZ4XbzkpCfcsy
	c9o2JtWJEzX8dKD3jGgPlsL6hv4u+FRCucB3zKjq6iyKUtCITgYhn+c6E8WyxxVQPCSC
	jtXqsgcWYRBI/+NXy6MEeatOyGjk3yTf9CmmwQCYwcqfghkQq2OS5okyI+OvQCGGgwOd
	TZYu8JNL15S6tjU1LpLBJ/6wriu17aSMS00lF2Qp6H6D07vO+odJK2t/LsLpIT3igCW+
	Wjcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WEuoXePpJN+j06pPyCT30nVi7vJ5Dp5trgHjZSqyBPw=;
	b=e0fT7BpBeevNrmI5bgNraLwfKMNjOER6jG/GeOMpgZ6Lr6rEZUxLK/WzynrWs8MJBS
	NZaaD/9cD3X1irrIytd/dnTvdTGPZsFHZPlEGBtDt1sGdG+IlC1VAvreNRJIOLMr2qBq
	M1Z8aMXd6YJvikfyPQPTBWfPuasIMOXQcX2/hgDOo6tEroLOCdyk/L6ugRzgcWL5QRdd
	cuIQqTQ4QF25V/iw6O0pf8G2yogYFk9qAZjT/5auy0WOQgBUpaeYf/X8odQwO79XxIIJ
	pNeeOf+/2Lvcx0vIFxjqzLhUvZn0KRkMNDOqyBawEZOOFM3dqFBq04WD98NbjFDdAqWq
	Sx9Q==
X-Gm-Message-State: APjAAAXsQV1sRQeegA2QZhE0VEaI8z/pqbuFqLBEUWkYdIec3+20AyGo
	QwTMirJ7LwEFdYun/G0SsaKQB/75aPnQB1m1LZ4=
X-Google-Smtp-Source: APXvYqx4z8M7Jn2A4uRRldgxrNAFLbcVUFYQRuXKMSIHuZRkNnUcoJ6ymo8ZdWNmJlGHf3Gt2OVVLZzaqXzE6k86zmM=
X-Received: by 2002:aed:3c52:: with SMTP id u18mr16136871qte.194.1567527209510;
	Tue, 03 Sep 2019 09:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190903085533.e18e9c3c566afe6e9a83f32f@t-online.de>
In-Reply-To: <20190903085533.e18e9c3c566afe6e9a83f32f@t-online.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 3 Sep 2019 09:13:03 -0700
Message-ID: <CAMKF1socKc3S_FKH88=cXiTA0ztVtaySXAmJbB5nqcywvYpK-w@mail.gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error at extensible sdk installation
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
X-List-Received-Date: Tue, 03 Sep 2019 16:13:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 3, 2019 at 12:05 AM Markus Volk <f_l_k@t-online.de> wrote:
>
>
> Hello,
>
> i built myself an extensible sdk from current master branch. After successful build i tried to install and got the following error:
>
> /home/builder/tuxbox_sdk/tmp/sysroots/x86_64/usr/bin/postinst-docbook-xsl-stylesheets-native-xmlcatalog: line 5: xmlcatalog: command not found
>
> and was able to fix it wby adding "xmlcatalog" to HOSTTOOLS, but i guess thats not the propper way to fix it
>

infact that might be right soluition. Can you submit a patch
> --
> Markus Volk <f_l_k@t-online.de>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

