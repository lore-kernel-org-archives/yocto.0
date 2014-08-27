Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82C7AE00576; Wed, 27 Aug 2014 01:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 968E4E0054C
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 01:14:18 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140827081409478
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 08:14:09 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=34554 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XMYMl-0000C9-Vu; Wed, 27 Aug 2014 04:14:04 -0400
Date: Wed, 27 Aug 2014 04:14:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FDF114@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1408270410350.17600@localhost>
References: <alpine.LFD.2.11.1408260648030.28643@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FDF114@ORSMSX101.amr.corp.intel.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: building a hierarchical poky variable glossary, noting what's missing
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
X-List-Received-Date: Wed, 27 Aug 2014 08:14:28 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 26 Aug 2014, Rifenbark, Scott M wrote:

> Robert,
>
> I can see your link being referenced from the YP ref-manual to
> augment variable descriptions and explanations.  Also, your
> compilation could act as another source of information similar to
> the list of "other information" items that currently are shown at
> the front of the dev-manual.

  this whole thing will come in fits and spurts, and may even be
redesigned completely if i think of a better way but, for the time
being, if you're bored :-), you can always peruse it from time to
time and note the variables that aren't included either in
documentation.conf or the ref manual and do something about them:

http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary

of course, it's impossible to document *every* variable but in some
cases, it's obvious that some variables deserve documentation.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


