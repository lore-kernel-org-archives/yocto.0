Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 831ABE00572; Thu, 31 Jul 2014 08:00:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59245E006EE
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 08:00:03 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140731150002194
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 15:00:02 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=50950 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XCrpk-0007ak-T0; Thu, 31 Jul 2014 10:59:56 -0400
Date: Thu, 31 Jul 2014 10:59:53 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAMKF1srucS+EiD5cuRoAah8opR9qHh0wXmMhKz6+B6hFcp6v5w@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407311058430.10517@localhost>
References: <alpine.LFD.2.11.1407301650150.31103@localhost>
	<CAMKF1srucS+EiD5cuRoAah8opR9qHh0wXmMhKz6+B6hFcp6v5w@mail.gmail.com>
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
Subject: Re: [yocto-docs][PATCH v2] dev-manual: Emphasize that YP supports MIPS64.
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
X-List-Received-Date: Thu, 31 Jul 2014 15:00:13 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Jul 2014, Khem Raj wrote:

> On Wed, Jul 30, 2014 at 1:51 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> > diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
> > index 6ab93f7..37bc5a2 100644
> > --- a/documentation/dev-manual/dev-manual-start.xml
> > +++ b/documentation/dev-manual/dev-manual-start.xml
> > @@ -36,7 +36,7 @@
> >          You can use the OpenEmbedded build system, which uses
> >          <link linkend='bitbake-term'>BitBake</link>, to develop complete Linux
> >          images and associated user-space applications for architectures based
> > -        on ARM, MIPS, PowerPC, x86 and x86-64.
> > +        on ARM, MIPS, MIPS64, PowerPC, x86 and x86-64.
>
> this is fine however it occurred to me that speciying PPC and PPC64
> would be good too. or powerpc64 and powerpc

  i didn't intend for this to become any more than a trivial
enhancement issue. if someone can suggest a rewording, go for it. or
maybe it's fine as is.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


