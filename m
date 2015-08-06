Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C3AAE00A73; Wed,  5 Aug 2015 19:54:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1646AE00A53
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 19:54:30 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so68528481ioe.3
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 19:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=b9qijxmkOYUM9SVKRIuuXz37jKuge0U96xyVUcf70kQ=;
	b=IZ8WtYNiO2sKBYlj4h8bRI4GaxrodPA9yWObjHOtuubkx3IUODB1gSW2tuTcE94ALw
	llr+aLKt1+lATYtuzYAsdYzhZrzqhE+THsNV2bfZKNlNJEUl4/a7WixuzRtp2puFjDqf
	vgsatGB7zqZzXmaqseXglWHsxttJe5GqvrIzcvh+6zCxY9HUA8G3wlsLRGph7qWs+Vv0
	evrP+/6C6FRjKbuBzof0af4QDSlZCLRLWkjKrKELYj9ZrCvAXgYgyrVV8vaZ9za9Tgyy
	sjhNWp7wHkYX3zHFtX4SKLDqAPTlB1VuDNDD/oExwGNFU5PCDLMliXqD43SC4C/Bde5E
	t7VA==
X-Received: by 10.107.34.194 with SMTP id i185mr13045664ioi.49.1438829670220; 
	Wed, 05 Aug 2015 19:54:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 5 Aug 2015 19:54:00 -0700 (PDT)
In-Reply-To: <55C1AE74.2030808@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Aug 2015 19:54:00 -0700
Message-ID: <CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Thu, 06 Aug 2015 02:54:35 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 11:34 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
>> who defines the distro feature ?
>>
>>
>
> Distro features AFAICT are user defined options, you can for example have
> the following in your conf/local.conf:
>
> DISTRO_FEATURES_append = " vc4-gfx"

I wasnt trying to learn about what DISTRO_FEATURES are, I was trying
to draw attention to the fact that meta-rpi being a BSP layer
was trying to define a lot more than a BSP layer is supposed to do. So
if its a distro feature, I would like it to work as expected on other
machines besides raspberrypi. If thats not applicable then we should
rethink if it could be folded into MACHINE_FEATURES if it needs to be
a distro feature then propose it to OE-Core, at the very least
document them in README of this layer. Or separate it out into a
common layer which rpi BSPs will depend on.
but think beyond single machine when deciding on adding distro
features, there are distros based on OE which support multiple
machines

