Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5039DE00873; Fri, 30 Jan 2015 03:38:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
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
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60A4E00824
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 03:38:29 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so26395372wgh.6
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 03:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hWgJWcjF3IzoWz8y3w1RBkx4sLJ15CndZWt54Hxz+rg=;
	b=GLAUqhX/jD7Sf5Di5yebJ9fp2AMk6PXvf5oxRRaaneo0uVkIAKbQICZY56kkwuofps
	cuQ9vjfYwACvM4lenYuLVTSy/uPe4e4NU03k3g0RQuxI51YXX7XXa+hcA768PNZU5CAc
	EM2dpZIDnUhtaZkXUnF7HX1wcKBCPTe+c8jM9n61yHRmSjkba8B85KeklTAVDMkmlhC1
	C/+e5T0+UQaDiRy8sLKFYPU/wr//L5vPZaihm7s835jdPAK24EVqhEtXGxnBI+V+p1vO
	+1h4yvfvWDcyJaNEc2tOPiIefB8LRc7xDEg1H1+IENsK8urlt3ECHmN5SIN45vxKSrEK
	dZwA==
X-Received: by 10.194.191.227 with SMTP id hb3mr11121018wjc.79.1422617908941; 
	Fri, 30 Jan 2015 03:38:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.70.193 with HTTP; Fri, 30 Jan 2015 03:38:08 -0800 (PST)
In-Reply-To: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
References: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Fri, 30 Jan 2015 17:08:08 +0530
Message-ID: <CAAA4K6JfD7Y4oFW4vZrO_C55g7hn7=Uvzf3Erjkn5WtybFiBtA@mail.gmail.com>
To: amruuta ghatge <amusghatge@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SPR issue while booting qemu for POWER PC ppce500v2
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
X-List-Received-Date: Fri, 30 Jan 2015 11:38:39 -0000
Content-Type: multipart/alternative; boundary=047d7ba97f2a1d3629050ddd0bdc

--047d7ba97f2a1d3629050ddd0bdc
Content-Type: text/plain; charset=UTF-8

I guess it has something to do with,

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b813bdebb36501500e86fea5f7e15b4b15ea0902

https://bugzilla.yoctoproject.org/show_bug.cgi?id=6687

In other words, you should try with the latest images if any.


On Fri, Jan 30, 2015 at 4:50 PM, amruuta ghatge <amusghatge@gmail.com>
wrote:

>
> Hello,
>
> I am trying to perform LTP testing for POWER ppce500v2.
>
> I used the following rfs and kernel image for testing the LTP test prefix
> [cross build for ppce500ve using ppce500v2 custom toolchain] in QEMU system
> mode.
>
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3
>
>
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
>
> When configured for '-M ppce500 -cpu e500v2' it gave me the following
> error,
>
> $ <path-sysroots>qemu-system-ppc -kernel
> vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
> -net nic,model=pcnet -net tap,vlan=0,ifname=tap0,script=no,downscript=no
> -cpu e500v2 -M ppce500 -hda
> <path-qemuppc>core-image-base-qemuppc-20150112233527.rootfs.ext3 -no-reboot
> -show-cursor -no-reboot -nographic -m 512 --append "root=/dev/hda rw
> console=ttyS0 console=tty ip=192.168.7.2::192.168.7.1:255.255.255.0
> mem=512M console=ttyS0"
>
> Trying to write invalid spr 536 (0x218) 000034c0
>
> Any pointers or inputs/suggestions will be highly appreciated.
>
> Regards,
>
> Amruta!!!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
JCP

--047d7ba97f2a1d3629050ddd0bdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">I guess it has something to do with,</div><div c=
lass=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-ser=
if"><br></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms=
, sans-serif"><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/com=
mit/?id=3Db813bdebb36501500e86fea5f7e15b4b15ea0902">http://git.yoctoproject=
.org/cgit/cgit.cgi/poky/commit/?id=3Db813bdebb36501500e86fea5f7e15b4b15ea09=
02</a></font><br></div><div class=3D"gmail_default" style><font face=3D"tre=
buchet ms, sans-serif"><br></font></div><div class=3D"gmail_default" style>=
<font face=3D"trebuchet ms, sans-serif"><a href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D6687">https://bugzilla.yoctoproject.org/show_bu=
g.cgi?id=3D6687</a><br></font></div><div class=3D"gmail_default" style><fon=
t face=3D"trebuchet ms, sans-serif"><br></font></div><div class=3D"gmail_de=
fault" style><font face=3D"trebuchet ms, sans-serif">In other words, you sh=
ould try with the latest images if any.</font></div><div class=3D"gmail_def=
ault" style><font face=3D"trebuchet ms, sans-serif"><br></font></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jan 30, 2=
015 at 4:50 PM, amruuta ghatge <span dir=3D"ltr">&lt;<a href=3D"mailto:amus=
ghatge@gmail.com" target=3D"_blank">amusghatge@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr"><br>
Hello,<br></p>
<p dir=3D"ltr">I am trying to perform LTP testing for POWER ppce500v2.</p>
<p dir=3D"ltr">I used the following rfs and kernel image for testing the LT=
P test prefix [cross build for ppce500ve using ppce500v2 custom toolchain] =
in QEMU system mode.<br><br></p>
<p dir=3D"ltr"><a href=3D"http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3" target=3D=
"_blank">http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machine=
s/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3</a>=C2=A0=C2=A0=C2=A0</p>
<p dir=3D"ltr"><a href=3D"http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd=
-r0-qemuppc-20141016220152.bin" target=3D"_blank">http://downloads.yoctopro=
ject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+gi=
t0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin</a><br><br></p>
<p dir=3D"ltr">When configured for &#39;-M ppce500 -cpu e500v2&#39; it gave=
 me the following error,<br><br></p>
<p dir=3D"ltr">$ &lt;path-sysroots&gt;qemu-system-ppc -kernel vmlinux--3.14=
.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin -net nic,model=
=3Dpcnet -net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu e=
500v2 -M ppce500 -hda &lt;path-qemuppc&gt;core-image-base-qemuppc-201501122=
33527.rootfs.ext3 -no-reboot -show-cursor -no-reboot -nographic -m 512 --ap=
pend &quot;root=3D/dev/hda rw console=3DttyS0 console=3Dtty ip=3D192.168.7.=
2::192.168.7.1:255.255.255.0 mem=3D512M console=3DttyS0&quot;</p>
<p dir=3D"ltr">Trying to write invalid spr 536 (0x218) 000034c0<br><br></p>
<p dir=3D"ltr">Any pointers or inputs/suggestions will be highly appreciate=
d.<br></p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Amruta!!!<br>
</p>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature">JCP</div>
</div>

--047d7ba97f2a1d3629050ddd0bdc--
