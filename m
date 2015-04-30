Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2AAFE007B6; Thu, 30 Apr 2015 14:24:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C998FE009CE
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:23:55 -0700 (PDT)
Received: from [99.240.204.5] (port=42255 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YnvwM-0006Ol-SZ; Thu, 30 Apr 2015 17:24:14 -0400
Date: Thu, 30 Apr 2015 17:23:49 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYFX96KpPv0_gYVt4i7-dukEpv38szbHO3MNbsNgHLhQQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1504301723070.4064@localhost>
References: <5542706A.4070807@reliableembeddedsystems.com>
	<554283F9.6030108@mlbassoc.com>
	<554290FC.7040104@reliableembeddedsystems.com>
	<CAJTo0LYFX96KpPv0_gYVt4i7-dukEpv38szbHO3MNbsNgHLhQQ@mail.gmail.com>
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
Cc: Robert Berger <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 21:24:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 30 Apr 2015, Burton, Ross wrote:

>
> On 30 April 2015 at 21:30, Robert Berger <gmane@reliableembeddedsystems.com> wrote:
>       Nothing, since I forgot
>
>       EXTRA_IMAGE_FEATURES_append = " package-management"

  um ... i think you only need refer to EXTRA_IMAGE_FEATURES; with
that variable, i believe the "_append" part is superfluous.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

