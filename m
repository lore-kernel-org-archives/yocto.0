Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD19E00404; Fri,  9 Sep 2016 06:47:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE74CE002AC
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 06:47:06 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id y2so142405237oie.0
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 06:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E6A4d0WZ9+MVD6oh8W+SveZOmOVoy4UYZNZmAxmXgyw=;
	b=ehhZNTM2LNm86LCh9jtgwmcoOXr/ztVrWK4uRc88+iLZFwn0nKjhJw5I81M8EreqDW
	HtWzW6DU7vOpsZE0+4kRQEnOeeD20Lt5RPHPsqgKGbzx0fsdJLqPOS3tdA5rYKQztekm
	bHtAZ4CqFRhG+PtBVZJrU4NZlDtQChBCmuzkhAZ3TdrTxelMbLSH6fRIfpqakbNqwA10
	WXkitr9uCEnluq5Cnyky648Jsrb9dBqfov3yL1muuG7MXq9zDV58J9W/RTDbSpM/ITD5
	QlskUBUGtoQMOEZK9on5C8H6ci78k8aD8PBPMcjBU/6CVWZ79FCWVgAeOQa5DqTYkmmj
	fJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E6A4d0WZ9+MVD6oh8W+SveZOmOVoy4UYZNZmAxmXgyw=;
	b=BaV7/Iiss0KVnmsEfr07cOnM+ZT/P+nN1zHtqC2Zv1MnPPlPHn4H+bzBcTgdpiS0Xb
	LocPoucecKPZ1CBYpC/JZm0VGh6s/FDS3KCftyBEGdOXWDcC7TZZugFTD09NqZhspcva
	n6/7TOU2OoVFx4ATtBci4o1tzS+IBzYZve+YjliRow/0CwCbLnnWjqIqBvhGSY2u4gRN
	BvoqBuClt3r1zuVZ4aHdaYiXI3ShjwbE1iKmZ9n3OY57JoDYZYTu7Ihb3c3D6UNAbj76
	E/aVbHbe3RII5XD3aWnLkuXTXLqgBEk3XsMaHO3gBDG042UxJZPY+oCkibolVgCNXTdy
	nWhw==
X-Gm-Message-State: AE9vXwPf64uajWWS7PhgwuJahVRDW4T+XoGVAk4z2xA5DiAQv0UdKTqzu/YiHlPNZ0+eo1mGX274TJg208XhdfB7
X-Received: by 10.202.56.85 with SMTP id f82mr6267141oia.107.1473428825403;
	Fri, 09 Sep 2016 06:47:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 9 Sep 2016 06:46:45 -0700 (PDT)
In-Reply-To: <CAJz+W7BLRn8p+AVmfYcr4=53vo4PSTzqxdmXioJGdWrKBLfdZw@mail.gmail.com>
References: <CAJz+W7BLRn8p+AVmfYcr4=53vo4PSTzqxdmXioJGdWrKBLfdZw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Sep 2016 14:46:45 +0100
Message-ID: <CAJTo0LaVyK3Oy6u0J7o4yNzfe=O3nhqOrc-9bzouqwGrxu1+TQ@mail.gmail.com>
To: BHARATH RAJ <kernelraj@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Yocot] : undefined reference to `__init_array_start' error.
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
X-List-Received-Date: Fri, 09 Sep 2016 13:47:11 -0000
Content-Type: multipart/alternative; boundary=001a113cc266bd8e9b053c136161

--001a113cc266bd8e9b053c136161
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is because your distro has enabled the security options, but
native-frameworks has bad link lines that work without security flags more
via luck than anything else.

You'll need to fix the linking order used to build libbinder.

Ross

On 9 September 2016 at 08:15, BHARATH RAJ <kernelraj@gmail.com> wrote:

> I am now trying to build one recipe on Yocto 2.0 based environent.
>
> Howerver, I am seeng following error.I wonder if this is a known problem =
and you already have workaround?
>
>
> It says undefined reference to `__init_array_start'.
>
>
>
> This error did not happen with Yocto 1.8 based build, So, it can be toolc=
hain issue
>
>
> | aarch64-poky-linux-libtool: link: aarch64-poky-linux-g++  --sysroot=3D/=
local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxx  -=
fPIC -DPIC -shared -nostdlib /local/mnt/workspace/narasimha/AGL_NEW/poky/bu=
ild/tmp-glibc/sysroots/xxxxxx/usr/lib64/Scrt1.o /local/mnt/workspace/narasi=
mha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx/usr/lib64/crti.o /local/mnt=
/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxx/usr/lib64/a=
arch64-poky-linux/5.2.0/crtbeginS.o  .libs/libbinder_la-AppOpsManager.o .li=
bs/libbinder_la-Binder.o .libs/libbinder_la-BpBinder.o .libs/libbinder_la-B=
ufferedTextOutput.o .libs/libbinder_la-Debug.o .libs/libbinder_la-IAppOpsCa=
llback.o .libs/libbinder_la-IAppOpsService.o .libs/libbinder_la-IBatterySta=
ts.o .libs/libbinder_la-IInterface.o .libs/libbinder_la-IMemory.o .libs/lib=
binder_la-IPCThreadState.o .libs/libbinder_la-IPermissionController.o .libs=
/libbinder_la-IProcessInfoService.o .libs/libbinder_la-ProcessInfoService.o=
 .libs/libbinder_la-IServiceManager.o .libs/libbinder_la-MemoryDealer.o .li=
