Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24721E009C6; Thu, 18 Dec 2014 05:17:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D56EE002A6
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 05:17:36 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Dec 2014 05:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,601,1413270000"; d="scan'208";a="639690048"
Received: from obeyaert-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.31.63])
	by fmsmga001.fm.intel.com with ESMTP; 18 Dec 2014 05:17:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 18 Dec 2014 13:17:33 +0000
Message-ID: <1480726.E3jjDHRDS9@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.6-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <2935864.P64ulFAnxZ@peggleto-mobl5.ger.corp.intel.com>
References: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
	<CAPhnLPDmOXvFJzwPri-p0DY1iwWZPBqb-WdD4qmAH+GRmcB5tg@mail.gmail.com>
	<2935864.P64ulFAnxZ@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: autobuilder: How to set PREMIRRORS?
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
X-List-Received-Date: Thu, 18 Dec 2014 13:17:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 18 December 2014 13:16:31 Paul Eggleton wrote:
> On Tuesday 16 December 2014 20:14:23 Flanagan, Elizabeth wrote:
> > 2014-11-19 15:12 GMT+00:00 Bryan Evenson <bevenson@melinkcorp.com>:
> > > All,
> > > 
> > > I'm getting close to implementing this feature, but I'm having some
> > > issues
> > > getting auto.conf formatted correctly.  See below.>
> > > 
> > >> -----Original Message-----
> > >> From: Bryan Evenson
> > >> Sent: Monday, November 17, 2014 9:08 AM
> > >> To: Bryan Evenson; yocto@yoctoproject.org; elizabeth.flanagan@intel.com
> > >> Subject: RE: autobuilder: How to set PREMIRRORS?
> > >> 
> > >> All,
> > >> 
> > >> After looking through the autobuilder code, I don't see anywhere in
> > >> which
> > >> PREMIRRORS can be set and used.  I see in CreateAutoConf.py that
> > >> PREMIRRORS is always set to "".  I don't think it'd be that difficult
> > >> to
> > >> add PREMIRRORS as a CreateAutoConf parameter for the buildsets.  I can
> > >> work on the change and submit the patch.  But before I start I have a
> > >> few questions:
> > >> 
> > >> 1. I plan on implementing the PREMIRRORS parameter as an array, similar
> > >> to
> > >> 'layerdirs' for CreateBBLayersConf.  For example:
> > >> 
> > >> {'CreateAutoConf' : {'PREMIRRORS' : ['git://.*/.*
> > >> http://our/local/mirror/path/mirror/sources/ ',
> > >> 
> > >>       'ftp://.*/.* http://our/local/mirror/path /mirror/sources/ ',
> > >>       'http://.*/.* http://our/local/mirror/path/mirror/sources/ ',
> > >>       'https://.*/.* http://our/local/mirror/path/mirror/sources/ ']}
> > >> 
> > >> would add the following to auto.conf:
> > >>  PREMIRRORS = 'git://.*/.* http://our/local/mirror/path/mirror/sources/
> > >>  \
> > >>  
> > >>       ftp://.*/.* http://our/local/mirror/path /mirror/sources/  \
> > >>       http://.*/.* http://our/local/mirror/path/mirror/sources/  \
> > >>       https://.*/.* http://our/local/mirror/path/mirror/sources/ '
> > >> 
> > >> Does this sound reasonable, or would a different parameter format be
> > >> preferred?
> > 
> > I would actually do this similar to how we have DEVKERNEL_MUT_REPO.
> > 
> > PREMIRRORS = ['git://.*/.*
> > http://our/local/mirror/path/mirror/sources/', 'ftp://.*/.*
> > http://our/local/mirror/path /mirror/sources/', 'http://.*/.*
> > http://our/local/mirror/path/mirror/sources/', 'https://.*/.*
> > http://our/local/mirror/path/mirror/sources/']
> 
> I don't think we support setting a variable to a list like this - does that
> actually work?

Oops, I missed the context was the autobuilder python code - ignore me ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

