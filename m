Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65570E009C1; Fri,  2 May 2014 12:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 391 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 May 2014 12:16:22 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F06E00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 12:16:22 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s42J9bgh019955; Fri, 2 May 2014 20:09:37 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id O5vuVBzg7Jq0; Fri,  2 May 2014 20:09:37 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s42J9Tx7019942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 2 May 2014 20:09:31 +0100
Message-ID: <1399057764.12731.60.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Woodyatt, James" <james.woodyatt@intel.com>
Date: Fri, 02 May 2014 20:09:24 +0100
In-Reply-To: <AEB6E6A7-4CD1-478D-8F31-429512AEF59F@intel.com>
References: <AEB6E6A7-4CD1-478D-8F31-429512AEF59F@intel.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] meta-darwin on dylan branch
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
X-List-Received-Date: Fri, 02 May 2014 19:16:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2014-05-01 at 19:03 +0000, Woodyatt, James wrote:
> I’ve discovered some errors in the meta-darwin layer on the dylan branch that currently prevent the meta-toolchain target from building the components included in the OS X variant of the Arduino for Intel Galileo IDE.  Follow-ups to comprise the two patches that solve the problem.  These changes may need to be merged upstream, but I haven’t looked.
> 
> Here are summary descriptions of the patches:
> 
> 1. Properly configure util-linux when ncurses is configured —with-libterm=tinfo.
> 2. Remove usage of ‘new typename’ constructors in ld64 part of odcctools2 package.

The big piece I'm missing here is an understand of which circumstances
these failures occur under?

These things build ok for me so what would I need to change on my system
to reproduce these?

The reason I ask is that it helps to understand the cases we're not
catching and documenting the problems in the commit message can be
extremely useful when looking back at why code exists later.

Cheers,

Richard


