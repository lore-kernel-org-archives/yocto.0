Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B88E0087D; Thu, 27 Nov 2014 01:48:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A8EBE007BA;
	Thu, 27 Nov 2014 01:48:15 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id wp4so3507644obc.6
	for <multiple recipients>; Thu, 27 Nov 2014 01:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=1THQ6YiaYZERoc1HIsizYP3oOYobhTlnDf5VfbzuXOY=;
	b=Mh2qdboXMzYF3BLyHd8FQYurVya/UA/ddyhEd02z0NnQYFIHrWxNW3HOhQtFcGDJmb
	jXM0gAq7g9ii4WJHopOoeJMTnLL9dBZO916TflOp7H3npeCp1gxx82I3RYerdSzBt4NG
	8urNrhTr/aD/KBRro3s2ZXpQjfvOtosyOujnR4lSOasd+l0M9K4T+d5Wn0YTqJO8lsSA
	P9JpGWzcXUeic8Crx/JQs/PpxQKROtbpIP84T4Cp8lXX/ngZWnmZoN7L35J4q63rTsoc
	vg6+jsV6xGfSvkyR0iWXG0Q0wYKh9yktZLkUY00UfYxwZRIrjBPPFNFnd+JyF2lmRXq1
	njwQ==
MIME-Version: 1.0
X-Received: by 10.202.16.17 with SMTP id 17mr20578552oiq.74.1417081694959;
	Thu, 27 Nov 2014 01:48:14 -0800 (PST)
Received: by 10.202.16.200 with HTTP; Thu, 27 Nov 2014 01:48:14 -0800 (PST)
Date: Thu, 27 Nov 2014 15:18:14 +0530
Message-ID: <CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: meta-freescale@yoctoproject.org,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: udev-hwdb - post installation error (PPC target)
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
X-List-Received-Date: Thu, 27 Nov 2014 09:48:22 -0000
Content-Type: multipart/alternative; boundary=001a113e3b240bbebe0508d40bb8

--001a113e3b240bbebe0508d40bb8
Content-Type: text/plain; charset=UTF-8

Hi

I have added systemd as my DISTRO_FEATURES for one of my ppc target.

But in my log.do_rootfs, I can see that for "udev-hwdb" RPM, generated from
"systemd", post-installation script failed with core dump:
{{{

419:Installing udev-hwdb       ######################################## [
43%]

Output from
udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v2
:

Invalid instruction

NIP f67d2f6c   LR f67d3130 CTR 00000000 XER 20000000

MSR 00006040 HID0 00000000  HF 00006000 idx 0 TB 00000000 00000000

GPR00 00000000f67d3130 00000000f6ffcc78 0000000000000000 0000000000000000

GPR04 0000000000000014 0000000000000010 00000000f67fe080 0000000000000215

GPR08 00000000f67cd6c4 000000000000021c 0000000000001950 000000006ffffdff

GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000

GPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000

GPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000

GPR24 0000000000000000 0000000000000000 0000000000000000 00000000f67cf014

GPR28 00000000f6ffcf38 00000000f67cd000 00000000f67fd81c 000000006ffffeff

CR 28000084  [ E  L  -  -  -  -  L  G  ]             RES ffffffff

FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000

FPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
FPSCR 00000000

qemu: uncaught target signal 4 (Illegal instruction) - core dumped

/tmp/rpm-tmp.36340: line 7:  8426 Illegal instruction     (core dumped)
PSEUDO_UNLOAD=1 qemu-ppc -L $D -E LD_LIBRARY_PATH=$D/usr/lib:$D/lib
$D/bin/udevadm hwdb --update --root $D

}}}
From the above, it is clear that we are missing correct "QEMU_OPTIONS"
while passing through "qemu-ppc" binary in qemu.bbclass. I am able to make
it working with following patch:

{{{

$ git diff meta/classes/qemu.bbclass diff --git a/meta/classes/qemu.bbclass
b/meta/classes/qemu.bbclass index 3d437b0..8353839 100644

--- a/meta/classes/qemu.bbclass

+++ b/meta/classes/qemu.bbclass

@@ -29,7 +29,8 @@ def qemu_run_binary(data, rootfs_path, binary):



     libdir = rootfs_path + data.getVar("libdir", False)

     base_libdir = rootfs_path + data.getVar("base_libdir", False)

+    qemu_option = data.getVar("QEMU_OPTIONS",True)



-    return "PSEUDO_UNLOAD=1 " + qemu_binary + " -L " + rootfs_path\

+    return "PSEUDO_UNLOAD=1 " + qemu_binary + " " + qemu_option + " -L

+ " + rootfs_path\

             + " -E LD_LIBRARY_PATH=" + libdir + ":" + base_libdir + " "\

             + rootfs_path + binary

}}}
Please check the above and let me know so that I can send the patch in
correct format (via filing a bug and attaching as regular patch format)

Regards,
Gaurang Shastri

