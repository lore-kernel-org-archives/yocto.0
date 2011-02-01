Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 252C44C80081
	for <yocto@yoctoproject.org>; Tue,  1 Feb 2011 04:41:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so7053253iwn.35
	for <yocto@yoctoproject.org>; Tue, 01 Feb 2011 02:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Y967bSioC15flp3SIfwmAignQm21zG5i+2HHwkw/rBU=;
	b=s5k8RSVXMSXwd7qtB+odFJaA7UiMkVHDXsiPVcUkZXTOBrHJrwkbi929hejfpkc3yf
	B73rZPDIVk8CVbsrFVU2euOEArweGv4+PK93vsCObuXrefdcVPJWuAB/Foi3MAT9e7Yq
	lRhRhb8EIoGc5uVmRF1XaJaxQtIa6+JQkiBU0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=e808DFJ/ceZWWrqizIkOfVafuhoE+HQyQRYbrsXRqZYaZEkV4ihNcokkyGH14NJOic
	rzbZUUkxZ0+9iyNfjWcvNRH9hUfFz4O+TdH2P5ATl42KiuisTWjW+LhidT4lU91erLxl
	7vEkEoQG+o+hr+2x3j3rTIIO8OXuI8znG6/GI=
Received: by 10.42.180.7 with SMTP id bs7mr9301379icb.297.1296556860553; Tue,
	01 Feb 2011 02:41:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Tue, 1 Feb 2011 02:40:40 -0800 (PST)
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 1 Feb 2011 08:40:40 -0200
Message-ID: <AANLkTikz91RahwnectR5cNjx0HKVu4WJNLMH-BNtwszw@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
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
X-List-Received-Date: Tue, 01 Feb 2011 10:41:01 -0000
Content-Type: multipart/alternative; boundary=90e6ba6137901abb6f049b362bfe

--90e6ba6137901abb6f049b362bfe
Content-Type: text/plain; charset=ISO-8859-1

Nitin,


I got this error:

/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
/usr/lib/crti.o: Relocations in generic ELF (EM: 3)
/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld:
/usr/lib/crti.o: Relocations in generic ELF (EM: 3)
/usr/lib/crti.o: could not read symbols: File in wrong format
collect2: ld returned 1 exit status
make[2]: *** [libgcc_s.so] Error 1
make[2]: *** Waiting for unfinished jobs....
arm-poky-linux-gnueabi-ranlib libgcc_eh.a
arm-poky-linux-gnueabi-ranlib libgcc.a
make[2]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgcc'
make[1]: *** [all-target-libgcc] Error 2
make[1]: Leaving directory
`/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-gnueabi'
make: *** [all] Error 2
FATAL: oe_runmake failed
Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/temp/log.do_compile.646
for further information)
ERROR: Function 'do_compile' failed (see
/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/temp/log.do_compile.646
for further information)



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Mon, Jan 31, 2011 at 10:41 PM, Kamble, Nitin A
<nitin.a.kamble@intel.com>wrote:

>  Diego,
>
>   Can you try with 4.5.2 gcc from this branch:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=nitin/khem_gcc_nitin
>
>
>
> Thanks,
>
> Nitin
>
>
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
> *Sent:* Monday, January 31, 2011 10:53 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Kernel Panics on armv4t with gcc.4.5.1
>
>
>
> Folks,
>
>
>
> I'm not a kernel and neither a gcc expert developer, and after searching
> for a solution for the last 2 weeks I've decided to appeal to the list.
>
>
>
> I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440
> (armv4t) with Yocto Project (poky master branch) and I'm facing a strange
> issue.
>
>
>
> If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the kernel will
> panic on init (console printed message is attached for kernel 2.6.30 and
> 2.6.32).
>
> But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5) everything
> will be ok.
>
> Just for your reference these is the gcc recipes which I'm using:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/gcc
>
>
> http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-devtools/gcc
>
>
>
>
>
> I've compiled with and without thumb instructions, but the issue remains.
>
> I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch
> and gcc-arm-volatile-bitfield-fix.patch, but no success.
>
>
>
>
>
>
>
> Kind Regards,
>
>
>
> --
>
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>

--90e6ba6137901abb6f049b362bfe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Nitin,<div><br></div><div><br></div><div>I got this error:</div><div><br></=
div><div><div>/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/ar=
mv4t-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld: /usr/lib/crti.o: Relocat=
ions in generic ELF (EM: 3)</div>

<div>/home/dev/yocto-repo/build/tmp/sysroots/i686-linux/usr/bin/armv4t-poky=
-linux-gnueabi/arm-poky-linux-gnueabi-ld: /usr/lib/crti.o: Relocations in g=
eneric ELF (EM: 3)</div><div>/usr/lib/crti.o: could not read symbols: File =
in wrong format</div>

<div>collect2: ld returned 1 exit status</div><div>make[2]: *** [libgcc_s.s=
o] Error 1</div><div>make[2]: *** Waiting for unfinished jobs....</div><div=
>arm-poky-linux-gnueabi-ranlib libgcc_eh.a</div><div>arm-poky-linux-gnueabi=
-ranlib libgcc.a</div>

<div>make[2]: Leaving directory `/home/dev/yocto-repo/build/tmp/work/armv4t=
-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-li=
nux.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgcc&#39;</div><div>

