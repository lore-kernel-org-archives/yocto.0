Return-Path: <kernelraj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4392E00CC0; Fri,  9 Sep 2016 00:15:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kernelraj[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB24E00CBB
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 00:15:11 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id b187so15260631wme.1
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 00:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=jLPMLfIUYsrqo5pWuOGCqSdKgQJgK1bsf55uSJWQGag=;
	b=eFQw/2M5YL66ArR3tjVMpGTCR7EPFaqNiYqUqTA1hibSQFauq1+/WoVqirPONOHrfh
	S9vUR9z5JJcDAH9IGVWVkC2d2KUgyhnqLXUvAS7E4uF7dX8NyAhaR0i0pM9Dzct76zle
	Qutof3rFwYC/5I07NAgA1DlgpID68kHBZkXQfI+wDltJ4WadqxcqfUnHpz0/TE2++Zvp
	WoIg+TAbMk7eCOgGlk6mQaJeiysiEDslXtDcLU8erTCBZp2Jh46rImgnK+GxEggrzSo0
	PNZd+nNRZ0k/mpryydLuu63TeCtcbiD5x+TSECpJ4SAwXlWbCGWSgEFRIFR3ujFb7A/i
	RuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jLPMLfIUYsrqo5pWuOGCqSdKgQJgK1bsf55uSJWQGag=;
	b=IOAr4LdFWd6Agv8F2/rjEny5Fa9j6/XBjRnS1rMhPajS5zw+Hu7EoY05rnaffsBYAj
	EC0c+h1D+6FjcawgBghktol+cUZkMRlAM3kTeTgBbfd5DOBy4rGJ+seN9TvWTggGd6UY
	rABz4A/sAGwrV7LiGzt/xk8zLjaD4izIrpRhY/dI9mErxhlvGwFG59Dk9BFOAnwu0ekU
	gKF8N1BJLuWg2sm0+cQBKwssZMlKn5ompKr6I4DmFA02ziQOetmzRTJSoPQF+zJDKXi4
	oZzAkMgUPGdyQyzn7fb17Xcdv6qsVU5MBlyKinHRbRxYSxVuFqizZeo8bvnhyDa45BDH
	b+2Q==
X-Gm-Message-State: AE9vXwPOMY/8p6c+AwJaHSh+T6m7+L7/RAbBWeRZhjzGTQBksDPlaJB9Wt/tRMJMCIB+wPskooNeYxZVWhzvWg==
X-Received: by 10.194.145.101 with SMTP id st5mr1859637wjb.94.1473405310735;
	Fri, 09 Sep 2016 00:15:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.166.69 with HTTP; Fri, 9 Sep 2016 00:15:10 -0700 (PDT)
From: BHARATH RAJ <kernelraj@gmail.com>
Date: Fri, 9 Sep 2016 00:15:10 -0700
Message-ID: <CAJz+W7BLRn8p+AVmfYcr4=53vo4PSTzqxdmXioJGdWrKBLfdZw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 09 Sep 2016 06:40:31 -0700
Subject: [Yocot] : undefined reference to `__init_array_start' error.
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
X-List-Received-Date: Fri, 09 Sep 2016 07:15:15 -0000
Content-Type: multipart/alternative; boundary=089e01229b66281969053c0de87a

--089e01229b66281969053c0de87a
Content-Type: text/plain; charset=UTF-8

I am now trying to build one recipe on Yocto 2.0 based environent.

Howerver, I am seeng following error.I wonder if this is a known
problem and you already have workaround?


It says undefined reference to `__init_array_start'.



This error did not happen with Yocto 1.8 based build, So, it can be
toolchain issue


| aarch64-poky-linux-libtool: link: aarch64-poky-linux-g++
--sysroot=/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxx
 -fPIC -DPIC -shared -nostdlib
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx/usr/lib64/Scrt1.o
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx/usr/lib64/crti.o
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxx/usr/lib64/aarch64-poky-linux/5.2.0/crtbeginS.o
 .libs/libbinder_la-AppOpsManager.o .libs/libbinder_la-Binder.o
.libs/libbinder_la-BpBinder.o .libs/libbinder_la-BufferedTextOutput.o
.libs/libbinder_la-Debug.o .libs/libbinder_la-IAppOpsCallback.o
.libs/libbinder_la-IAppOpsService.o .libs/libbinder_la-IBatteryStats.o
.libs/libbinder_la-IInterface.o .libs/libbinder_la-IMemory.o
.libs/libbinder_la-IPCThreadState.o
.libs/libbinder_la-IPermissionController.o
.libs/libbinder_la-IProcessInfoService.o
.libs/libbinder_la-ProcessInfoService.o
.libs/libbinder_la-IServiceManager.o .libs/libbinder_la-MemoryDealer.o
.libs/libbinder_la-MemoryBase.o .libs/libbinder_la-MemoryHeapBase.o
.libs/libbinder_la-Parcel.o .libs/libbinder_la-PermissionCache.o
.libs/libbinder_la-ProcessState.o .libs/libbinder_la-Static.o
.libs/libbinder_la-TextOutput.o
-L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx/usr/lib64/libcutils.so
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64/liblog.so
-lpthread /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64/libutils.so
-L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/lib/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0
-L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx/lib64
-L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/libstdc++.so
-lm -lc -lgcc_s -lgcc
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0/crtendS.o
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/crtn.o
 --sysroot=/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxxx/
-g -fstack-protector-all -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
-Wl,-z -Wl,relro -Wl,-z -Wl,now   -Wl,-soname -Wl,libbinder.so.0 -o
.libs/libbinder.so.0.0.0
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/libc_nonshared.a(elf-init.oS):
In function `__libc_csu_init':
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87:
undefined reference to `__init_array_start'
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/lib64/libc_nonshared.a(elf-init.oS):
relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol
`__init_array_start' can not be used when making a shared object;
recompile with -fPIC
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87:
undefined reference to `__init_array_end'
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/libc_nonshared.a(elf-init.oS):
relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol
`__init_array_end' can not be used when making a shared object;
recompile with -fPIC
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87:
undefined reference to `__init_array_start'
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87:
undefined reference to `__init_array_end'
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:
.libs/libbinder.so.0.0.0: hidden symbol `__init_array_end' isn't
defined
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:
final link failed: Bad value
| collect2: error: ld returned 1 exit status
| make[2]: *** [libbinder.la] Error 1
| make[2]: Leaving directory
`/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build/libs/binder'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/temp/log.do_compile.13017)

Regards

Raj.

--089e01229b66281969053c0de87a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-t=
op:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px">I am now tryi=
ng to build one recipe on Yocto 2.0 based environent.
<br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;=
margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px">Howerver, I am seeng=
 following error.I wonder if this is a known problem and you already have w=
orkaround?</pre><pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-to=
p:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px"><br></pre><pre=
 style=3D"font-family:courier,&quot;courier new&quot;,monospace;font-size:1=
4px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:=
0px;color:rgb(0,0,0);line-height:19.6px">It says <span style=3D"line-height=
:19.6px">undefined reference to `__init_array_start&#39;.</span></pre><pre =
style=3D"font-family:courier,&quot;courier new&quot;,monospace;font-size:14=
px;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0=
px;color:rgb(0,0,0);line-height:19.6px"><span style=3D"line-height:19.6px">=
<br></span></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-t=
op:0px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px"><span style=
=3D"line-height:19.6px"><br></span></pre><pre style=3D"font-family:courier,=
&quot;courier new&quot;,monospace;font-size:14px;white-space:pre-wrap;word-=
wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-heig=
ht:19.6px"><pre style=3D"font-family:courier,&quot;courier new&quot;,monosp=
ace;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:=
0px;line-height:19.6px">This error did not happen with Yocto 1.8 based buil=
d, So, it can be toolchain issue</pre></pre><pre style=3D"font-family:couri=
er,&quot;courier new&quot;,monospace;font-size:14px;white-space:pre-wrap;wo=
rd-wrap:break-word;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0);line-h=
eight:19.6px"><br></pre><pre style=3D"word-wrap:break-word;margin-top:0px;m=
argin-bottom:0px"><p class=3D"MsoNormal"><font color=3D"#000000" face=3D"co=
urier, courier new, monospace"><span style=3D"font-size:14px;line-height:19=
.6px;white-space:pre-wrap">| aarch64-poky-linux-libtool: link: aarch64-poky=
-linux-g++  --sysroot=3D/local/mnt/workspace/narasimha/AGL_NEW/poky/build/t=
mp-glibc/sysroot/xxxxx  -fPIC -DPIC -shared -nostdlib /local/mnt/workspace/=
narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx/usr/lib64/Scrt1.o /l=
ocal/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx/us=
r/lib64/crti.o /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/=
sysroots/xxxx/usr/lib64/aarch64-poky-linux/5.2.0/crtbeginS.o  .libs/libbind=
er_la-AppOpsManager.o .libs/libbinder_la-Binder.o .libs/libbinder_la-BpBind=
er.o .libs/libbinder_la-BufferedTextOutput.o .libs/libbinder_la-Debug.o .li=
bs/libbinder_la-IAppOpsCallback.o .libs/libbinder_la-IAppOpsService.o .libs=
/libbinder_la-IBatteryStats.o .libs/libbinder_la-IInterface.o .libs/libbind=
er_la-IMemory.o .libs/libbinder_la-IPCThreadState.o .libs/libbinder_la-IPer=
missionController.o .libs/libbinder_la-IProcessInfoService.o .libs/libbinde=
r_la-ProcessInfoService.o .libs/libbinder_la-IServiceManager.o .libs/libbin=
der_la-MemoryDealer.o .libs/libbinder_la-MemoryBase.o .libs/libbinder_la-Me=
moryHeapBase.o .libs/libbinder_la-Parcel.o .libs/libbinder_la-PermissionCac=
he.o .libs/libbinder_la-ProcessState.o .libs/libbinder_la-Static.o .libs/li=
bbinder_la-TextOutput.o   -L/local/mnt/workspace/narasimha/AGL_NEW/poky/bui=
ld/tmp-glibc/sysroot/xxxxxx/usr/lib64 /local/mnt/workspace/narasimha/AGL_NE=
W/poky/build/tmp-glibc/sysroots/xxxxxx/usr/lib64/libcutils.so /local/mnt/wo=
rkspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64/lib=
log.so -lpthread /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glib=
c/sysroot/xxxxxx/usr/lib64/libutils.so -L/local/mnt/workspace/narasimha/AGL=
_NEW/poky/build/tmp-glibc/sysroots/x86_64-linux/usr/lib/aarch64-poky-linux/=
gcc/aarch64-poky-linux/5.2.0 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/=
build/tmp-glibc/sysroots/xxxxxx/lib64 -L/local/mnt/workspace/narasimha/AGL_=
NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.=
0 /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxx=
xxx/usr/lib64/libstdc++.so -lm -lc -lgcc_s -lgcc /local/mnt/workspace/naras=
imha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-l=
inux/5.2.0/crtendS.o /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-=
glibc/sysroots/xxxxxxx/usr/lib64/crtn.o  --sysroot=3D/local/mnt/workspace/n=
arasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxxx/ -g -fstack-protect=
or-all -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z -Wl,relro -Wl,=
-z -Wl,now   -Wl,-soname -Wl,libbinder.so.0 -o .libs/libbinder.so.0.0.0
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxx=
xxx/usr/lib64/libc_nonshared.a(elf-init.oS): In function `__libc_csu_init&#=
39;:
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-=
poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `__i=
nit_array_start&#39;
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_=
64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: /l=
ocal/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/=
lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_PG_HI21 =
against external symbol `__init_array_start&#39; can not be used when makin=
g a shared object; recompile with -fPIC
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-=
poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `__i=
nit_array_end&#39;
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_=
64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: /l=
ocal/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/=
usr/lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_PG_H=
I21 against external symbol `__init_array_end&#39; can not be used when mak=
ing a shared object; recompile with -fPIC
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-=
poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `__i=
nit_array_start&#39;
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-=
poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `__i=
nit_array_end&#39;
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_=
64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: .l=
ibs/libbinder.so.0.0.0: hidden symbol `__init_array_end&#39; isn&#39;t defi=
ned
| /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x86_=
64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: fi=
nal link failed: Bad value
| collect2: error: ld returned 1 exit status
| make[2]: *** [<a href=3D"http://libbinder.la">libbinder.la</a>] Error 1
| make[2]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/poky/b=
uild/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build/libs/=
binder&#39;
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/poky/b=
uild/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build&#39;
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /local/mnt/wor=
kspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/nativ=
e-frameworks/git-r0/temp/log.do_compile.13017)
</span></font></p><div style=3D"color:rgb(0,0,0);font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;line-height:19.6px;white-space:p=
re-wrap"><br></div><font color=3D"#000000" face=3D"courier, courier new, mo=
nospace"><span style=3D"font-size:14px;line-height:19.6px;white-space:pre-w=
rap">Regards</span></font></pre><pre style=3D"word-wrap:break-word;margin-t=
op:0px;margin-bottom:0px"><font color=3D"#000000" face=3D"courier, courier =
new, monospace"><span style=3D"font-size:14px;line-height:19.6px;white-spac=
e:pre-wrap">Raj.

</span></font></pre></div>

--089e01229b66281969053c0de87a--
