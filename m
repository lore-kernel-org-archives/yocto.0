Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f42.google.com (mail-da0-f42.google.com
	[209.85.210.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0958EE002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:35:21 -0800 (PST)
Received: by mail-da0-f42.google.com with SMTP id n15so932395dad.29
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:user-agent;
	bh=opeiX/xlj0JsXqYRh4a/MTMpAdGE+7V3zBQSojBHzfw=;
	b=steZBxs2opJQiUw8Gu76Yy1vuhIP4b2DBM1Wy6uHLj+QSQm2z3FH8Op7MukIdBcoQp
	3XBNRlp2wgD9gbMgfjHN513oKwZgeJUyzfua/ZkzPUemDfOWHU6QtCd4+M81KyImiJVv
	ir3E0MgX3VahqEiurrNu0fWdDI6+BnOxaocGYResjVhGRT7lfY5TG29vBR8kfiHvLnb8
	7rhnVJ4Rx0WP5K+i3X8xBUwBljQSaWRMXQOvj+i7x4e3ZNyReZn30MY5xufDWBAQX29K
	+uvdwNHy93WJRCv9bgDiqsh+Sc58BmKN6RtQxjEBxqBlUvC4zALfzrCw6HLAH4Oxfnts
	YWRg==
X-Received: by 10.68.211.225 with SMTP id nf1mr9930506pbc.104.1362069320637;
	Thu, 28 Feb 2013 08:35:20 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id i6sm9746054paw.19.2013.02.28.08.35.19
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 28 Feb 2013 08:35:20 -0800 (PST)
Date: Thu, 28 Feb 2013 08:35:07 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Tim O'Callaghan <tocallaghan@meyn.com>
Message-ID: <20130228163505.GA31421@sakrah.homelinux.org>
Mail-Followup-To: Tim O'Callaghan <tocallaghan@meyn.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Flavors help.
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
X-List-Received-Date: Thu, 28 Feb 2013 16:35:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (28/02/13 14:43), Tim O'Callaghan wrote:
> Hi all,
> 
> I've been digging through the documentation, and dipping into the recipes, but have not been able to come up with a definitive approach to managing what I call different build flavors. I am using the term flavor to distinguish it from the 'variant' term mentioned in the docs, at least not as I currently understand what BB thinks is a variant. 
> 
> Essentially I want to be able to create one recipe for a given image, then during build feed the recipe flavor information to create a different image per flavor. 
> An example would be to be that I want to create 30 images each with its own splash screen, host name, IP etc, without having to create 30 different recipes.
> 
> The example I examined is code in the psplash recipe, which can create a different installable packages based on the SPLASH_IMAGES variable, which can then be mixed into an image recipe. 
> 
> I can see how that method can be applied to create package flavors, but how would I go about image flavors? If I have to dig into the BB/Poky code, where should I start looking? I'm guessing the best approach is to build a helper class I can include in package and image recipes that I want to add flavor to? 
> 

there is ROOTFS_POSTPROCESS_COMMAND for tweaking images after the fact.
Take a look at core-image.bbclass you still would need 30 image recipes
though, another thing you could try is bundle all splash images into
one package and _somehow_ use the right one when booting the image on
a given device. 

