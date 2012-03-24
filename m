Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F35E0044D
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 00:42:53 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBLci-000541-AK; Sat, 24 Mar 2012 03:42:52 -0400
Date: Sat, 24 Mar 2012 03:42:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175C01@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1203240340500.17126@oneiric>
References: <alpine.DEB.2.02.1203221134480.7169@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175C01@ORSMSX101.amr.corp.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: poky ref manual still confuses BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Sat, 24 Mar 2012 07:42:53 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 23 Mar 2012, Rifenbark, Scott M wrote:

> Okay - I dug into this a bit with the help of Scott Garman.  He
> uncovered a bit in the BitBake changelog.  It states the following:
>
> "By default it will now only pass certain whitelisted variables into
> the data store. If BB_PRESERVE_ENV is set bitbake will use all
> variable from the environment. If BB_ENV_WHITELIST is set, that
> whitelist will be used instead of the internal bitbake one.
> Alternatively, BB_ENV_EXTRAWHITE can be used to extend the internal
> whitelist"

  it's also worth noting that none of those variables are listed in
the variable glossary in the reference manual.  should they be?  i've
already started a list of variables missing from the glossary.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

