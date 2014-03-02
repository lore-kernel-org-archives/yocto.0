Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f193.google.com (mail-vc0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5692E006EA
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 20:20:50 -0800 (PST)
Received: by mail-vc0-f193.google.com with SMTP id hq11so849359vcb.0
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 20:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jbvmbHZ0MvmX4oKCwKpUxCSZkUm3/qoXWrcrLTYwlw0=;
	b=oyY4Lo0ndTv75LRHv/Lvn/1bM0RJoUVj1lKuZP/6nce9YECeBZdWTepi9bVuvnJh/H
	VXr35lCIy8Ph4OWVtbNtOJ3cpSwFnRlq0BCAEqrZbAe88/vO24vG0qsQpJUddb/vUpFC
	vpeN0It4H5QG0d6YfK9GAdUxLTndiy45r6//mJ2hES6aQzRYNatDhFTDAlMxItIRwxFC
	pUtw0E3HM1TkoqGY6ZAfjIn8DSAcDuznZsV/sHtoBaKJrzU1f4zGoAtryZ7VIdCKwztc
	dAJ5WfwNgUTE/n4b/eFYQnK07zBV/34JRnWcm/4hJay+b52mJUtuOnvc5D6c9xeh0ZSn
	f+jw==
MIME-Version: 1.0
X-Received: by 10.220.200.6 with SMTP id eu6mr4810vcb.35.1393734049196; Sat,
	01 Mar 2014 20:20:49 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Sat, 1 Mar 2014 20:20:49 -0800 (PST)
Date: Sat, 1 Mar 2014 21:20:49 -0700
Message-ID: <CAA7h+EoghW9UZacjVfhRuEmAWadbsz5zyYAM-RAKQPSpf8--0A@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: yocto@yoctoproject.org
Subject: Which .bbappend file ?
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
X-List-Received-Date: Sun, 02 Mar 2014 04:20:51 -0000
Content-Type: multipart/alternative; boundary=047d7b5d6612e9ef4e04f397fe97

--047d7b5d6612e9ef4e04f397fe97
Content-Type: text/plain; charset=ISO-8859-1

Okay, I am feeling a little thick, but here is my question.

How do I know which .bbappend file is the right one to modify.

Here is everything that would be in my layers:

/yocto/poky/meta/recipes-kernel/linux/linux-yocto
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-dev.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.2.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.4.bb
yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.8.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.2.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto.inc
/yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.4.bb
/yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.8.bb




Generally speaking, the preferred approach is to determine the incremental
change you want to make and add that as a configuration fragment. For
example, if you want to add support for a basic serial console, create a
file named 8250.cfg in thefiles directory with the following content
(without indentation):

     CONFIG_SERIAL_8250=y
     CONFIG_SERIAL_8250_CONSOLE=y
     CONFIG_SERIAL_8250_PCI=y
     CONFIG_SERIAL_8250_NR_UARTS=4
     CONFIG_SERIAL_8250_RUNTIME_UARTS=4
     CONFIG_SERIAL_CORE=y
     CONFIG_SERIAL_CORE_CONSOLE=y


Next, include this configuration fragment and *extend
the FILESPATH variable in your .bbappend file:*

     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
     SRC_URI += "file://8250.cfg"


Thanks,
Rick

--047d7b5d6612e9ef4e04f397fe97
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Okay, I am feeling a little thick, but here is m=
y question.<br><br></div>How do I know which .bbappend file is the right on=
e to modify.<br><br></div>Here is everything that would be in my layers:<br=
>
<br>/yocto/poky/meta/recipes-kernel/linux/linux-yocto<br>/yocto/poky/meta/r=
ecipes-kernel/linux/<a href=3D"http://linux-yocto-dev.bb">linux-yocto-dev.b=
b</a><br>/yocto/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yoct=
o-rt_3.2.bb">linux-yocto-rt_3.2.bb</a><br>
/yocto/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_3.4.=
bb">linux-yocto-rt_3.4.bb</a><br>yocto/poky/meta/recipes-kernel/linux/<a hr=
ef=3D"http://linux-yocto-rt_3.8.bb">linux-yocto-rt_3.8.bb</a><br>/yocto/pok=
y/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-tiny_3.2.bb">linu=
x-yocto-tiny_3.2.bb</a><br>
/yocto/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto-tiny_3.=
4.bb">linux-yocto-tiny_3.4.bb</a><br>/yocto/poky/meta/recipes-kernel/linux/=
<a href=3D"http://linux-yocto-tiny_3.8.bb">linux-yocto-tiny_3.8.bb</a><br>/=
yocto/poky/meta/recipes-kernel/linux/linux-yocto.inc<br>
/yocto/poky/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_3.2.bb"=
>linux-yocto_3.2.bb</a><br>/yocto/poky/meta/recipes-kernel/linux/<a href=3D=
"http://linux-yocto_3.4.bb">linux-yocto_3.4.bb</a><br>/yocto/poky/meta/reci=
pes-kernel/linux/<a href=3D"http://linux-yocto_3.8.bb">linux-yocto_3.8.bb</=
a><br>
<br><div><br><br><br><p style=3D"line-height:1.5em;margin-top:0em;color:rgb=
(51,51,51);font-family:Verdana,Sans,sans-serif;font-size:medium;font-style:=
normal;font-variant:normal;font-weight:normal;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255)">
Generally speaking, the preferred approach is to determine the incremental =
change you want to make and add that as a configuration fragment. For examp=
le, if you want to add support for a basic serial console, create a file na=
med<span class=3D"">=A0</span><code class=3D"" style=3D"font-size:medium;fo=
nt-family:Courier,monospace">8250.cfg</code><span class=3D"">=A0</span>in t=
he<code class=3D"" style=3D"font-size:medium;font-family:Courier,monospace"=
>files</code><span class=3D"">=A0</span>directory with the following conten=
t (without indentation):</p>
<pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,51);font-style:norma=
l;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:=
normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0p=
x;background-color:rgb(255,255,255)">
     CONFIG_SERIAL_8250=3Dy
     CONFIG_SERIAL_8250_CONSOLE=3Dy
     CONFIG_SERIAL_8250_PCI=3Dy
     CONFIG_SERIAL_8250_NR_UARTS=3D4
     CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
     CONFIG_SERIAL_CORE=3Dy
     CONFIG_SERIAL_CORE_CONSOLE=3Dy
                </pre><p style=3D"line-height:1.5em;margin-top:0em;color:rg=
b(51,51,51);font-family:Verdana,Sans,sans-serif;font-size:medium;font-style=
:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255)">
Next, include this configuration fragment and <b><span style=3D"color:rgb(0=
,0,0)">extend the<span class=3D"">=A0</span><code class=3D"" style=3D"font-=
size:medium;font-family:Courier,monospace">FILESPATH</code><span class=3D""=
>=A0</span>variable in your<span class=3D"">=A0</span><code class=3D"" styl=
e=3D"font-size:medium;font-family:Courier,monospace">.bbappend</code><span =
class=3D"">=A0</span>file:</span></b></p>
<pre class=3D"" style=3D"overflow:auto;color:rgb(51,51,51);font-style:norma=
l;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:=
normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0p=
x;background-color:rgb(255,255,255)">
     FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;
     SRC_URI +=3D &quot;file://8250.cfg&quot;
</pre><br class=3D""></div><div>Thanks,<br></div><div>Rick<br></div></div>

--047d7b5d6612e9ef4e04f397fe97--
