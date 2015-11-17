Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 726D0E00B5C; Tue, 17 Nov 2015 07:34:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F34BE00B23
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 07:34:07 -0800 (PST)
Received: by iofh3 with SMTP id h3so22027663iof.3
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 07:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FmW2YPMBh1g1ghWAJMMSOkU4s5J+3VGTaAhRWhoE3VE=;
	b=eajYcO0VQvSBIT4OJsLq/i/etySRtN51cac8WIwMiWDfhUGLI/UuPlPxvuviS1rN6A
	ascikBclsUuJFK4bSHY9domEZ2ERgpg3vjUFxpdA6C0QyzDsPQjYqSRBYcUSRp1lM+aO
	qxu+9XiiMXzxGgDKLrIxoAIbADwe7O63EdwHff/i2ioxyFhrNdl7hiHWR2qTMDZexjmI
	myDOiY96BDru28IWANEavuTuiIB4sctwbfYuL3eEzH+nq1KTIlrnCxjVjARG0utaV6AS
	iuFDH/ZPRnwOAv8g+yWkApOAVQEHeAIq6N2JawtnE1K8b9dWbSyDbW2RjfuFoYDasMdK
	bjVA==
MIME-Version: 1.0
X-Received: by 10.107.162.137 with SMTP id l131mr34348244ioe.49.1447774447060; 
	Tue, 17 Nov 2015 07:34:07 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Tue, 17 Nov 2015 07:34:06 -0800 (PST)
In-Reply-To: <564B183E.3000204@gmail.com>
References: <1447590685-8145-1-git-send-email-net147@gmail.com>
	<CAMKF1sqq0xS6qHSCHVZsn6wmTQEGUuegT31tVN6ppfNem+kXGA@mail.gmail.com>
	<564B183E.3000204@gmail.com>
Date: Tue, 17 Nov 2015 07:34:06 -0800
Message-ID: <CAMKF1sr3S=xfADSh+jcSg9F__whKnOStuqK_sinNtvY+j_-XZg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Tue, 17 Nov 2015 15:34:12 -0000
Content-Type: multipart/alternative; boundary=001a1141bbc6a1d3e70524be4150

--001a1141bbc6a1d3e70524be4150
Content-Type: text/plain; charset=UTF-8

On Tuesday, November 17, 2015, Jonathan Liu <net147@gmail.com> wrote:

> On 16/11/2015 4:31 AM, Khem Raj wrote:
>
>> On Sun, Nov 15, 2015 at 4:31 AM, Jonathan Liu <net147@gmail.com> wrote:
>>
>>> [Support #16]
>>>
>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>> ---
>>>   conf/machine/include/rpi-base.inc | 3 +++
>>>   recipes-qt/qt5/qtbase_%.bbappend  | 8 ++++++++
>>>   2 files changed, 11 insertions(+)
>>>   create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>>
>>> diff --git a/conf/machine/include/rpi-base.inc
>>> b/conf/machine/include/rpi-base.inc
>>> index e097702..b390705 100644
>>> --- a/conf/machine/include/rpi-base.inc
>>> +++ b/conf/machine/include/rpi-base.inc
>>> @@ -48,3 +48,6 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
>>>   SPLASH = "psplash-raspberrypi"
>>>
>>>   IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/*
>>> ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
>>> +
>>> +# Qt packages are machine specific due to RPi integration
>>> +QT_PACKAGES_ARCH = "${MACHINE_ARCH}"
>>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
>>> b/recipes-qt/qt5/qtbase_%.bbappend
>>> new file mode 100644
>>> index 0000000..7775e70
>>> --- /dev/null
>>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>>> @@ -0,0 +1,8 @@
>>> +do_configure_prepend_rpi() {
>>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
>>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
>>>
>> should this should be controlled based on a knob for userspace binary
>> driver or open source kernel driver is used.
>>
> I am not sure whether the open source kernel driver is complete enough.
> Have you tested it? Do you have any patch to get it running with Qt?


It works or not is not the point. The fact it exists we need to make
adjustment for it

>
>> +QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
>>> +QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
>>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>>> +EOF
>>> +}
>>> --
>>> 2.6.2
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>

--001a1141bbc6a1d3e70524be4150
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Tuesday, November 17, 2015, Jonathan Liu &lt;<a href=3D"mailto:n=
et147@gmail.com">net147@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">On 16/11/2015 4:31 AM, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Sun, Nov 15, 2015 at 4:31 AM, Jonathan Liu &lt;<a>net147@gmail.com</a>&g=
t; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
[Support #16]<br>
<br>
Signed-off-by: Jonathan Liu &lt;<a>net147@gmail.com</a>&gt;<br>
---<br>
=C2=A0 conf/machine/include/rpi-base.inc | 3 +++<br>
=C2=A0 recipes-qt/qt5/qtbase_%.bbappend=C2=A0 | 8 ++++++++<br>
=C2=A0 2 files changed, 11 insertions(+)<br>
=C2=A0 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend<br>
<br>
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-b=
ase.inc<br>
index e097702..b390705 100644<br>
--- a/conf/machine/include/rpi-base.inc<br>
+++ b/conf/machine/include/rpi-base.inc<br>
@@ -48,3 +48,6 @@ MACHINE_EXTRA_RRECOMMENDS +=3D &quot; kernel-modules&quot=
;<br>
=C2=A0 SPLASH =3D &quot;psplash-raspberrypi&quot;<br>
<br>
=C2=A0 IMAGE_BOOT_FILES ?=3D &quot;bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};=
${SDIMG_KERNELIMAGE}&quot;<br>
+<br>
+# Qt packages are machine specific due to RPi integration<br>
+QT_PACKAGES_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>
diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bba=
ppend<br>
new file mode 100644<br>
index 0000000..7775e70<br>
--- /dev/null<br>
+++ b/recipes-qt/qt5/qtbase_%.bbappend<br>
@@ -0,0 +1,8 @@<br>
+do_configure_prepend_rpi() {<br>
+=C2=A0 =C2=A0 cat &gt; ${S}/mkspecs/oe-device-extra.pri &lt;&lt; &#39;EOF&=
#39;<br>
+EGLFS_DEVICE_INTEGRATION =3D eglfs_brcm<br>
</blockquote>
should this should be controlled based on a knob for userspace binary<br>
driver or open source kernel driver is used.<br>
</blockquote>
I am not sure whether the open source kernel driver is complete enough. Hav=
e you tested it? Do you have any patch to get it running with Qt?</blockquo=
te><div><br></div><div>It works or not is not the point. The fact it exists=
 we need to make adjustment for it=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
+QMAKE_INCDIR_EGL =3D $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux=
<br>
+QMAKE_INCDIR_OPENGL_ES2 =3D $${QMAKE_INCDIR_EGL}<br>
+QMAKE_LIBS_EGL =3D -lEGL -lGLESv2<br>
+EOF<br>
+}<br>
--<br>
2.6.2<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a>yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></blockquote>
<br>
</blockquote>

--001a1141bbc6a1d3e70524be4150--
