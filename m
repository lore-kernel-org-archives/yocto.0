Return-Path: <saeed.samy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75708E00D05; Thu, 23 Jun 2016 20:18:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (saeed.samy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2930E00D00;
	Thu, 23 Jun 2016 20:18:12 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id c82so1625110wme.3;
	Thu, 23 Jun 2016 20:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=tDtemS9zuxkT1lrK37Bcc0ohnl4HRAlsIc8AcpZ74N8=;
	b=DbVMwN8f76cuIBvEvm45gGa/JwarLKKL7+Y9Ly+sDlQJHb4H6YHdIHqCsUqGzlVhlX
	4KfZtpqwU6eCOqbBOmVi/1fGkCXZvZcB4z9qvwvlQ5+ciIjHwuRM1SbwOWyvP1tImX9Z
	rCSehBRkxCBsnrdppKIwamfv/Vqzbzvcqp06OJ7wbQ0V60tAhH03JwfkLJK3fCxDSeW1
	OwLVIjquYA6AQfzel+V3o34y5dpUlChqCVJ1tqhkQh6uS7dEDrrId9b+9bFk4m5waNGw
	DEU9Ay11nhEhK6lqscmq/UpO07Tt06vcIy2fJO1uaK+FMfzbiNK5UYTQqJhydu9fTWP7
	7sew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=tDtemS9zuxkT1lrK37Bcc0ohnl4HRAlsIc8AcpZ74N8=;
	b=fdwDUsD4WTjejR8n8cLhQVpkn738YC/Gxh3SEEBizoLAa4MF+HzLvDq6PPfQBjmHHB
	RlJ0Z7NNc8o1kAOrhzwtb6Z9fqHRfv+b0PP6HdObPhdFj5ai9LQSGe9HIC+B2KtxZv1f
	tPr9p2I/3zeg2upoE0bQjvKDKIgyWJ+UyRxPvLAah29SGNtc5MXGfRXQe5i5ZUJ/qR5c
	St3CxmXu7wTcvhRTOidrto1dXGwDnvFYoSXdNRXgMIjxQGCvlDaG1vGUGANmwrDYUONE
	R8fD2jd7oW/fpK7BdakHSY/zoW2lR69rHzLvGgR7U26wVcsdgkIDgGoaqytcy+4Rc0GF
	iXrg==
X-Gm-Message-State: ALyK8tJp4VVUsmyhGP4WdMJFizwC9JB5eNL0UaCT5Tl3Mj9BhsvcxVbQmgRSlGPWZws5iw==
X-Received: by 10.28.43.2 with SMTP id r2mr3426246wmr.33.1466738290883;
	Thu, 23 Jun 2016 20:18:10 -0700 (PDT)
Received: from [192.168.1.2] ([2.176.167.206])
	by smtp.gmail.com with ESMTPSA id h8sm2939065wjg.9.2016.06.23.20.18.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Jun 2016 20:18:10 -0700 (PDT)
To: yocto-builds@yoctoproject.org
From: "S.Sami" <saeed.samy@gmail.com>
Message-ID: <b5d41264-70b8-9710-c51d-db45d3d17cd0@gmail.com>
Date: Fri, 24 Jun 2016 07:48:05 +0430
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 27 Jun 2016 05:57:12 -0700
Subject: override layer to literally rename all desired visible strings in a build, and python 2.7.9 error 132
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
X-List-Received-Date: Fri, 24 Jun 2016 03:18:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello.

I am new to yocto, and for a project i am in need of modifying 
openswitch build for a presenattion in a way that the final build ( for 
this presentation it will be appliance ova) it shows another string or 
better to say a new Distro instead of openswitch in the final build. 
what i am looking for is a solution to change the name of all files and 
folders in the final build so that they show "test" instead of openswitch.

i have been told that it is possible by creating a new layer on top of 
current openswitch ops-build repo. But since i am new to this i am 
getting confused on the steps i should follow and thus it will take much 
time.

can anyone kindly guide me here on how should this be done? what are the 
processes involved?

one more thing is that any kind of change to the Distro name" 
openswitch" or created files or folder names by the build process will 
always result in a python_2.7.9 do_install error which interrupts the 
process.

Bellow is the error generated by python installation( i have used "test 
"as the desired distro name).

I will be so grateful if any one can help me get out of this situation.

----------------------------------------------------------------------------------


DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
'bit-64', 'x86_64-linux', 'common']
DEBUG: Executing shell function do_install
NOTE: make -j 4 
HOSTPGEN=/home/sasami/ops-build/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/pgen 
HOSTPYTHON=/home/sasami/ops-build/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/python 
CROSSPYTHONPATH=/home/sasami/ops-build/build/tmp/sysroots/x86_64-linux/usr/lib/python2.7/lib-dynload/ 
STAGING_LIBDIR=/home/sasami/ops-build/build/tmp/sysroots/appliance/usr/lib 
STAGING_INCDIR=/home/sasami/ops-build/build/tmp/sysroots/appliance/usr/include 
STAGING_BASELIBDIR=/home/sasami/ops-build/build/tmp/sysroots/appliance/lib 
BUILD_SYS=x86_64-linux HOST_SYS=x86_64-test-linux 
DESTDIR=/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/image 
LIBDIR=/usr/lib
x86_64-test-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 
-mfpmath=sse 
--sysroot=/home/sasami/ops-build/build/tmp/sysroots/appliance -c 
-fno-strict-aliasing  -O2 -pipe -g -feliminate-unused-debug-types 
-DNDEBUG -g  -O3 -Wall -Wstrict-prototypes  -I. -IInclude 
-I/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Include 
-fPIC -DPy_BUILD_CORE -DPYTHONPATH='":plat-linux2:lib-tk:lib-old"' \
         -DPREFIX='"/usr"' \
         -DEXEC_PREFIX='"/usr"' \
         -DVERSION='"2.7"' \
-DVPATH='"/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9"' 
\
         -DLIB='"lib"' \
         -o Modules/getpath.o 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Modules/getpath.c
x86_64-test-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 
-mfpmath=sse 
--sysroot=/home/sasami/ops-build/build/tmp/sysroots/appliance -c 
-fno-strict-aliasing  -O2 -pipe -g -feliminate-unused-debug-types 
-DNDEBUG -g  -O3 -Wall -Wstrict-prototypes  -I. -IInclude 
-I/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Include 
-fPIC -DPy_BUILD_CORE \
           -DSVNVERSION="\"`LC_ALL=C echo Unversioned directory`\"" \
           -DHGVERSION="\"`LC_ALL=C hg id -i 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9`\"" 
\
           -DHGTAG="\"`LC_ALL=C hg id -t 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9`\"" 
\
           -DHGBRANCH="\"`LC_ALL=C hg id -b 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9`\"" 
\
           -o Modules/getbuildinfo.o 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Modules/getbuildinfo.c
abort: repository 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9 
not found!
abort: repository 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9 
not found!
abort: repository 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9 
not found!
rm -f libpython2.7.a
if test libpython2.7.so.1.0 != libpython2.7.so; then \
         x86_64-test-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 
-mfpmath=sse 
--sysroot=/home/sasami/ops-build/build/tmp/sysroots/appliance -shared 
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-hlibpython2.7.so.1.0 
-o libpython2.7.so.1.0 Modules/getbuildinfo.o Parser/acceler.o 
Parser/grammar1.o Parser/listnode.o Parser/node.o Parser/parser.o 
Parser/parsetok.o Parser/bitset.o Parser/metagrammar.o 
Parser/firstsets.o Parser/grammar.o Parser/pgen.o Parser/myreadline.o 
Parser/tokenizer.o Objects/abstract.o Objects/boolobject.o 
Objects/bufferobject.o Objects/bytes_methods.o Objects/bytearrayobject.o 
Objects/capsule.o Objects/cellobject.o Objects/classobject.o 
Objects/cobject.o Objects/codeobject.o Objects/complexobject.o 
Objects/descrobject.o Objects/enumobject.o Objects/exceptions.o 
Objects/genobject.o Objects/fileobject.o Objects/floatobject.o 
Objects/frameobject.o Objects/funcobject.o Objects/intobject.o 
Objects/iterobject.o Objects/listobject.o Objects/longobject.o 
Objects/dictobject.o Objects/memoryobject.o Objects/methodobject.o 
Objects/moduleobject.o Objects/object.o Objects/obmalloc.o 
Objects/rangeobject.o Objects/setobject.o Objects/sliceobject.o 
Objects/stringobject.o Objects/structseq.o Objects/tupleobject.o 
Objects/typeobject.o Objects/weakrefobject.o Objects/unicodeobject.o 
Objects/unicodectype.o Python/_warnings.o Python/Python-ast.o 
Python/asdl.o Python/ast.o Python/bltinmodule.o Python/ceval.o 
Python/compile.o Python/codecs.o Python/errors.o Python/frozen.o 
Python/frozenmain.o Python/future.o Python/getargs.o 
Python/getcompiler.o Python/getcopyright.o Python/getplatform.o 
Python/getversion.o Python/graminit.o Python/import.o Python/importdl.o 
Python/marshal.o Python/modsupport.o Python/mystrtoul.o 
Python/mysnprintf.o Python/peephole.o Python/pyarena.o Python/pyctype.o 
Python/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o 
Python/random.o Python/structmember.o Python/symtable.o 
Python/sysmodule.o Python/traceback.o Python/getopt.o Python/pystrcmp.o 
Python/pystrtod.o Python/dtoa.o Python/formatter_unicode.o 
Python/formatter_string.o Python/dynload_shlib.o   Python/thread.o 
Modules/config.o Modules/getpath.o Modules/main.o Modules/gcmodule.o  
Modules/threadmodule.o  Modules/signalmodule.o Modules/posixmodule.o  
Modules/errnomodule.o  Modules/pwdmodule.o Modules/_sre.o  
Modules/_codecsmodule.o  Modules/_weakref.o Modules/zipimport.o  
Modules/symtablemodule.o  Modules/md5module.o Modules/md5.o  
Modules/xxsubtype.o   -lpthread -ldl  -lpthread -lutil  -lm ; \
         ln -f libpython2.7.so.1.0 libpython2.7.so; \
     else \
         x86_64-test-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 
-mfpmath=sse 
--sysroot=/home/sasami/ops-build/build/tmp/sysroots/appliance -shared 
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o libpython2.7.so 
Modules/getbuildinfo.o Parser/acceler.o Parser/grammar1.o 
Parser/listnode.o Parser/node.o Parser/parser.o Parser/parsetok.o 
Parser/bitset.o Parser/metagrammar.o Parser/firstsets.o Parser/grammar.o 
Parser/pgen.o Parser/myreadline.o Parser/tokenizer.o Objects/abstract.o 
Objects/boolobject.o Objects/bufferobject.o Objects/bytes_methods.o 
Objects/bytearrayobject.o Objects/capsule.o Objects/cellobject.o 
Objects/classobject.o Objects/cobject.o Objects/codeobject.o 
Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o 
Objects/exceptions.o Objects/genobject.o Objects/fileobject.o 
Objects/floatobject.o Objects/frameobject.o Objects/funcobject.o 
Objects/intobject.o Objects/iterobject.o Objects/listobject.o 
Objects/longobject.o Objects/dictobject.o Objects/memoryobject.o 
Objects/methodobject.o Objects/moduleobject.o Objects/object.o 
Objects/obmalloc.o Objects/rangeobject.o Objects/setobject.o 
Objects/sliceobject.o Objects/stringobject.o Objects/structseq.o 
Objects/tupleobject.o Objects/typeobject.o Objects/weakrefobject.o 
Objects/unicodeobject.o Objects/unicodectype.o Python/_warnings.o 
Python/Python-ast.o Python/asdl.o Python/ast.o Python/bltinmodule.o 
Python/ceval.o Python/compile.o Python/codecs.o Python/errors.o 
Python/frozen.o Python/frozenmain.o Python/future.o Python/getargs.o 
Python/getcompiler.o Python/getcopyright.o Python/getplatform.o 
Python/getversion.o Python/graminit.o Python/import.o Python/importdl.o 
Python/marshal.o Python/modsupport.o Python/mystrtoul.o 
Python/mysnprintf.o Python/peephole.o Python/pyarena.o Python/pyctype.o 
Python/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o 
Python/random.o Python/structmember.o Python/symtable.o 
Python/sysmodule.o Python/traceback.o Python/getopt.o Python/pystrcmp.o 
Python/pystrtod.o Python/dtoa.o Python/formatter_unicode.o 
Python/formatter_string.o Python/dynload_shlib.o   Python/thread.o 
Modules/config.o Modules/getpath.o Modules/main.o Modules/gcmodule.o  
Modules/threadmodule.o  Modules/signalmodule.o Modules/posixmodule.o  
Modules/errnomodule.o  Modules/pwdmodule.o Modules/_sre.o  
Modules/_codecsmodule.o  Modules/_weakref.o Modules/zipimport.o  
Modules/symtablemodule.o  Modules/md5module.o Modules/md5.o  
Modules/xxsubtype.o   -lpthread -ldl  -lpthread -lutil  -lm ; \
     fi
x86_64-test-linux-ar rc libpython2.7.a Modules/getbuildinfo.o
x86_64-test-linux-ar rc libpython2.7.a Parser/acceler.o 
Parser/grammar1.o Parser/listnode.o Parser/node.o Parser/parser.o 
Parser/parsetok.o Parser/bitset.o Parser/metagrammar.o 
Parser/firstsets.o Parser/grammar.o Parser/pgen.o Parser/myreadline.o 
Parser/tokenizer.o
x86_64-test-linux-ar rc libpython2.7.a Objects/abstract.o 
Objects/boolobject.o Objects/bufferobject.o Objects/bytes_methods.o 
Objects/bytearrayobject.o Objects/capsule.o Objects/cellobject.o 
Objects/classobject.o Objects/cobject.o Objects/codeobject.o 
Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o 
Objects/exceptions.o Objects/genobject.o Objects/fileobject.o 
Objects/floatobject.o Objects/frameobject.o Objects/funcobject.o 
Objects/intobject.o Objects/iterobject.o Objects/listobject.o 
Objects/longobject.o Objects/dictobject.o Objects/memoryobject.o 
Objects/methodobject.o Objects/moduleobject.o Objects/object.o 
Objects/obmalloc.o Objects/rangeobject.o Objects/setobject.o 
Objects/sliceobject.o Objects/stringobject.o Objects/structseq.o 
Objects/tupleobject.o Objects/typeobject.o Objects/weakrefobject.o 
Objects/unicodeobject.o Objects/unicodectype.o
x86_64-test-linux-ar rc libpython2.7.a Python/_warnings.o 
Python/Python-ast.o Python/asdl.o Python/ast.o Python/bltinmodule.o 
Python/ceval.o Python/compile.o Python/codecs.o Python/errors.o 
Python/frozen.o Python/frozenmain.o Python/future.o Python/getargs.o 
Python/getcompiler.o Python/getcopyright.o Python/getplatform.o 
Python/getversion.o Python/graminit.o Python/import.o Python/importdl.o 
Python/marshal.o Python/modsupport.o Python/mystrtoul.o 
Python/mysnprintf.o Python/peephole.o Python/pyarena.o Python/pyctype.o 
Python/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o 
Python/random.o Python/structmember.o Python/symtable.o 
Python/sysmodule.o Python/traceback.o Python/getopt.o Python/pystrcmp.o 
Python/pystrtod.o Python/dtoa.o Python/formatter_unicode.o 
Python/formatter_string.o Python/dynload_shlib.o   Python/thread.o
x86_64-test-linux-ar rc libpython2.7.a Modules/config.o 
Modules/getpath.o Modules/main.o Modules/gcmodule.o
x86_64-test-linux-ar rc libpython2.7.a Modules/threadmodule.o 
Modules/signalmodule.o  Modules/posixmodule.o Modules/errnomodule.o  
Modules/pwdmodule.o  Modules/_sre.o Modules/_codecsmodule.o  
Modules/_weakref.o  Modules/zipimport.o Modules/symtablemodule.o  
Modules/md5module.o Modules/md5.o Modules/xxsubtype.o
Modules/posixmodule.o: In function `posix_tmpnam':
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7575: 
warning: the use of `tmpnam_r' is dangerous, better use `mkstemp'
Modules/posixmodule.o: In function `posix_tempnam':
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7522: 
warning: the use of `tempnam' is dangerous, better use `mkstemp'
x86_64-test-linux-ranlib libpython2.7.a
x86_64-test-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 
-mfpmath=sse 
--sysroot=/home/sasami/ops-build/build/tmp/sysroots/appliance -Wl,-O1 
-Wl,--hash-style=gnu -Wl,--as-needed -Xlinker -export-dynamic -o python \
             Modules/python.o \
             -L. -lpython2.7 -lpthread -ldl  -lpthread -lutil   -lm
_PYTHON_PROJECT_BASE=/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/build 
_PYTHON_HOST_PLATFORM=linux2-x86_64 
PYTHONPATH=/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Lib:/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2 
python2.7 -S -m sysconfig --generate-posix-vars ;\
     if test $? -ne 0 ; then \
         echo "generate-posix-vars failed" ; \
         rm -f ./pybuilddir.txt ; \
         exit 1 ; \
     fi
Illegal instruction (core dumped)
make: *** [sharedmods] Error 132
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_install (log file is located at 
/home/sasami/ops-build/build/tmp/work/core2-64-test-linux/python/2.7.9-r1/temp/log.do_install.86396)

--------------------------------------------------------------------------------------------------



