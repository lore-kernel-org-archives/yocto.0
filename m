Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB888E0044D
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 06:19:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDJWl2013536;
	Tue, 17 Apr 2012 14:19:32 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12606-07; Tue, 17 Apr 2012 14:19:27 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HDJPg6013530
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 14:19:26 +0100
Message-ID: <1334668768.616.92.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 17 Apr 2012 14:19:28 +0100
In-Reply-To: <4F8CE449.8060501@linux.intel.com>
References: <4F8CE449.8060501@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 17 Apr 2012 13:19:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-16 at 20:32 -0700, Darren Hart wrote:
> I'm trying to address a symlink naming issue in the bzip2 package when
> used with Chrome. Chrome is looking for a specific soname, which the
> default install of bzip2 doesn't setup. I can address this easily by
> adding the symlink via a bzip2 bbappend in do_install_append().
> Unfortunately, this fails for the virtclass-native variant. I tried
> adding and empty:
> 
> do_install_append_virtclass-native() {
> 	:
> }
> 
> function to the bbappend, which still failed. I then added an echo
> statement which appeared in the output, but it still ran non-native
> do_install_append() and failed. Switching the order of the functions
> made the echo output disappear, but the native variant still failed.
> 
> I figure I must be missing something rather fundamental here. Any ideas
> what it might be?

_append variables stack so if you do:

A_append = "x"
A_append = "y"
A_append = "z"

You'll end up with A = "xyz".

You can do something a little more ugly to work around it like:

do_install_append () {
	${SYMLINK}
}

SYMLINK = "ln -s a b"
SYMLINK_virtclass-native = ":"

Cheers,

Richard


