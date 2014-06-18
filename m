Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FF06E00B66; Wed, 18 Jun 2014 04:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A0FE00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 04:53:32 -0700 (PDT)
Received: from [69.196.158.250] (port=37442 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WxEQl-0003OZ-88; Wed, 18 Jun 2014 07:53:31 -0400
Date: Wed, 18 Jun 2014 07:49:49 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BC2@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1406180748290.6593@localhost>
References: <alpine.LFD.2.11.1406170847080.31619@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BC2@ORSMSX101.amr.corp.intel.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any plans on more carefully distinguishing docbook markup in yocto docs?
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
X-List-Received-Date: Wed, 18 Jun 2014 11:53:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 17 Jun 2014, Rifenbark, Scott M wrote:

> I could look at this... low on the priority list right now though
> but good point.
>
> Thanks,
> Scott
>
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Tuesday, June 17, 2014 5:51 AM
> >To: Yocto discussion list
> >Subject: [yocto] any plans on more carefully distinguishing docbook markup in
> >yocto docs?
> >
> >
> >  i'm sure i asked this once before, but is there any long-term plan for more
> >carefully marking up the yocto docs semantically? as in, most things that
> >represent filenames or variables or commands or code are simply tagged as
> ><filename>, even when this is not really appropriate.
> >
> >  to be semantically precise, one should be more carefully selecting among
> >tags such as <filename>, <varname>, <command>, <code> and so on.
> >for now, i suspect the rendering toolchain wouldn't change what's eventually
> >produced, but in the future, i think more careful markup would allow the
> >generation of much prettier docs.
> >
> >  thoughts?

  oh, i totally agree that it's low priority -- it would make sense to
decide on proper semantic markup and do one massive change, say, after
the next major release. i'd be willing to help with that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

