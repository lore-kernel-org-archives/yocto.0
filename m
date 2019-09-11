Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA2DE00DFE; Wed, 11 Sep 2019 00:38:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.161 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd14161.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66600E00890
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 00:38:45 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id 07ej2100V2wfazh017ejb6; Wed, 11 Sep 2019 09:38:44 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8bde9016-f842-3471-076b-c7dba22fced0@faresoftware.it>
Date: Wed, 11 Sep 2019 09:38:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1568187524; bh=Cdhd3xYCT/dwcNyoa5kLrprqdCUZiTxyJulb314+BxY=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=GMKMttlzEpdGWBIXqa3eEyS9BJrw4EwUf9zBeY+3onbpQ3w9puwkPiy1yJb3qGjQU
	vHz2BM6+tG2/ocMb2QoHGcI35nTaPKUSTLziwI3yg3rvaNDElcnLbHE/OoN2rIel4x
	XEx6ZClZ1xXN0pS37tj7FzD9J2/BsRHR/FvNS7cAXaJY/ezd53pjzSY+5820URgWuJ
	5CXgqld4C5b+0XzqhLph4XBWAtnvMKsjHPSH2864P4AP9xacGeCtQwGeEAWM9OSxPA
	by8q4vVeXuyvTGisVJS3JLU2laB9wXG0+vYk3gXvxN68IEQ+PPU6U2ey+6+9T7TZsl
	ls5eHW9rtEYNA==
Subject: Tuning gcc for Geode LX
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
X-List-Received-Date: Wed, 11 Sep 2019 07:38:48 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I nee to disable all SIMD mmx sse extensions for the  GCC use to build 
the final image, containing Qt5 libraries

Now I have  tuned qtbase_git.bb by PACKAGECONFIG_CONFARGS adding the  
configure's parameters to disable MMX extensions.

But I need to disable this extensions for every package that can use MMX.


So my desire is to produce a gcc compiler that does'nt supports MMX.


I create  a machine/geode.conf with

DEFAULTTUNE="i586"

include conf/machine/include/tune-i586.inc

But I don't find how to customize the gcc/g++ parameters to disable SIMD 
extensions.


Any idea?


MZ