--001a113e3b240bbebe0508d40bb8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi<br><br></div>I have added systemd as my =
DISTRO_FEATURES for one of my ppc target.<br><br></div>But in my log.do_roo=
tfs, I can see that for &quot;udev-hwdb&quot; RPM, generated from &quot;sys=
temd&quot;, post-installation script failed with core dump:<br>{{{<br>

<p class=3D"">419:Installing udev-hwdb<span style>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 </span>########################################
[ 43%]</p>

<p class=3D"">Output from
udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v=
2:</p>

<p class=3D"">Invalid instruction</p>

<p class=3D"">NIP f67d2f6c<span style>=C2=A0=C2=A0 </span>LR
f67d3130 CTR 00000000 XER 20000000</p>

<p class=3D"">MSR 00006040 HID0 00000000<span style>=C2=A0 </span>HF 000060=
00 idx 0 TB 00000000 00000000</p>

<p class=3D"">GPR00 00000000f67d3130 00000000f6ffcc78 0000000000000000
0000000000000000</p>

<p class=3D"">GPR04 0000000000000014 0000000000000010 00000000f67fe080
0000000000000215</p>

<p class=3D"">GPR08 00000000f67cd6c4 000000000000021c 0000000000001950
000000006ffffdff</p>

<p class=3D"">GPR12 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">GPR16 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">GPR20 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">GPR24 0000000000000000 0000000000000000 0000000000000000
00000000f67cf014</p>

<p class=3D"">GPR28 00000000f6ffcf38 00000000f67cd000 00000000f67fd81c
000000006ffffeff</p>

<p class=3D"">CR 28000084<span style>=C2=A0 </span>[
E<span style>=C2=A0 </span>L<span style>=C2=A0
</span>-<span style>=C2=A0 </span>-<span style>=C2=A0 </span>-<span style>=
=C2=A0
</span>-<span style>=C2=A0 </span>L<span style>=C2=A0 </span>G<span style>=
=C2=A0 </span>]<span style>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span>RES ffffffff</p>

<p class=3D"">FPR00 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR04 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR08 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR12 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR16 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR20 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR24 0000000000000000 0000000000000000 0000000000000000
0000000000000000</p>

<p class=3D"">FPR28 0000000000000000 0000000000000000 0000000000000000
0000000000000000 FPSCR 00000000</p>

<p class=3D"">qemu: uncaught target signal 4 (Illegal instruction) -
core dumped</p>

<p class=3D"">/tmp/rpm-tmp.36340:
line 7:<span style>=C2=A0 </span>8426 Illegal instruction<span style>=C2=A0=
=C2=A0=C2=A0=C2=A0 </span>(core dumped) PSEUDO_UNLOAD=3D1 qemu-ppc -L
$D -E LD_LIBRARY_PATH=3D$D/usr/lib:$D/lib $D/bin/udevadm hwdb --update --ro=
ot $D</p>

<p class=3D"">}}}</p>

From the above, it is clear that we are missing correct &quot;QEMU_OPTIONS&=
quot; while passing through &quot;qemu-ppc&quot; binary in qemu.bbclass. I =
am able to make it working with following patch:<br>

<p class=3D"">{{{</p>

<p class=3D"">$
git diff meta/classes/qemu.bbclass diff --git a/meta/classes/qemu.bbclass
b/meta/classes/qemu.bbclass index 3d437b0..8353839 100644</p>

<p class=3D"">--- a/meta/classes/qemu.bbclass</p>

<p class=3D"">+++ b/meta/classes/qemu.bbclass</p>

<p class=3D"">@@ -29,7 +29,8 @@ def qemu_run_binary(data, rootfs_path,
binary):</p>

<p class=3D"">=C2=A0</p>

<p class=3D""><span style>=C2=A0=C2=A0=C2=A0=C2=A0 </span>libdir =3D
rootfs_path + data.getVar(&quot;libdir&quot;, False)</p>

<p class=3D""><span style>=C2=A0=C2=A0=C2=A0=C2=A0 </span>base_libdir =3D
rootfs_path + data.getVar(&quot;base_libdir&quot;, False)</p>

<p class=3D"">+<span style>=C2=A0=C2=A0=C2=A0 </span>qemu_option =3D
data.getVar(&quot;QEMU_OPTIONS&quot;,True)</p>

<p class=3D"">=C2=A0</p>

<p class=3D"">-<span style>=C2=A0=C2=A0=C2=A0 </span>return
&quot;PSEUDO_UNLOAD=3D1 &quot; + qemu_binary + &quot; -L &quot; + rootfs_pa=
th\</p>

<p class=3D"">+<span style>=C2=A0=C2=A0=C2=A0 </span>return
&quot;PSEUDO_UNLOAD=3D1 &quot; + qemu_binary + &quot; &quot; + qemu_option =
+
&quot; -L </p>

<p class=3D"">+ &quot; + rootfs_path\</p>

<p class=3D""><span style>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span>+
&quot; -E LD_LIBRARY_PATH=3D&quot; + libdir + &quot;:&quot; + base_libdir +
&quot; &quot;\</p>

<p class=3D""><span style>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span>+
rootfs_path + binary</p>

<p class=3D"">}}} <br></p>Please check the above and let me know so that I =
can send the patch in correct format (via filing a bug and attaching as reg=
ular patch format)<br><br></div>Regards,<br>Gaurang Shastri<br><div><div><b=
r><div><div><br></div></div></div></div></div>

--001a113e3b240bbebe0508d40bb8--
