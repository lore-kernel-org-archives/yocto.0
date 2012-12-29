Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4163BE0146E
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 02:23:04 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:36709 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TotZH-0000Es-FT
	for yocto@yoctoproject.org; Sat, 29 Dec 2012 05:23:03 -0500
Date: Sat, 29 Dec 2012 05:22:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212290516160.16100@oneiric>
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
Subject: IMHO, the "meta-yocto" layer is not adequately explained
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
X-List-Received-Date: Sat, 29 Dec 2012 10:23:04 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  during travels thru the docs, ran across a "layer" graphic (dang,
can't remember where) whose bottom layers were:

	... snip ...
	BSPs
	Yocto
	OE Core

clearly showing the yocto layer sitting above OE core and directly
below BSPs.  but that picture is somewhat misleading since it's
perfectly reasonable to build BSPs with no inclusion of the meta-yocto
layer.

  i think there's a danger that new readers will get the impression
that they *must* include the meta-yocto layer to do any serious work,
when that's just not true.  i think it would be worth briefly
explaining what the meta-yocto (and, consequently, meta-yocto-bsp)
layers bring to the table, and under what circumstances one can leave
that out.

  i realize this sounds contradictory since this *is* the yocto
project, but a simple list of what constitutes meta-yocto would be
handy so developers realize what they're pulling in, and even if they
need it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

