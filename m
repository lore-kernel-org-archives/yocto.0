Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA1ABE00CFF; Wed, 29 Nov 2017 11:12:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.222 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Nov 2017 11:12:02 PST
Received: from fbo-2.mxes.net (mxout-22.mxes.net [216.86.168.222])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65337E00C78
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 11:12:02 -0800 (PST)
Received: from smtp-out-1.mxes.net (smtp-out-1.mxes.net [67.222.241.250])
	by fbi-2.mxes.net (Postfix) with ESMTP id 36DEA2753E
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:06:52 -0500 (EST)
Received: from wm6.irbs.net (wm6.irbs.net [67.222.241.8])
	by smtp.mxes.net (Postfix) with ESMTP id 9275227530
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:06:50 -0500 (EST)
Received: from wmbeta.mxes.net (webmail-relay.mxes.net [67.222.241.8])
	by wm6.irbs.net (Postfix) with ESMTPA id 798553AF14
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:06:50 -0500 (EST)
MIME-Version: 1.0
Date: Wed, 29 Nov 2017 11:06:50 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
To: Yocto list discussion <yocto@yoctoproject.org>
In-Reply-To: <68140500-7b0d-e7e2-8a6b-7317fb4a082b@advancedtelematic.com>
References: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
	<cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
	<68140500-7b0d-e7e2-8a6b-7317fb4a082b@advancedtelematic.com>
Message-ID: <c4fabc4627a75ef428c39d1686eb2565@mail.mxes.net>
X-Sender: bds@bsmucker.eu.org
User-Agent: RoundCube Webmail/0.4.2
Subject: Security upgrade stategy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: bds@bsmucker.eu.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Nov 2017 19:12:03 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 Hello,

 I have an older yocto-based image built with Danny.

 We have a need to update two components, php and dropbear, to the most 
 modern versions for security purposes.

 What is the preferred way to do this without moving the whole image to 
 the latest version of poky/yocto? That would be a big job, which would 
 necessitate migrating my linux dev environment to something newer, in 
 addition to other things.

 Or is there  a preferred way? How do people handle this?

 Thanks,

 Brian

