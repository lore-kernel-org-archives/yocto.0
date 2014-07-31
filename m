Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23606E0054C; Thu, 31 Jul 2014 02:10:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20D5EE004D1
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 02:10:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jul 2014 02:10:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,771,1400050800"; d="scan'208";a="463503105"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.98])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2014 02:10:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 31 Jul 2014 10:10:35 +0100
Message-ID: <11174009.Bg12BQ6AYU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD159C@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407301505170.29022@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD159C@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: timeline for "official" centos 7 support?
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
X-List-Received-Date: Thu, 31 Jul 2014 09:10:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 31 July 2014 05:41:30 Rifenbark, Scott M wrote:
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Wednesday, July 30, 2014 12:07 PM
> >To: Yocto discussion list
> >Subject: [yocto] timeline for "official" centos 7 support?
> >
> >  working version of yocto dev manual currently has no mention of centos 7
> >  in
> >
> >the list of supported distributions -- anyone working on validating that?
>
> Just before each major release, I run a script that produces the list of
> validated distros we have tested and support.  So if this is going to be a
> supported distro, it will get on the list in the manual.

And that script basically reports on the SANITY_TESTED_DISTROS value in 
poky.conf, which is mostly derived from what our QA team tests.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

