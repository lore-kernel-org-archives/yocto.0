Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B75F6E00596
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 06:20:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDKIZB013592;
	Tue, 17 Apr 2012 14:20:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13561-01; Tue, 17 Apr 2012 14:20:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDKBNH013586
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 14:20:12 +0100
Message-ID: <1334668814.616.93.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 17 Apr 2012 14:20:14 +0100
In-Reply-To: <2015392.m3Bv0akb5L@helios>
References: <4F8CE449.8060501@linux.intel.com> <2015392.m3Bv0akb5L@helios>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: Writing do_install_append for target and virtclass-native in a bbappend
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
X-List-Received-Date: Tue, 17 Apr 2012 13:20:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 10:32 +0100, Paul Eggleton wrote:
> On Monday 16 April 2012 20:32:25 Darren Hart wrote:
> > I'm trying to address a symlink naming issue in the bzip2 package when
> > used with Chrome. Chrome is looking for a specific soname, which the
> > default install of bzip2 doesn't setup. I can address this easily by
> > adding the symlink via a bzip2 bbappend in do_install_append().
> > Unfortunately, this fails for the virtclass-native variant. I tried
> > adding and empty:
> > 
> > do_install_append_virtclass-native() {
> > 
> > }
> > 
> > function to the bbappend, which still failed. I then added an echo
> > statement which appeared in the output, but it still ran non-native
> > do_install_append() and failed. Switching the order of the functions
> > made the echo output disappear, but the native variant still failed.
> > 
> > I figure I must be missing something rather fundamental here. Any ideas
> > what it might be?
> 
> Unfortunately the virtclass overrides can't help you when you want to just 
> append something in the target case; however, what we usually do is just do an 
> normal append and then check within it if [ "${PN}" = "${BPN}" ] which will be 
> false for -native, -nativesdk etc.

We're going to need to get out of this habit since it breaks for
multilibs :(

Cheers,

Richard