bs/libbinder_la-MemoryBase.o .libs/libbinder_la-MemoryHeapBase.o .libs/libb=
inder_la-Parcel.o .libs/libbinder_la-PermissionCache.o .libs/libbinder_la-P=
rocessState.o .libs/libbinder_la-Static.o .libs/libbinder_la-TextOutput.o  =
 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxx=
xx/usr/lib64 /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sy=
sroots/xxxxxx/usr/lib64/libcutils.so /local/mnt/workspace/narasimha/AGL_NEW=
/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64/liblog.so -lpthread /local/m=
nt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib6=
4/libutils.so -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc=
/sysroots/x86_64-linux/usr/lib/aarch64-poky-linux/gcc/aarch64-poky-linux/5.=
2.0 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/=
xxxxxx/lib64 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/=
sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0 /local/mnt/workspace/na=
rasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/libstdc++.s=
o -lm -lc -lgcc_s -lgcc /local/mnt/workspace/narasimha/AGL_NEW/poky/build/t=
mp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0/crtendS.o /loc=
al/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/us=
r/lib64/crtn.o  --sysroot=3D/local/mnt/workspace/narasimha/AGL_NEW/poky/bui=
ld/tmp-glibc/sysroots/xxxxxxxx/ -g -fstack-protector-all -Wl,-O1 -Wl,--hash=
-style=3Dgnu -Wl,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now   -Wl,-soname =
-Wl,libbinder.so.0 -o .libs/libbinder.so.0.0.0
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xx=
xxxxx/usr/lib64/libc_nonshared.a(elf-init.oS): In function `__libc_csu_init=
':
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch6=
4-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `_=
_init_array_start'
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x8=
6_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: =
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx=
x/lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_PG_HI2=
1 against external symbol `__init_array_start' can not be used when making =
a shared object; recompile with -fPIC
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch6=
4-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `_=
_init_array_end'
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x8=
6_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: =
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxx=
x/usr/lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_PG=
_HI21 against external symbol `__init_array_end' can not be used when makin=
g a shared object; recompile with -fPIC
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch6=
4-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `_=
_init_array_start'
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch6=
4-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `_=
_init_array_end'
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x8=
6_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: =
.libs/libbinder.so.0.0.0: hidden symbol `__init_array_end' isn't defined
> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x8=
6_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld: =
final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [libbinder.la] Error 1
> | make[2]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/poky=
/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build/lib=
s/binder'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/poky=
/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at /local/mnt/w=
orkspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/nat=
ive-frameworks/git-r0/temp/log.do_compile.13017)
>
> Regards
>
> Raj.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113cc266bd8e9b053c136161
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is because your distro has enabled the security optio=
ns, but native-frameworks has bad link lines that work without security fla=
gs more via luck than anything else.<div><br></div><div>You&#39;ll need to =
fix the linking order used to build libbinder.</div><div><br></div><div>Ros=
s</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 9=
 September 2016 at 08:15, BHARATH RAJ <span dir=3D"ltr">&lt;<a href=3D"mail=
