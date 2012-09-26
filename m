Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 472CEE011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 06:06:58 -0700 (PDT)
Received: from frontend3.mail.m-online.net (frontend2.mail.intern.m-online.net
	[192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRfYr5WlZz3hhwQ;
	Wed, 26 Sep 2012 15:06:54 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRfYp4JG8zbbc1;
	Wed, 26 Sep 2012 15:06:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id E7nTXMJnTsoI; Wed, 26 Sep 2012 15:06:53 +0200 (CEST)
X-Auth-Info: KEX2CiJYwIeCefN0V5tS9OZ8rqJRl3Oy8opjvMoBPUA=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 15:06:53 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id ADA071A6186;
	Wed, 26 Sep 2012 15:06:53 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 8922D2031A9;
	Wed, 26 Sep 2012 15:06:53 +0200 (CEST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <10067256.0vCsjtRvv5@helios>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<20120926113900.3519F2031A9@gemini.denx.de>
	<10067256.0vCsjtRvv5@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 26 Sep 2012 13:59:32 +0100."
Date: Wed, 26 Sep 2012 15:06:53 +0200
Message-Id: <20120926130653.8922D2031A9@gemini.denx.de>
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
X-List-Received-Date: Wed, 26 Sep 2012 13:06:58 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul Eggleton,

In message <10067256.0vCsjtRvv5@helios> you wrote:
> 
> > Am I doing anyhting wrong?
> 
> No, this is expected, at the moment you need to follow the instructions and 
> make the appropriate changes to your conf/bblayers.conf. However, there is a 
> patch out for review that we would like to include for the 1.3 final release 
> which will take care of this automatically for you.

Thanks.  Please excuse my ignorance: where would I find the respective
instructions?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Misquotation is, in fact, the pride and privilege of the  learned.  A
widely-read  man  never  quotes  accurately,  for  the rather obvious
reason that he has read too widely.
                - Hesketh Pearson _Common Misquotations_ introduction

