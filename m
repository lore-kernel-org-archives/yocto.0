Return-Path: <kernelraj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5F19E00C08; Wed, 14 Sep 2016 23:14:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kernelraj[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C9CE00BE7
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 23:14:06 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id i130so81878558wmf.0
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 23:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=AF3mZh8ysCj4usSkQu+7bR5EaV1/cpoNyLSxB1DAq+I=;
	b=nnuyUSOEl373LYGz/B6shUCcTSCohmq87mfhaIX1I6LvLMArjIafeSbYaXel2GhfKv
	1qIA6NE5g5dR4YX8Strsqd/MqKtPlBKjfxIyWPj5zN761fn2IFmmuczz6P5k48H/uI7X
	9Au2vj6VCe+wXzwOXDPa+jKkofNl2BEh9K/tAQn9qpEEBlnA4NW12PZBa1Awfkz5aoJy
	CHcBmb2M8wuU6j4D6JGzuDmJlBZ1bdKZefMrkQnzPWosiJYV4P4usQcV0oGEgZ7nktJj
	wyb68Ajkd8+eXzOvskh8Q6BY8AcyL4Q/cbD42aCVhBLMjmQ72sJrwTP2vJjELkteJwFw
	MtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AF3mZh8ysCj4usSkQu+7bR5EaV1/cpoNyLSxB1DAq+I=;
	b=Whu8CVSVWzghWF/QccQHoUgXoAWSLLlINaGhWCgacc94Ntm/yKlXj2BpLK34STmy89
	p9D5wVtP1e/98At06ubqSED08mfZLyku7ihwh3oYjBATqS3S0KbkEyTE8nuBaC7maCnL
	UYUhotdkkbs2xAfeuw97zRrLEpviSXeXRq35na2ui/SZTdg8Tp0ga14D4Uuylew+LPjQ
	FBSq7htrbF9qq87gAzY0diFBBN1QfDuW09x0TRV+nlV2AIeyezVDjimbmQUWDcwVUsM4
	vMnetwIVuwYKgb5IlOOiyKUMMuasEjy1pdoe1c3zx2SJ5mv+LXncKg5y4Rqn/9+cWibp
	OWGg==
X-Gm-Message-State: AE9vXwNTD9e2T8D4tcsciAHokuXlpCqy/qh+VR7rx06EEXCQnU56jFaUC4cZ0s6r3if91/CY2ZzLhwhDlATjDw==
X-Received: by 10.28.69.85 with SMTP id s82mr1143299wma.37.1473920045075; Wed,
	14 Sep 2016 23:14:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.166.69 with HTTP; Wed, 14 Sep 2016 23:14:04 -0700 (PDT)
From: BHARATH RAJ <kernelraj@gmail.com>
Date: Wed, 14 Sep 2016 23:14:04 -0700
Message-ID: <CAJz+W7C3FWZynTyJD24Y=9s8SCzgW5YNFc4=nr4atnW_hs6pVg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 15 Sep 2016 07:44:34 -0700
Subject: : warning creating a DT_TEXTREL in a shared object.
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
X-List-Received-Date: Thu, 15 Sep 2016 06:14:11 -0000
Content-Type: multipart/alternative; boundary=94eb2c0715b4b6d916053c85c098

--94eb2c0715b4b6d916053c85c098
Content-Type: text/plain; charset=UTF-8

Hi All,


I am now trying to build one recipe on Yocto 2.0 based environment.

However, I am seeing following warning & stops the build.I wonder if
this is a known problem and you already have workaround?


arm-pokymllib32-linux-gnueabi/5.2.0/ld: warning: creating a DT_TEXTREL
in a shared object.


This warning/error did not happen with Yocto 1.8 based build, So, it
can be tool-chain issue



|
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/arm-pokymllib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-g++
-Wl,-soname,libgsl.so -Wl,--gc-sections -shared
 -L/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/lib

 /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_lib.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/pm4cc_os_wrapper.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_sync_base.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_umd_sync.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/linux/gsl_linux_sync.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/linux/gsl_lib_ext.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/linux/gsl_ioctl.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/os/user/src/linux/os_lib.o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/panel/panel.o
       -Wl,--whole-archive   -Wl,--no-whole-archive        -o
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/LINKED/libgsl.so
 --sysroot=/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/
-lpthread -ldl -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now
-Wl,--warn-shared-textrel -Wl,--fatal-warnings -Wl,--fix-cortex-a8 -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -Wl,-z,relro,-z,now -lcutils
-lglib-2.0 -lpthread -lxml2 -lz   -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed -Wl,-z,relro,-z,now -lcutils -lglib-2.0 -lpthread -lxml2
-lz -Wl,--no-undefined
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/lib/libatomic.a
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/lib/arm-pokymllib32-linux-gnueabi/5.2.0/libgcc.a
|
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/arm-pokymllib32-linux-gnueabi/gcc/arm-pokymllib32-linux-gnueabi/5.2.0/ld:
warning: creating a DT_TEXTREL in a shared object.
| collect2: error: ld returned 1 exit status
| make: ***
[/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/LINKED/libgsl.so]
Error 1


Regards
Bharath

--94eb2c0715b4b6d916053c85c098
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><pre style=3D"white-space:pre-wrap;font-family:courie=
r,&quot;courier new&quot;,monospace;font-size:14px;word-wrap:break-word;mar=
gin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px">Hi All,<=
/pre><pre style=3D"white-space:pre-wrap;font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:14px;word-wrap:break-word;margin-top:0px;margi=
n-bottom:0px;color:rgb(0,0,0);line-height:19.6px"><br></pre><pre style=3D"w=
hite-space:pre-wrap;font-family:courier,&quot;courier new&quot;,monospace;f=
ont-size:14px;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:r=
gb(0,0,0);line-height:19.6px">I am now trying to build one recipe on Yocto =
2.0 based environment.
<br></pre><pre style=3D"white-space:pre-wrap;font-family:courier,&quot;cour=
ier new&quot;,monospace;font-size:14px;word-wrap:break-word;margin-top:0px;=
margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px">However, I am seeing=
 following warning &amp; stops the build.I wonder if this is a known proble=
m and you already have workaround?</pre><pre style=3D"white-space:pre-wrap;=
font-family:courier,&quot;courier new&quot;,monospace;font-size:14px;word-w=
rap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-heigh=
t:19.6px"><br></pre><pre style=3D"white-space:pre-wrap;font-family:courier,=
&quot;courier new&quot;,monospace;font-size:14px;word-wrap:break-word;margi=
n-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px"><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;line-=
height:normal;white-space:normal">arm-pokymllib32-linux-gnueabi/5.2.0/ld: w=
arning: creating a DT_TEXTREL in a shared object.</span><span style=3D"line=
-height:19.6px"><br></span></pre><pre style=3D"white-space:pre-wrap;font-fa=
mily:courier,&quot;courier new&quot;,monospace;font-size:14px;word-wrap:bre=
ak-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6p=
x"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;line-height:normal;white-space:normal"><br></span></pre><pre style=
=3D"white-space:pre-wrap;font-family:courier,&quot;courier new&quot;,monosp=
ace;font-size:14px;word-wrap:break-word;margin-top:0px;margin-bottom:0px;co=
lor:rgb(0,0,0);line-height:19.6px"><pre style=3D"white-space:pre-wrap;font-=
family:courier,&quot;courier new&quot;,monospace;word-wrap:break-word;margi=
n-top:0px;margin-bottom:0px;line-height:19.6px">This warning/error did not =
happen with Yocto 1.8 based build, So, it can be tool-chain issue</pre><div=
><br></div></pre></div><div><br></div><div>| /local/mnt/workspace/bharath/O=
penCL/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/arm-pokyml=
lib32-linux-gnueabi/arm-pokymllib32-linux-gnueabi-g++ -Wl,-soname,libgsl.so=
 -Wl,--gc-sections -shared =C2=A0-L/local/mnt/workspace/bharath/OpenCL/AGL_=
NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/=
obj/lib =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/local/mnt/workspace/bharath/Open=
CL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/p=
roduct/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_lib.o /lo=
cal/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/c=
ompat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermedia=
tes/gsl/user/src/gsl_pm4cc.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/po=
ky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SH=
ARED_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o /local/mnt=
/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_b=
uild_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl=
/user/src/gsl_pm4cc_xxx.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/=
build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARE=
D_LIBRARIES/libgsl_intermediates/gsl/user/src/gsl_pm4cc_xxx.o /local/mnt/wo=
rkspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_buil=
d_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/us=
er/src/gsl_pm4cc_xxx.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/bui=
ld/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_L=
IBRARIES/libgsl_intermediates/gsl/user/src/pm4cc_os_wrapper.o /local/mnt/wo=
rkspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_buil=
d_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/us=
er/src/gsl_sync_base.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/bui=
ld/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARED_L=
IBRARIES/libgsl_intermediates/gsl/user/src/gsl_umd_sync.o /local/mnt/worksp=
ace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_ar=
tifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gsl/user/s=
rc/linux/gsl_linux_sync.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/=
build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SHARE=
D_LIBRARIES/libgsl_intermediates/gsl/user/src/linux/gsl_lib_ext.o /local/mn=
t/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_=
build_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/gs=
l/user/src/linux/gsl_ioctl.o /local/mnt/workspace/bharath/OpenCL/AGL_NEW/po=
ky/build/tmp-glibc/work-shared/compat_build_artifacts/target/product/obj/SH=
ARED_LIBRARIES/libgsl_intermediates/os/user/src/linux/os_lib.o /local/mnt/w=
orkspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_bui=
ld_artifacts/target/product/obj/SHARED_LIBRARIES/libgsl_intermediates/panel=
/panel.o =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--whole-archive =C2=A0 -Wl,--no-who=
le-archive =C2=A0 =C2=A0 =C2=A0 =C2=A0-o /local/mnt/workspace/bharath/OpenC=
L/AGL_NEW/poky/build/tmp-glibc/work-shared/compat_build_artifacts/target/pr=
oduct/obj/SHARED_LIBRARIES/libgsl_intermediates/LINKED/libgsl.so =C2=A0--sy=
sroot=3D/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sy=
sroots/ -lpthread -ldl -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -Wl,--war=
n-shared-textrel -Wl,--fatal-warnings -Wl,--fix-cortex-a8 -Wl,-O1 -Wl,--has=
h-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now -lcutils -lglib-2.0 -lpth=
read -lxml2 -lz =C2=A0 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-=
z,relro,-z,now -lcutils -lglib-2.0 -lpthread -lxml2 -lz -Wl,--no-undefined =
/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sysroots/u=
sr/lib/libatomic.a /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/t=
mp-glibc/sysroots/usr/lib/arm-pokymllib32-linux-gnueabi/5.2.0/libgcc.a</div=
><div>| /local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/sy=
sroots/x86_64-linux/usr/libexec/arm-pokymllib32-linux-gnueabi/gcc/arm-pokym=
llib32-linux-gnueabi/5.2.0/ld: warning: creating a DT_TEXTREL in a shared o=
bject.</div><div>| collect2: error: ld returned 1 exit status</div><div>| m=
ake: *** [/local/mnt/workspace/bharath/OpenCL/AGL_NEW/poky/build/tmp-glibc/=
work-shared/compat_build_artifacts/target/product/obj/SHARED_LIBRARIES/libg=
sl_intermediates/LINKED/libgsl.so] Error 1</div><div><br></div><div><br></d=
iv><div>Regards</div><div>Bharath</div></div>

--94eb2c0715b4b6d916053c85c098--
