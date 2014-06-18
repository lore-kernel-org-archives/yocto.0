Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2FDFE0082A; Wed, 18 Jun 2014 09:14:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB32DE003DA
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:14:31 -0700 (PDT)
Received: from [69.196.158.250] (port=40203 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WxIVJ-0003XM-Bs; Wed, 18 Jun 2014 12:14:29 -0400
Date: Wed, 18 Jun 2014 12:10:45 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1406181208580.30496@localhost>
References: <53A194E1.1080206@gmail.com>
	<3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
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
Cc: =?ISO-8859-15?Q?Laurent_d'Hav=E9?= <ldhave@gmail.com>,
	yocto@yoctoproject.org
Subject: Re: Recipe to Copy JAR files, not extract it
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
X-List-Received-Date: Wed, 18 Jun 2014 16:14:37 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1018806369-1403107855=:30496"

--8323328-1018806369-1403107855=:30496
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

On Wed, 18 Jun 2014, Paul Eggleton wrote:

> Hi Laurent,
>
> On Wednesday 18 June 2014 15:32:17 Laurent d'Havé wrote:
> > Hello
> > In a recipe i'm writing, i need to simply copy a .jar file.
> > Since it's specified in SRC_URI , bitbake extracts it, making WORKDIR a
> > complete mess, and makes it impossible to copy the .jar file to destination.
> >
> >
> > How would i go about simply copying it ? Anyway to tell bitbake NOT to
> > extract content of it ?
>
> if you add ;unpack=0 to the end of the entry for the jar file within SRC_URI,
> it should prevent it from being unpacked.
>
> (I see we don't have this documented anywhere, I will add it to the
> documentation todo list.)

  it's mentioned in Section 4.2 of the bitbake user manual.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1018806369-1403107855=:30496--
