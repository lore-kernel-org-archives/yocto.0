Return-Path: <daryl@daryllee.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99ACDE00E7D; Sat, 10 Mar 2018 16:16:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.160.52.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Mar 2018 16:16:44 PST
Received: from teebird.nexcess.net (teebird.nexcess.net [69.160.52.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 408DBE0078F
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 16:16:44 -0800 (PST)
Received: (qmail 22104 invoked by uid 240); 10 Mar 2018 19:10:03 -0500
Received: from 67.42.66.4 ([67.42.66.4]) by www.daryllee.com (Horde
	Framework) with HTTP; Sat, 10 Mar 2018 19:10:02 -0500
Date: Sat, 10 Mar 2018 19:10:02 -0500
Message-ID: <20180310191002.Horde.GwvmG_Lp-648oYCF_ByVQbw@www.daryllee.com>
From: daryl@daryllee.com
To: yocto@yoctoproject.org
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Subject: Documentation error report
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
X-List-Received-Date: Sun, 11 Mar 2018 00:16:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline

I'm not sure who to send this to, so maybe someone can redirect me...

I'm going through the Yocto Project Quick Start at  
https://www.yoctoproject.org/docs/2.4.1/yocto-project-qs/yocto-project-qs.html, and I encountered a minor error that might be worth fixing.  There are two consecutive commands given for cloning Poky and checking out the current  
version:

$ git clone git://git.yoctoproject.org/poky
$ git checkout tags/yocto-2.4.1 -b poky_2.4.1

For myself, I had to insert a

$ cd poky

between them to succeed.

And, as always, my sincere thanks to everyone who has ever contributed  
to this endeavor; it's a big help to me.  I've been using it for  
several months now via Xilinx's Petalinux wrapper and now I'm trying  
to get "under the covers" to understand better what kind of magic is  
going on.

--
Daryl