make[1]: *** [all-target-libgcc] Error 2</div><div>make[1]: Leaving directo=
ry `/home/dev/yocto-repo/build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross=
-intermediate-4.5.2-r3/gcc-4.5.2/build.i686-linux.arm-poky-linux-gnueabi&#3=
9;</div>

<div>make: *** [all] Error 2</div><div>FATAL: oe_runmake failed</div><div>F=
unction &#39;do_compile&#39; failed (see /home/dev/yocto-repo/build/tmp/wor=
k/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/temp/log.do_com=
pile.646 for further information)</div>

<div>ERROR: Function &#39;do_compile&#39; failed (see /home/dev/yocto-repo/=
build/tmp/work/armv4t-poky-linux-gnueabi/gcc-cross-intermediate-4.5.2-r3/te=
mp/log.do_compile.646 for further information)</div></div><div><br></div>

<div><br></div><div><br clear=3D"all"><div>Regards,</div><div><br></div>--<=
br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Mon, Jan 31, 2011 at 10:41 PM, Kamble=
, Nitin A <span dir=3D"ltr">&lt;<a href=3D"mailto:nitin.a.kamble@intel.com"=
>nitin.a.kamble@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex;">










<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Diego=
,</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">=A0 C=
an you try with 4.5.2 gcc from this branch: <a href=3D"http://git.pokylinux=
.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dnitin/khem_gcc_nitin" target=3D"_b=
lank">http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dnitin/kh=
em_gcc_nitin</a></span></p>



<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">=A0</=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Thank=
s,</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Nitin=
</span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">=A0</=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">=A0</=
span></p>

<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">

<div>

<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">

<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">From:</span></b>=
<span style=3D"font-size:10.0pt">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>On
Behalf Of </b>Diego Sueiro<br>
<b>Sent:</b> Monday, January 31, 2011 10:53 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Kernel Panics on armv4t with gcc.4.5.1</span></p>

</div>

</div><div><div></div><div class=3D"h5">

<p class=3D"MsoNormal">=A0</p>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Folks,</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">I&#39;m
not a kernel and neither a gcc expert developer, and after searching for a
solution for the last 2 weeks I&#39;ve decided to appeal to the list.</span=
></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">I&#39;m
trying to build a kernel image (2.6.32 and 2.6.30) for mini2440 (armv4t) wi=
th
Yocto Project (poky master branch) and=A0I&#39;m facing a strange issue.</s=
pan></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">If
I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the kernel will pan=
ic
on init (console printed message is attached for kernel 2.6.30 and 2.6.32).=
</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">But,
if I compile the kernel with meta-oe gcc recipes (gcc 4.5) everything will =
be
ok.</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Just
for your reference these is the gcc recipes which I&#39;m using:</span></p>

</div>

<blockquote style=3D"margin-left:30.0pt;margin-right:0in;border-width:initi=
al;border-color:initial">

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"http://g=
it.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/gcc" targ=
et=3D"_blank"><span style=3D"color:#0658B5">http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-devtools/gcc</span></a></span></p>



</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><a href=3D"http://g=
it.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-devtools/gcc" t=
arget=3D"_blank"><span style=3D"color:#0658B5">http://git.openembedded.org/=
cgit.cgi/meta-openembedded/tree/recipes-devtools/gcc</span></a></span></p>



</div>

</blockquote>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">I&#39;ve
compiled with and without thumb instructions, but the issue remains.</span>=
</p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">I&#39;ve
tried to apply the patches=A0gcc-armv4-pass-fix-v4bx-to-ld.patch
and=A0gcc-arm-volatile-bitfield-fix.patch, but no success.</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=A0</span></p>

</div>

<div>

<div>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Kind
Regards,</span></p>

</div>

</div>

<div>

<p class=3D"MsoNormal">=A0</p>

</div>

<div>

<p class=3D"MsoNormal">--</p>

</div>

<p class=3D"MsoNormal">*dS<br>
Diego Sueiro<br>
<br>
/*long live rock &#39;n roll*/</p>

</div></div></div>

</div>

</div>


</blockquote></div><br></div>

--90e6ba6137901abb6f049b362bfe--
