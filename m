Return-Path: <prvs=4927113d4=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55E38E00B48; Wed, 22 Nov 2017 01:01:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail01.prevas.se (mail01.prevas.se [62.95.78.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3958E008A4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 01:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=1252; q=dns/txt;
	s=ironport1; t=1511341314; x=1542877314;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=OtvymhLSu3XJI+fuh/JnFl27hjRq4e9hz3+XpasHUwY=;
	b=jUoYBzZDEpGAUP4yVmv3OQj85x9Zx+lkMXxx3FOvpX33fLJU3J7Vi9T7
	n3qQ1Eevq2pLgVOuzY6N7I4kXn/uDKvOgsvp6/dSl6tvCSnIqp75HkGBP
	ch4H1LLFr1xJ4lUDSzVPrOV38jBLC5W9mpOMNn4S/3mg5NOOv4ThimE24 8=;
X-IronPort-AV: E=Sophos;i="5.44,436,1505772000"; 
   d="scan'208";a="2852930"
Received: from vmprevas4.prevas.se (HELO smtp.prevas.se) ([172.16.8.104])
	by ironport1.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Nov 2017 10:01:51 +0100
Received: from [172.16.11.15] (172.16.8.31) by smtp.prevas.se (172.16.8.104)
	with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 22 Nov 2017 10:01:51 +0100
To: Paul Knopf <pauldotknopf@gmail.com>, <yocto@yoctoproject.org>
References: <CAKmWj-13qwhLX54szaK5gvxdHfJOKS7Xa98UxiSibLJkxSDRnw@mail.gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <4a1624fa-f533-6f25-bcb7-88d035657d4f@prevas.dk>
Date: Wed, 22 Nov 2017 10:01:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-13qwhLX54szaK5gvxdHfJOKS7Xa98UxiSibLJkxSDRnw@mail.gmail.com>
X-Originating-IP: [172.16.8.31]
Subject: Re: When are file checksums gathered from files, for tasks? During recipe parsing?
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
X-List-Received-Date: Wed, 22 Nov 2017 09:01:55 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

On 2017-11-22 09:10, Paul Knopf wrote:
> I have a recipe that depends on a deployed output from an image.
> 
> ----------------------------------------------------------
> SRC_URI += 
> "file://${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz;subdir=update"
> do_fetch[depends] += "my-image:do_build"
> ----------------------------------------------------------
> 
> Will the hash for "do_fetch" be computed after "my-image:do_build" is 
> executed?

The "dependency" hash is based on the hash of the my-image recipe, so 
that if you change the my-image.bb, then the hash of your dependent 
recipe changes too.

> If not, how would you propose I do something like this?

Don't put deployed images in SRC_URI, and don't put task dependencies in 
do_fetch, as that messes with do_fetchall, should you ever need to run that.

Look at what other recipes are doing when using images from 
DEPLOY_DIR_IMAGE. A reworked example from one of our recipes:

   do_image[depends] += "my-image:do_image_complete"

   IMAGE_PREPROCESS_COMMAND += "image_prepare"
   image_prepare() {
     install ${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz 
${IMAGE_ROOTFS}/
   }


I hope that helps!

// Martin

