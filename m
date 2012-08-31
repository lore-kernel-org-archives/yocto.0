Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32EB7E004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:03:33 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-116-70.range81-153.btcentralplus.com
	[81.153.116.70]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AC9109ADE
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 10:03:27 +0100 (BST)
Message-ID: <50407DDE.8070208@r-finger.com>
Date: Fri, 31 Aug 2012 10:03:26 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
In-Reply-To: <50407985.7000108@communistcode.co.uk>
Subject: Re: meta-raspberry pi libav bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 09:03:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/08/12 09:44, Jack Mitchell wrote:
> My BBMASK is:
> 
>    BBMASK =
>   
> "meta-raspberrypi/recipes-multimedia/libav|meta-raspberrypi/recipes-core/systemd"

I think it matches against full paths, so try:

".*/meta-raspberrypi/recipes-multimedia/libav|.*/meta-raspberrypi/recipes-core/systemd"

Tomas

> 
> 
> 
> 
> Does this BBMASK not cover:
> 
>   
> /home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
> 
> 
> 
> Cheers,
> 


