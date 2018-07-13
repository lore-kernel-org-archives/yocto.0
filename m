Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A82E011C1; Fri, 13 Jul 2018 09:23:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 326 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Jul 2018 09:23:46 PDT
Received: from emh06.mail.saunalahti.fi (emh06.mail.saunalahti.fi
	[62.142.5.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E075AE00E85
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 09:23:46 -0700 (PDT)
Received: from uwe1 (unknown [193.65.204.41])
	by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 999BD3016F;
	Fri, 13 Jul 2018 19:18:17 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Jul 2018 19:18:17 +0300
Message-ID: <87va9jw1me.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Why can diffsigs take sometimes really looooong?
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
X-List-Received-Date: Fri, 13 Jul 2018 16:23:48 -0000
Content-Type: text/plain

Hi!

At times I find the diffsigs command useful/educational to understand
what is going on in my build.

$ bitbake-diffsigs -t myimage do_image

Often the result is shown in no time. However, recently I got some
cases were it takes 150 (!) minutes to show a simple difference (1 line
changed in do_install of systemd).

In comparision building after that change (with sstate) takes some 10
minutes. And building everything from scratch (no sstate) takes just a
bit over 50 minutes on the same machine.

Of course the build can make good use of my 8 cores / 16 threads,
whereas diffsigs seems to run in only 1 core. Still, shouldn't every
build calculate all the dependencies, so running diffsigs should only be
a small fraction of that work?

Is there a natural explanation why diffsigs can sometimes be so slow?
Just curious to understand what is going on there.

I am on Rocko 2.4.3 if that makes a difference.


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

