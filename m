Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3EB9E0043F; Fri, 25 Jul 2014 09:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69210E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:16:09 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140725161608081
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 16:16:08 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [24.211.139.253] (port=32964 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XAiA6-0007gC-SD; Fri, 25 Jul 2014 12:16:03 -0400
Date: Fri, 25 Jul 2014 12:15:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYgJu2NkbtROmDEj85adyJ1MF4p5HGCrAmhiQ_0Z7cUYw@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407251214150.7452@localhost>
References: <alpine.LFD.2.11.1407251200050.6809@localhost>
	<CAJTo0LYgJu2NkbtROmDEj85adyJ1MF4p5HGCrAmhiQ_0Z7cUYw@mail.gmail.com>
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
Subject: Re: don't all core images use openssh instead of dropbear?
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
X-List-Received-Date: Fri, 25 Jul 2014 16:16:14 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 25 Jul 2014, Burton, Ross wrote:

> On 25 July 2014 17:03, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > IMAGE_FEATURES_REPLACES_ssh-server-openssh = "ssh-server-dropbear"
> >
> > so wouldn't *all* image recipes derived from core-image replace
> > dropbear with openssh?
>
> That means that the image feature ssh-server-openssh replaces
> ssh-server-dropbear, so if both are present dropbear is removed.

  ah, my misunderstanding, i thought it was a simple substitution, not
an override only if *both* were present.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


