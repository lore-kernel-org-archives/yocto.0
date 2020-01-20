Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13806.1579540439722980811
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 09:14:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD1CE015C0; Mon, 20 Jan 2020 09:13:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Mon, 20 Jan 2020 09:13:56 PST
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C99AE01382
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 09:13:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Jan 2020 09:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; 
   d="scan'208";a="221492701"
Received: from grossi-mobl.ger.corp.intel.com (HELO rburton-mac01.local) ([10.252.38.20])
  by fmsmga008.fm.intel.com with ESMTP; 20 Jan 2020 09:12:52 -0800
Subject: Re: [OE-core] [PATCH][meta-python2] python: add 2.7.17 from oe-core
To: Tim Orling <ticotimo@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
 "openembedded-devel@lists.openembedded.org"
 <openembedded-devel@lists.openembedded.org>,
 openembedded-core <openembedded-core@lists.openembedded.org>
References: <20200120115132.3618-1-ross.burton@intel.com>
 <CANx9H-BBqLtyL3g9KmzyUw1ZasginK7eQzWA8AM05R_8KJqM+g@mail.gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b832a1d9-8713-2997-5e3d-0ce022b1f588@intel.com>
Date: Mon, 20 Jan 2020 17:12:51 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CANx9H-BBqLtyL3g9KmzyUw1ZasginK7eQzWA8AM05R_8KJqM+g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 20/01/2020 17:03, Tim Orling wrote:
> First of all, a GREAT BIG THANK YOU for doing this.
> 
> ERROR: ParseError at 
> /home/ttorling/Projects/meta-python2/recipes-devtools/python/python_2.7.17.bb:1 
> <http://python_2.7.17.bb:1>: Could not include required file python.inc
> 
> Seems like python.inc is 2.7 specific and should also move? I grepped 
> for usage in poky and didn't find any.

Huh.  I wonder how my test actually worked :)

Ross

