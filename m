Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85057E013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 14:12:31 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VrvkP14jSz3hhZF;
	Mon, 14 May 2012 23:12:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VrvkN5CW7z4KK2H;
	Mon, 14 May 2012 23:12:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id FipK02JQ+2zh; Mon, 14 May 2012 23:12:28 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 14 May 2012 23:12:27 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 65ADC1A5AA9;
	Mon, 14 May 2012 23:12:27 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 345B4202B34;
	Mon, 14 May 2012 23:12:27 +0200 (CEST)
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAPhnLPDzcwr+0uMFk274KKtfbGD48-z5yQDqD=JozLO0jA9QRA@mail.gmail.com>
References: <20120514201154.8A627202B34@gemini.denx.de>
	<CAPhnLPDzcwr+0uMFk274KKtfbGD48-z5yQDqD=JozLO0jA9QRA@mail.gmail.com>
Comments: In-reply-to "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
	message dated "Mon, 14 May 2012 13:58:17 -0700."
Date: Mon, 14 May 2012 23:12:27 +0200
Message-Id: <20120514211227.345B4202B34@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: LICENSE = "GPL" -- problem?
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
X-List-Received-Date: Mon, 14 May 2012 21:12:31 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Elizabeth,

In message <CAPhnLPDzcwr+0uMFk274KKtfbGD48-z5yQDqD=JozLO0jA9QRA@mail.gmail.com> you wrote:
>
> > which whould read "GPLv2" instead of "GPL".  A scan detected that the
> > same string "GPL" is used in a number of other recipes:
> >
> > bitbake/lib/bb/shell.py:LICENSE = "GPL"
> > meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:LICENSE = "GPL"
> > meta/recipes-kernel/linux/linux-dummy.bb:LICENSE = "GPL"
> > meta/recipes-bsp/x-load/x-load.inc:LICENSE = "GPL"
> > meta/recipes-devtools/gcc/gcc-common.inc:LICENSE = "GPL"
> > meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb:LICENSE = "G> PL"
> >
> > Eventually these should be fixed, too?
>
> Yes, GPL is somewhat meaningless so these should be audited to
> determine the correct GPL version and corrected.

Should I create an entry in the bug database?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Computers are not intelligent. They only think they are.

