Return-Path: <andrew.stuart@supercoders.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F4AE00B47; Mon, 14 Nov 2016 00:58:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.supercoders.com.au (mail.supercoders.com.au [54.215.13.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26D2E00A1A
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 00:58:06 -0800 (PST)
Received: from [192.168.1.126] (unknown [101.167.6.11])
	by mail.supercoders.com.au (Postfix) with ESMTPS id 0F93760844
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 08:58:04 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Andrew Stuart <andrew.stuart@supercoders.com.au>
In-Reply-To: <37AEBBBC-581C-47BB-B565-20822DDC9CA9@supercoders.com.au>
Date: Mon, 14 Nov 2016 19:58:02 +1100
Message-Id: <FBFCB952-EBD0-41AF-8475-43087229AA3F@supercoders.com.au>
References: <37AEBBBC-581C-47BB-B565-20822DDC9CA9@supercoders.com.au>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3124)
Subject: Re: Errors when doing bitbake xen-guest-image-minimal
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
X-List-Received-Date: Mon, 14 Nov 2016 08:58:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sorry for the noise, please disregard my question,  I hit the problem =
with the large hammer of deleting my temp directory and I now seem to =
have moved onto some new problem=E2=80=A6.





On 14 Nov 2016, at 7:15 PM, Andrew Stuart =
<andrew.stuart@supercoders.com.au> wrote:

I=E2=80=99m out of my depth here=E2=80=A6.

Any suggestions as to what might be causing these errors?

thanks!

Initialising tasks: 100% =
|#########################################################################=
################################################################| Time: =
0:00:03 NOTE: Executing SetScene Tasks NOTE: Executing RunQueue Tasks =
ERROR: gcc-runtime-6.2.0-r0 do_compile: oe_runmake failed ERROR: =
gcc-runtime-6.2.0-r0 do_compile: Function failed: do_compile (log file =
is located at =
/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gcc-runtime/6.2.0-=
r0/temp/log.do_compile.11808) ERROR: Logfile of failure stored in: =
/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gcc-runtime/6.2.0-=
r0/temp/log.do_compile.11808 Log data follows: | DEBUG: SITE files =
['endian-little', 'common-linux', 'common-glibc', 'bit-64', =
'x86_64-linux', 'common'] | DEBUG: Executing shell function do_compile | =
NOTE: make -j 4 =
MULTIBUILDTOP=3D/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gc=
c-runtime/6.2.0-r0/gcc-6.2.0/build.x86_64-poky-linux.x86_64-poky-linux/x86=
_64-poky-linux/libgcc/ | # If this is the top-level multilib, build all =
the other | # multilibs. | # Early copyback; see "all" above for the =
rationale. The | =
dest=3D/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gcc-runtime=
/6.2.0-r0/gcc-6.2.0/build.x86_64-poky-linux.x86_64-poky-linux/x86_64-poky-=
linux/libgcc/../.././gcc/include/tmp$$-unwind.h; \ | cp unwind.h $dest; =
\ | chmod a+r $dest; \ | sh =
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgcc/../move-=
if-change $dest =
/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gcc-runtime/6.2.0-=
r0/gcc-6.2.0/build.x86_64-poky-linux.x86_64-poky-linux/x86_64-poky-linux/l=
ibgcc/../.././gcc/include/unwind.h | # early copy is necessary so that =
the gcc -B options find | # the right startup files when linking shared =
libgcc. | /bin/bash =
../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libgcc/../mkins=
talldirs =
/mnt/dude/yocto/poky/build/tmp/work/core2-64-poky-linux/gcc-runtime/6.2.0-=
r0/gcc-6.


--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


