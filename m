Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC05E011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 04:39:07 -0700 (PDT)
Received: from frontend3.mail.m-online.net (frontend2.mail.intern.m-online.net
	[192.168.8.181])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XRccQ6nD4z3hhXR;
	Wed, 26 Sep 2012 13:39:02 +0200 (CEST)
Received: from localhost (dynscan2.mnet-online.de [192.168.6.69])
	by mail.m-online.net (Postfix) with ESMTP id 3XRccQ6hJczbbc1;
	Wed, 26 Sep 2012 13:39:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan2.mnet-online.de [192.168.6.69]) (amavisd-new,
	port 10024)
	with ESMTP id XYau9WdrtQSW; Wed, 26 Sep 2012 13:39:01 +0200 (CEST)
X-Auth-Info: z2esbDvdBJb6OZD06w+oAJxPbsUIm4TArz4l++BiDEc=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 26 Sep 2012 13:39:01 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 62BB71A6186;
	Wed, 26 Sep 2012 13:39:01 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 3519F2031A9;
	Wed, 26 Sep 2012 13:39:00 +0200 (CEST)
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
Comments: In-reply-to "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
	message dated "Tue, 25 Sep 2012 17:39:17 -0700."
Date: Wed, 26 Sep 2012 13:39:00 +0200
Message-Id: <20120926113900.3519F2031A9@gemini.denx.de>
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
X-List-Received-Date: Wed, 26 Sep 2012 11:39:11 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear "Flanagan, Elizabeth",

In message <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com> you wrote:
> 
> 1.3_M5.rc2 was started a bit late today due to some miscommunication.
> The build has begun and judging from recent autobuilder performance,
> I'm expecting it to complete in about six and a half hours from now.
> For those doing QA against 1.3_M5.rc2, if you can, please begin
> testing what you can as soon as build artifacts become available.
> 
> Download: http://autobuilder.yoctoproject.org/pub/nightly/20120926-1
> poky: 718eb85806e080d0b165344b272e531ef19421eb

This commit has:

meta-yocto/conf/distro/poky.conf:LAYER_CONF_VERSION ?= "6"

But:

meta/conf/sanity.conf:LAYER_CONF_VERSION ?= "5"


So for me the sanity checker bails out with:

ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
    Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Your version of bblayers.conf was generated from an older version of bblayers.conf.sample and there have been updates made to this file. Please compare the two files and merge any changes before continuing.
Matching the version numbers will remove this message.
"meld conf/bblayers.conf /home/wd/git/eldk-5.3/meta*/conf/bblayers.conf.sample" is a good way to visualise the changes.

ERROR: Execution of event handler 'check_sanity_eventhandler' failed


Am I doing anyhting wrong?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Insufficient facts always invite danger.
	-- Spock, "Space Seed", stardate 3141.9

