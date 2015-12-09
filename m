Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D098E00B97; Wed,  9 Dec 2015 02:36:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C618E0088C
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 02:36:29 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20151209103627474_0486
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 10:36:27 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=48876 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1a6c7b-0003Hj-CU
	for yocto@yoctoproject.org; Wed, 09 Dec 2015 05:37:19 -0500
Date: Wed, 9 Dec 2015 05:36:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1512090532270.21086@localhost>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: how can i figure out where a particular kernel config option came from?
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
X-List-Received-Date: Wed, 09 Dec 2015 10:36:32 -0000
Content-Type: text/plain; charset=US-ASCII


  short version: with a short BSP layer i've been handed, the eventual
kernel .config file ends up with the setting:

  CONFIG_WIRELESS=y

which makes no sense as the target board has no wireless and the BSP
itself doesn't set that, so how can i start tracking back to figure
out where that particular setting came from?

  long version: i'm actually using Wind River Linux 7, but the
question remains the same. it turns out that CONFIG_WIRELESS is
selected by CONFIG_WLAN, so i'm really after what sets CONFIG_WLAN. i
don't see it in the BSP layer, so i'm tracing back to the WR kernel
recipe, and possibly features templates and any other kernel .cfg
snippets i can find, so far with no luck.

  in either case, is there a log file that lists *precisely* which
kernel config snippets contributed to the final .config file? thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


