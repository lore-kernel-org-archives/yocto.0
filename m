Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C306E00777; Thu, 15 Sep 2016 13:07:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1449CE00571
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 13:07:12 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id z135so188646ioe.3
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 13:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rA8PvvSzVWcYsnpLDKyXIv47aWP+ybHXvMolcho5r7o=;
	b=lUBj9QS4+J3Wz+RSVPA7x79CO5mLh9I1Alg965Xx8YP5VQhmw5m6NPUASrR8kbuSfY
	hPLx6WSqjWUltRvUWWhp/sIOm1OHjV91gBgyS8Fg5rcKfagJOW7o4Jkl/ySqEeC74Pm2
	EQYkwyhKpQV6pi0zlgY3XliDFMefc2vk2OlzRchJsHFH92Eu+tMNOxpu31OheTXrhhG4
	NMB8/1FKucQY40EjMzbojNlHHesfFnFN7YQLW0apqvVHfNzgd0LXK1SkCByrNtdnAosI
	j/HjEs/n0Rz+zvk4TNT56Ccxl5ogpSGNGINs2geu/iBnNjxQhMwCeGzBJU6IBPS7xKla
	hXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rA8PvvSzVWcYsnpLDKyXIv47aWP+ybHXvMolcho5r7o=;
	b=DUWmVavvqzJ1PuSeI9yxx+3rdH+ORQ3Jt/0/XuE6j3VhjK+dT5Zbbu11bx5GvOtRQ6
	90r1NE1W0gKwdZTm6/SHxlYuoqg6oianydESU3bKa4+XnnL3ewxkklJPr7R/LjL0+4+w
	c/FBU66RE5VHuqzw67Eh2Q75CaaPG5wnpO8LCNqconAkljy+R/Rxtbv56nVhPLtirZxi
	Lx9anUfOy5h1ycoBGbWnyMp5KJ0IzN05+LouuR9nMB1Hg4/9aPcELzSiCx1B42eVctQh
	FYhCUke2fF70ITZ+chVDHgrPFS7jWrhGrxonZpbhlZrfH3O3okMf6k33fynGsepA0xiw
	H9sQ==
X-Gm-Message-State: AE9vXwOHdLz4CPcuVxkvQ/yW1jvNbU6Obo/M4rsJerE6vKLnmmdAbvi6O7f/wPXqTCVZVw==
X-Received: by 10.107.149.81 with SMTP id x78mr18650142iod.31.1473970031791;
	Thu, 15 Sep 2016 13:07:11 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	f201sm2304689ioe.28.2016.09.15.13.07.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Sep 2016 13:07:10 -0700 (PDT)
Date: Thu, 15 Sep 2016 16:07:13 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160915200713.GA19012@openSUSE-i7.site>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
	<140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
	<88AA93DF-A9F2-4C96-A2BD-8B8C781F6172@gmail.com>
MIME-Version: 1.0
In-Reply-To: <88AA93DF-A9F2-4C96-A2BD-8B8C781F6172@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>,
	yocto@yoctoproject.org, "yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Thu, 15 Sep 2016 20:07:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2016-09-13 @ 01:15:49 PM, Khem Raj wrote:
> 
> > On Sep 13, 2016, at 10:31 AM, robert.berger@gmane <gmane@reliableembeddedsystems.com> wrote:
> > 
> > Hi,
> > 
> > Shouldn't it be possible to build a bare-metal Cortex-M4 compiler with the YP and build a small RTOS like FreeRTOS with this compiler?
> > 
> 
> yes it should be possible. you can also look into meta-ti where I think they try to have their DSP toolchain build some code using OE
> recipe model

Perhaps other things to consider (I'm not entirely sure if these apply, but
maybe worth investigating?)

The ROS project has a meta layer:
https://layers.openembedded.org/layerindex/branch/master/layer/meta-ros/

If your CortexM board has enough RAM (e.g. http://www.emcraft.com/) you can
run (a version of) Linux (uClinux) right on your CortexM target:
https://github.com/EmcraftSystems/linux-emcraft

The Emcraft website appears to provide Linux support for NXP-based CortexM
boards too: http://www.emcraft.com/products/456
http://www.emcraft.com/products/88

