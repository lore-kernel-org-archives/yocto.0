Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B07E01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 07:11:10 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3V61MK2dRvz3hhbT;
	Mon, 12 Mar 2012 15:11:09 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3V61MK3tZrz4KK2t;
	Mon, 12 Mar 2012 15:11:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id S3lYut77ZtG4; Mon, 12 Mar 2012 15:11:08 +0100 (CET)
X-Auth-Info: 2cbHlNGB+eenaCTJcLTL8m2Nd7z+2GEhxXT1cUJ2avk=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 12 Mar 2012 15:11:08 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 81D301A58BB;
	Mon, 12 Mar 2012 15:11:08 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 64496202BE9;
	Mon, 12 Mar 2012 15:11:08 +0100 (CET)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1619950.WDgEWRegMs@helios>
References: <4F296826.4030909@gmail.com> <3971839.nMHIKpoOXs@helios>
	<20120312131448.24BB0202BE9@gemini.denx.de>
	<1619950.WDgEWRegMs@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Mon, 12 Mar 2012 13:59:31 +0000."
Date: Mon, 12 Mar 2012 15:11:08 +0100
Message-Id: <20120312141108.64496202BE9@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: 1.2_M2-Final build failures
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
X-List-Received-Date: Mon, 12 Mar 2012 14:11:11 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <1619950.WDgEWRegMs@helios> you wrote:
>
> > I see the very same error as described as "3." above, but I don't use
> > sub-layers.
> 
> I'm not sure what you mean here. Which entries for meta-intel do you have in 
> your bblayers.conf?

None.  I have this:

	-> cat conf/bblayers.conf
	# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
	# changes incompatibly
	LCONF_VERSION = "4"

	BBFILES ?= ""
	BBLAYERS ?= " \
	  /home/wd/git/poky/eldk-5.2/meta \
	  /home/wd/git/poky/eldk-5.2/meta-yocto \
	  /home/wd/git/poky/eldk-5.2/meta-eldk \
	  "

This was working fine before, and we don't have any sub-layers in meta-eldk.
So far I have no idea where to look ...

Thanks!

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
At the source of every error which is blamed on the computer you will
find at least two human errors, including the error of blaming it  on
the computer.

