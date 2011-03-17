Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id A35304C8009D
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2011 19:46:03 -0500 (CDT)
Received: from durham.keylevel.com ([109.224.134.115]:32934
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1Q0Mvb-0003AS-1a
	for yocto@yoctoproject.org; Thu, 17 Mar 2011 23:48:27 +0000
Message-Id: <7DB632A1-9069-4A23-BAC9-7EA095078AF5@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 17 Mar 2011 23:48:24 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Trying to create an autotooled recipe
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
X-List-Received-Date: Fri, 18 Mar 2011 00:46:04 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've got a project that builds (and runs) using autotools under Eclipse.

If I 'make dist-gzip' I get a tar.gz that I can use as a SRC_URI  
target within a recipe.

The recipe builds ok, but I get

| make: *** No rule to make target `install'.  Stop.
| FATAL: oe_runmake failed

when it comes to installing.

I can get it to work if I manually create the .tar.gz file, ensuring  
that only the source files, configure.ac and Makefile.am files are  
included. The Eclipse export includes all the files that are produced  
when autotools are run during the build.

What's the best way to get round having to do this?

I had hoped that I could control what gets packaged in the .tar.gz  
that comes out from 'make', but this is my first day using autotools  
and I've not yet found any documentation that gives me a suitable  
example (if it's possible) ! I can see how to stop source code files  
getting included, but not 'other' files.

Should I be trying to solve this at the source end or is there  
something I can do within my .bb file that's more generic?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




