Return-Path: <kernelraj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D4FE004F1; Fri,  9 Sep 2016 10:09:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kernelraj[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C29BE0043B
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 10:09:38 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id b187so42318949wme.1
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 10:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DV/KY9BQSLNElQIaz5qBibIxexNX3O95O7ZFT+Mn2c4=;
	b=j2lEPl7WJJFA5AKAnUmy8VvjFNW+6PErT75KNUK9U6gr0MgH/zJsZVIxmBHYNQO8nz
	J5P6F/568DBT3O8DLvxzc6/IhvbDDudfRu/EtkhMlv4i7G4nVcsFEuPFMduSJStxoFih
	M8VS6SyWL8RwxJmyWJR9X2UxZ2RGeYVgZetvpIFhuJH7c+btedlCrn6D3HKBvpI7V0IS
	sWr4cMXXSk4+D0qiy5rLdoE+TyC4qQiRObf33pSUi7l2jLgO30Ngi3yfHv8PFX5ta7uY
	BB4caz/lj9fNvsOhiWet+/xJfISR2lOKEHHKDQ18OygBg2Ci1sTkcKAwhKXWMJvPJLDU
	ZylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DV/KY9BQSLNElQIaz5qBibIxexNX3O95O7ZFT+Mn2c4=;
	b=ZQrVa2H2giDU/sf2pLByv6/pMhNtOPkVuLvacL0TZUBQDdJrjp2XPWts+hfCtYo3Ut
	n0pmSyMuIrLnW3qDhqaC8qcNfRp0ra4JUsNcYpDVeq5EJtLEkR6YbLXQDXzEx/wEkWKk
	MK+x+MgrS6DZq+LZvCMMNqVSskqlW2ofA/6huvSXRex9l5Va67Lf9hFKxkeWrwN0SU/m
	ZuwiBlOnAAn/xbAU1VcPd4muTb6QC7EQ0ekVVJ5CT6l1HPrDuAhbT43yzvNX5X/zsXEu
	jck8gL2tKzYjw0sGoJqD5w6aKk+rTBX7sh01E4j4oMckGWfBFtl9RDj60wHT0iw10+iF
	Z2Gg==
X-Gm-Message-State: AE9vXwNv0hvsZ595KxvsOclPDiCctdgHFt/ChXpUc2yujc3UWVCM7EJl3ENU6jSvAaH7Ecn6s9c871o4/AXBaQ==
X-Received: by 10.28.93.20 with SMTP id r20mr4173676wmb.89.1473440977875; Fri,
	09 Sep 2016 10:09:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.166.69 with HTTP; Fri, 9 Sep 2016 10:09:37 -0700 (PDT)
In-Reply-To: <CAJTo0LaVyK3Oy6u0J7o4yNzfe=O3nhqOrc-9bzouqwGrxu1+TQ@mail.gmail.com>
References: <CAJz+W7BLRn8p+AVmfYcr4=53vo4PSTzqxdmXioJGdWrKBLfdZw@mail.gmail.com>
	<CAJTo0LaVyK3Oy6u0J7o4yNzfe=O3nhqOrc-9bzouqwGrxu1+TQ@mail.gmail.com>
From: BHARATH RAJ <kernelraj@gmail.com>
Date: Fri, 9 Sep 2016 10:09:37 -0700
Message-ID: <CAJz+W7CsFNz8hkBOOkhU3C0m3Cnv+PbipDqCfgbtwrbE4-Kt=Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Mon, 12 Sep 2016 07:00:21 -0700
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
X-List-Received-Date: Fri, 09 Sep 2016 17:09:42 -0000
Content-Type: multipart/alternative; boundary=001a1145b660157654053c163664

--001a1145b660157654053c163664
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Thanks for your reply,it's working for me ..:)

Regards
Bharath

On Fri, Sep 9, 2016 at 6:46 AM, Burton, Ross <ross.burton@intel.com> wrote:

> This is because your distro has enabled the security options, but
> native-frameworks has bad link lines that work without security flags mor=
e
> via luck than anything else.
>
> You'll need to fix the linking order used to build libbinder.
>
> Ross
>
> On 9 September 2016 at 08:15, BHARATH RAJ <kernelraj@gmail.com> wrote:
>
>> I am now trying to build one recipe on Yocto 2.0 based environent.
>>
>> Howerver, I am seeng following error.I wonder if this is a known problem=
 and you already have workaround?
>>
>>
>> It says undefined reference to `__init_array_start'.
>>
>>
>>
>> This error did not happen with Yocto 1.8 based build, So, it can be tool=
chain issue
>>
>>
>> | aarch64-poky-linux-libtool: link: aarch64-poky-linux-g++  --sysroot=3D=
/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxx  =
-fPIC -DPIC -shared -nostdlib /local/mnt/workspace/narasimha/AGL_NEW/poky/b=
uild/tmp-glibc/sysroots/xxxxxx/usr/lib64/Scrt1.o /local/mnt/workspace/naras=
imha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx/usr/lib64/crti.o /local/mn=
t/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxx/usr/lib64/=
aarch64-poky-linux/5.2.0/crtbeginS.o  .libs/libbinder_la-AppOpsManager.o .l=
ibs/libbinder_la-Binder.o .libs/libbinder_la-BpBinder.o .libs/libbinder_la-=
BufferedTextOutput.o .libs/libbinder_la-Debug.o .libs/libbinder_la-IAppOpsC=
allback.o .libs/libbinder_la-IAppOpsService.o .libs/libbinder_la-IBatterySt=
ats.o .libs/libbinder_la-IInterface.o .libs/libbinder_la-IMemory.o .libs/li=
bbinder_la-IPCThreadState.o .libs/libbinder_la-IPermissionController.o .lib=
s/libbinder_la-IProcessInfoService.o .libs/libbinder_la-ProcessInfoService.=
o .libs/libbinder_la-IServiceManager.o .libs/libbinder_la-MemoryDealer.o .l=
ibs/libbinder_la-MemoryBase.o .libs/libbinder_la-MemoryHeapBase.o .libs/lib=
binder_la-Parcel.o .libs/libbinder_la-PermissionCache.o .libs/libbinder_la-=
ProcessState.o .libs/libbinder_la-Static.o .libs/libbinder_la-TextOutput.o =
  -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxx=
xxx/usr/lib64 /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/s=
ysroots/xxxxxx/usr/lib64/libcutils.so /local/mnt/workspace/narasimha/AGL_NE=
W/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib64/liblog.so -lpthread /local/=
mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroot/xxxxxx/usr/lib=
64/libutils.so -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glib=
c/sysroots/x86_64-linux/usr/lib/aarch64-poky-linux/gcc/aarch64-poky-linux/5=
.2.0 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots=
/xxxxxx/lib64 -L/local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc=
/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0 /local/mnt/workspace/n=
arasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/usr/lib64/libstdc++.=
so -lm -lc -lgcc_s -lgcc /local/mnt/workspace/narasimha/AGL_NEW/poky/build/=
tmp-glibc/sysroots/xxxxxxx/usr/lib64/aarch64-poky-linux/5.2.0/crtendS.o /lo=
cal/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxxxx/u=
sr/lib64/crtn.o  --sysroot=3D/local/mnt/workspace/narasimha/AGL_NEW/poky/bu=
ild/tmp-glibc/sysroots/xxxxxxxx/ -g -fstack-protector-all -Wl,-O1 -Wl,--has=
h-style=3Dgnu -Wl,--as-needed -Wl,-z -Wl,relro -Wl,-z -Wl,now   -Wl,-soname=
 -Wl,libbinder.so.0 -o .libs/libbinder.so.0.0.0
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x=
xxxxxx/usr/lib64/libc_nonshared.a(elf-init.oS): In function `__libc_csu_ini=
t':
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch=
64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `=
__init_array_start'
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x=
86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:=
 /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx=
xx/lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_PG_HI=
21 against external symbol `__init_array_start' can not be used when making=
 a shared object; recompile with -fPIC
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch=
64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `=
__init_array_end'
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x=
86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:=
 /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/xxxxx=
xx/usr/lib64/libc_nonshared.a(elf-init.oS): relocation R_AARCH64_ADR_PREL_P=
G_HI21 against external symbol `__init_array_end' can not be used when maki=
ng a shared object; recompile with -fPIC
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch=
64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `=
__init_array_start'
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch=
64-poky-linux/glibc/2.22-r0/git/csu/elf-init.c:87: undefined reference to `=
__init_array_end'
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x=
86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:=
 .libs/libbinder.so.0.0.0: hidden symbol `__init_array_end' isn't defined
>> | /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/x=
86_64-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/5.2.0/ld:=
 final link failed: Bad value
>> | collect2: error: ld returned 1 exit status
>> | make[2]: *** [libbinder.la] Error 1
>> | make[2]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/pok=
y/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build/li=
bs/binder'
>> | make[1]: *** [all-recursive] Error 1
>> | make[1]: Leaving directory `/local/mnt/workspace/narasimha/AGL_NEW/pok=
y/build/tmp-glibc/work/aarch64-poky-linux/native-frameworks/git-r0/build'
>> | make: *** [all] Error 2
>> | ERROR: oe_runmake failed
>> | ERROR: Function failed: do_compile (log file is located at /local/mnt/=
workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/work/aarch64-poky-linux/na=
tive-frameworks/git-r0/temp/log.do_compile.13017)
>>
>> Regards
>>
>> Raj.
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a1145b660157654053c163664
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>Thanks for your reply,it&#39;s=
 working for me ..:)</div><div><br></div><div>Regards</div><div>Bharath</di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, S=
