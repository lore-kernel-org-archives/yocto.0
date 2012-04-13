Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD9BE00723
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 14:22:45 -0700 (PDT)
Received: from static-74-106-4-21.syrcny.fios.verizon.net ([74.106.4.21]
	helo=[10.197.228.148])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1SInx5-0006Z2-9W; Fri, 13 Apr 2012 21:22:44 +0000
Message-ID: <4F8897F0.9050104@twobit.us>
Date: Fri, 13 Apr 2012 17:17:36 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F86EA68.1070504@twobit.us> <4F876B6A.9030405@twobit.us>
In-Reply-To: <4F876B6A.9030405@twobit.us>
X-Enigmail-Version: 1.4
X-SA-Exim-Connect-IP: 74.106.4.21
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: Re: native recipe and sysroot-destdir troubles
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
X-List-Received-Date: Fri, 13 Apr 2012 21:22:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Worked out a solution to this issue.  For the sake of brevity it can be
found here:

http://twobit.us/blog/2012/04/openembedded-yocto-native-hello-world/

Cheers,
- Philip

On 04/12/2012 07:55 PM, Philip Tricca wrote:
> More / better info:
> 
> On 04/12/2012 10:44 AM, Philip Tricca wrote:
>> I'm working on two new recipes and both are working quite well.  Now I
>> need native variants and online sources indicate this should be done
>> through BBCLASSEXTEND = "native".  For one of my recipes this works
>> fine, for the other not so much.
>>
>> The error I'm seeing seems to be in the staging of the sysroot-destdir
>> which ends up being empty though the source code builds fine (image
>> directory has everything expected). do_populate_sysroot seems to assume
>> there's a directory structure present which ends up being empty causing
>> an error when it trys to tar the directory up.  If I create the
>> directories do_populate_sysroot expects the recipe runs to completion
>> but sysroot-destdir still ends up being empty and no packages are built.
> 
> Image directiory is populated as expected (has lib, usr/include etc with
> expected files).  Build is failing on populate_sysroot:
> 
> CalledProcessError: Command 'tar -cf - -C
> /home/build/poky-edison-6.0/build/tmp/work/i686-linux/libmylib-native-2.1.4-r0/sysroot-destdir///home/build/poky-edison-6.0/build/tmp/sysroots/i686-linux
> -ps . | tar -xf - -C
> /home/build/poky-edison-6.0/build/tmp/sysroots/i686-linux' returned
> non-zero exit status 2 with output tar:
> /home/build/poky-edison-6.0/build/tmp/work/i686-linux/libmylib-native-2.1.4-r0/sysroot-destdir///home/build/poky-edison-6.0/build/tmp/sysroots/i686-linux:
> Cannot chdir: No such file or directory
> tar: Error is not recoverable: exiting now
> 
> The failure is obviously due to sysroot-destdir being empty.  The
> question is why this directory is populated for libmylib but not for
> libmylib-native ... they're built from the same recipe.
> 
> Stack trace:
> 
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "sstate_task_postfunc", line 10, in <module>
> ERROR:
> ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
> ERROR:
> ERROR:   File "sstate.bbclass", line 19, in sstate_install
> ERROR:
> ERROR:   File "/home/build/poky-edison-6.0/meta/lib/oe/path.py", line
> 59, in copytree
> ERROR:     check_output(cmd, shell=True, stderr=subprocess.STDOUT)
> ERROR:
> ERROR:   File "/home/build/poky-edison-6.0/meta/lib/oe/path.py", line
> 121, in check_output
> ERROR:     raise CalledProcessError(retcode, cmd, output=output)
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0006:        bb.build.exec_func(intercept, d)
> ERROR:      0007:    sstate_package(shared_state, d)
> ERROR:      0008:
> ERROR:      0009:
> ERROR:  *** 0010:sstate_task_postfunc(d)
> ERROR:      0011:
> ERROR: (file: 'sstate_task_postfunc', lineno: 10, function: <module>)
> ERROR:      0001:
> ERROR:      0002:def sstate_task_postfunc(d):
> ERROR:      0003:    shared_state = sstate_state_fromvars(d)
> ERROR:  *** 0004:    sstate_install(shared_state, d)
> ERROR:      0005:    for intercept in shared_state['interceptfuncs']:
> ERROR:      0006:        bb.build.exec_func(intercept, d)
> ERROR:      0007:    sstate_package(shared_state, d)
> ERROR:      0008:
> ERROR: (file: 'sstate_task_postfunc', lineno: 4, function:
> sstate_task_postfunc)
> ERROR: Function 'sstate_task_postfunc' failed
> 
> Thanks,
> - Philip
> 


