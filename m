Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97CF8E00D20; Mon, 22 Aug 2016 03:00:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 142 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Aug 2016 03:00:00 PDT
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E69E008BA
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 03:00:00 -0700 (PDT)
Received: from [79.160.140.131] (port=30313 helo=[10.183.36.50])
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128) (Exim 4.80)
	(envelope-from <sveinse@seldal.com>) id 1bblz6-0006ft-63
	for yocto@yoctoproject.org; Mon, 22 Aug 2016 11:57:36 +0200
To: yocto@yoctoproject.org
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <b5018454-275f-a575-6e2e-089b1b74cec0@seldal.com>
Date: Mon, 22 Aug 2016 11:57:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: Failing EXTERNALSRC and dangling symlinks
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
X-List-Received-Date: Mon, 22 Aug 2016 10:00:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


I am running on a customized Yocto tree based off Poky krogoth and I 
think I have stumbled upon a bug in bb.

One of our recipes use EXTERNALSRC and EXTERNALSRC_BUILD, set from 
local.conf. When the recipe is built, two symlinks 
${EXTERNALSRC}/oe-logs and ${EXTERNALSRC}/oe-workdir is created in the 
source tree.

If the build output tmp/ later is deleted, these two symlinks becomes 
dangling links. Re-running bitbake will cause it to fail. First it warns 
of this during parsing, and later it will crash bb (see below).

Removing these symlinks when deleting tmp/ ensures bitbake will not crash.

I suppose this is a bug?

Best regards,
Svein Seldal



(EXTERNALSRC="/srv/user/yocto/sp-core-image/src")

WARNING: Unable to get checksum for sp SRC_URI entry oe-logs: [Errno 2] 
No such file or directory: '/home/user/yocto/sp-core-image/src/oe-logs'
WARNING: Unable to get checksum for sp SRC_URI entry oe-workdir: [Errno 
2] No such file or directory: 
'/home/user/yocto/sp-core-image/src/oe-workdir'


ERROR: sp-99.8.0-r0 do_compile: Build of do_compile failed
ERROR: sp-99.8.0-r0 do_compile: Traceback (most recent call last):
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/build.py", line 
567, in exec_task
     return _exec_task(fn, task, d, quieterr)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/build.py", line 
541, in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/event.py", line 
171, in fire
     fire_class_handlers(event, d)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/event.py", line 
110, in fire_class_handlers
     execute_handler(name, handler, event, d)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/event.py", line 
82, in execute_handler
     ret = handler(event)
   File 
"/home/user/yocto/sp-core-image/src/poky/meta/classes/sstate.bbclass", 
line 946, in sstate_eventhandler
     bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" 
".siginfo", d)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/siggen.py", line 
348, in dump_this_task
     bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:" + 
referencestamp)
   File 
"/home/user/yocto/sp-core-image/src/poky/meta/lib/oe/sstatesig.py", line 
182, in dump_sigtask
     super(bb.siggen.SignatureGeneratorBasicHash, self).dump_sigtask(fn, 
task, stampbase, runtime)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/siggen.py", line 
303, in dump_sigtask
     computed_taskhash = calc_taskhash(data)
   File 
"/home/user/yocto/sp-core-image/src/poky/bitbake/lib/bb/siggen.py", line 
548, in calc_taskhash
     data = data + c[1]
TypeError: cannot concatenate 'str' and 'NoneType' objects

