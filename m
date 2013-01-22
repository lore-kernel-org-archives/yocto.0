Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C39EBE0121B
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 03:26:33 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Yr6lX2TWbz4KK2r;
	Tue, 22 Jan 2013 12:26:32 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Yr6lX0z3lzbbgG;
	Tue, 22 Jan 2013 12:26:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 1wVBsDKYm-s3; Tue, 22 Jan 2013 12:25:57 +0100 (CET)
X-Auth-Info: eKrH6Kq/rFMwXpr4clsFQ07oK7eXWJFI8gD2is3sBDE=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 22 Jan 2013 12:26:29 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id F17121A14C6;
	Tue, 22 Jan 2013 12:26:28 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id E460120DA8C;
	Tue, 22 Jan 2013 12:26:28 +0100 (CET)
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
References: <20130122070331.C3B6120DA8C@gemini.denx.de>
	<33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com>
Comments: In-reply-to "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
	message dated "Tue, 22 Jan 2013 10:38:09 +0000."
Date: Tue, 22 Jan 2013 12:26:28 +0100
Message-Id: <20130122112628.E460120DA8C@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: M2, M3, M4 milestones available?
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
X-List-Received-Date: Tue, 22 Jan 2013 11:26:34 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Cornel,

In message <33115ABC4887814E8A92A08FBC93416B08DC598A@IRSMSX103.ger.corp.intel.com> you wrote:
> 
> From a QA point of view, we are approaching the 1.4 M3 milestone.
> Here is what Saul wrote for the latest Full Pass request:
> 
> "
> QA Teams:
> 
> Please do FULL Pass testing on this as a PRE-M3 Full Pass so we have
> some idea of what's going on.
> 
> Git Rev: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4
> "

OK, so we have not reached M3 yet.  Thanks.

Would it not make sense to regularly update the release schedule web
page [1] so that it also reports the current state?  or is there any
other web page where such information is present?

[1] https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule


> 1.4 M2 was kind of blurry because it landed during charismas and new
> year thus many of us were on vacation.

So what exactly is the git commit ID of the 1.4 M2 milestone release?
I cannot see any matching tag in the git repository?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
If you use modules, you pay the price. Sane embedded solutions
running in "tight" environments don't use modules :-)
    -- Benjamin Herrenschmidt in <1258234866.2140.451.camel@pasglop>

