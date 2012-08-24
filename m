Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 554C2E00346
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 04:02:32 -0700 (PDT)
Received: by bkty5 with SMTP id y5so572380bkt.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 04:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=wbUoopupz37TBjhHhiCtoHm9YjdeyYl/ZF3pdYMyRPQ=;
	b=XOSSDOawR5RNCoFXF8lmWZKBBQ9V4QU894o1/0yi3zcoeScei71JYlVSlS622BKAPp
	8FVuQQmhKIwYnijCa+37U5psEFAE8XwAX2UunnPzhqfXed+o7athfxVKKVqucpNZfvZ8
	dQPvzaAA4QQpLg+pKlcmuXJjA5KxG+g60XCAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=wbUoopupz37TBjhHhiCtoHm9YjdeyYl/ZF3pdYMyRPQ=;
	b=V2p+fYVUDumZi8P7URyQbLuaNthq03B0aU9OoPgllmY00GLS+w2c9zBr0FHqjaYBkS
	TBnudyoOCKxgf4ddiErEPDchh35Ij/cul13+rqpTGAdPKjeDHMipMGFyg+R/uMhv1/I3
	4/zKylaFqqhZr4DG9Oo9voWd8rHLGKNOrC+YKDt4kaNHlUB0BcWHkn5KsDS4jjnT2bOL
	BuGhgHGeyeNsgBkifrXa/bytJ0FUaPf1BFK4Nt55WMy0WsE1GzHshyAh3Kpn4dTj4jow
	9MZc91YHdFdj8jNQQ/kgZXgOIbeQpA6UPXtu4mUGg98k5jrGWq6Xom2BnDjcOuRj58jS
	NItg==
Received: by 10.204.15.199 with SMTP id l7mr1785644bka.51.1345806150963;
	Fri, 24 Aug 2012 04:02:30 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id m9sm6154226bkm.10.2012.08.24.04.02.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 04:02:29 -0700 (PDT)
Date: Fri, 24 Aug 2012 13:02:26 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120824124547.8e56cbbd-43ec-4781-8cbb-5d50b4cdf311.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120824114034.3297d25c-b448-4631-93b1-fba8afc4d8c5.mhubig@imko.de>
	<3392698.9QUAKKNk7n@helios>
MIME-Version: 1.0
In-Reply-To: <3392698.9QUAKKNk7n@helios>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkwtc3T25/638YPjsNFXkDsPIeToM4YUAsWU6bKSVctfS0g5de0FF7BslZZWQFv4rGUehJw
Subject: Re: License information of tasks
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
X-List-Received-Date: Fri, 24 Aug 2012 11:02:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 24, 2012 at 11:39:10AM +0100, Paul Eggleton wrote:
> On Friday 24 August 2012 12:05:41 Markus Hubig wrote:
> > 
> > First: tasks are packages without content.
> > 
> > | rpm -qpl task-core-boot-1.0-r9.stamp9g20.rpm
> > | (contains no files)
> > 
> > ... so why do they need some license information in the first place?
> 
> This is something that annoys me as well. I have thought about adding the 
> ability to declare that a license is not applicable for those recipes that 
> don't actually distribute any files, in which case a check during do_deploy, 
> do_package and do_populate_sysroot would be enabled that would fail if the 
> recipe ended up distributing anything. Unfortunately we don't have hooks in 
> all of the necessary places to make this practical, but it is still something 
> I would like to resolve.

Hmm, it seems you don't have to use LIC_FILES_CHKSUM in a image recipe. So
maybe one can adapt it from there ...

> 2) Set your own variable to the value of LAYERDIR in layer.conf and then use 
> that in the recipe; however that would make the recipe even more hardwired to 
> the specific layer.

Hmm OK but this seems nevertheless a good solution ... will try it.

> 3) Refer to a license file in ${COMMON_LICENSE_DIR}; this is discouraged as it 
> may break if files in there are moved around although I think that is less 
> likely in future.

Also OK IMHO ...

> 4) Copy the license file into the directory containing the recipe. This is the 
> recommended method for recipes that do actually distribute files, but seems 
> excessive for a task.

That's bad cause I have to duplicate all files this way. My first thought was
to use the License files I already included into my layers for this ...

> Ultimately though is it really important that the license for a recipe that 
> distributes no files be any particular license?

Yes I also think these files (themselves) are covered my the layer license and
since they don't distribute any files don't need an additional license.

Maybe some day there will be a distinction of the licence information between
the Yocto stuff like Layers, tasks, images and recipes and the created
software.

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

