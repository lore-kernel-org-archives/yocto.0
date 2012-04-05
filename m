Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8110FE0070C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 05:25:50 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFll7-0007NH-EU
	for yocto@yoctoproject.org; Thu, 05 Apr 2012 08:25:49 -0400
Date: Thu, 5 Apr 2012 08:25:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1204050815450.21476@oneiric>
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
Subject: i think the meta-intel "BSP layer" needs to be clarified in BSP guide
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
X-List-Received-Date: Thu, 05 Apr 2012 12:25:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i think it would be useful if the BSP guide was expanded just a bit
to make it much clearer that the alleged meta-intel "BSP layer" (since
that's how it's referred to) is not *really* a full BSP layer but an
umbrella over multiple intel-based BSP layers, with some common
content.

  it's obviously useful to use a real example to explain how a BSP
layer works, but it would have been more informative if the guide had
used a truly standalone layer, *then* perhaps segued nicely into
meta-layers like meta-intel and meta-ti, etc.

  as it is, i think the current explanation is a bit awkward given
that the crownbay layer.conf file is explained before the first
mention of the meta-intel layer.  a simple solution might be a
prominent <note> before all that starts, emphasizing how what follows
is a little bit different since it involves *two* layers, not just
one.  then it would make much more sense.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

