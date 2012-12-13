Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF690E01459
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 05:33:45 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:47894 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tj8v3-0007Ql-10; Thu, 13 Dec 2012 08:33:45 -0500
Date: Thu, 13 Dec 2012 08:33:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jerrod Peach <peachj@lexmark.com>
In-Reply-To: <CA+QkY1DypOEx4e48Xb0vYwf=S34qXP_2whuzKBng8v0WUF5A6A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212130832540.5426@oneiric>
References: <alpine.DEB.2.02.1212121507090.13855@oneiric>
	<CA+QkY1DypOEx4e48Xb0vYwf=S34qXP_2whuzKBng8v0WUF5A6A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: Re: SRC_URI and appending and a "style guide"?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Dec 2012 13:33:46 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1997259026-1355405624=:5426"

--8323329-1997259026-1355405624=:5426
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT

On Thu, 13 Dec 2012, Jerrod Peach wrote:

> Robert,
>
> For the specific topic of SRC_URI += vs. SRC_URI_append, I personally prefer the former over the latter, but I'm not an
> expert by any means.
> As for the topic of a style guide, such a thing already exists on the
> Wiki: https://wiki.yoctoproject.org/wiki/Recipe_%26_Patch_Style_Guide.  That would be the obvious place to put such a
> recommendation, if that is indeed the consensus.

  oops, never mind that earlier comment, i just noticed that that page
encourages people to replace pnum= with striplevel=.  definitely need
more sleep.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-1997259026-1355405624=:5426--
