Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A0C0E0051D
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 16:14:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Apr 2013 16:14:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="281029912"
Received: from unknown (HELO helios.localnet) ([10.255.13.185])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2013 16:14:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>, yocto@yoctoproject.org
Date: Fri, 05 Apr 2013 00:14:48 +0100
Message-ID: <14373389.b9xaIaY1vP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <CAFMfyz+evbAH-Yes=LdnkU9TWi-GKdVRWHT-MYaCNzh8Hf_1fQ@mail.gmail.com>
References: <CAFMfyz+evbAH-Yes=LdnkU9TWi-GKdVRWHT-MYaCNzh8Hf_1fQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Installing foreign fonts into the yocto build
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
X-List-Received-Date: Thu, 04 Apr 2013 23:14:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 03 April 2013 10:47:02 Satya Swaroop Damarla wrote:
> I have a small issue. On my device, I would like to have Chinese, Japanese,
> Russian, Hebrewish, Greek fonts and all European language special
> characters available for java application based on X.
>
> In general I would like to know a method of adding custom fonts which are
> scalable to X server. I tried browsing oever the internet and in the
> mailing lists but not much success... Suggestions are deeply appreciated...

I'm not much of an expert on this area, but it seems to me this is a pretty 
broad question; it covers not just fonts but also character sets. Presumably
if you can get away with only supporting Unicode you can just install a font
that supports a broad range of the unicode characters.

Otherwise, I'm not sure if there is a well-defined set of fonts to cover
everything; however one option would be to look at what fonts desktop-
oriented Linux distributions install by default since they always have to
deal with the issue of working out of the box in a wide variety of locales.

If you have an additional font to install that should be fairly easy - just 
copy one of the existing font recipes we have under meta/recipes-graphics/ttf-
fonts and edit it to suit the font. There are additional font recipes in the
meta-oe layer as well:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-graphics/ttf-fonts

Once you have the recipe you just need to add it to the image, details on
how to do that can be found here:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

