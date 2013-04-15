Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9279CE01498
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 05:30:07 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:55170 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1URiXu-0001zw-CW; Mon, 15 Apr 2013 08:30:06 -0400
Date: Mon, 15 Apr 2013 08:30:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
In-Reply-To: <B60DC3E72D20B040854608D81E44050F64F451AB07@GUREXMB01.ASIAN.AD.ARICENT.COM>
Message-ID: <alpine.DEB.2.02.1304150828140.3430@oneiric>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<alpine.DEB.2.02.1304150722160.22880@oneiric>
	<B60DC3E72D20B040854608D81E44050F64F451AB07@GUREXMB01.ASIAN.AD.ARICENT.COM>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 12:30:07 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 15 Apr 2013, Krishna Dwivedi wrote:

> Hi Robert,
>
> I am trying on fedora 18 and I am continuously running into this issue.

  all i can report is that

$ bitbake meta-toolchain

for qemumips on my 64-bit ubuntu system works fine. i'm willing to do
more testing if anyone can think of variations worth trying.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

