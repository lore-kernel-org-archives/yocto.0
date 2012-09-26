Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3589E013EF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 07:20:53 -0700 (PDT)
Received: from frontend3.mail.m-online.net (unknown [192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRhC81cvjz4KK3J;
	Wed, 26 Sep 2012 16:20:51 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRhC75wdBzbbc1;
	Wed, 26 Sep 2012 16:20:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id 5utNx3eLn-Rh; Wed, 26 Sep 2012 16:20:51 +0200 (CEST)
X-Auth-Info: c8lWxti6OFri8ri7ufqL5HC4s81/t1avwwKjWUorpCs=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 16:20:51 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 9FA801A6186;
	Wed, 26 Sep 2012 16:20:45 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 901EB2031A9;
	Wed, 26 Sep 2012 16:20:45 +0200 (CEST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <2428256.OTjtN2nWn5@helios>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<1767865.bvfduhkKG5@helios>
	<20120926132851.C81472031A9@gemini.denx.de>
	<2428256.OTjtN2nWn5@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 26 Sep 2012 14:34:18 +0100."
Date: Wed, 26 Sep 2012 16:20:45 +0200
Message-Id: <20120926142045.901EB2031A9@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 14:20:58 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul Eggleton,

In message <2428256.OTjtN2nWn5@helios> you wrote:
>
> > Ah, OK.  Well, I decided to update meta/conf/sanity.conf to have a
> > matching value of LAYER_CONF_VERSION, so this is solved.
> 
> That will work, but normally you would edit conf/bblayers.conf, since 
> meta/conf/sanity.conf is part of the metadata.

Well, what is the rationale for setting LAYER_CONF_VERSION=6 in
meta-yocto/conf/distro/poky.conf, then?

If meta layer specific values of LAYER_CONF_VERSION are allowed, the
sanity checker needs a better way to deal with these; alternatively,
above setting in meta-yocto/conf/distro/poky.conf is wrong.  So either
of these should be fixed.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Build a system that even a fool can use and only a fool will want  to
use it.

