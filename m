Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC69BE00CEA; Fri,  5 Apr 2019 09:33:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2314CE009A0
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 09:33:24 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 44bQNg424bz1rGhP;
	Fri,  5 Apr 2019 18:33:23 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 44bQNg3lJHz1qyZl;
	Fri,  5 Apr 2019 18:33:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id LgE09BnmhEhf; Fri,  5 Apr 2019 18:33:21 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Fri,  5 Apr 2019 18:33:21 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id DAB6045403E5;
	Fri,  5 Apr 2019 18:33:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new,
	port 10024)
	with ESMTP id cQzuvXM3ghwD; Fri,  5 Apr 2019 18:33:17 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id 1FA5145402D0;
	Fri,  5 Apr 2019 18:33:17 +0200 (CEST)
To: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>,
	Stefano Babic <sbabic@denx.de>
References: <CAAjAsixRKTj9pt1gSC5cT149Y4Kgy5WYxjLmWRU9z9LhY-2-ww@mail.gmail.com>
	<036ebe30-ce24-9e66-9e00-b6431023946c@denx.de>
	<CAAjAsiyRnnFKgJ95H9Hk2JkXU-p0sK5xZJPcNvXC6CMzHGrKqg@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <e695ac33-f8fb-d40b-e4b0-c1ec5b6cd8c3@denx.de>
Date: Fri, 5 Apr 2019 18:33:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAjAsiyRnnFKgJ95H9Hk2JkXU-p0sK5xZJPcNvXC6CMzHGrKqg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: require and image.bbappend
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
X-List-Received-Date: Fri, 05 Apr 2019 16:33:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Matteo,

On 05/04/19 17:54, Matteo Facchinetti wrote:
> 
> Hi Stefano,
> 
> Il giorno gio 4 apr 2019 alle ore 17:32 Stefano Babic <sbabic@denx.de
> <mailto:sbabic@denx.de>> ha scritto:
> 
>     Hi Matteo,
> 
>     On 04/04/19 15:35, Matteo Facchinetti wrote:
>     > Hi,
>     >
>     > I encountered a problem when try to add packages in my image
>     recipe, but
>     > I don't understernd if I wrong something or I have to do it in
>     another way.
>     >
>     > In detail, in my common_layer there are:
>     >    - image_base.bb <http://image_base.bb> <http://image_base.bb> :
>     yocto base image 
>     >    - image_with_graphicsupport.bb
>     <http://image_with_graphicsupport.bb>
>     <http://image_with_graphicsupport.bb>
>     > : where include image_base.bb <http://image_base.bb>
>     <http://image_base.bb> (require
>     > image_base.bb <http://image_base.bb> <http://image_base.bb>)
>     >
>     > Now, in my BSP layer, I want to add some packages to the
>     image_base.bb <http://image_base.bb>
>     > <http://image_base.bb>, so I create here the image_base.bbappend file.
>     > But when I try to compile image_with_graphicsupport.bb
>     <http://image_with_graphicsupport.bb>
>     > <http://image_with_graphicsupport.bb> the result is not how expected.
>     > Image_with_graphicsupport.bb doesn't add packages contained in
>     > image_base.bbappend but only the packages contained in
>     image_base.bb <http://image_base.bb>
>     > <http://image_base.bb>.
>     >
>     > Is true that when include an image to another with require statement,
>     > you can't extend the base image with a bbappend?
> 
>     Yes, it is true, because the file is included and it is not anymore like
>     a recipe that can be extend. It will be searched for a
>     image_with_graphicsupport.bb <http://image_with_graphicsupport.bb>
>     append, not image_base.bbappend.
> 
> 
> Ok, understood.
>  
> 
>     IMHO you can easy reach your goal if you write a packagegroup recipe
>     where you put all packages you have in the IMAGE_INSTALL of your
>     image_base.bb <http://image_base.bb>. You can then have a .bbappend
>     for the packagegroup in
>     your BSP layer (and this then works) and you put the packagegroup in the
>     IMAGE_INSTALL directive of both image_base.bb <http://image_base.bb> and
>     Image_with_graphicsupport.bb.
> 
> 
> Thank you very much for this tip.
> I have done exactly in this way and works perfectly and it's easy to manage.
> 

:-)

> However there's a part containded in the image_base.bb
> <http://image_base.bb> recipe:
>     inherit core-image
>     IMAGE_FEATURE_append = "..."
> 
> that I had to duplicate into the Image_with_graphicsupport.bb too.
> 
> It's not a problem but is it possible to put them in a common recipe
> like packagegroup?

Then simply write a image_base.inc to factorize what is common and in
both recipes you can include it with "require image_base.inc"

Regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

