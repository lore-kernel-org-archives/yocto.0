Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A66E00970; Thu, 27 Nov 2014 03:17:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE36BE0087D
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 03:17:34 -0800 (PST)
Received: by mail-oi0-f45.google.com with SMTP id a141so3331397oig.4
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 03:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e6UKuzst4wAybpTTG+ihCiJvDp7GO2Wd5OIbWxFOUXw=;
	b=Ymo5N9AfKQ5IOzXWqgc0/ezhDE99uEznXvHAS/H3ygiDGsbR87hCssmmRJzIkSe9UK
	QjqUffV/C5xc7jDQ+PjHrjHYE3bMZV90UO6e/cH8AetayBa5Wb8rx2wNjlDYfkDGbo6v
	MFd1T/TBciGvVarFeC3xipt5fgBpgrD+yH4a0ouQEmNi5Ux0RWWvzQhjMb7Sdvc0gARs
	pbvibbOZi94eXRV00NvT3eYSAKG5DS8T0dAcOp6vPpsYBIHMmw82fLAEIWZXE0i57O1o
	hx+yWHNxuADM7QfS7m3ISUWax266UdEyp0GX9jPOZnVGwzQ8PhEaGZ7N5UxS0whABzlt
	Zlgg==
MIME-Version: 1.0
X-Received: by 10.202.102.159 with SMTP id m31mr21450802oik.67.1417087054151; 
	Thu, 27 Nov 2014 03:17:34 -0800 (PST)
Received: by 10.202.16.200 with HTTP; Thu, 27 Nov 2014 03:17:34 -0800 (PST)
In-Reply-To: <5476F897.6040303@windriver.com>
References: <CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com>
	<5476F897.6040303@windriver.com>
Date: Thu, 27 Nov 2014 16:47:34 +0530
Message-ID: <CAE_REAtLKW9O2uawwX53a_Ph7RmbxQnXvowafo9n+qfTaozOOA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: udev-hwdb - post installation error (PPC target)
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
X-List-Received-Date: Thu, 27 Nov 2014 11:17:41 -0000
Content-Type: multipart/alternative; boundary=001a1140a7f27a86b30508d54ae0

--001a1140a7f27a86b30508d54ae0
Content-Type: text/plain; charset=UTF-8

Sent to the mailing list.

Please confirm.

//Gaurang Shastri

On Thu, Nov 27, 2014 at 3:40 PM, ChenQi <Qi.Chen@windriver.com> wrote:

>  On 11/27/2014 05:48 PM, Gaurang Shastri wrote:
>
>   Hi
>
>  I have added systemd as my DISTRO_FEATURES for one of my ppc target.
>
>  But in my log.do_rootfs, I can see that for "udev-hwdb" RPM, generated
> from "systemd", post-installation script failed with core dump:
> {{{
>
> 419:Installing udev-hwdb       ######################################## [
> 43%]
>
> Output from
> udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v2
> :
>
> Invalid instruction
>
> NIP f67d2f6c   LR f67d3130 CTR 00000000 XER 20000000
>
> MSR 00006040 HID0 00000000  HF 00006000 idx 0 TB 00000000 00000000
>
> GPR00 00000000f67d3130 00000000f6ffcc78 0000000000000000 0000000000000000
>
> GPR04 0000000000000014 0000000000000010 00000000f67fe080 0000000000000215
>
> GPR08 00000000f67cd6c4 000000000000021c 0000000000001950 000000006ffffdff
>
> GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR24 0000000000000000 0000000000000000 0000000000000000 00000000f67cf014
>
> GPR28 00000000f6ffcf38 00000000f67cd000 00000000f67fd81c 000000006ffffeff
>
> CR 28000084  [ E  L  -  -  -  -  L  G  ]             RES ffffffff
>
> FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
> FPSCR 00000000
>
> qemu: uncaught target signal 4 (Illegal instruction) - core dumped
>
> /tmp/rpm-tmp.36340: line 7:  8426 Illegal instruction     (core dumped)
> PSEUDO_UNLOAD=1 qemu-ppc -L $D -E LD_LIBRARY_PATH=$D/usr/lib:$D/lib
> $D/bin/udevadm hwdb --update --root $D
>
> }}}
> >From the above, it is clear that we are missing correct "QEMU_OPTIONS"
> while passing through "qemu-ppc" binary in qemu.bbclass. I am able to make
> it working with following patch:
>
> {{{
>
> $ git diff meta/classes/qemu.bbclass diff --git
> a/meta/classes/qemu.bbclass b/meta/classes/qemu.bbclass index
> 3d437b0..8353839 100644
>
> --- a/meta/classes/qemu.bbclass
>
> +++ b/meta/classes/qemu.bbclass
>
> @@ -29,7 +29,8 @@ def qemu_run_binary(data, rootfs_path, binary):
>
>
>
>      libdir = rootfs_path + data.getVar("libdir", False)
>
>      base_libdir = rootfs_path + data.getVar("base_libdir", False)
>
> +    qemu_option = data.getVar("QEMU_OPTIONS",True)
>
>
>
> -    return "PSEUDO_UNLOAD=1 " + qemu_binary + " -L " + rootfs_path\
>
> +    return "PSEUDO_UNLOAD=1 " + qemu_binary + " " + qemu_option + " -L
>
> + " + rootfs_path\
>
>              + " -E LD_LIBRARY_PATH=" + libdir + ":" + base_libdir + " "\
>
>              + rootfs_path + binary
>
> }}}
>  Please check the above and let me know so that I can send the patch in
> correct format (via filing a bug and attaching as regular patch format)
>
>  Regards,
> Gaurang Shastri
>
>
> I think this correct. Please send out patch to
> openembedded-core@lists.openembedded.org.
>
> Regards,
> Chen Qi
>
>
>
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

