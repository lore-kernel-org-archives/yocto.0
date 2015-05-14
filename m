Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1507EE009BB; Thu, 14 May 2015 09:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E5DE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:18:32 -0700 (PDT)
Received: from [99.240.204.5] (port=51004 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ysvqd-000606-7q; Thu, 14 May 2015 12:18:59 -0400
Date: Thu, 14 May 2015 12:18:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Smith, Virgil" <Virgil.Smith@flir.com>
In-Reply-To: <F14AEF751653024287138321000C846AF4821E43@BOS-DAG1.zone1.flir.net>
Message-ID: <alpine.LFD.2.11.1505141217350.3849@localhost>
References: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
	<F14AEF751653024287138321000C846AF4821E43@BOS-DAG1.zone1.flir.net>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 16:18:36 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-467307040-1431620310=:3849"

--8323328-467307040-1431620310=:3849
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Thu, 14 May 2015, Smith, Virgil wrote:

>
> This seems to bite a lot of people (myself included).
>
> Change
>
> IMAGE_INSTALL += “canlogger”
>
> to
>
> IMAGE_INSTALL_append = “ canlogger”
>
> or possibly better
>
> EXTRA_IMAGE_INSTALL_append = “ canlogger”

  if you're putting this in local.conf, i'm pretty sure the preferred
syntax is just:

  EXTRA_IMAGE_INSTALL = "canlogger"

no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-467307040-1431620310=:3849--
