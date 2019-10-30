Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF2FCE00DFA; Tue, 29 Oct 2019 23:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Oct 2019 23:30:15 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE9DAE00DEF
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 23:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1572417012;
	bh=rNRK9Q+JqLEok0TOUcUk2YYvujGD1CWXucOD79NW2pA=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=dTjfKRN1QRHIFfBg1jjzfZLPI0KAMGITW5XL8tzPR3DRw1oBFcJVe7S6H12EqLAyK
	tNRAaw8P+bBnMj5Cgc5LUWgTcfjlZ4NaG3+Y+TZreTNeGVzArkXJZB1BYuyJhTq+4k
	Bl5ycso2aktx0ySSJWfJxTeubs0RQStiHSmhyuWs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs26.server.lan [172.19.170.78]) (via HTTP);
	Wed, 30 Oct 2019 07:25:09 +0100
MIME-Version: 1.0
Message-ID: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
From: star@gmx.li
To: yocto@yoctoproject.org
Date: Wed, 30 Oct 2019 07:25:09 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:FJvbQbp1s7sewSKcflKidZlP5PmlhG91Lzk1wbep4W1AMLPoj25K69NCK4oq3fPAUfQdj
	lfSszcCp0QZy/m+hMRy9Co4cMXP5uuK43DT2Hz8ZHHA/8924LxH8gQSIA4TW7rgxpzOVQ2Q2O4fB
	aODyT4HNwMIdBgGF9tFT477LWtOeOBUm9i5vk5rYJY0CqrbXasUxGtl7WcuvhljlvLdJmK8UhuA0
	hzkfaQGo1GL/vbKHe99OhzhLK27h4HzHDlYz0Xoer46R994roIchr30jm8G77I8dde20SEBC1zSe
	vk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:chYE90fvdIc=:UhsVkS9ysTUqRbib1SbEpS
	1xH+QJkgFIX2lmo3hkAhYhA5NJ9IehyZnCtk99Z86FiPEuXmsD0M9jb+F4eQnknSlGSxeZm9J
	7dEESIRVHxp0TRFacp9CqwU7/FPZJXdHmwW7cHC5jwQLapLaLb66GEDqzk6BN153VfnW/GZIA
	fuLU/DGETskBVJRazGMEF/7kPHWYR7ZYOSqjgvukB1DUyWtMHRqFY/zmBfqZQO8Bd/kD4+ZNS
	leUZkHj2DXSuK4UO2HBkuzWfmuiWRu9EbNsnmAM6VTpdLtq8ffkbrITcmtZd5CuL8LtmE8ktl
	XuIyy3Pu6eeMPfUxKncCVf4LnF+liiy88suEeoBRvgTaqudojv7MHF/0ak7bvTU6IFd0sn/TK
	bPcwEOebr0Uqt/RGeeA2Gjd8dUE5maO5/N9hlUFVIm8EgM1aU0M0li9v+fFXDgPXMz4/sUEbJ
	EVTrCXyl7Ng72mc+js1f1NBloe5SlKpG1/4nerxZ8K8j0SYxbAf7WA47JjuU8aSchWrJr8rMW
	FGyE7naqjH0iiy3cWLb0MtO7kxRw7mvTi7pf3Jc1FgzLvTCWBMyIqiQumUHmwjC6SekT93ZaQ
	y01rmU/9h1vcmfVMaWUY/V8ep+/tbLfBVRyV0p+pKvGr5g1D0jeY8jUYqV4zmiIlXDC32rV0+
	8ketD8FAN5qAI3T8FzcUqFKSyJrZdQwf5BpSuOMAvzKGmKg==
Subject: [zeus] icu-native-64.2-r0 do_configure: configure failed
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
X-List-Received-Date: Wed, 30 Oct 2019 06:30:17 -0000
Content-Type: text/plain; charset=UTF-8

Build of image failed, I got strange and long error messages like:

ERROR: icu-native-64.2-r0 do_configure: configure failed
ERROR: icu-native-64.2-r0 do_configure: Execution of '/home/.../tmp/work/x86_64-linux/icu-native/64.2-r0/temp/run.do_configure
...
| configure: WARNING: unrecognized options: --disable-silent-rules, --disable-dependency-tracking
| Not rebuilding data/rules.mk, assuming prebuilt data in data/in
| Spawning Python to generate test/testdata/rules.mk...
| Traceback (most recent call last):
| File "/usr/lib/python3.6/runpy.py", line 193, in _run_module_as_main
| "__main__", mod_spec)
| File "/usr/lib/python3.6/runpy.py", line 85, in _run_code
| exec(code, run_globals)
| File "/home/.../tmp/work/x86_64-linux/icu-native/64.2-r0/icu/source/data/buildtool/__main__.py", line 19, in <module>
| import BUILDRULES
| File "/home/.../tmp/work/x86_64-linux/icu-native/64.2-r0/icu/source/test/testdata/BUILDRULES.py", line 4, in <module>
| from distutils.sysconfig import parse_makefile
| ModuleNotFoundError: No module named 'distutils.sysconfig'
| configure: error: Python failed to run; see above error.
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (virtual:native:/home/.../poky/meta/recipes-support/icu/icu_64.2.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1846 tasks of which 1819 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
virtual:native:/home/.../poky/meta/recipes-support/icu/icu_64.2.bb:do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

-----

The messages has been so strange (to me) - couldn't found the trigger for building that. Finally I bitbaked all my image packages manually and found that strace and valgrind triggers this icu-native. So I have two questions:

a) What goes wrong here and how can this be avoid?
b) How do I found which module is responsible. There is nothing about strace/valgrind mentioned in the log. I just had to build all my additional packets of my image manually to find the triggers for this icu-native.

Thank you