ep 9, 2016 at 6:46 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">This is becau=
se your distro has enabled the security options, but native-frameworks has =
bad link lines that work without security flags more via luck than anything=
 else.<div><br></div><div>You&#39;ll need to fix the linking order used to =
build libbinder.</div><div><br></div><div>Ross</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">On 9 Septem=
ber 2016 at 08:15, BHARATH RAJ <span dir=3D"ltr">&lt;<a href=3D"mailto:kern=
elraj@gmail.com" target=3D"_blank">kernelraj@gmail.com</a>&gt;</span> wrote=
:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div=
 dir=3D"ltr"><pre style=3D"font-family:courier,&quot;courier new&quot;,mono=
space;font-size:14px;white-space:pre-wrap;word-wrap:break-word;margin-top:0=
px;margin-bottom:0px;color:rgb(0,0,0);line-height:19.6px">I am now trying t=
o build one recipe on Yocto 2.0 based environent.
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
-linux-g++  --sysroot=3D/local/mnt/workspace<wbr>/narasimha/AGL_NEW/poky/bu=
ild/<wbr>tmp-glibc/sysroot/xxxxx  -fPIC -DPIC -shared -nostdlib /local/mnt/=
workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sysroots/xxxxxx/=
usr/lib64/<wbr>Scrt1.o /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/bui=
ld/tmp-glibc/<wbr>sysroots/xxxxx/usr/lib64/crti.<wbr>o /local/mnt/workspace=
/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sysroots/xxxx/usr/lib64/<=
wbr>aarch64-poky-linux/5.2.0/<wbr>crtbeginS.o  .libs/libbinder_la-AppOpsMan=
ag<wbr>er.o .libs/libbinder_la-Binder.o .libs/libbinder_la-BpBinder.o .libs=
/libbinder_la-BufferedTex<wbr>tOutput.o .libs/libbinder_la-Debug.o .libs/li=
bbinder_la-IAppOpsCall<wbr>back.o .libs/libbinder_la-IAppOpsServ<wbr>ice.o =
.libs/libbinder_la-IBatterySta<wbr>ts.o .libs/libbinder_la-IInterface.<wbr>=
o .libs/libbinder_la-IMemory.o .libs/libbinder_la-IPCThreadSt<wbr>ate.o .li=
bs/libbinder_la-IPermission<wbr>Controller.o .libs/libbinder_la-IProcessInf=
<wbr>oService.o .libs/libbinder_la-ProcessInfo<wbr>Service.o .libs/libbinde=
r_la-IServiceMan<wbr>ager.o .libs/libbinder_la-MemoryDeale<wbr>r.o .libs/li=
bbinder_la-MemoryBase.<wbr>o .libs/libbinder_la-MemoryHeapB<wbr>ase.o .libs=
/libbinder_la-Parcel.o .libs/libbinder_la-PermissionC<wbr>ache.o .libs/libb=
inder_la-ProcessStat<wbr>e.o .libs/libbinder_la-Static.o .libs/libbinder_la=
-TextOutput.<wbr>o   -L/local/mnt/workspace/narasim<wbr>ha/AGL_NEW/poky/bui=
ld/tmp-<wbr>glibc/sysroot/xxxxxx/usr/lib64 /local/mnt/workspace/narasimha<w=
br>/AGL_NEW/poky/build/tmp-glibc/<wbr>sysroots/xxxxxx/usr/lib64/<wbr>libcut=
ils.so /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wb=
r>sysroot/xxxxxx/usr/lib64/<wbr>liblog.so -lpthread /local/mnt/workspace/na=
rasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sysroot/xxxxxx/usr/lib64/<wb=
r>libutils.so -L/local/mnt/workspace/narasim<wbr>ha/AGL_NEW/poky/build/tmp-=
<wbr>glibc/sysroots/x86_64-linux/<wbr>usr/lib/aarch64-poky-linux/<wbr>gcc/a=
arch64-poky-linux/5.2.0 -L/local/mnt/workspace/narasim<wbr>ha/AGL_NEW/poky/=
build/tmp-<wbr>glibc/sysroots/xxxxxx/lib64 -L/local/mnt/workspace/narasim<w=
br>ha/AGL_NEW/poky/build/tmp-<wbr>glibc/sysroots/xxxxxxx/usr/<wbr>lib64/aar=
ch64-poky-linux/5.2.0 /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/buil=
d/tmp-glibc/<wbr>sysroots/xxxxxxx/usr/lib64/<wbr>libstdc++.so -lm -lc -lgcc=
_s -lgcc /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<=
wbr>sysroots/xxxxxxx/usr/lib64/<wbr>aarch64-poky-linux/5.2.0/<wbr>crtendS.o=
 /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sysr=
