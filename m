Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62CDEE011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 06:28:57 -0700 (PDT)
Received: from frontend3.mail.m-online.net (unknown [192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRg394XgXz4KK2b;
	Wed, 26 Sep 2012 15:28:53 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRg392ybdzbbc1;
	Wed, 26 Sep 2012 15:28:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id VxWY7W1c8TBn; Wed, 26 Sep 2012 15:28:52 +0200 (CEST)
X-Auth-Info: uBRm7CiVztQmwqju8tlro2IZwc10kAjrb9Busmni25Y=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 15:28:52 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id E0AB91A6186;
	Wed, 26 Sep 2012 15:28:51 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id C81472031A9;
	Wed, 26 Sep 2012 15:28:51 +0200 (CEST)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1767865.bvfduhkKG5@helios>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<10067256.0vCsjtRvv5@helios>
	<20120926130653.8922D2031A9@gemini.denx.de>
	<1767865.bvfduhkKG5@helios>
Comments: In-reply-to Paul Eggleton <paul.eggleton@linux.intel.com>
	message dated "Wed, 26 Sep 2012 14:11:18 +0100."
Date: Wed, 26 Sep 2012 15:28:51 +0200
Message-Id: <20120926132851.C81472031A9@gemini.denx.de>
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
X-List-Received-Date: Wed, 26 Sep 2012 13:28:57 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Paul,

In message <1767865.bvfduhkKG5@helios> you wrote:
> On Wednesday 26 September 2012 15:06:53 Wolfgang Denk wrote:
> > > this is expected, at the moment you need to follow the instructions
> > > and make the appropriate changes to your conf/bblayers.conf. However,
> > > there is a patch out for review that we would like to include for the 1.3
> > > final release which will take care of this automatically for you.
> > 
> > Thanks.  Please excuse my ignorance: where would I find the respective
> > instructions?
> 
> It does have some very brief instructions in the error message:
> 
> > > > Please compare the two files and merge any changes before continuing.
> > > > Matching the version numbers will remove this message.
> > > > "meld conf/bblayers.conf  
> > > > /home/wd/git/eldk-5.3/meta*/conf/bblayers.conf.sample" is a good way
> > > > to visualise the changes.
> 
> I appreciate this is not as helpful as it could be, hence why we are working 
> to do this automatically for the user.

Ah, OK.  Well, I decided to update meta/conf/sanity.conf to have a
matching value of LAYER_CONF_VERSION, so this is solved.

Sorry, I misinterpreted your note and expected any additional
instructions for building 1.3_M5

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
In the pitiful, multipage, connection-boxed form to which  the  flow-
chart  has  today  been  elaborated, it has proved to be useless as a
design tool -- programmers draw flowcharts after, not before, writing
the programs they describe.                        - Fred Brooks, Jr.

