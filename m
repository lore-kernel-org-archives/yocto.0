Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8684E00B68; Thu, 22 May 2014 12:08:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mo4-p00-ob.smtp.rzone.de (unknown [81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B5C5E00975
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 12:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1400785692; l=4785;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=ajyYy21tmpOGFc6dQUco4S1HEEE=;
	b=tiB/6AUqHgNM7GN/u4/WQcT8lDAjWHFZJcHwvkamXfBShWH42yJyKlBH5bTRC5TS13j
	7A83Jv2nHQf5J2xPqIDSc4zezdCOogPlh83DogTpjqP7s/3PQ6nr9x3yzfG+EgKHpNdc5
	+MMzzEeSiIa9kc2fZmzW4VovKWGm1K5N2SU=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwAfms93SyA==
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E2E7F.dip0.t-ipconnect.de [91.14.46.127])
	by smtp.strato.de (RZmta 34.2 DYNA|AUTH)
	with ESMTPSA id 4071e4q4MJ8Cqg8
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Thu, 22 May 2014 21:08:12 +0200 (CEST)
Message-ID: <537E4B0E.8060407@jenslucius.de>
Date: Thu, 22 May 2014 21:07:58 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537E111B.3010506@jenslucius.de> <537E1390.1090909@mlbassoc.com>
In-Reply-To: <537E1390.1090909@mlbassoc.com>
Subject: Re: Building pjproject with python module
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
X-List-Received-Date: Thu, 22 May 2014 19:08:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Now I am getting this error:

| Traceback (most recent call last):
|   File "setup.py", line 111, in <module>
|     py_modules=["pjsua"]
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/core.py", 
line 152, in setup
|     dist.run_commands()
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/dist.py", 
line 953, in run_commands
|     self.run_command(cmd)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/dist.py", 
line 972, in run_command
|     cmd_obj.run()
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/command/build.py", 
line 127, in run
|     self.run_command(cmd_name)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/cmd.py", 
line 326, in run_command
|     self.distribution.run_command(command)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/dist.py", 
line 970, in run_command
|     cmd_obj = self.get_command_obj(command)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/dist.py", 
line 845, in get_command_obj
|     klass = self.get_command_class(command)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/dist.py", 
line 815, in get_command_class
|     __import__ (module_name)
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/command/build_ext.py", 
line 16, in <module>
|     from distutils.sysconfig import customize_compiler, get_python_version
|   File 
"/home/server/poky-daisy-11.0.0/build/tmp/sysroots/i686-linux/usr/lib/python2.7/distutils/sysconfig.py", 
line 22, in <module>
|     PREFIX = os.path.normpath(sys.prefix).replace( 
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
| TypeError: expected a character buffer object
| make: *** [all] Error 1
| ERROR: oe_runmake failed

Am 22.05.2014 17:11, schrieb Gary Thomas:
> On 2014-05-22 09:00, Jens Lucius wrote:
>> Hi
>>
>> I already asked this question before (got no answer) and thought I 
>> had it running,
>> but since I had to re-setup my yocto installation it runs into errors 
>> again.
>> Maybe somebody can help me with this issue?
>>
>> I am trying to bitbake pjproject including the python module. I manged
>> to write a working .bb recipe for the latest pjproject, which compiles
>> and installes correctly. But I also want to build the python module.
>>
>> The documentation of pjproject says about building the python module:
>>
>>   1. Build the PJSIP libraries first with the usual "./configure && make
>>      dep && make" commands.
>>   2. Go to pjsip-apps/src/python directory.
>>   3. Run *'sudo python ./setup.py install'* or just *'sudo make'*
>>
>> So I guess with the working recipe I got part 1. I tried to do stepts 2
>> and 3 by adding the following:
>>
>> do_compile_append() {
>> export BUILD_SYS
>> export HOST_SYS
>> export STAGING_INCDIR
>> export STAGING_LIBDIR
>>
>> cd ${S}/pjsip-apps/src/python
>> oe_runmake
>> }
>>
>> which starts the building process but then terminates with:
>>
>> |/  cc1: warning: include location "/usr/include/python2.7" is unsafe 
>> for
>> /cross-compilation [-Wpoison-system-directories]
>> |/  In file included from _pjsua.c:20:0:
>> /|/  _pjsua.h:25:20: fatal error: Python.h: No such file or directory
>> /
>> So can I build them both in one recipe and how? And if built correctly
>> how to install the modules? I also tried to split the build into two 
>> .bb files.
>>
>> Thanks for your help.
>
> Try adding 'inherit pythonnative' to your recipe
>
>>
>> (Here is the pjproject bb)
>> --------
>> DESCRIPTION = "Open source SIP stack and media stack for presence, 
>> im/instant \
>>                 messaging, and multimedia communication"
>> SECTION = "libs"
>> HOMEPAGE ="http://www.pjsip.org/"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM ="file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>> DEPENDS = "alsa-lib openssl python"
>>
>> PARALLEL_MAKE = ""
>>
>> SRC_URI ="http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2"
>> SRC_URI[md5sum] = "6ed4bb7750c827dc1d881e209a3b62db"
>> SRC_URI[sha256sum] = 
>> "da1933336b38b65ff2254bed05ea1076531b16915777a252ea999cf7f3284cb3"
>> S = "${WORKDIR}/pjproject-${PV}"
>>
>> inherit autotools pkgconfig
>>
>> EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"
>>
>> do_configure_prepend () {
>>          export LD="${CC}"
>> }
>>
>> do_compile_prepend() {
>>          oe_runmake dep
>> }
>>
>>
>> do_install_prepend() {
>>      install -d ${D}/usr/bin
>>      install -m 755 ${S}/pjsip-apps/bin/pj* ${D}/usr/bin
>> }
>>
>>
>>
>>
>