--001a1140a7f27a86b30508d54ae0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sent to the mailing list.<br><br></div><div>Please co=
nfirm.<br><br></div><div>//Gaurang Shastri<br></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Thu, Nov 27, 2014 at 3:40 PM, C=
henQi <span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=
=3D"_blank">Qi.Chen@windriver.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><div class=3D"h5">
    <div>On 11/27/2014 05:48 PM, Gaurang Shastri
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>
          <div>
            <div>Hi<br>
              <br>
            </div>
            I have added systemd as my DISTRO_FEATURES for one of my ppc
            target.<br>
            <br>
          </div>
          But in my log.do_rootfs, I can see that for &quot;udev-hwdb&quot;=
 RPM,
          generated from &quot;systemd&quot;, post-installation script fail=
ed with
          core dump:<br>
          {{{<br>
          <p>419:Installing udev-hwdb<span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 </span>########################################
[
            43%]</p>
          <p>Output from
udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v=
2:</p>
          <p>Invalid instruction</p>
          <p>NIP f67d2f6c<span>=C2=A0=C2=A0 </span>LR
            f67d3130 CTR 00000000 XER 20000000</p>
          <p>MSR 00006040 HID0 00000000<span>=C2=A0 </span>HF
            00006000 idx 0 TB 00000000 00000000</p>
          <p>GPR00 00000000f67d3130 00000000f6ffcc78
            0000000000000000
            0000000000000000</p>
          <p>GPR04 0000000000000014 0000000000000010
            00000000f67fe080
            0000000000000215</p>
          <p>GPR08 00000000f67cd6c4 000000000000021c
            0000000000001950
            000000006ffffdff</p>
          <p>GPR12 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>GPR16 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>GPR20 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>GPR24 0000000000000000 0000000000000000
            0000000000000000
            00000000f67cf014</p>
          <p>GPR28 00000000f6ffcf38 00000000f67cd000
            00000000f67fd81c
            000000006ffffeff</p>
          <p>CR 28000084<span>=C2=A0 </span>[
            E<span>=C2=A0 </span>L<span>=C2=A0
            </span>-<span>=C2=A0 </span>-<span>=C2=A0 </span>-<span>=C2=A0
            </span>-<span>=C2=A0 </span>L<span>=C2=A0 </span>G<span>=C2=A0 =
</span>]<span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 </span>RES
            ffffffff</p>
          <p>FPR00 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR04 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR08 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR12 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR16 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR20 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR24 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p>FPR28 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000 FPSCR 00000000</p>
          <p>qemu: uncaught target signal 4 (Illegal
            instruction) -
            core dumped</p>
          <p>/tmp/rpm-tmp.36340:
            line 7:<span>=C2=A0 </span>8426 Illegal instruction<span>=C2=A0=
=C2=A0=C2=A0=C2=A0 </span>(core dumped) PSEUDO_UNLOAD=3D1
            qemu-ppc -L
            $D -E LD_LIBRARY_PATH=3D$D/usr/lib:$D/lib $D/bin/udevadm hwdb
            --update --root $D</p>
          <p>}}}</p>
          &gt;From the above, it is clear that we are missing correct
          &quot;QEMU_OPTIONS&quot; while passing through &quot;qemu-ppc&quo=
t; binary in
          qemu.bbclass. I am able to make it working with following
          patch:<br>
          <p>{{{</p>
          <p>$
            git diff meta/classes/qemu.bbclass diff --git
            a/meta/classes/qemu.bbclass
            b/meta/classes/qemu.bbclass index 3d437b0..8353839 100644</p>
          <p>--- a/meta/classes/qemu.bbclass</p>
          <p>+++ b/meta/classes/qemu.bbclass</p>
          <p>@@ -29,7 +29,8 @@ def qemu_run_binary(data,
            rootfs_path,
            binary):</p>
          <p>=C2=A0</p>
          <p><span>=C2=A0=C2=A0=C2=A0=C2=A0 </span>libdir =3D
            rootfs_path + data.getVar(&quot;libdir&quot;, False)</p>
          <p><span>=C2=A0=C2=A0=C2=A0=C2=A0 </span>base_libdir =3D
            rootfs_path + data.getVar(&quot;base_libdir&quot;, False)</p>
          <p>+<span>=C2=A0=C2=A0=C2=A0 </span>qemu_option =3D
            data.getVar(&quot;QEMU_OPTIONS&quot;,True)</p>
          <p>=C2=A0</p>
          <p>-<span>=C2=A0=C2=A0=C2=A0 </span>return
            &quot;PSEUDO_UNLOAD=3D1 &quot; + qemu_binary + &quot; -L &quot;=
 + rootfs_path\</p>
          <p>+<span>=C2=A0=C2=A0=C2=A0 </span>return
            &quot;PSEUDO_UNLOAD=3D1 &quot; + qemu_binary + &quot; &quot; + =
qemu_option +
            &quot; -L </p>
          <p>+ &quot; + rootfs_path\</p>
          <p><span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 </span>+
            &quot; -E LD_LIBRARY_PATH=3D&quot; + libdir + &quot;:&quot; + b=
ase_libdir +
            &quot; &quot;\</p>
          <p><span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 </span>+
            rootfs_path + binary</p>
          <p>}}} <br>
          </p>
          Please check the above and let me know so that I can send the
          patch in correct format (via filing a bug and attaching as
          regular patch format)<br>
          <br>
        </div>
        Regards,<br>
        Gaurang Shastri<br>
        <div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div></div>
    I think this correct. Please send out patch to
    <a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_=
blank">openembedded-core@lists.openembedded.org</a>.<br>
    <br>
    Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1140a7f27a86b30508d54ae0--
