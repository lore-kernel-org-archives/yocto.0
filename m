Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB0A6E00B81; Fri,  3 May 2019 20:02:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8DEEE00A0C
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 20:02:21 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id t200so12156664itf.4
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 20:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ZGQbVBTRgSecdwxnynIdDskCmBPPEVIARhJ7uGipPCQ=;
	b=Podk7xN+R5XPjiT0di8azQ6qj35iyzIdK/fGeMkQxBC1qcsthhxtAxeIsz1umcdD2f
	I33g/OLSFckd6UdPqQZBhfVTzmQtRgv1QhlprgdL9eEh6W2O+FHNGHOGORevJvSaLT6d
	KErvZKDsMUOR0V9/vbkWz5wrNAYsskkiZROZm7QHGmBybJw1tOAEDrz5TQaKN7FL05u3
	TofACTC/KKxnPMXE9BIatCZ78JJ3b2EIyreNJ8qmAZf4QHswF0u3U8V/PWDn4WFWtG41
	jzC0PSbrq+taHzhUz0b597QKdnSM0hMX/77+m48+HENoGeNn6uLuegv/MWh7HCbYQNZo
	4R4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ZGQbVBTRgSecdwxnynIdDskCmBPPEVIARhJ7uGipPCQ=;
	b=QIvKTvNkvUjLKhVqq079poYzc/V6QIHukUQOJ9BwfXlJNgKkYyh0JgLOa1sL+LVxxQ
	vraNnen3N5vPC37D2U7Po5kcImtaVwv/kxJW6ppkLPO5+o+Uzp+L2f7zqBnGee74Jqwp
	iU4J4sV2cbt9onF4Z1i2RsIuF+iAWanq+yR2hPU0ffW2fHoeo+vEkZlhF3bYaj/1CZMI
	l01oFtNCEt8+EZzbQISwfdZe8cYrcrwVdCIQ6FvCtPmspXBBRpK7hclsIwa5aA7ZDzn4
	8VJ4JyTTfO62VokuufF8JAl7V6tMNIOtUh1fOMty5PIFel7yoz0LJ/Qnje7lt4ZETIGO
	lnMw==
X-Gm-Message-State: APjAAAUhP6NBpqX8mzIZKvpkL8qhnr+EEiSJe37UxC52nR9+DZv+TwSW
	WHLn4tSv7Bx6hOlKJtpc9FKmQX8x
X-Google-Smtp-Source: APXvYqxkP342Rt/8ExPcjeF2unqqCEnE3f+sN7l5uKrGcV3P5EYS+gQ5KSLZZLii3G3cdd5yPZ8Y5g==
X-Received: by 2002:a24:e85:: with SMTP id 127mr9150000ite.4.1556938941167;
	Fri, 03 May 2019 20:02:21 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	i195sm1285176itf.9.2019.05.03.20.02.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 May 2019 20:02:19 -0700 (PDT)
Date: Fri, 3 May 2019 23:02:17 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190504030217.GA26588@linux-uys3>
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-2-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190424145918.26040-2-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, Randy Li <randy.li@rock-chips.com>
Subject: Re: [PATCH 1/3] recipes-bsp/u-boot: fixup build for gcc7
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
X-List-Received-Date: Sat, 04 May 2019 03:02:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2019-04-24 @ 10:59:16 PM, Randy 'ayaka' Li wrote:
> Signed-off-by: Randy Li <randy.li@rock-chips.com>
> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
> ---
>  .../u-boot/u-boot-rockchip/gcc7_fixup.patch   | 38 +++++++++++++++++++

Why do we care about gcc7 on master? Master only has support for gcc8.

