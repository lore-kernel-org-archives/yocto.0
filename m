Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A584E00887; Sat, 18 Oct 2014 23:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FAE3E007C0
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 23:16:19 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Xfjmr-0001ge-9i
	for yocto@yoctoproject.org; Sun, 19 Oct 2014 08:16:17 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 08:16:17 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 08:16:17 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sun, 19 Oct 2014 08:16:05 +0200
Message-ID: <m1vkv6$es0$1@ger.gmane.org>
References: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>	<m1rb0r$ucm$1@ger.gmane.org>	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>	<m1rc1u$cvb$1@ger.gmane.org>
	<m1rf00$l0m$1@ger.gmane.org>	<m1t3rp$aj2$1@ger.gmane.org>	<20141018084423.GB2437@jama>
	<m1t9ml$43g$1@ger.gmane.org>	<20141018091009.GD2437@jama>	<544233BF.8020007@gmx.de>
	<20141018100300.GG2437@jama>
	<CAOjnSCax3=Cyvr1+rpjSTBxV7U89n8f6xrUra+Kf7Ak4VTE5dQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
In-Reply-To: <CAOjnSCax3=Cyvr1+rpjSTBxV7U89n8f6xrUra+Kf7Ak4VTE5dQ@mail.gmail.com>
Subject: Re: SOLUTION: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sun, 19 Oct 2014 06:16:23 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 18.10.2014 um 23:33 schrieb Tyler Hall:
>>
>> # need to export these variables for python-config to work
>> export BUILD_SYS
>> export HOST_SYS
>> export STAGING_INCDIR
>> export STAGING_LIBDIR
> 

Tested and this works, when added to my pyotherside recipe.

It is indeed not very intuitive, but writing recipes is anyway something
mysterical (e.g. I need to inherit python3-native, whereas pycurl only
inherits distutils; strange).

Thanks a lot. This is probably the best solution.