oots/xxxxxxx/usr/lib64/<wbr>crtn.o  --sysroot=3D/local/mnt/workspace<wbr>/n=
arasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/xxxxxxxx/ -g -fstack-pr=
otector-all -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z -Wl,relro=
 -Wl,-z -Wl,now   -Wl,-soname -Wl,libbinder.so.0 -o .libs/libbinder.so.0.0.=
0
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sys=
roots/xxxxxxx/usr/lib64/<wbr>libc_nonshared.a(elf-init.oS): In function `__=
libc_csu_init&#39;:
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>wor=
k/aarch64-poky-linux/glibc/<wbr>2.22-r0/git/csu/elf-init.c:87: undefined re=
ference to `__init_array_start&#39;
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sys=
roots/x86_64-linux/usr/<wbr>libexec/aarch64-poky-linux/<wbr>gcc/aarch64-pok=
y-linux/5.2.0/<wbr>ld: /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/bui=
ld/tmp-glibc/<wbr>sysroots/xxxxxxx/lib64/libc_<wbr>nonshared.a(elf-init.oS)=
: relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol `__init_arr=
ay_start&#39; can not be used when making a shared object; recompile with -=
fPIC
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>wor=
k/aarch64-poky-linux/glibc/<wbr>2.22-r0/git/csu/elf-init.c:87: undefined re=
ference to `__init_array_end&#39;
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sys=
roots/x86_64-linux/usr/<wbr>libexec/aarch64-poky-linux/<wbr>gcc/aarch64-pok=
y-linux/5.2.0/<wbr>ld: /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/bui=
ld/tmp-glibc/<wbr>sysroots/xxxxxxx/usr/lib64/<wbr>libc_nonshared.a(elf-init=
.oS): relocation R_AARCH64_ADR_PREL_PG_HI21 against external symbol `__init=
_array_end&#39; can not be used when making a shared object; recompile with=
 -fPIC
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>wor=
k/aarch64-poky-linux/glibc/<wbr>2.22-r0/git/csu/elf-init.c:87: undefined re=
ference to `__init_array_start&#39;
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>wor=
k/aarch64-poky-linux/glibc/<wbr>2.22-r0/git/csu/elf-init.c:87: undefined re=
ference to `__init_array_end&#39;
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sys=
roots/x86_64-linux/usr/<wbr>libexec/aarch64-poky-linux/<wbr>gcc/aarch64-pok=
y-linux/5.2.0/<wbr>ld: .libs/libbinder.so.0.0.0: hidden symbol `__init_arra=
y_end&#39; isn&#39;t defined
| /local/mnt/workspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>sys=
roots/x86_64-linux/usr/<wbr>libexec/aarch64-poky-linux/<wbr>gcc/aarch64-pok=
y-linux/5.2.0/<wbr>ld: final link failed: Bad value
| collect2: error: ld returned 1 exit status
| make[2]: *** [<a href=3D"http://libbinder.la" target=3D"_blank">libbinder=
.la</a>] Error 1
| make[2]: Leaving directory `/local/mnt/workspace/narasimh<wbr>a/AGL_NEW/p=
oky/build/tmp-<wbr>glibc/work/aarch64-poky-linux/<wbr>native-frameworks/git=
-r0/<wbr>build/libs/binder&#39;
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/local/mnt/workspace/narasimh<wbr>a/AGL_NEW/p=
oky/build/tmp-<wbr>glibc/work/aarch64-poky-linux/<wbr>native-frameworks/git=
-r0/<wbr>build&#39;
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /local/mnt/wor=
kspace/narasimha<wbr>/AGL_NEW/poky/build/tmp-glibc/<wbr>work/aarch64-poky-l=
inux/<wbr>native-frameworks/git-r0/temp/<wbr>log.do_compile.13017)
</span></font></p><div style=3D"color:rgb(0,0,0);font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;line-height:19.6px;white-space:p=
re-wrap"><br></div><font color=3D"#000000" face=3D"courier, courier new, mo=
nospace"><span style=3D"font-size:14px;line-height:19.6px;white-space:pre-w=
rap">Regards</span></font></pre><span><font color=3D"#888888"><pre style=3D=
"word-wrap:break-word;margin-top:0px;margin-bottom:0px"><font color=3D"#000=
000" face=3D"courier, courier new, monospace"><span style=3D"font-size:14px=
;line-height:19.6px;white-space:pre-wrap">Raj.

</span></font></pre></font></span></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a1145b660157654053c163664--