to:kernelraj@gmail.com" target=3D"_blank">kernelraj@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><pre style=3D"f=
ont-family:courier,&quot;courier new&quot;,monospace;font-size:14px;white-s=
pace:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;color:r=
gb(0,0,0);line-height:19.6px">I am now trying to build one recipe on Yocto =
2.0 based environent.
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
-linux-g++  --sysroot=3D/local/mnt/<wbr>workspace/narasimha/AGL_NEW/<wbr>po=
ky/build/tmp-glibc/sysroot/<wbr>xxxxx  -fPIC -DPIC -shared -nostdlib /local=
/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xx=
xxxx/usr/<wbr>lib64/Scrt1.o /local/mnt/workspace/<wbr>narasimha/AGL_NEW/pok=
y/build/<wbr>tmp-glibc/sysroots/xxxxx/usr/<wbr>lib64/crti.o /local/mnt/work=
space/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxx/usr/<w=
br>lib64/aarch64-poky-linux/5.2.<wbr>0/crtbeginS.o  .libs/libbinder_la-<wbr=
>AppOpsManager.o .libs/libbinder_la-Binder.o .libs/libbinder_la-BpBinder.o =
.libs/libbinder_la-<wbr>BufferedTextOutput.o .libs/libbinder_la-Debug.o .li=
bs/libbinder_la-<wbr>IAppOpsCallback.o .libs/libbinder_la-<wbr>IAppOpsServi=
ce.o .libs/libbinder_la-<wbr>IBatteryStats.o .libs/libbinder_la-IInterface.=
<wbr>o .libs/libbinder_la-IMemory.o .libs/libbinder_la-<wbr>IPCThreadState.=
o .libs/libbinder_la-<wbr>IPermissionController.o .libs/libbinder_la-<wbr>I=
ProcessInfoService.o .libs/libbinder_la-<wbr>ProcessInfoService.o .libs/lib=
binder_la-<wbr>IServiceManager.o .libs/libbinder_la-<wbr>MemoryDealer.o .li=
bs/libbinder_la-MemoryBase.<wbr>o .libs/libbinder_la-<wbr>MemoryHeapBase.o =
.libs/libbinder_la-Parcel.o .libs/libbinder_la-<wbr>PermissionCache.o .libs=
/libbinder_la-<wbr>ProcessState.o .libs/libbinder_la-Static.o .libs/libbind=
er_la-TextOutput.<wbr>o   -L/local/mnt/workspace/<wbr>narasimha/AGL_NEW/pok=
y/build/<wbr>tmp-glibc/sysroot/xxxxxx/usr/<wbr>lib64 /local/mnt/workspace/<=
wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxx/usr/<wbr>li=
b64/libcutils.so /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wb=
r>tmp-glibc/sysroot/xxxxxx/usr/<wbr>lib64/liblog.so -lpthread /local/mnt/wo=
rkspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroot/xxxxxx/usr=
/<wbr>lib64/libutils.so -L/local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/=
build/<wbr>tmp-glibc/sysroots/x86_64-<wbr>linux/usr/lib/aarch64-poky-<wbr>l=
inux/gcc/aarch64-poky-linux/<wbr>5.2.0 -L/local/mnt/workspace/<wbr>narasimh=
a/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxx/<wbr>lib64 -L/local/mnt=
/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxx=
x/<wbr>usr/lib64/aarch64-poky-linux/<wbr>5.2.0 /local/mnt/workspace/<wbr>na=
rasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxxx/<wbr>usr/lib64/l=
ibstdc++.so -lm -lc -lgcc_s -lgcc /local/mnt/workspace/<wbr>narasimha/AGL_N=
EW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxxx/<wbr>usr/lib64/aarch64-poky-l=
inux/<wbr>5.2.0/crtendS.o /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/=
build/<wbr>tmp-glibc/sysroots/xxxxxxx/<wbr>usr/lib64/crtn.o  --sysroot=3D/l=
ocal/mnt/<wbr>workspace/narasimha/AGL_NEW/<wbr>poky/build/tmp-glibc/sysroot=
s/<wbr>xxxxxxxx/ -g -fstack-protector-all -Wl,-O1 -Wl,--hash-style=3Dgnu -W=
l,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now   -Wl,-soname -Wl,libbinder.s=
o.0 -o .libs/libbinder.so.0.0.0
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sys=
roots/xxxxxxx/<wbr>usr/lib64/libc_nonshared.a(<wbr>elf-init.oS): In functio=
n `__libc_csu_init&#39;:
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/wor=
k/aarch64-poky-<wbr>linux/glibc/2.22-r0/git/csu/<wbr>elf-init.c:87: undefin=
ed reference to `__init_array_start&#39;
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sys=
roots/x86_64-<wbr>linux/usr/libexec/aarch64-<wbr>poky-linux/gcc/aarch64-pok=
y-<wbr>linux/5.2.0/ld: /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/bui=
ld/<wbr>tmp-glibc/sysroots/xxxxxxx/<wbr>lib64/libc_nonshared.a(elf-<wbr>ini=
t.oS): relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol `__ini=
t_array_start&#39; can not be used when making a shared object; recompile w=
ith -fPIC
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/wor=
k/aarch64-poky-<wbr>linux/glibc/2.22-r0/git/csu/<wbr>elf-init.c:87: undefin=
ed reference to `__init_array_end&#39;
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sys=
roots/x86_64-<wbr>linux/usr/libexec/aarch64-<wbr>poky-linux/gcc/aarch64-pok=
y-<wbr>linux/5.2.0/ld: /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/bui=
ld/<wbr>tmp-glibc/sysroots/xxxxxxx/<wbr>usr/lib64/libc_nonshared.a(<wbr>elf=
-init.oS): relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol `_=
_init_array_end&#39; can not be used when making a shared object; recompile=
 with -fPIC
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/wor=
k/aarch64-poky-<wbr>linux/glibc/2.22-r0/git/csu/<wbr>elf-init.c:87: undefin=
ed reference to `__init_array_start&#39;
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/wor=
k/aarch64-poky-<wbr>linux/glibc/2.22-r0/git/csu/<wbr>elf-init.c:87: undefin=
ed reference to `__init_array_end&#39;
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sys=
roots/x86_64-<wbr>linux/usr/libexec/aarch64-<wbr>poky-linux/gcc/aarch64-pok=
y-<wbr>linux/5.2.0/ld: .libs/libbinder.so.0.0.0: hidden symbol `__init_arra=
y_end&#39; isn&#39;t defined
| /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sys=
roots/x86_64-<wbr>linux/usr/libexec/aarch64-<wbr>poky-linux/gcc/aarch64-pok=
y-<wbr>linux/5.2.0/ld: final link failed: Bad value
| collect2: error: ld returned 1 exit status
| make[2]: *** [<a href=3D"http://libbinder.la" target=3D"_blank">libbinder=
.la</a>] Error 1
| make[2]: Leaving directory `/local/mnt/workspace/<wbr>narasimha/AGL_NEW/p=
oky/build/<wbr>tmp-glibc/work/aarch64-poky-<wbr>linux/native-frameworks/git=
-<wbr>r0/build/libs/binder&#39;
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/local/mnt/workspace/<wbr>narasimha/AGL_NEW/p=
oky/build/<wbr>tmp-glibc/work/aarch64-poky-<wbr>linux/native-frameworks/git=
-<wbr>r0/build&#39;
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /local/mnt/wor=
kspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/work/aarch64-poky-<=
wbr>linux/native-frameworks/git-<wbr>r0/temp/log.do_compile.13017)
</span></font></p><div style=3D"color:rgb(0,0,0);font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;line-height:19.6px;white-space:p=
re-wrap"><br></div><font color=3D"#000000" face=3D"courier, courier new, mo=
nospace"><span style=3D"font-size:14px;line-height:19.6px;white-space:pre-w=
rap">Regards</span></font></pre><span class=3D"HOEnZb"><font color=3D"#8888=
88"><pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px"><f=
ont color=3D"#000000" face=3D"courier, courier new, monospace"><span style=
=3D"font-size:14px;line-height:19.6px;white-space:pre-wrap">Raj.

</span></font></pre></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113cc266bd8e9b053c136161--
