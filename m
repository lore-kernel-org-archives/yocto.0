Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73332E007B9; Fri, 17 Oct 2014 08:02:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 290F1E0078E
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 08:02:00 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Xf92U-00041o-Sm
	for yocto@yoctoproject.org; Fri, 17 Oct 2014 17:01:58 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 17:01:58 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 17:01:58 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 17 Oct 2014 17:01:46 +0200
Message-ID: <m1rb0r$ucm$1@ger.gmane.org>
References: <m1qpbo$lsa$1@ger.gmane.org>
	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
In-Reply-To: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Fri, 17 Oct 2014 15:02:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 17.10.2014 um 16:51 schrieb Paul Eggleton:
> Hi there,
> 
> I agree this sort of thing shouldn't happen on a stable branch. I'm not sure 
> what would have caused such a problem though. However, above you are looking 
> under tmp/work, but the file being present under there doesn't really say much 
> - the key question is is it still in the sysroot i.e. tmp/sysroots/* ? The 
> first thing to figure out is if the file is really missing, or if it is now 
> simply not looking for it in the right location.
> 
> Cheers,
> Paul
> 
Very good point.

$ find tmp/sysroots/ -name "Python.h"
tmp/sysroots/i686-linux/usr/include/python2.7/Python.h
tmp/sysroots/i686-linux/usr/include/python3.3m/Python.h
tmp/sysroots/cubox-i/usr/include/python2.7/Python.h
tmp/sysroots/cubox-i/usr/include/python3.3m/Python.h

So, it seems to be there, if I see that correctly. The question then
seems to be, why it is no longer found?

Thanks for you help, Paul.

Cheers

Michael



