Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE11FE00A48; Thu,  7 Jun 2018 09:47:08 -0700 (PDT)
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
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41487E006B4
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 09:47:08 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id l25-v6so12554258ioh.12
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 09:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=nTRJzs395DVTMhY4yZDEmZBQJrhlAL5oWjXoSTt9fsE=;
	b=bsNemZKwhRSTUIsJx9v4pw4yJJe2CWFHdYh1sIzXNLjDuYA3ulDW+cZp8oPErhPGoU
	HbjjoU5PuFGfO73n6NwxVzq68ZUJor+zHS4wXvYAzrDNlCR6QMf1xL5Xy/A0BZAcu/qq
	zP8gpCqKoHI+0a9I2t1ffGZUILK+X/gOGz4ogkmyqX0OBZqCg+MH2k3BW3DnEyw/4wn/
	aPRkwCpbN2Uy8MtvIYnizDw+AlUUDIp7+VqHX4EJVXD0fPumMyBc72y6zABTgXKmuAT/
	EsHeIcQOKFP4XQzB5V1ZrQ4ps4CXTdB94bStb5hC9fCnre+GE9UwODji7fnJ2KQipY5k
	E6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=nTRJzs395DVTMhY4yZDEmZBQJrhlAL5oWjXoSTt9fsE=;
	b=XTyYBh/g4/acirLQrSmMWSvvuzZ5us/w3sqKYXdJXZ7E6jPOTA06O7J6yUqc2z+Ozr
	f0/kI3aLDh2XEElEU4hivRCvakHrOkOrstFSmGatdv3wipHkyBCXcosJoDkndLyaQNUM
	BpFwZqMe0TiKAF5O1AqOb0XpKdrfzI0endTO17wUYYNBgGIop4JC11gZIfkhWe0e1hSF
	E1LSk5c1bK9T6CvTYXhoLCjcplVWitS69a/sxDC9E/V1OaFknqcm5cGCItBlzJLym+OJ
	L6leCoEqk5heJZg+7m/llZ0frAsHL3Sc6jJ47sPLUmwGw/LU/oHX61bPbLqDB/q+aqRT
	j7sg==
X-Gm-Message-State: APt69E1At5aW8z+3Pz9l44+ast7NNQjbXELsRJfYD0T7hGdRceb2NyhK
	6ULuyupPwDb9Z7jf9kNRF+I=
X-Google-Smtp-Source: ADUXVKJ5ju3R6NOzsknX5bpAKL5YgNv+2LZv2yKA6RDPlQXzmqSeSiYohp0Q7cdlhbukuvBmMcwUVQ==
X-Received: by 2002:a6b:a212:: with SMTP id
	l18-v6mr1426451ioe.166.1528390027558; 
	Thu, 07 Jun 2018 09:47:07 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	b100-v6sm1064429itd.16.2018.06.07.09.47.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Jun 2018 09:47:06 -0700 (PDT)
Date: Thu, 7 Jun 2018 12:47:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: =?utf-8?B?SXbDoW4=?= Castell <icastell@nayarsystems.com>
Message-ID: <20180607164704.GA24833@linux-uys3>
References: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Issue when integrating different bsp-layers on a single bblayers.conf
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
X-List-Received-Date: Thu, 07 Jun 2018 16:47:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Iván,

On Thu 2018-06-07 @ 04:39:11 PM, Iván Castell wrote:
> When setting the "build" directory with a bblayers.conf customized for a
> single platform, each platform builds the image recipe properly.
> 
> However, when I have integrated all bsp-layers in a single bblayers.conf,
> the compilation of some platforms has been broken.

This is a problem that comes up fairly often, and is a bug with the BSP layer
itself. All BSP layers are supposed to be created so that they work well when
intermixed with other BSP layers, but often they don't. See Angstrom:

	http://www.angstrom-distribution.org/

> The specific problem is this: one bsp layer (meta-rockchip +
> meta-rockchip-extra) defines a recipes-graphics/mesa/mesa_%.bbappend with
> this content inside:

I am the maintainer of the non-vendor meta-rockchip layer:

	https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/

The fact you mention this problem and meta-rockchip-extra implies to me that
you're using the vendor-provided meta-rockchip and meta-rockchip-extra:

	https://github.com/rockchip-linux/meta-rockchip
	https://github.com/rockchip-linux/meta-rockchip-extra

The problem is, the vendor is only interested in their own hardware, so to
them there's no reason to ever mix their BSP layer with any other BSP layer.
There's no interest on their part to "play well" with others or to check
whether their layers comply with community guidelines.

As a person who likes OpenEmbedded as a whole, I try my best to make sure any
layer I'm interested in plays well within the entire OpenEmbedded ecosystem.
However, because mali graphics are currently all binary blobs and projects
like Lima and Panfrost aren't yet ready for prime-time, there isn't much
support yet for _accelerated_ graphics in the non-vendor layer.

>     - Can you suggest a fix to solve this issue?

Fix the problem in the layer by using MACHINE-specific OVERRIDES and submit
a pull request to the owners. However, I've noticed there haven't been any
updates to their OE layers in the past 4 months or more, so I can't help
wonder if they've abandoned them.

Out of curiosity, which MACHINE(s) are you interested in?

Best regards,
	Trevor

