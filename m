Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6422FE0083A; Sat, 10 Jan 2015 03:21:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0716E0070B
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 03:20:45 -0800 (PST)
Received: from [70.30.87.145] (port=33034 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9u5x-0006R1-9r; Sat, 10 Jan 2015 06:20:41 -0500
Date: Sat, 10 Jan 2015 06:20:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1504189.z9eEVMXmIC@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1501100618590.5533@localhost>
References: <alpine.LFD.2.11.1501091212080.30702@localhost>
	<1504189.z9eEVMXmIC@peggleto-mobl5.ger.corp.intel.com>
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
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: admittedly simple questions about DISTRO_PN_ALIAS
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
X-List-Received-Date: Sat, 10 Jan 2015 11:21:05 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1128656029-1420888842=:5533"

--8323328-1128656029-1420888842=:5533
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

On Fri, 9 Jan 2015, Paul Eggleton wrote:

... my original confusion and whining about DISTRO_PN_ALIAS
section in dev manual snipped ...

> I'm not entirely sure how that section came to be written on its
> own, because it isn't at all useful and should probably be removed
> to save people confusion. DISTRO_PN_ALIAS is related to the mostly
> undocumented distrodata.bbclass that is supposed to help with
> managing recipe updates; I think the idea was to make a comparison
> with packages available in mainstream Linux distros but what it
> actually does for you in practice based on the code I can find
> doesn't seem to be very much.
>
> FYI, the reason distrodata has remained mostly undocumented is that
> we've had a plan to try to refactor and improve it for several years
> now, but it hasn't been as high a priority as we would have liked.
> There has been some renewed activity lately however - Aníbal Limón
> is working on the Recipe Reporting Service to replace what is up at
> packages.yoctoproject.org, and it should make it easier for people
> whose job it is to maintain recipes to track the current status with
> respect to upstream releases. It's being built on top of the
> OpenEmbedded Layer Index application.

  ok, so i'm just going to ignore this variable for the time being and
let the higher powers deal with it. thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1128656029-1420888842=:5533--
