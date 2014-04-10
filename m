Return-Path: <jenslucius@freenet.de>
Received: from mout3.freenet.de (mout3.freenet.de [195.4.92.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B96E00C89
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 14:43:12 -0700 (PDT)
Received: from [195.4.92.141] (helo=mjail1.freenet.de)
	by mout3.freenet.de with esmtpa (ID jenslucius@freenet.de) (port 25)
	(Exim 4.80.1 #4) id 1WYMkY-0004O8-3D
	for yocto@yoctoproject.org; Thu, 10 Apr 2014 23:43:10 +0200
Received: from localhost ([::1]:33767 helo=mjail1.freenet.de)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WYMkY-00021q-0P
	for yocto@yoctoproject.org; Thu, 10 Apr 2014 23:43:10 +0200
Received: from mx8.freenet.de ([195.4.92.18]:47318)
	by mjail1.freenet.de with esmtpa (ID jenslucius@freenet.de) (Exim
	4.80.1 #4) id 1WYMiG-0008Au-2z
	for yocto@yoctoproject.org; Thu, 10 Apr 2014 23:40:48 +0200
Received: from p5b0e2acc.dip0.t-ipconnect.de ([91.14.42.204]:51713
	helo=[192.168.2.12])
	by mx8.freenet.de with esmtpsa (ID jenslucius@freenet.de)
	(TLSv1:DHE-RSA-AES128-SHA:128) (port 587) (Exim 4.80.1 #4)
	id 1WYMiF-0004yD-Lt
	for yocto@yoctoproject.org; Thu, 10 Apr 2014 23:40:48 +0200
Message-ID: <53470FDA.6010703@freenet.de>
Date: Thu, 10 Apr 2014 23:40:42 +0200
From: Jens Lucius <jenslucius@freenet.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <533B0C8F.9050004@freenet.de>
In-Reply-To: <533B0C8F.9050004@freenet.de>
X-Originated-At: 91.14.42.204!51713
Subject: Building python module after compiling in one recipe
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
X-List-Received-Date: Thu, 10 Apr 2014 21:43:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I am trying to bitbake pjproject including the python module. I manged 
to write a working .bb recipe for the latest pjproject, which compiles 
and installes correctly. But I also want to build the python module.

The documentation of pjproject says about building the python module:

 1. Build the PJSIP libraries first with the usual "./configure && make
    dep && make" commands.
 2. Go to pjsip-apps/src/python directory.
 3. Run *'sudo python ./setup.py install'* or just *'sudo make'*

So I guess with the working recipe I got part 1. I tried to do stepts 2 
and 3 by adding the following:

do_compile_append() {
export BUILD_SYS
export HOST_SYS
export STAGING_INCDIR
export STAGING_LIBDIR

cd ${S}/pjsip-apps/src/python
oe_runmake
}

which starts the building process but then terminates with:

| cc1: warning: include location "/usr/include/python2.7" is unsafe for 
cross-compilation [-Wpoison-system-directories]
| In file included from _pjsua.c:20:0:
| _pjsua.h:25:20: fatal error: Python.h: No such file or directory

So I guess it is trying to use the host python for building the module 
(which is obviously not correct).

So can I build them both in one recipe and how? And if built correctly 
how to install the modules?

Thanks for your help.




