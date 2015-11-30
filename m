Return-Path: <dvorkin@tibbo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3C7CE00888; Mon, 30 Nov 2015 14:49:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.174.104.90 listed in list.dnswl.org]
	*  0.1 RCVD_IN_SBL RBL: Received via a relay in Spamhaus SBL
	*      [95.31.249.87 listed in zen.spamhaus.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 Nov 2015 14:49:17 PST
Received: from smtp.tibbo.com (smtp.tibbo.com [93.174.104.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6F3E007D5
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 14:49:17 -0800 (PST)
Received: (qmail 15966 invoked by uid 508); 1 Dec 2015 01:42:35 +0300
Received: from 95-31-249-87.broadband.corbina.ru (HELO dvh.tibbo.net)
	(dvorkin@tibbo.com@95.31.249.87)
	by smtp.tibbo.com with SMTP; 1 Dec 2015 01:42:35 +0300
To: yocto@yoctoproject.org
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
From: Dvorkin Dmitry <dvorkin@tibbo.com>
Message-ID: <565CD0DB.6010900@tibbo.com>
Date: Tue, 1 Dec 2015 01:42:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
Subject: strange QA issue - how to ignore automatic so dependency
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
X-List-Received-Date: Mon, 30 Nov 2015 22:49:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


I'm trying to include binary JDK into my linux image.
just unpacking jdk-...tar.gz into recipe image and packing it into RPM 
(I'm using RPM as base of my distribution).

after adding
INSANE_SKIP_${PN} = "file-rdeps ldflags dev-so build-deps"
into recipe I've got no errors or warning while building recipe itself,
RPM is created and it contains some dynamic libraries dependencies....

but I've got error building rootfs with this recipe:

....(skipped)...
Updating cache... ######################################## [100%]

Computing transaction...error: Can't install 
tps-jdk-7u60+linux+arm+vfp+hflt-r0@cortexa8hf_vfp_neon: no package 
provides libXrender.so.1

I can't include libXrender.so.1 into my image, I can't remove libraries 
from JDK.

Is there any way to ignore this dependency?

something like RPM_LDD_IGNORE_CHECK="libX*"


