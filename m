Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51F33E0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:30:31 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-112-181.range81-153.btcentralplus.com
	[81.153.112.181]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 81B8B9AE3
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 17:30:25 +0100 (BST)
Message-ID: <5037AC20.5020705@r-finger.com>
Date: Fri, 24 Aug 2012 17:30:24 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1208221629150.20737@oneiric>
	<5035E629.5010109@r-finger.com> <5037A0D5.5050508@intel.com>
	<alpine.DEB.2.02.1208241145100.32624@oneiric>
In-Reply-To: <alpine.DEB.2.02.1208241145100.32624@oneiric>
Subject: Re: dev manual section on "customizing images" needs serious adjustment
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
X-List-Received-Date: Fri, 24 Aug 2012 16:30:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/08/12 16:45, Robert P. J. Day wrote:
> On Fri, 24 Aug 2012, Scott Garman wrote:
> 
>> On 08/23/2012 01:13 AM, Tomas Frydrych wrote:
>>> Hi,
>>>
>>> On 22/08/12 21:37, Robert P. J. Day wrote:
>>>> One way to get additional software into an image is to create a
>>>> custom image.
>>>
>>> The manual should make it clear that this is *the* canonical way to add
>>> software to your images. Modifications to local.conf are temporary
>>> tweaks for testing/debugging (i.e., you should never feel the need to
>>> commit your local.conf to some project version control system).
>>>
>>> Tomas
>>
>> +1. If you add additional packages to core-image-minimal in your local.conf,
>> you're no longer really building core-image-minimal.
> 
>   sure.  but if you similarly explicitly set IMAGE_INSTALL before
> inheriting core-image, you're not really "inheriting" core-image
> either. :-)

That is quite a different thing: core-image-minimal is a recipe to build
an image with defined contents, in contrast core-image is a class, and
the whole point of classes is that recipes can inherit and override them.

Tomas

