Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FBF3E00596
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 00:06:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2V76f5k022066;
	Sat, 31 Mar 2012 08:06:41 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21307-03; Sat, 31 Mar 2012 08:06:37 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2V76Vdj022060
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 31 Mar 2012 08:06:32 +0100
Message-ID: <1333177590.18082.160.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Larson <clarson@kergoth.com>
Date: Sat, 31 Mar 2012 08:06:30 +0100
In-Reply-To: <CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Mar 2012 07:06:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-30 at 20:00 -0700, Chris Larson wrote:
> Not to be terribly pendatic or difficult here, but technically, the
> comparison you make here doesn't ring true. bitbake in poky *still*
> has changes that never went into the upstream repository.

I was surprised to hear that but its easy enough to test:

diff -ur bitbake/ ../bitbake/
Only in bitbake//bin: bitbake-runtask
Only in ../bitbake/: classes
Only in ../bitbake/: conf
Only in ../bitbake/: .git
Only in ../bitbake/: .gitignore
diff -ur bitbake//lib/bb/cooker.py ../bitbake//lib/bb/cooker.py
--- bitbake//lib/bb/cooker.py	2012-03-22 14:40:40.488135297 +0000
+++ ../bitbake//lib/bb/cooker.py	2012-03-22 14:32:17.336127747 +0000
@@ -178,7 +178,7 @@
         self.configuration.data = bb.data.init()
 
         if not self.server_registration_cb:
-            bb.data.setVar("BB_WORKERCONTEXT", "1", self.configuration.data)
+            self.configuration.data.setVar("BB_WORKERCONTEXT", "1")
 
         filtered_keys = bb.utils.approved_variables()
         bb.data.inheritFromOS(self.configuration.data, self.savedenv, filtered_keys)
Only in bitbake//lib/bb: shell.py
Only in ../bitbake/: MANIFEST.in
Only in ../bitbake/: setup.py
Only in ../bitbake/: TODO

(where one tree is on bitbake master and the other is poky master).

Of these, the classes/conf/.git/setup.py/MANIFEST/TODO are deliberately
removed. Those are upstream too. shell.py is still around as a reminder
that at some point I think we should resurrect it in a new form. I also
evidently never added bitbake-runtask upstream which I thought I had.

So, yes, there is a one line change that we've screwed up merging and
its not even functionally different.

Cheers,

Richard









