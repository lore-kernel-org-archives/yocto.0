Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E36E0142A
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 13:02:26 -0700 (PDT)
Received: from frontend3.mail.m-online.net (frontend2.mail.intern.m-online.net
	[192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRqn76Dz0z3hhV1;
	Wed, 26 Sep 2012 22:02:19 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRqn7680lzbbc1;
	Wed, 26 Sep 2012 22:02:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id PDmjkz4Q7Kjk; Wed, 26 Sep 2012 22:02:19 +0200 (CEST)
X-Auth-Info: TL4SqleIRf+8aR6cgdT4+Wnuz2dtftT+fQfbqZkV0zI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 22:02:19 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id F0E5F1A61AB;
	Wed, 26 Sep 2012 22:02:18 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id E45BF20032E;
	Wed, 26 Sep 2012 22:02:18 +0200 (CEST)
To: Chris Larson <clarson@kergoth.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CABcZANmPe_D+GPWxnkVZCmE9ti011ZDSXxPix8ztW4vrdYiyZA@mail.gmail.com>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<2428256.OTjtN2nWn5@helios>
	<20120926142045.901EB2031A9@gemini.denx.de>
	<224780988.1nyHnvScgz@helios>
	<20120926183647.5EA082031A9@gemini.denx.de>
	<CABcZANmPe_D+GPWxnkVZCmE9ti011ZDSXxPix8ztW4vrdYiyZA@mail.gmail.com>
Comments: In-reply-to Chris Larson <clarson@kergoth.com>
	message dated "Wed, 26 Sep 2012 12:27:16 -0700."
Date: Wed, 26 Sep 2012 22:02:18 +0200
Message-Id: <20120926200218.E45BF20032E@gemini.denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 26 Sep 2012 20:02:31 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Chris,

In message <CABcZANmPe_D+GPWxnkVZCmE9ti011ZDSXxPix8ztW4vrdYiyZA@mail.gmail.com> you wrote:
>
> > Well, the comment in  "meta-yocto/conf/bblayers.conf.sample"  says:
> >
> >         # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> >         # changes incompatibly
> >
> > This suggests that such changes are not exactly unusual.  But any such
> > change will cause the build to fail, because the sanity checker uses a
> > different value.
> 
> This is wrong. A compatibility break in bblayers.conf is *extremely* rare.
> 
> > If such a change is allowed and is done intentionally, then it should
> > be considered "sane", and the sanity checker should not complain.
> 
> Wrong. The user has to know that they may need to change their
> bblayers.conf to match the upstream structure. If it didn't complain,
> they could silently break or encounter unexpected behavior.

Sorry, but I don't get how this is supposed to work.

I have an incompatible change, and increase LAYER_CONF_VERSION in my
meta layer's bblayers.conf.sample .  When sourcing oe-init-build-env,
this file gets copied to the build dir as conf/bblayers.conf.
Building with this setting fails, because the samity checker does not
accept the value.  So I have to actually undo the change I made in
bblayers.conf.sample to make it build.

My internal sanity checker barfs on such logic...

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"Tell the truth and run."                          - Yugoslav proverb

