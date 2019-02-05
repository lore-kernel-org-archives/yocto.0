Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DCFCE00BAF; Tue,  5 Feb 2019 07:30:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B52E00B81
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 07:30:37 -0800 (PST)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id 7C6DCDBB8;
	Tue,  5 Feb 2019 16:30:32 +0100 (CET)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: "'Marc Ferland'" <marc.ferland@gmail.com>
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAMRMzCBh-Of2MVnycxMvY3=L+g8vf_mw+CTdsh4DbneQz5GAng@mail.gmail.com>
In-Reply-To: <CAMRMzCBh-Of2MVnycxMvY3=L+g8vf_mw+CTdsh4DbneQz5GAng@mail.gmail.com>
Date: Tue, 5 Feb 2019 16:30:31 +0100
Message-ID: <005901d4bd67$bc29e390$347daab0$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFdDXE0Al97Hf8UDVuxHsFyUtiQ2gDnNK/Aprl6HaA=
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: yocto touchscreen
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
X-List-Received-Date: Tue, 05 Feb 2019 15:30:40 -0000
X-Groupsio-MsgNum: 44017
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_005A_01D4BD70.1DF158D0"
Content-Language: fr

------=_NextPart_000_005A_01D4BD70.1DF158D0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_005B_01D4BD70.1DF158D0"

------=_NextPart_001_005B_01D4BD70.1DF158D0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hy Marc,

=20

Here is the log file attached in this mail.

=20

Nikola

De : Marc Ferland <marc.ferland@gmail.com>=20
Envoy=C3=A9 : mardi 5 f=C3=A9vrier 2019 16:10
=C3=80 : Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc : Yocto discussion list <yocto@yoctoproject.org>
Objet : Re: [yocto] yocto touchscreen

=20

On Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic =
<n.stanisavljevic@polycaptil.fr <mailto:n.stanisavljevic@polycaptil.fr> =
> wrote:

Hy Team,

=20

I have a problem

=20

I buid a custom os for AM335x processor and I used yocto to do it.

=20

I build a first version of this os with version krogoth and it work =
fine.

=20

Now I build a second version of this os with version sumo and the =
touchscreen work fine during boot process but when kernel is loaded, =
touchscreen freeze / lock and impossible to use it.

The terminal is printed on the touchscreen but the screen is locked, =
impossible to write a command or to move the mouse to select, =E2=80=A6.

=20

Here is the log of boot to the user session (log got with serial =
communication between PC and board) :

=20

...=20

X.Org X Server 1.19.6

Release Date: 2017-12-20

X Protocol Version 11, Revision 0

Build Operating System: Linux 4.15.0-38-generic x86_64

Current Operating System: Linux polycaptil-machine-am335x-evmsk =
4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l

Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw

Build Date: 05 November 2018  09:33:21PM

=20

Current version of pixman: 0.34.0

        Before reporting problems, check http://wiki.x.org

        to make sure that you have the latest version.

Markers: (--) probed, (**) from config file, (=3D=3D) default setting,

        (++) from command line, (!!) notice, (II) informational,

        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.

(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 2019

(=3D=3D) Using config file: "/etc/X11/xorg.conf"

(=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"

done.

=20

Please post the full /var/log/Xorg.log.

=20

Marc


------=_NextPart_001_005B_01D4BD70.1DF158D0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>Hy =
Marc,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Here is the log file attached in =
this mail.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Nikola<o:p></o:p></span></p><p =
class=3DMsoNormal><b>De&nbsp;:</b> Marc Ferland =
&lt;marc.ferland@gmail.com&gt; <br><b>Envoy=C3=A9&nbsp;:</b> mardi 5 =
f=C3=A9vrier 2019 16:10<br><b>=C3=80&nbsp;:</b> Stanisavljevic =
&lt;n.stanisavljevic@polycaptil.fr&gt;<br><b>Cc&nbsp;:</b> Yocto =
discussion list &lt;yocto@yoctoproject.org&gt;<br><b>Objet&nbsp;:</b> =
Re: [yocto] yocto touchscreen<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p =
class=3DMsoNormal>On Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic &lt;<a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr">n.stanisavljevic@polycapti=
l.fr</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hy =
Team,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I have a =
problem<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I buid a custom os for AM335x processor and I used yocto to =
do it.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I build a first version of this os with version krogoth and =
it work fine.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Now I build a second version of this os with version sumo =
and the touchscreen work fine during boot process but when kernel is =
loaded, touchscreen freeze / lock and impossible to use =
it.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>The terminal is printed on the touchscreen but the screen =
is locked, impossible to write a command or to move the mouse to select, =
=E2=80=A6.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Here is the log of boot to the user session (log got with =
serial communication between PC and board) :</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div></div></blockquote><div><p=
 class=3DMsoNormal>... <o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>X.Org X Server 1.19.6</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Release Date: 2017-12-20</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>X Protocol Version 11, Revision 0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Build Operating System: Linux 4.15.0-38-generic =
x86_64</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Current Operating System: Linux =
polycaptil-machine-am335x-evmsk 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 =
11:42:17 CEST 2018 armv7l</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p3 rw</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Build Date: 05 November 2018&nbsp; =
09:33:21PM</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Current version of pixman: 0.34.0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Before reporting =
problems, check <a href=3D"http://wiki.x.org" =
target=3D"_blank">http://wiki.x.org</a></span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to make sure =
that you have the latest version.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Markers: (--) probed, (**) from config file, (=3D=3D) =
default setting,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (++) from =
command line, (!!) notice, (II) informational,</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (WW) warning, =
(EE) error, (NI) not implemented, (??) unknown.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: =
Fri Feb&nbsp; 1 20:08:02 2019</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Using system config directory =
&quot;/usr/share/X11/xorg.conf.d&quot;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>done.</span><o:p></o:p></p></div></div></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Please post the full =
/var/log/Xorg.log.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Marc<o:p></o:p></p></div></div></div></div></body></htm=
l>

------=_NextPart_001_005B_01D4BD70.1DF158D0--

------=_NextPart_000_005A_01D4BD70.1DF158D0
Content-Type: application/octet-stream;
	name="Xorg.0.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="Xorg.0.log"

[     9.597]=20
X.Org X Server 1.19.6
Release Date: 2017-12-20
[     9.598] X Protocol Version 11, Revision 0
[     9.598] Build Operating System: Linux 4.15.0-43-generic x86_64=20
[     9.598] Current Operating System: Linux polycaptil-machine-am335x-evms=
k 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
[     9.598] Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk=
0p3 rw
[     9.598] Build Date: 04 February 2019  04:11:39PM
[     9.598] =20
[     9.598] Current version of pixman: 0.34.0
[     9.598] 	Before reporting problems, check http://wiki.x.org
	to make sure that you have the latest version.
[     9.598] Markers: (--) probed, (**) from config file, (=3D=3D) default =
setting,
	(++) from command line, (!!) notice, (II) informational,
	(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[     9.599] (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Tue Feb  5 15:=
13:43 2019
[     9.612] (=3D=3D) Using config file: "/etc/X11/xorg.conf"
[     9.612] (=3D=3D) Using system config directory "/usr/share/X11/xorg.co=
nf.d"
[     9.625] (=3D=3D) ServerLayout "Builtin Default Layout"
[     9.626] (**) |-->Screen "Builtin Default fbdev Screen 0" (0)
[     9.626] (**) |   |-->Monitor "Builtin Default Monitor"
[     9.626] (**) |   |-->Device "Builtin Default fbdev Device 0"
[     9.626] (=3D=3D) Automatically adding devices
[     9.627] (=3D=3D) Automatically enabling devices
[     9.627] (=3D=3D) Automatically adding GPU devices
[     9.627] (=3D=3D) Max clients allowed: 256, resource mask: 0x1fffff
[     9.629] (WW) The directory "/usr/share/fonts/X11/misc/" does not exist=
.
[     9.629] 	Entry deleted from font path.
[     9.629] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
[     9.629] 	Entry deleted from font path.
[     9.629] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
[     9.629] 	Entry deleted from font path.
[     9.629] (WW) The directory "/usr/share/fonts/X11/Type1/" does not exis=
t.
[     9.629] 	Entry deleted from font path.
[     9.629] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not exi=
st.
[     9.629] 	Entry deleted from font path.
[     9.629] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not exis=
t.
[     9.629] 	Entry deleted from font path.
[     9.629] (=3D=3D) FontPath set to:
=09
[     9.629] (=3D=3D) ModulePath set to "/usr/lib/xorg/modules"
[     9.629] (II) The server relies on udev to provide the list of input de=
vices.
	If no devices become available, reconfigure udev or disable AutoAddDevices=
.
[     9.631] (II) Loader magic: 0x1c3d18
[     9.631] (II) Module ABI versions:
[     9.631] 	X.Org ANSI C Emulation: 0.4
[     9.631] 	X.Org Video Driver: 23.0
[     9.631] 	X.Org XInput driver : 24.1
[     9.631] 	X.Org Server Extension : 10.0
[     9.633] (II) xfree86: Adding drm device (/dev/dri/card0)
[     9.634] (II) no primary bus or device found
[     9.634] 	falling back to /sys/devices/platform/ocp/4830e000.lcdc/drm/c=
ard0
[     9.634] (II) "glx" will be loaded. This was enabled by default and als=
o specified in the config file.
[     9.634] (II) LoadModule: "extmod"
[     9.636] (II) Module "extmod" already built-in
[     9.636] (II) LoadModule: "dbe"
[     9.636] (II) Module "dbe" already built-in
[     9.636] (II) LoadModule: "glx"
[     9.644] (WW) Warning, couldn't open module glx
[     9.644] (II) UnloadModule: "glx"
[     9.644] (II) Unloading glx
[     9.644] (EE) Failed to load module "glx" (module does not exist, 0)
[     9.644] (II) LoadModule: "record"
[     9.644] (II) Module "record" already built-in
[     9.644] (II) LoadModule: "dri"
[     9.644] (II) Module "dri" already built-in
[     9.644] (II) LoadModule: "fbdev"
[     9.645] (II) Loading /usr/lib/xorg/modules/drivers/fbdev_drv.so
[     9.650] (II) Module fbdev: vendor=3D"X.Org Foundation"
[     9.650] 	compiled for 1.19.6, module version =3D 0.4.4
[     9.650] 	Module class: X.Org Video Driver
[     9.650] 	ABI class: X.Org Video Driver, version 23.0
[     9.650] (II) FBDEV: driver for framebuffer: fbdev
[     9.650] (--) using VT number 3

[     9.660] (WW) Falling back to old probe method for fbdev
[     9.660] (II) Loading sub module "fbdevhw"
[     9.660] (II) LoadModule: "fbdevhw"
[     9.661] (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
[     9.666] (II) Module fbdevhw: vendor=3D"X.Org Foundation"
[     9.667] 	compiled for 1.19.6, module version =3D 0.0.2
[     9.667] 	ABI class: X.Org Video Driver, version 23.0
[     9.667] (II) FBDEV(0): using default device
[     9.667] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card su=
pport
[     9.667] (II) FBDEV(0): Creating default Display subsection in Screen s=
ection
	"Builtin Default fbdev Screen 0" for depth/fbbpp 24/32
[     9.667] (=3D=3D) FBDEV(0): Depth 24, (=3D=3D) framebuffer bpp 32
[     9.667] (=3D=3D) FBDEV(0): RGB weight 888
[     9.667] (=3D=3D) FBDEV(0): Default visual is TrueColor
[     9.668] (=3D=3D) FBDEV(0): Using gamma correction (1.0, 1.0, 1.0)
[     9.668] (II) FBDEV(0): hardware:  (video memory: 510kB)
[     9.668] (II) FBDEV(0): checking modes against framebuffer device...
[     9.668] (II) FBDEV(0): checking modes against monitor...
[     9.668] (--) FBDEV(0): Virtual size is 480x272 (pitch 480)
[     9.668] (**) FBDEV(0):  Built-in mode "current"
[     9.668] (=3D=3D) FBDEV(0): DPI set to (96, 96)
[     9.668] (II) Loading sub module "fb"
[     9.668] (II) LoadModule: "fb"
[     9.669] (II) Loading /usr/lib/xorg/modules/libfb.so
[     9.691] (II) Module fb: vendor=3D"X.Org Foundation"
[     9.691] 	compiled for 1.19.6, module version =3D 1.0.0
[     9.691] 	ABI class: X.Org ANSI C Emulation, version 0.4
[     9.691] (**) FBDEV(0): using shadow framebuffer
[     9.691] (II) Loading sub module "shadow"
[     9.691] (II) LoadModule: "shadow"
[     9.692] (II) Loading /usr/lib/xorg/modules/libshadow.so
[     9.697] (II) Module shadow: vendor=3D"X.Org Foundation"
[     9.698] 	compiled for 1.19.6, module version =3D 1.1.0
[     9.698] 	ABI class: X.Org ANSI C Emulation, version 0.4
[     9.698] (=3D=3D) Depth 24 pixmap format is 32 bpp
[     9.727] (=3D=3D) FBDEV(0): Backing store enabled
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.728] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.729] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.730] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.731] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.732] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.733] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.734] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.735] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.736] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.737] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.738] (EE) FBDEV(0): FBIOPUTCMAP: Invalid argument
[     9.739] (=3D=3D) FBDEV(0): DPMS enabled
[     9.740] (=3D=3D) RandR enabled
[    10.064] (II) config/udev: Adding input device gpio_buttons@0 (/dev/inp=
ut/event0)
[    10.065] (II) No input driver specified, ignoring this device.
[    10.065] (II) This device may have been added with another device file.
[    10.066] (II) config/udev: Adding input device (unnamed) (/dev/ttyS0)
[    10.066] (II) No input driver specified, ignoring this device.
[    10.066] (II) This device may have been added with another device file.
[    10.067] (II) config/udev: Adding input device (unnamed) (/dev/ttyS1)
[    10.067] (II) No input driver specified, ignoring this device.
[    10.067] (II) This device may have been added with another device file.
[    10.069] (II) config/udev: Adding input device (unnamed) (/dev/ttyS2)
[    10.069] (II) No input driver specified, ignoring this device.
[    10.069] (II) This device may have been added with another device file.
[    10.070] (II) config/udev: Adding input device (unnamed) (/dev/ttyS3)
[    10.070] (II) No input driver specified, ignoring this device.
[    10.070] (II) This device may have been added with another device file.
[    10.071] (II) config/udev: Adding input device (unnamed) (/dev/ttyS4)
[    10.071] (II) No input driver specified, ignoring this device.
[    10.071] (II) This device may have been added with another device file.
[    10.072] (II) config/udev: Adding input device (unnamed) (/dev/ttyS5)
[    10.072] (II) No input driver specified, ignoring this device.
[    10.072] (II) This device may have been added with another device file.
[    10.072] (II) config/udev: Adding input device (unnamed) (/dev/ttyS6)
[    10.073] (II) No input driver specified, ignoring this device.
[    10.073] (II) This device may have been added with another device file.
[    10.073] (II) config/udev: Adding input device (unnamed) (/dev/ttyS7)
[    10.073] (II) No input driver specified, ignoring this device.
[    10.074] (II) This device may have been added with another device file.
[    10.074] (II) config/udev: Adding input device (unnamed) (/dev/ttyS8)
[    10.074] (II) No input driver specified, ignoring this device.
[    10.074] (II) This device may have been added with another device file.
[    10.075] (II) config/udev: Adding input device (unnamed) (/dev/ttyS9)
[    10.075] (II) No input driver specified, ignoring this device.
[    10.075] (II) This device may have been added with another device file.
[    10.076] (II) config/udev: Adding input device (unnamed) (/dev/input/mi=
ce)
[    10.076] (II) No input driver specified, ignoring this device.
[    10.076] (II) This device may have been added with another device file.
[    10.076] (II) config/udev: Adding input device (unnamed) (/dev/console)
[    10.076] (II) No input driver specified, ignoring this device.
[    10.076] (II) This device may have been added with another device file.
[    10.077] (II) config/udev: Adding input device (unnamed) (/dev/ptmx)
[    10.077] (II) No input driver specified, ignoring this device.
[    10.077] (II) This device may have been added with another device file.
[    10.077] (II) config/udev: Adding input device (unnamed) (/dev/ptya0)
[    10.077] (II) No input driver specified, ignoring this device.
[    10.078] (II) This device may have been added with another device file.
[    10.078] (II) config/udev: Adding input device (unnamed) (/dev/ptya1)
[    10.078] (II) No input driver specified, ignoring this device.
[    10.078] (II) This device may have been added with another device file.
[    10.078] (II) config/udev: Adding input device (unnamed) (/dev/ptya2)
[    10.079] (II) No input driver specified, ignoring this device.
[    10.079] (II) This device may have been added with another device file.
[    10.079] (II) config/udev: Adding input device (unnamed) (/dev/ptya3)
[    10.079] (II) No input driver specified, ignoring this device.
[    10.079] (II) This device may have been added with another device file.
[    10.080] (II) config/udev: Adding input device (unnamed) (/dev/ptya4)
[    10.080] (II) No input driver specified, ignoring this device.
[    10.080] (II) This device may have been added with another device file.
[    10.080] (II) config/udev: Adding input device (unnamed) (/dev/ptya5)
[    10.080] (II) No input driver specified, ignoring this device.
[    10.080] (II) This device may have been added with another device file.
[    10.081] (II) config/udev: Adding input device (unnamed) (/dev/ptya6)
[    10.081] (II) No input driver specified, ignoring this device.
[    10.081] (II) This device may have been added with another device file.
[    10.081] (II) config/udev: Adding input device (unnamed) (/dev/ptya7)
[    10.082] (II) No input driver specified, ignoring this device.
[    10.082] (II) This device may have been added with another device file.
[    10.082] (II) config/udev: Adding input device (unnamed) (/dev/ptya8)
[    10.082] (II) No input driver specified, ignoring this device.
[    10.082] (II) This device may have been added with another device file.
[    10.083] (II) config/udev: Adding input device (unnamed) (/dev/ptya9)
[    10.083] (II) No input driver specified, ignoring this device.
[    10.083] (II) This device may have been added with another device file.
[    10.083] (II) config/udev: Adding input device (unnamed) (/dev/ptyaa)
[    10.083] (II) No input driver specified, ignoring this device.
[    10.083] (II) This device may have been added with another device file.
[    10.084] (II) config/udev: Adding input device (unnamed) (/dev/ptyab)
[    10.084] (II) No input driver specified, ignoring this device.
[    10.084] (II) This device may have been added with another device file.
[    10.084] (II) config/udev: Adding input device (unnamed) (/dev/ptyac)
[    10.084] (II) No input driver specified, ignoring this device.
[    10.084] (II) This device may have been added with another device file.
[    10.085] (II) config/udev: Adding input device (unnamed) (/dev/ptyad)
[    10.085] (II) No input driver specified, ignoring this device.
[    10.085] (II) This device may have been added with another device file.
[    10.085] (II) config/udev: Adding input device (unnamed) (/dev/ptyae)
[    10.085] (II) No input driver specified, ignoring this device.
[    10.085] (II) This device may have been added with another device file.
[    10.086] (II) config/udev: Adding input device (unnamed) (/dev/ptyaf)
[    10.086] (II) No input driver specified, ignoring this device.
[    10.086] (II) This device may have been added with another device file.
[    10.086] (II) config/udev: Adding input device (unnamed) (/dev/ptyb0)
[    10.086] (II) No input driver specified, ignoring this device.
[    10.086] (II) This device may have been added with another device file.
[    10.087] (II) config/udev: Adding input device (unnamed) (/dev/ptyb1)
[    10.087] (II) No input driver specified, ignoring this device.
[    10.087] (II) This device may have been added with another device file.
[    10.087] (II) config/udev: Adding input device (unnamed) (/dev/ptyb2)
[    10.087] (II) No input driver specified, ignoring this device.
[    10.087] (II) This device may have been added with another device file.
[    10.088] (II) config/udev: Adding input device (unnamed) (/dev/ptyb3)
[    10.088] (II) No input driver specified, ignoring this device.
[    10.088] (II) This device may have been added with another device file.
[    10.088] (II) config/udev: Adding input device (unnamed) (/dev/ptyb4)
[    10.088] (II) No input driver specified, ignoring this device.
[    10.088] (II) This device may have been added with another device file.
[    10.089] (II) config/udev: Adding input device (unnamed) (/dev/ptyb5)
[    10.089] (II) No input driver specified, ignoring this device.
[    10.089] (II) This device may have been added with another device file.
[    10.089] (II) config/udev: Adding input device (unnamed) (/dev/ptyb6)
[    10.089] (II) No input driver specified, ignoring this device.
[    10.090] (II) This device may have been added with another device file.
[    10.090] (II) config/udev: Adding input device (unnamed) (/dev/ptyb7)
[    10.091] (II) No input driver specified, ignoring this device.
[    10.091] (II) This device may have been added with another device file.
[    10.091] (II) config/udev: Adding input device (unnamed) (/dev/ptyb8)
[    10.091] (II) No input driver specified, ignoring this device.
[    10.091] (II) This device may have been added with another device file.
[    10.092] (II) config/udev: Adding input device (unnamed) (/dev/ptyb9)
[    10.092] (II) No input driver specified, ignoring this device.
[    10.092] (II) This device may have been added with another device file.
[    10.092] (II) config/udev: Adding input device (unnamed) (/dev/ptyba)
[    10.092] (II) No input driver specified, ignoring this device.
[    10.092] (II) This device may have been added with another device file.
[    10.093] (II) config/udev: Adding input device (unnamed) (/dev/ptybb)
[    10.093] (II) No input driver specified, ignoring this device.
[    10.093] (II) This device may have been added with another device file.
[    10.093] (II) config/udev: Adding input device (unnamed) (/dev/ptybc)
[    10.093] (II) No input driver specified, ignoring this device.
[    10.093] (II) This device may have been added with another device file.
[    10.094] (II) config/udev: Adding input device (unnamed) (/dev/ptybd)
[    10.094] (II) No input driver specified, ignoring this device.
[    10.094] (II) This device may have been added with another device file.
[    10.094] (II) config/udev: Adding input device (unnamed) (/dev/ptybe)
[    10.094] (II) No input driver specified, ignoring this device.
[    10.094] (II) This device may have been added with another device file.
[    10.095] (II) config/udev: Adding input device (unnamed) (/dev/ptybf)
[    10.095] (II) No input driver specified, ignoring this device.
[    10.095] (II) This device may have been added with another device file.
[    10.095] (II) config/udev: Adding input device (unnamed) (/dev/ptyc0)
[    10.096] (II) No input driver specified, ignoring this device.
[    10.096] (II) This device may have been added with another device file.
[    10.096] (II) config/udev: Adding input device (unnamed) (/dev/ptyc1)
[    10.096] (II) No input driver specified, ignoring this device.
[    10.096] (II) This device may have been added with another device file.
[    10.096] (II) config/udev: Adding input device (unnamed) (/dev/ptyc2)
[    10.097] (II) No input driver specified, ignoring this device.
[    10.097] (II) This device may have been added with another device file.
[    10.097] (II) config/udev: Adding input device (unnamed) (/dev/ptyc3)
[    10.097] (II) No input driver specified, ignoring this device.
[    10.097] (II) This device may have been added with another device file.
[    10.098] (II) config/udev: Adding input device (unnamed) (/dev/ptyc4)
[    10.098] (II) No input driver specified, ignoring this device.
[    10.098] (II) This device may have been added with another device file.
[    10.098] (II) config/udev: Adding input device (unnamed) (/dev/ptyc5)
[    10.098] (II) No input driver specified, ignoring this device.
[    10.098] (II) This device may have been added with another device file.
[    10.099] (II) config/udev: Adding input device (unnamed) (/dev/ptyc6)
[    10.099] (II) No input driver specified, ignoring this device.
[    10.099] (II) This device may have been added with another device file.
[    10.099] (II) config/udev: Adding input device (unnamed) (/dev/ptyc7)
[    10.099] (II) No input driver specified, ignoring this device.
[    10.099] (II) This device may have been added with another device file.
[    10.100] (II) config/udev: Adding input device (unnamed) (/dev/ptyc8)
[    10.100] (II) No input driver specified, ignoring this device.
[    10.100] (II) This device may have been added with another device file.
[    10.101] (II) config/udev: Adding input device (unnamed) (/dev/ptyc9)
[    10.101] (II) No input driver specified, ignoring this device.
[    10.101] (II) This device may have been added with another device file.
[    10.101] (II) config/udev: Adding input device (unnamed) (/dev/ptyca)
[    10.101] (II) No input driver specified, ignoring this device.
[    10.101] (II) This device may have been added with another device file.
[    10.102] (II) config/udev: Adding input device (unnamed) (/dev/ptycb)
[    10.102] (II) No input driver specified, ignoring this device.
[    10.102] (II) This device may have been added with another device file.
[    10.102] (II) config/udev: Adding input device (unnamed) (/dev/ptycc)
[    10.102] (II) No input driver specified, ignoring this device.
[    10.102] (II) This device may have been added with another device file.
[    10.103] (II) config/udev: Adding input device (unnamed) (/dev/ptycd)
[    10.103] (II) No input driver specified, ignoring this device.
[    10.103] (II) This device may have been added with another device file.
[    10.103] (II) config/udev: Adding input device (unnamed) (/dev/ptyce)
[    10.103] (II) No input driver specified, ignoring this device.
[    10.103] (II) This device may have been added with another device file.
[    10.104] (II) config/udev: Adding input device (unnamed) (/dev/ptycf)
[    10.104] (II) No input driver specified, ignoring this device.
[    10.104] (II) This device may have been added with another device file.
[    10.104] (II) config/udev: Adding input device (unnamed) (/dev/ptyd0)
[    10.104] (II) No input driver specified, ignoring this device.
[    10.104] (II) This device may have been added with another device file.
[    10.105] (II) config/udev: Adding input device (unnamed) (/dev/ptyd1)
[    10.105] (II) No input driver specified, ignoring this device.
[    10.105] (II) This device may have been added with another device file.
[    10.105] (II) config/udev: Adding input device (unnamed) (/dev/ptyd2)
[    10.105] (II) No input driver specified, ignoring this device.
[    10.106] (II) This device may have been added with another device file.
[    10.106] (II) config/udev: Adding input device (unnamed) (/dev/ptyd3)
[    10.106] (II) No input driver specified, ignoring this device.
[    10.106] (II) This device may have been added with another device file.
[    10.106] (II) config/udev: Adding input device (unnamed) (/dev/ptyd4)
[    10.107] (II) No input driver specified, ignoring this device.
[    10.107] (II) This device may have been added with another device file.
[    10.107] (II) config/udev: Adding input device (unnamed) (/dev/ptyd5)
[    10.107] (II) No input driver specified, ignoring this device.
[    10.107] (II) This device may have been added with another device file.
[    10.108] (II) config/udev: Adding input device (unnamed) (/dev/ptyd6)
[    10.108] (II) No input driver specified, ignoring this device.
[    10.108] (II) This device may have been added with another device file.
[    10.108] (II) config/udev: Adding input device (unnamed) (/dev/ptyd7)
[    10.108] (II) No input driver specified, ignoring this device.
[    10.108] (II) This device may have been added with another device file.
[    10.109] (II) config/udev: Adding input device (unnamed) (/dev/ptyd8)
[    10.109] (II) No input driver specified, ignoring this device.
[    10.109] (II) This device may have been added with another device file.
[    10.109] (II) config/udev: Adding input device (unnamed) (/dev/ptyd9)
[    10.109] (II) No input driver specified, ignoring this device.
[    10.109] (II) This device may have been added with another device file.
[    10.110] (II) config/udev: Adding input device (unnamed) (/dev/ptyda)
[    10.110] (II) No input driver specified, ignoring this device.
[    10.110] (II) This device may have been added with another device file.
[    10.111] (II) config/udev: Adding input device (unnamed) (/dev/ptydb)
[    10.111] (II) No input driver specified, ignoring this device.
[    10.111] (II) This device may have been added with another device file.
[    10.111] (II) config/udev: Adding input device (unnamed) (/dev/ptydc)
[    10.111] (II) No input driver specified, ignoring this device.
[    10.111] (II) This device may have been added with another device file.
[    10.112] (II) config/udev: Adding input device (unnamed) (/dev/ptydd)
[    10.112] (II) No input driver specified, ignoring this device.
[    10.112] (II) This device may have been added with another device file.
[    10.112] (II) config/udev: Adding input device (unnamed) (/dev/ptyde)
[    10.113] (II) No input driver specified, ignoring this device.
[    10.113] (II) This device may have been added with another device file.
[    10.113] (II) config/udev: Adding input device (unnamed) (/dev/ptydf)
[    10.113] (II) No input driver specified, ignoring this device.
[    10.113] (II) This device may have been added with another device file.
[    10.114] (II) config/udev: Adding input device (unnamed) (/dev/ptye0)
[    10.114] (II) No input driver specified, ignoring this device.
[    10.114] (II) This device may have been added with another device file.
[    10.114] (II) config/udev: Adding input device (unnamed) (/dev/ptye1)
[    10.114] (II) No input driver specified, ignoring this device.
[    10.114] (II) This device may have been added with another device file.
[    10.115] (II) config/udev: Adding input device (unnamed) (/dev/ptye2)
[    10.115] (II) No input driver specified, ignoring this device.
[    10.115] (II) This device may have been added with another device file.
[    10.115] (II) config/udev: Adding input device (unnamed) (/dev/ptye3)
[    10.115] (II) No input driver specified, ignoring this device.
[    10.115] (II) This device may have been added with another device file.
[    10.116] (II) config/udev: Adding input device (unnamed) (/dev/ptye4)
[    10.116] (II) No input driver specified, ignoring this device.
[    10.116] (II) This device may have been added with another device file.
[    10.116] (II) config/udev: Adding input device (unnamed) (/dev/ptye5)
[    10.116] (II) No input driver specified, ignoring this device.
[    10.116] (II) This device may have been added with another device file.
[    10.117] (II) config/udev: Adding input device (unnamed) (/dev/ptye6)
[    10.117] (II) No input driver specified, ignoring this device.
[    10.117] (II) This device may have been added with another device file.
[    10.117] (II) config/udev: Adding input device (unnamed) (/dev/ptye7)
[    10.117] (II) No input driver specified, ignoring this device.
[    10.117] (II) This device may have been added with another device file.
[    10.118] (II) config/udev: Adding input device (unnamed) (/dev/ptye8)
[    10.118] (II) No input driver specified, ignoring this device.
[    10.118] (II) This device may have been added with another device file.
[    10.118] (II) config/udev: Adding input device (unnamed) (/dev/ptye9)
[    10.118] (II) No input driver specified, ignoring this device.
[    10.118] (II) This device may have been added with another device file.
[    10.119] (II) config/udev: Adding input device (unnamed) (/dev/ptyea)
[    10.119] (II) No input driver specified, ignoring this device.
[    10.119] (II) This device may have been added with another device file.
[    10.119] (II) config/udev: Adding input device (unnamed) (/dev/ptyeb)
[    10.119] (II) No input driver specified, ignoring this device.
[    10.119] (II) This device may have been added with another device file.
[    10.120] (II) config/udev: Adding input device (unnamed) (/dev/ptyec)
[    10.120] (II) No input driver specified, ignoring this device.
[    10.120] (II) This device may have been added with another device file.
[    10.121] (II) config/udev: Adding input device (unnamed) (/dev/ptyed)
[    10.121] (II) No input driver specified, ignoring this device.
[    10.121] (II) This device may have been added with another device file.
[    10.121] (II) config/udev: Adding input device (unnamed) (/dev/ptyee)
[    10.121] (II) No input driver specified, ignoring this device.
[    10.121] (II) This device may have been added with another device file.
[    10.122] (II) config/udev: Adding input device (unnamed) (/dev/ptyef)
[    10.122] (II) No input driver specified, ignoring this device.
[    10.122] (II) This device may have been added with another device file.
[    10.122] (II) config/udev: Adding input device (unnamed) (/dev/ptyp0)
[    10.122] (II) No input driver specified, ignoring this device.
[    10.122] (II) This device may have been added with another device file.
[    10.123] (II) config/udev: Adding input device (unnamed) (/dev/ptyp1)
[    10.123] (II) No input driver specified, ignoring this device.
[    10.123] (II) This device may have been added with another device file.
[    10.123] (II) config/udev: Adding input device (unnamed) (/dev/ptyp2)
[    10.124] (II) No input driver specified, ignoring this device.
[    10.124] (II) This device may have been added with another device file.
[    10.124] (II) config/udev: Adding input device (unnamed) (/dev/ptyp3)
[    10.124] (II) No input driver specified, ignoring this device.
[    10.124] (II) This device may have been added with another device file.
[    10.125] (II) config/udev: Adding input device (unnamed) (/dev/ptyp4)
[    10.125] (II) No input driver specified, ignoring this device.
[    10.125] (II) This device may have been added with another device file.
[    10.125] (II) config/udev: Adding input device (unnamed) (/dev/ptyp5)
[    10.125] (II) No input driver specified, ignoring this device.
[    10.125] (II) This device may have been added with another device file.
[    10.126] (II) config/udev: Adding input device (unnamed) (/dev/ptyp6)
[    10.126] (II) No input driver specified, ignoring this device.
[    10.126] (II) This device may have been added with another device file.
[    10.126] (II) config/udev: Adding input device (unnamed) (/dev/ptyp7)
[    10.126] (II) No input driver specified, ignoring this device.
[    10.126] (II) This device may have been added with another device file.
[    10.127] (II) config/udev: Adding input device (unnamed) (/dev/ptyp8)
[    10.127] (II) No input driver specified, ignoring this device.
[    10.127] (II) This device may have been added with another device file.
[    10.128] (II) config/udev: Adding input device (unnamed) (/dev/ptyp9)
[    10.128] (II) No input driver specified, ignoring this device.
[    10.128] (II) This device may have been added with another device file.
[    10.128] (II) config/udev: Adding input device (unnamed) (/dev/ptypa)
[    10.128] (II) No input driver specified, ignoring this device.
[    10.128] (II) This device may have been added with another device file.
[    10.129] (II) config/udev: Adding input device (unnamed) (/dev/ptypb)
[    10.129] (II) No input driver specified, ignoring this device.
[    10.129] (II) This device may have been added with another device file.
[    10.129] (II) config/udev: Adding input device (unnamed) (/dev/ptypc)
[    10.129] (II) No input driver specified, ignoring this device.
[    10.129] (II) This device may have been added with another device file.
[    10.130] (II) config/udev: Adding input device (unnamed) (/dev/ptypd)
[    10.130] (II) No input driver specified, ignoring this device.
[    10.130] (II) This device may have been added with another device file.
[    10.131] (II) config/udev: Adding input device (unnamed) (/dev/ptype)
[    10.131] (II) No input driver specified, ignoring this device.
[    10.131] (II) This device may have been added with another device file.
[    10.131] (II) config/udev: Adding input device (unnamed) (/dev/ptypf)
[    10.131] (II) No input driver specified, ignoring this device.
[    10.131] (II) This device may have been added with another device file.
[    10.132] (II) config/udev: Adding input device (unnamed) (/dev/ptyq0)
[    10.132] (II) No input driver specified, ignoring this device.
[    10.132] (II) This device may have been added with another device file.
[    10.132] (II) config/udev: Adding input device (unnamed) (/dev/ptyq1)
[    10.132] (II) No input driver specified, ignoring this device.
[    10.132] (II) This device may have been added with another device file.
[    10.133] (II) config/udev: Adding input device (unnamed) (/dev/ptyq2)
[    10.133] (II) No input driver specified, ignoring this device.
[    10.133] (II) This device may have been added with another device file.
[    10.133] (II) config/udev: Adding input device (unnamed) (/dev/ptyq3)
[    10.133] (II) No input driver specified, ignoring this device.
[    10.133] (II) This device may have been added with another device file.
[    10.134] (II) config/udev: Adding input device (unnamed) (/dev/ptyq4)
[    10.134] (II) No input driver specified, ignoring this device.
[    10.134] (II) This device may have been added with another device file.
[    10.134] (II) config/udev: Adding input device (unnamed) (/dev/ptyq5)
[    10.134] (II) No input driver specified, ignoring this device.
[    10.135] (II) This device may have been added with another device file.
[    10.135] (II) config/udev: Adding input device (unnamed) (/dev/ptyq6)
[    10.135] (II) No input driver specified, ignoring this device.
[    10.135] (II) This device may have been added with another device file.
[    10.136] (II) config/udev: Adding input device (unnamed) (/dev/ptyq7)
[    10.136] (II) No input driver specified, ignoring this device.
[    10.136] (II) This device may have been added with another device file.
[    10.136] (II) config/udev: Adding input device (unnamed) (/dev/ptyq8)
[    10.136] (II) No input driver specified, ignoring this device.
[    10.136] (II) This device may have been added with another device file.
[    10.137] (II) config/udev: Adding input device (unnamed) (/dev/ptyq9)
[    10.137] (II) No input driver specified, ignoring this device.
[    10.137] (II) This device may have been added with another device file.
[    10.137] (II) config/udev: Adding input device (unnamed) (/dev/ptyqa)
[    10.137] (II) No input driver specified, ignoring this device.
[    10.137] (II) This device may have been added with another device file.
[    10.138] (II) config/udev: Adding input device (unnamed) (/dev/ptyqb)
[    10.138] (II) No input driver specified, ignoring this device.
[    10.138] (II) This device may have been added with another device file.
[    10.138] (II) config/udev: Adding input device (unnamed) (/dev/ptyqc)
[    10.138] (II) No input driver specified, ignoring this device.
[    10.138] (II) This device may have been added with another device file.
[    10.139] (II) config/udev: Adding input device (unnamed) (/dev/ptyqd)
[    10.139] (II) No input driver specified, ignoring this device.
[    10.139] (II) This device may have been added with another device file.
[    10.139] (II) config/udev: Adding input device (unnamed) (/dev/ptyqe)
[    10.139] (II) No input driver specified, ignoring this device.
[    10.139] (II) This device may have been added with another device file.
[    10.140] (II) config/udev: Adding input device (unnamed) (/dev/ptyqf)
[    10.140] (II) No input driver specified, ignoring this device.
[    10.140] (II) This device may have been added with another device file.
[    10.141] (II) config/udev: Adding input device (unnamed) (/dev/ptyr0)
[    10.141] (II) No input driver specified, ignoring this device.
[    10.141] (II) This device may have been added with another device file.
[    10.141] (II) config/udev: Adding input device (unnamed) (/dev/ptyr1)
[    10.141] (II) No input driver specified, ignoring this device.
[    10.141] (II) This device may have been added with another device file.
[    10.142] (II) config/udev: Adding input device (unnamed) (/dev/ptyr2)
[    10.142] (II) No input driver specified, ignoring this device.
[    10.142] (II) This device may have been added with another device file.
[    10.142] (II) config/udev: Adding input device (unnamed) (/dev/ptyr3)
[    10.142] (II) No input driver specified, ignoring this device.
[    10.142] (II) This device may have been added with another device file.
[    10.143] (II) config/udev: Adding input device (unnamed) (/dev/ptyr4)
[    10.143] (II) No input driver specified, ignoring this device.
[    10.143] (II) This device may have been added with another device file.
[    10.143] (II) config/udev: Adding input device (unnamed) (/dev/ptyr5)
[    10.143] (II) No input driver specified, ignoring this device.
[    10.143] (II) This device may have been added with another device file.
[    10.144] (II) config/udev: Adding input device (unnamed) (/dev/ptyr6)
[    10.144] (II) No input driver specified, ignoring this device.
[    10.144] (II) This device may have been added with another device file.
[    10.145] (II) config/udev: Adding input device (unnamed) (/dev/ptyr7)
[    10.145] (II) No input driver specified, ignoring this device.
[    10.145] (II) This device may have been added with another device file.
[    10.145] (II) config/udev: Adding input device (unnamed) (/dev/ptyr8)
[    10.145] (II) No input driver specified, ignoring this device.
[    10.145] (II) This device may have been added with another device file.
[    10.146] (II) config/udev: Adding input device (unnamed) (/dev/ptyr9)
[    10.146] (II) No input driver specified, ignoring this device.
[    10.146] (II) This device may have been added with another device file.
[    10.146] (II) config/udev: Adding input device (unnamed) (/dev/ptyra)
[    10.147] (II) No input driver specified, ignoring this device.
[    10.147] (II) This device may have been added with another device file.
[    10.147] (II) config/udev: Adding input device (unnamed) (/dev/ptyrb)
[    10.147] (II) No input driver specified, ignoring this device.
[    10.147] (II) This device may have been added with another device file.
[    10.148] (II) config/udev: Adding input device (unnamed) (/dev/ptyrc)
[    10.148] (II) No input driver specified, ignoring this device.
[    10.148] (II) This device may have been added with another device file.
[    10.148] (II) config/udev: Adding input device (unnamed) (/dev/ptyrd)
[    10.148] (II) No input driver specified, ignoring this device.
[    10.148] (II) This device may have been added with another device file.
[    10.149] (II) config/udev: Adding input device (unnamed) (/dev/ptyre)
[    10.149] (II) No input driver specified, ignoring this device.
[    10.149] (II) This device may have been added with another device file.
[    10.149] (II) config/udev: Adding input device (unnamed) (/dev/ptyrf)
[    10.149] (II) No input driver specified, ignoring this device.
[    10.149] (II) This device may have been added with another device file.
[    10.150] (II) config/udev: Adding input device (unnamed) (/dev/ptys0)
[    10.150] (II) No input driver specified, ignoring this device.
[    10.150] (II) This device may have been added with another device file.
[    10.151] (II) config/udev: Adding input device (unnamed) (/dev/ptys1)
[    10.151] (II) No input driver specified, ignoring this device.
[    10.151] (II) This device may have been added with another device file.
[    10.151] (II) config/udev: Adding input device (unnamed) (/dev/ptys2)
[    10.151] (II) No input driver specified, ignoring this device.
[    10.151] (II) This device may have been added with another device file.
[    10.152] (II) config/udev: Adding input device (unnamed) (/dev/ptys3)
[    10.152] (II) No input driver specified, ignoring this device.
[    10.152] (II) This device may have been added with another device file.
[    10.152] (II) config/udev: Adding input device (unnamed) (/dev/ptys4)
[    10.153] (II) No input driver specified, ignoring this device.
[    10.153] (II) This device may have been added with another device file.
[    10.153] (II) config/udev: Adding input device (unnamed) (/dev/ptys5)
[    10.153] (II) No input driver specified, ignoring this device.
[    10.153] (II) This device may have been added with another device file.
[    10.153] (II) config/udev: Adding input device (unnamed) (/dev/ptys6)
[    10.154] (II) No input driver specified, ignoring this device.
[    10.154] (II) This device may have been added with another device file.
[    10.154] (II) config/udev: Adding input device (unnamed) (/dev/ptys7)
[    10.154] (II) No input driver specified, ignoring this device.
[    10.154] (II) This device may have been added with another device file.
[    10.155] (II) config/udev: Adding input device (unnamed) (/dev/ptys8)
[    10.155] (II) No input driver specified, ignoring this device.
[    10.155] (II) This device may have been added with another device file.
[    10.155] (II) config/udev: Adding input device (unnamed) (/dev/ptys9)
[    10.155] (II) No input driver specified, ignoring this device.
[    10.155] (II) This device may have been added with another device file.
[    10.156] (II) config/udev: Adding input device (unnamed) (/dev/ptysa)
[    10.156] (II) No input driver specified, ignoring this device.
[    10.156] (II) This device may have been added with another device file.
[    10.156] (II) config/udev: Adding input device (unnamed) (/dev/ptysb)
[    10.156] (II) No input driver specified, ignoring this device.
[    10.156] (II) This device may have been added with another device file.
[    10.157] (II) config/udev: Adding input device (unnamed) (/dev/ptysc)
[    10.157] (II) No input driver specified, ignoring this device.
[    10.157] (II) This device may have been added with another device file.
[    10.157] (II) config/udev: Adding input device (unnamed) (/dev/ptysd)
[    10.157] (II) No input driver specified, ignoring this device.
[    10.157] (II) This device may have been added with another device file.
[    10.158] (II) config/udev: Adding input device (unnamed) (/dev/ptyse)
[    10.158] (II) No input driver specified, ignoring this device.
[    10.158] (II) This device may have been added with another device file.
[    10.158] (II) config/udev: Adding input device (unnamed) (/dev/ptysf)
[    10.158] (II) No input driver specified, ignoring this device.
[    10.158] (II) This device may have been added with another device file.
[    10.159] (II) config/udev: Adding input device (unnamed) (/dev/ptyt0)
[    10.159] (II) No input driver specified, ignoring this device.
[    10.159] (II) This device may have been added with another device file.
[    10.159] (II) config/udev: Adding input device (unnamed) (/dev/ptyt1)
[    10.159] (II) No input driver specified, ignoring this device.
[    10.159] (II) This device may have been added with another device file.
[    10.160] (II) config/udev: Adding input device (unnamed) (/dev/ptyt2)
[    10.160] (II) No input driver specified, ignoring this device.
[    10.160] (II) This device may have been added with another device file.
[    10.161] (II) config/udev: Adding input device (unnamed) (/dev/ptyt3)
[    10.161] (II) No input driver specified, ignoring this device.
[    10.161] (II) This device may have been added with another device file.
[    10.161] (II) config/udev: Adding input device (unnamed) (/dev/ptyt4)
[    10.162] (II) No input driver specified, ignoring this device.
[    10.162] (II) This device may have been added with another device file.
[    10.162] (II) config/udev: Adding input device (unnamed) (/dev/ptyt5)
[    10.162] (II) No input driver specified, ignoring this device.
[    10.162] (II) This device may have been added with another device file.
[    10.163] (II) config/udev: Adding input device (unnamed) (/dev/ptyt6)
[    10.163] (II) No input driver specified, ignoring this device.
[    10.163] (II) This device may have been added with another device file.
[    10.163] (II) config/udev: Adding input device (unnamed) (/dev/ptyt7)
[    10.163] (II) No input driver specified, ignoring this device.
[    10.163] (II) This device may have been added with another device file.
[    10.164] (II) config/udev: Adding input device (unnamed) (/dev/ptyt8)
[    10.164] (II) No input driver specified, ignoring this device.
[    10.164] (II) This device may have been added with another device file.
[    10.164] (II) config/udev: Adding input device (unnamed) (/dev/ptyt9)
[    10.164] (II) No input driver specified, ignoring this device.
[    10.164] (II) This device may have been added with another device file.
[    10.165] (II) config/udev: Adding input device (unnamed) (/dev/ptyta)
[    10.165] (II) No input driver specified, ignoring this device.
[    10.165] (II) This device may have been added with another device file.
[    10.165] (II) config/udev: Adding input device (unnamed) (/dev/ptytb)
[    10.165] (II) No input driver specified, ignoring this device.
[    10.165] (II) This device may have been added with another device file.
[    10.166] (II) config/udev: Adding input device (unnamed) (/dev/ptytc)
[    10.166] (II) No input driver specified, ignoring this device.
[    10.166] (II) This device may have been added with another device file.
[    10.166] (II) config/udev: Adding input device (unnamed) (/dev/ptytd)
[    10.166] (II) No input driver specified, ignoring this device.
[    10.166] (II) This device may have been added with another device file.
[    10.167] (II) config/udev: Adding input device (unnamed) (/dev/ptyte)
[    10.167] (II) No input driver specified, ignoring this device.
[    10.167] (II) This device may have been added with another device file.
[    10.167] (II) config/udev: Adding input device (unnamed) (/dev/ptytf)
[    10.167] (II) No input driver specified, ignoring this device.
[    10.168] (II) This device may have been added with another device file.
[    10.168] (II) config/udev: Adding input device (unnamed) (/dev/ptyu0)
[    10.168] (II) No input driver specified, ignoring this device.
[    10.168] (II) This device may have been added with another device file.
[    10.168] (II) config/udev: Adding input device (unnamed) (/dev/ptyu1)
[    10.169] (II) No input driver specified, ignoring this device.
[    10.169] (II) This device may have been added with another device file.
[    10.169] (II) config/udev: Adding input device (unnamed) (/dev/ptyu2)
[    10.169] (II) No input driver specified, ignoring this device.
[    10.169] (II) This device may have been added with another device file.
[    10.170] (II) config/udev: Adding input device (unnamed) (/dev/ptyu3)
[    10.170] (II) No input driver specified, ignoring this device.
[    10.170] (II) This device may have been added with another device file.
[    10.170] (II) config/udev: Adding input device (unnamed) (/dev/ptyu4)
[    10.171] (II) No input driver specified, ignoring this device.
[    10.171] (II) This device may have been added with another device file.
[    10.171] (II) config/udev: Adding input device (unnamed) (/dev/ptyu5)
[    10.171] (II) No input driver specified, ignoring this device.
[    10.171] (II) This device may have been added with another device file.
[    10.172] (II) config/udev: Adding input device (unnamed) (/dev/ptyu6)
[    10.172] (II) No input driver specified, ignoring this device.
[    10.172] (II) This device may have been added with another device file.
[    10.172] (II) config/udev: Adding input device (unnamed) (/dev/ptyu7)
[    10.172] (II) No input driver specified, ignoring this device.
[    10.172] (II) This device may have been added with another device file.
[    10.173] (II) config/udev: Adding input device (unnamed) (/dev/ptyu8)
[    10.173] (II) No input driver specified, ignoring this device.
[    10.173] (II) This device may have been added with another device file.
[    10.173] (II) config/udev: Adding input device (unnamed) (/dev/ptyu9)
[    10.173] (II) No input driver specified, ignoring this device.
[    10.173] (II) This device may have been added with another device file.
[    10.174] (II) config/udev: Adding input device (unnamed) (/dev/ptyua)
[    10.174] (II) No input driver specified, ignoring this device.
[    10.174] (II) This device may have been added with another device file.
[    10.174] (II) config/udev: Adding input device (unnamed) (/dev/ptyub)
[    10.174] (II) No input driver specified, ignoring this device.
[    10.174] (II) This device may have been added with another device file.
[    10.175] (II) config/udev: Adding input device (unnamed) (/dev/ptyuc)
[    10.175] (II) No input driver specified, ignoring this device.
[    10.175] (II) This device may have been added with another device file.
[    10.175] (II) config/udev: Adding input device (unnamed) (/dev/ptyud)
[    10.175] (II) No input driver specified, ignoring this device.
[    10.175] (II) This device may have been added with another device file.
[    10.176] (II) config/udev: Adding input device (unnamed) (/dev/ptyue)
[    10.176] (II) No input driver specified, ignoring this device.
[    10.176] (II) This device may have been added with another device file.
[    10.176] (II) config/udev: Adding input device (unnamed) (/dev/ptyuf)
[    10.176] (II) No input driver specified, ignoring this device.
[    10.176] (II) This device may have been added with another device file.
[    10.177] (II) config/udev: Adding input device (unnamed) (/dev/ptyv0)
[    10.177] (II) No input driver specified, ignoring this device.
[    10.177] (II) This device may have been added with another device file.
[    10.177] (II) config/udev: Adding input device (unnamed) (/dev/ptyv1)
[    10.177] (II) No input driver specified, ignoring this device.
[    10.178] (II) This device may have been added with another device file.
[    10.178] (II) config/udev: Adding input device (unnamed) (/dev/ptyv2)
[    10.178] (II) No input driver specified, ignoring this device.
[    10.178] (II) This device may have been added with another device file.
[    10.178] (II) config/udev: Adding input device (unnamed) (/dev/ptyv3)
[    10.179] (II) No input driver specified, ignoring this device.
[    10.179] (II) This device may have been added with another device file.
[    10.179] (II) config/udev: Adding input device (unnamed) (/dev/ptyv4)
[    10.179] (II) No input driver specified, ignoring this device.
[    10.179] (II) This device may have been added with another device file.
[    10.180] (II) config/udev: Adding input device (unnamed) (/dev/ptyv5)
[    10.180] (II) No input driver specified, ignoring this device.
[    10.180] (II) This device may have been added with another device file.
[    10.181] (II) config/udev: Adding input device (unnamed) (/dev/ptyv6)
[    10.181] (II) No input driver specified, ignoring this device.
[    10.181] (II) This device may have been added with another device file.
[    10.181] (II) config/udev: Adding input device (unnamed) (/dev/ptyv7)
[    10.181] (II) No input driver specified, ignoring this device.
[    10.181] (II) This device may have been added with another device file.
[    10.182] (II) config/udev: Adding input device (unnamed) (/dev/ptyv8)
[    10.182] (II) No input driver specified, ignoring this device.
[    10.182] (II) This device may have been added with another device file.
[    10.182] (II) config/udev: Adding input device (unnamed) (/dev/ptyv9)
[    10.182] (II) No input driver specified, ignoring this device.
[    10.182] (II) This device may have been added with another device file.
[    10.183] (II) config/udev: Adding input device (unnamed) (/dev/ptyva)
[    10.183] (II) No input driver specified, ignoring this device.
[    10.183] (II) This device may have been added with another device file.
[    10.183] (II) config/udev: Adding input device (unnamed) (/dev/ptyvb)
[    10.183] (II) No input driver specified, ignoring this device.
[    10.183] (II) This device may have been added with another device file.
[    10.184] (II) config/udev: Adding input device (unnamed) (/dev/ptyvc)
[    10.184] (II) No input driver specified, ignoring this device.
[    10.184] (II) This device may have been added with another device file.
[    10.184] (II) config/udev: Adding input device (unnamed) (/dev/ptyvd)
[    10.184] (II) No input driver specified, ignoring this device.
[    10.184] (II) This device may have been added with another device file.
[    10.185] (II) config/udev: Adding input device (unnamed) (/dev/ptyve)
[    10.185] (II) No input driver specified, ignoring this device.
[    10.185] (II) This device may have been added with another device file.
[    10.185] (II) config/udev: Adding input device (unnamed) (/dev/ptyvf)
[    10.185] (II) No input driver specified, ignoring this device.
[    10.186] (II) This device may have been added with another device file.
[    10.186] (II) config/udev: Adding input device (unnamed) (/dev/ptyw0)
[    10.186] (II) No input driver specified, ignoring this device.
[    10.186] (II) This device may have been added with another device file.
[    10.186] (II) config/udev: Adding input device (unnamed) (/dev/ptyw1)
[    10.187] (II) No input driver specified, ignoring this device.
[    10.187] (II) This device may have been added with another device file.
[    10.187] (II) config/udev: Adding input device (unnamed) (/dev/ptyw2)
[    10.187] (II) No input driver specified, ignoring this device.
[    10.187] (II) This device may have been added with another device file.
[    10.188] (II) config/udev: Adding input device (unnamed) (/dev/ptyw3)
[    10.188] (II) No input driver specified, ignoring this device.
[    10.188] (II) This device may have been added with another device file.
[    10.188] (II) config/udev: Adding input device (unnamed) (/dev/ptyw4)
[    10.188] (II) No input driver specified, ignoring this device.
[    10.188] (II) This device may have been added with another device file.
[    10.189] (II) config/udev: Adding input device (unnamed) (/dev/ptyw5)
[    10.189] (II) No input driver specified, ignoring this device.
[    10.189] (II) This device may have been added with another device file.
[    10.189] (II) config/udev: Adding input device (unnamed) (/dev/ptyw6)
[    10.189] (II) No input driver specified, ignoring this device.
[    10.189] (II) This device may have been added with another device file.
[    10.190] (II) config/udev: Adding input device (unnamed) (/dev/ptyw7)
[    10.190] (II) No input driver specified, ignoring this device.
[    10.190] (II) This device may have been added with another device file.
[    10.191] (II) config/udev: Adding input device (unnamed) (/dev/ptyw8)
[    10.191] (II) No input driver specified, ignoring this device.
[    10.191] (II) This device may have been added with another device file.
[    10.191] (II) config/udev: Adding input device (unnamed) (/dev/ptyw9)
[    10.191] (II) No input driver specified, ignoring this device.
[    10.191] (II) This device may have been added with another device file.
[    10.192] (II) config/udev: Adding input device (unnamed) (/dev/ptywa)
[    10.192] (II) No input driver specified, ignoring this device.
[    10.192] (II) This device may have been added with another device file.
[    10.192] (II) config/udev: Adding input device (unnamed) (/dev/ptywb)
[    10.192] (II) No input driver specified, ignoring this device.
[    10.192] (II) This device may have been added with another device file.
[    10.193] (II) config/udev: Adding input device (unnamed) (/dev/ptywc)
[    10.193] (II) No input driver specified, ignoring this device.
[    10.193] (II) This device may have been added with another device file.
[    10.193] (II) config/udev: Adding input device (unnamed) (/dev/ptywd)
[    10.193] (II) No input driver specified, ignoring this device.
[    10.193] (II) This device may have been added with another device file.
[    10.194] (II) config/udev: Adding input device (unnamed) (/dev/ptywe)
[    10.194] (II) No input driver specified, ignoring this device.
[    10.194] (II) This device may have been added with another device file.
[    10.194] (II) config/udev: Adding input device (unnamed) (/dev/ptywf)
[    10.194] (II) No input driver specified, ignoring this device.
[    10.194] (II) This device may have been added with another device file.
[    10.195] (II) config/udev: Adding input device (unnamed) (/dev/ptyx0)
[    10.195] (II) No input driver specified, ignoring this device.
[    10.195] (II) This device may have been added with another device file.
[    10.195] (II) config/udev: Adding input device (unnamed) (/dev/ptyx1)
[    10.195] (II) No input driver specified, ignoring this device.
[    10.196] (II) This device may have been added with another device file.
[    10.196] (II) config/udev: Adding input device (unnamed) (/dev/ptyx2)
[    10.196] (II) No input driver specified, ignoring this device.
[    10.196] (II) This device may have been added with another device file.
[    10.196] (II) config/udev: Adding input device (unnamed) (/dev/ptyx3)
[    10.197] (II) No input driver specified, ignoring this device.
[    10.197] (II) This device may have been added with another device file.
[    10.197] (II) config/udev: Adding input device (unnamed) (/dev/ptyx4)
[    10.197] (II) No input driver specified, ignoring this device.
[    10.197] (II) This device may have been added with another device file.
[    10.198] (II) config/udev: Adding input device (unnamed) (/dev/ptyx5)
[    10.198] (II) No input driver specified, ignoring this device.
[    10.198] (II) This device may have been added with another device file.
[    10.198] (II) config/udev: Adding input device (unnamed) (/dev/ptyx6)
[    10.198] (II) No input driver specified, ignoring this device.
[    10.198] (II) This device may have been added with another device file.
[    10.199] (II) config/udev: Adding input device (unnamed) (/dev/ptyx7)
[    10.199] (II) No input driver specified, ignoring this device.
[    10.199] (II) This device may have been added with another device file.
[    10.199] (II) config/udev: Adding input device (unnamed) (/dev/ptyx8)
[    10.199] (II) No input driver specified, ignoring this device.
[    10.199] (II) This device may have been added with another device file.
[    10.200] (II) config/udev: Adding input device (unnamed) (/dev/ptyx9)
[    10.200] (II) No input driver specified, ignoring this device.
[    10.200] (II) This device may have been added with another device file.
[    10.201] (II) config/udev: Adding input device (unnamed) (/dev/ptyxa)
[    10.201] (II) No input driver specified, ignoring this device.
[    10.201] (II) This device may have been added with another device file.
[    10.201] (II) config/udev: Adding input device (unnamed) (/dev/ptyxb)
[    10.201] (II) No input driver specified, ignoring this device.
[    10.201] (II) This device may have been added with another device file.
[    10.202] (II) config/udev: Adding input device (unnamed) (/dev/ptyxc)
[    10.202] (II) No input driver specified, ignoring this device.
[    10.202] (II) This device may have been added with another device file.
[    10.202] (II) config/udev: Adding input device (unnamed) (/dev/ptyxd)
[    10.202] (II) No input driver specified, ignoring this device.
[    10.202] (II) This device may have been added with another device file.
[    10.203] (II) config/udev: Adding input device (unnamed) (/dev/ptyxe)
[    10.203] (II) No input driver specified, ignoring this device.
[    10.203] (II) This device may have been added with another device file.
[    10.203] (II) config/udev: Adding input device (unnamed) (/dev/ptyxf)
[    10.203] (II) No input driver specified, ignoring this device.
[    10.204] (II) This device may have been added with another device file.
[    10.204] (II) config/udev: Adding input device (unnamed) (/dev/ptyy0)
[    10.204] (II) No input driver specified, ignoring this device.
[    10.204] (II) This device may have been added with another device file.
[    10.204] (II) config/udev: Adding input device (unnamed) (/dev/ptyy1)
[    10.205] (II) No input driver specified, ignoring this device.
[    10.205] (II) This device may have been added with another device file.
[    10.205] (II) config/udev: Adding input device (unnamed) (/dev/ptyy2)
[    10.205] (II) No input driver specified, ignoring this device.
[    10.205] (II) This device may have been added with another device file.
[    10.206] (II) config/udev: Adding input device (unnamed) (/dev/ptyy3)
[    10.206] (II) No input driver specified, ignoring this device.
[    10.206] (II) This device may have been added with another device file.
[    10.206] (II) config/udev: Adding input device (unnamed) (/dev/ptyy4)
[    10.206] (II) No input driver specified, ignoring this device.
[    10.206] (II) This device may have been added with another device file.
[    10.207] (II) config/udev: Adding input device (unnamed) (/dev/ptyy5)
[    10.207] (II) No input driver specified, ignoring this device.
[    10.207] (II) This device may have been added with another device file.
[    10.207] (II) config/udev: Adding input device (unnamed) (/dev/ptyy6)
[    10.207] (II) No input driver specified, ignoring this device.
[    10.207] (II) This device may have been added with another device file.
[    10.208] (II) config/udev: Adding input device (unnamed) (/dev/ptyy7)
[    10.208] (II) No input driver specified, ignoring this device.
[    10.208] (II) This device may have been added with another device file.
[    10.208] (II) config/udev: Adding input device (unnamed) (/dev/ptyy8)
[    10.208] (II) No input driver specified, ignoring this device.
[    10.208] (II) This device may have been added with another device file.
[    10.209] (II) config/udev: Adding input device (unnamed) (/dev/ptyy9)
[    10.209] (II) No input driver specified, ignoring this device.
[    10.209] (II) This device may have been added with another device file.
[    10.209] (II) config/udev: Adding input device (unnamed) (/dev/ptyya)
[    10.209] (II) No input driver specified, ignoring this device.
[    10.209] (II) This device may have been added with another device file.
[    10.210] (II) config/udev: Adding input device (unnamed) (/dev/ptyyb)
[    10.210] (II) No input driver specified, ignoring this device.
[    10.210] (II) This device may have been added with another device file.
[    10.211] (II) config/udev: Adding input device (unnamed) (/dev/ptyyc)
[    10.211] (II) No input driver specified, ignoring this device.
[    10.211] (II) This device may have been added with another device file.
[    10.211] (II) config/udev: Adding input device (unnamed) (/dev/ptyyd)
[    10.211] (II) No input driver specified, ignoring this device.
[    10.211] (II) This device may have been added with another device file.
[    10.212] (II) config/udev: Adding input device (unnamed) (/dev/ptyye)
[    10.212] (II) No input driver specified, ignoring this device.
[    10.212] (II) This device may have been added with another device file.
[    10.212] (II) config/udev: Adding input device (unnamed) (/dev/ptyyf)
[    10.212] (II) No input driver specified, ignoring this device.
[    10.212] (II) This device may have been added with another device file.
[    10.213] (II) config/udev: Adding input device (unnamed) (/dev/ptyz0)
[    10.213] (II) No input driver specified, ignoring this device.
[    10.213] (II) This device may have been added with another device file.
[    10.213] (II) config/udev: Adding input device (unnamed) (/dev/ptyz1)
[    10.213] (II) No input driver specified, ignoring this device.
[    10.214] (II) This device may have been added with another device file.
[    10.214] (II) config/udev: Adding input device (unnamed) (/dev/ptyz2)
[    10.214] (II) No input driver specified, ignoring this device.
[    10.214] (II) This device may have been added with another device file.
[    10.215] (II) config/udev: Adding input device (unnamed) (/dev/ptyz3)
[    10.215] (II) No input driver specified, ignoring this device.
[    10.215] (II) This device may have been added with another device file.
[    10.215] (II) config/udev: Adding input device (unnamed) (/dev/ptyz4)
[    10.215] (II) No input driver specified, ignoring this device.
[    10.215] (II) This device may have been added with another device file.
[    10.216] (II) config/udev: Adding input device (unnamed) (/dev/ptyz5)
[    10.216] (II) No input driver specified, ignoring this device.
[    10.216] (II) This device may have been added with another device file.
[    10.216] (II) config/udev: Adding input device (unnamed) (/dev/ptyz6)
[    10.216] (II) No input driver specified, ignoring this device.
[    10.216] (II) This device may have been added with another device file.
[    10.217] (II) config/udev: Adding input device (unnamed) (/dev/ptyz7)
[    10.217] (II) No input driver specified, ignoring this device.
[    10.217] (II) This device may have been added with another device file.
[    10.217] (II) config/udev: Adding input device (unnamed) (/dev/ptyz8)
[    10.217] (II) No input driver specified, ignoring this device.
[    10.217] (II) This device may have been added with another device file.
[    10.218] (II) config/udev: Adding input device (unnamed) (/dev/ptyz9)
[    10.218] (II) No input driver specified, ignoring this device.
[    10.218] (II) This device may have been added with another device file.
[    10.218] (II) config/udev: Adding input device (unnamed) (/dev/ptyza)
[    10.218] (II) No input driver specified, ignoring this device.
[    10.218] (II) This device may have been added with another device file.
[    10.219] (II) config/udev: Adding input device (unnamed) (/dev/ptyzb)
[    10.219] (II) No input driver specified, ignoring this device.
[    10.219] (II) This device may have been added with another device file.
[    10.219] (II) config/udev: Adding input device (unnamed) (/dev/ptyzc)
[    10.219] (II) No input driver specified, ignoring this device.
[    10.220] (II) This device may have been added with another device file.
[    10.220] (II) config/udev: Adding input device (unnamed) (/dev/ptyzd)
[    10.220] (II) No input driver specified, ignoring this device.
[    10.220] (II) This device may have been added with another device file.
[    10.221] (II) config/udev: Adding input device (unnamed) (/dev/ptyze)
[    10.221] (II) No input driver specified, ignoring this device.
[    10.221] (II) This device may have been added with another device file.
[    10.221] (II) config/udev: Adding input device (unnamed) (/dev/ptyzf)
[    10.222] (II) No input driver specified, ignoring this device.
[    10.222] (II) This device may have been added with another device file.
[    10.222] (II) config/udev: Adding input device (unnamed) (/dev/tty)
[    10.222] (II) No input driver specified, ignoring this device.
[    10.222] (II) This device may have been added with another device file.
[    10.223] (II) config/udev: Adding input device (unnamed) (/dev/tty0)
[    10.223] (II) No input driver specified, ignoring this device.
[    10.223] (II) This device may have been added with another device file.
[    10.223] (II) config/udev: Adding input device (unnamed) (/dev/tty1)
[    10.223] (II) No input driver specified, ignoring this device.
[    10.223] (II) This device may have been added with another device file.
[    10.224] (II) config/udev: Adding input device (unnamed) (/dev/tty10)
[    10.224] (II) No input driver specified, ignoring this device.
[    10.224] (II) This device may have been added with another device file.
[    10.224] (II) config/udev: Adding input device (unnamed) (/dev/tty11)
[    10.224] (II) No input driver specified, ignoring this device.
[    10.224] (II) This device may have been added with another device file.
[    10.225] (II) config/udev: Adding input device (unnamed) (/dev/tty12)
[    10.225] (II) No input driver specified, ignoring this device.
[    10.225] (II) This device may have been added with another device file.
[    10.225] (II) config/udev: Adding input device (unnamed) (/dev/tty13)
[    10.225] (II) No input driver specified, ignoring this device.
[    10.225] (II) This device may have been added with another device file.
[    10.226] (II) config/udev: Adding input device (unnamed) (/dev/tty14)
[    10.226] (II) No input driver specified, ignoring this device.
[    10.226] (II) This device may have been added with another device file.
[    10.226] (II) config/udev: Adding input device (unnamed) (/dev/tty15)
[    10.226] (II) No input driver specified, ignoring this device.
[    10.226] (II) This device may have been added with another device file.
[    10.227] (II) config/udev: Adding input device (unnamed) (/dev/tty16)
[    10.227] (II) No input driver specified, ignoring this device.
[    10.227] (II) This device may have been added with another device file.
[    10.227] (II) config/udev: Adding input device (unnamed) (/dev/tty17)
[    10.227] (II) No input driver specified, ignoring this device.
[    10.227] (II) This device may have been added with another device file.
[    10.228] (II) config/udev: Adding input device (unnamed) (/dev/tty18)
[    10.228] (II) No input driver specified, ignoring this device.
[    10.228] (II) This device may have been added with another device file.
[    10.228] (II) config/udev: Adding input device (unnamed) (/dev/tty19)
[    10.228] (II) No input driver specified, ignoring this device.
[    10.228] (II) This device may have been added with another device file.
[    10.229] (II) config/udev: Adding input device (unnamed) (/dev/tty2)
[    10.229] (II) No input driver specified, ignoring this device.
[    10.229] (II) This device may have been added with another device file.
[    10.229] (II) config/udev: Adding input device (unnamed) (/dev/tty20)
[    10.229] (II) No input driver specified, ignoring this device.
[    10.229] (II) This device may have been added with another device file.
[    10.230] (II) config/udev: Adding input device (unnamed) (/dev/tty21)
[    10.230] (II) No input driver specified, ignoring this device.
[    10.230] (II) This device may have been added with another device file.
[    10.231] (II) config/udev: Adding input device (unnamed) (/dev/tty22)
[    10.231] (II) No input driver specified, ignoring this device.
[    10.231] (II) This device may have been added with another device file.
[    10.231] (II) config/udev: Adding input device (unnamed) (/dev/tty23)
[    10.231] (II) No input driver specified, ignoring this device.
[    10.232] (II) This device may have been added with another device file.
[    10.232] (II) config/udev: Adding input device (unnamed) (/dev/tty24)
[    10.232] (II) No input driver specified, ignoring this device.
[    10.232] (II) This device may have been added with another device file.
[    10.233] (II) config/udev: Adding input device (unnamed) (/dev/tty25)
[    10.233] (II) No input driver specified, ignoring this device.
[    10.233] (II) This device may have been added with another device file.
[    10.233] (II) config/udev: Adding input device (unnamed) (/dev/tty26)
[    10.233] (II) No input driver specified, ignoring this device.
[    10.233] (II) This device may have been added with another device file.
[    10.234] (II) config/udev: Adding input device (unnamed) (/dev/tty27)
[    10.234] (II) No input driver specified, ignoring this device.
[    10.234] (II) This device may have been added with another device file.
[    10.234] (II) config/udev: Adding input device (unnamed) (/dev/tty28)
[    10.234] (II) No input driver specified, ignoring this device.
[    10.234] (II) This device may have been added with another device file.
[    10.235] (II) config/udev: Adding input device (unnamed) (/dev/tty29)
[    10.235] (II) No input driver specified, ignoring this device.
[    10.235] (II) This device may have been added with another device file.
[    10.235] (II) config/udev: Adding input device (unnamed) (/dev/tty3)
[    10.235] (II) No input driver specified, ignoring this device.
[    10.235] (II) This device may have been added with another device file.
[    10.236] (II) config/udev: Adding input device (unnamed) (/dev/tty30)
[    10.236] (II) No input driver specified, ignoring this device.
[    10.236] (II) This device may have been added with another device file.
[    10.236] (II) config/udev: Adding input device (unnamed) (/dev/tty31)
[    10.236] (II) No input driver specified, ignoring this device.
[    10.236] (II) This device may have been added with another device file.
[    10.237] (II) config/udev: Adding input device (unnamed) (/dev/tty32)
[    10.237] (II) No input driver specified, ignoring this device.
[    10.237] (II) This device may have been added with another device file.
[    10.237] (II) config/udev: Adding input device (unnamed) (/dev/tty33)
[    10.237] (II) No input driver specified, ignoring this device.
[    10.238] (II) This device may have been added with another device file.
[    10.238] (II) config/udev: Adding input device (unnamed) (/dev/tty34)
[    10.238] (II) No input driver specified, ignoring this device.
[    10.238] (II) This device may have been added with another device file.
[    10.238] (II) config/udev: Adding input device (unnamed) (/dev/tty35)
[    10.239] (II) No input driver specified, ignoring this device.
[    10.239] (II) This device may have been added with another device file.
[    10.239] (II) config/udev: Adding input device (unnamed) (/dev/tty36)
[    10.239] (II) No input driver specified, ignoring this device.
[    10.239] (II) This device may have been added with another device file.
[    10.240] (II) config/udev: Adding input device (unnamed) (/dev/tty37)
[    10.240] (II) No input driver specified, ignoring this device.
[    10.240] (II) This device may have been added with another device file.
[    10.240] (II) config/udev: Adding input device (unnamed) (/dev/tty38)
[    10.240] (II) No input driver specified, ignoring this device.
[    10.240] (II) This device may have been added with another device file.
[    10.241] (II) config/udev: Adding input device (unnamed) (/dev/tty39)
[    10.241] (II) No input driver specified, ignoring this device.
[    10.241] (II) This device may have been added with another device file.
[    10.242] (II) config/udev: Adding input device (unnamed) (/dev/tty4)
[    10.242] (II) No input driver specified, ignoring this device.
[    10.242] (II) This device may have been added with another device file.
[    10.242] (II) config/udev: Adding input device (unnamed) (/dev/tty40)
[    10.242] (II) No input driver specified, ignoring this device.
[    10.242] (II) This device may have been added with another device file.
[    10.243] (II) config/udev: Adding input device (unnamed) (/dev/tty41)
[    10.243] (II) No input driver specified, ignoring this device.
[    10.243] (II) This device may have been added with another device file.
[    10.243] (II) config/udev: Adding input device (unnamed) (/dev/tty42)
[    10.243] (II) No input driver specified, ignoring this device.
[    10.243] (II) This device may have been added with another device file.
[    10.244] (II) config/udev: Adding input device (unnamed) (/dev/tty43)
[    10.244] (II) No input driver specified, ignoring this device.
[    10.244] (II) This device may have been added with another device file.
[    10.244] (II) config/udev: Adding input device (unnamed) (/dev/tty44)
[    10.244] (II) No input driver specified, ignoring this device.
[    10.244] (II) This device may have been added with another device file.
[    10.245] (II) config/udev: Adding input device (unnamed) (/dev/tty45)
[    10.245] (II) No input driver specified, ignoring this device.
[    10.245] (II) This device may have been added with another device file.
[    10.245] (II) config/udev: Adding input device (unnamed) (/dev/tty46)
[    10.245] (II) No input driver specified, ignoring this device.
[    10.245] (II) This device may have been added with another device file.
[    10.246] (II) config/udev: Adding input device (unnamed) (/dev/tty47)
[    10.246] (II) No input driver specified, ignoring this device.
[    10.246] (II) This device may have been added with another device file.
[    10.246] (II) config/udev: Adding input device (unnamed) (/dev/tty48)
[    10.246] (II) No input driver specified, ignoring this device.
[    10.246] (II) This device may have been added with another device file.
[    10.247] (II) config/udev: Adding input device (unnamed) (/dev/tty49)
[    10.247] (II) No input driver specified, ignoring this device.
[    10.247] (II) This device may have been added with another device file.
[    10.247] (II) config/udev: Adding input device (unnamed) (/dev/tty5)
[    10.247] (II) No input driver specified, ignoring this device.
[    10.247] (II) This device may have been added with another device file.
[    10.248] (II) config/udev: Adding input device (unnamed) (/dev/tty50)
[    10.248] (II) No input driver specified, ignoring this device.
[    10.248] (II) This device may have been added with another device file.
[    10.248] (II) config/udev: Adding input device (unnamed) (/dev/tty51)
[    10.248] (II) No input driver specified, ignoring this device.
[    10.249] (II) This device may have been added with another device file.
[    10.249] (II) config/udev: Adding input device (unnamed) (/dev/tty52)
[    10.249] (II) No input driver specified, ignoring this device.
[    10.249] (II) This device may have been added with another device file.
[    10.249] (II) config/udev: Adding input device (unnamed) (/dev/tty53)
[    10.250] (II) No input driver specified, ignoring this device.
[    10.250] (II) This device may have been added with another device file.
[    10.250] (II) config/udev: Adding input device (unnamed) (/dev/tty54)
[    10.251] (II) No input driver specified, ignoring this device.
[    10.251] (II) This device may have been added with another device file.
[    10.251] (II) config/udev: Adding input device (unnamed) (/dev/tty55)
[    10.251] (II) No input driver specified, ignoring this device.
[    10.251] (II) This device may have been added with another device file.
[    10.252] (II) config/udev: Adding input device (unnamed) (/dev/tty56)
[    10.252] (II) No input driver specified, ignoring this device.
[    10.252] (II) This device may have been added with another device file.
[    10.252] (II) config/udev: Adding input device (unnamed) (/dev/tty57)
[    10.252] (II) No input driver specified, ignoring this device.
[    10.252] (II) This device may have been added with another device file.
[    10.253] (II) config/udev: Adding input device (unnamed) (/dev/tty58)
[    10.253] (II) No input driver specified, ignoring this device.
[    10.253] (II) This device may have been added with another device file.
[    10.253] (II) config/udev: Adding input device (unnamed) (/dev/tty59)
[    10.253] (II) No input driver specified, ignoring this device.
[    10.253] (II) This device may have been added with another device file.
[    10.254] (II) config/udev: Adding input device (unnamed) (/dev/tty6)
[    10.254] (II) No input driver specified, ignoring this device.
[    10.254] (II) This device may have been added with another device file.
[    10.254] (II) config/udev: Adding input device (unnamed) (/dev/tty60)
[    10.254] (II) No input driver specified, ignoring this device.
[    10.254] (II) This device may have been added with another device file.
[    10.255] (II) config/udev: Adding input device (unnamed) (/dev/tty61)
[    10.255] (II) No input driver specified, ignoring this device.
[    10.255] (II) This device may have been added with another device file.
[    10.255] (II) config/udev: Adding input device (unnamed) (/dev/tty62)
[    10.255] (II) No input driver specified, ignoring this device.
[    10.255] (II) This device may have been added with another device file.
[    10.256] (II) config/udev: Adding input device (unnamed) (/dev/tty63)
[    10.256] (II) No input driver specified, ignoring this device.
[    10.256] (II) This device may have been added with another device file.
[    10.256] (II) config/udev: Adding input device (unnamed) (/dev/tty7)
[    10.256] (II) No input driver specified, ignoring this device.
[    10.256] (II) This device may have been added with another device file.
[    10.257] (II) config/udev: Adding input device (unnamed) (/dev/tty8)
[    10.257] (II) No input driver specified, ignoring this device.
[    10.257] (II) This device may have been added with another device file.
[    10.257] (II) config/udev: Adding input device (unnamed) (/dev/tty9)
[    10.258] (II) No input driver specified, ignoring this device.
[    10.258] (II) This device may have been added with another device file.
[    10.258] (II) config/udev: Adding input device (unnamed) (/dev/ttya0)
[    10.258] (II) No input driver specified, ignoring this device.
[    10.258] (II) This device may have been added with another device file.
[    10.259] (II) config/udev: Adding input device (unnamed) (/dev/ttya1)
[    10.259] (II) No input driver specified, ignoring this device.
[    10.259] (II) This device may have been added with another device file.
[    10.259] (II) config/udev: Adding input device (unnamed) (/dev/ttya2)
[    10.259] (II) No input driver specified, ignoring this device.
[    10.259] (II) This device may have been added with another device file.
[    10.260] (II) config/udev: Adding input device (unnamed) (/dev/ttya3)
[    10.260] (II) No input driver specified, ignoring this device.
[    10.260] (II) This device may have been added with another device file.
[    10.260] (II) config/udev: Adding input device (unnamed) (/dev/ttya4)
[    10.261] (II) No input driver specified, ignoring this device.
[    10.261] (II) This device may have been added with another device file.
[    10.261] (II) config/udev: Adding input device (unnamed) (/dev/ttya5)
[    10.261] (II) No input driver specified, ignoring this device.
[    10.261] (II) This device may have been added with another device file.
[    10.262] (II) config/udev: Adding input device (unnamed) (/dev/ttya6)
[    10.262] (II) No input driver specified, ignoring this device.
[    10.262] (II) This device may have been added with another device file.
[    10.262] (II) config/udev: Adding input device (unnamed) (/dev/ttya7)
[    10.262] (II) No input driver specified, ignoring this device.
[    10.262] (II) This device may have been added with another device file.
[    10.263] (II) config/udev: Adding input device (unnamed) (/dev/ttya8)
[    10.263] (II) No input driver specified, ignoring this device.
[    10.263] (II) This device may have been added with another device file.
[    10.263] (II) config/udev: Adding input device (unnamed) (/dev/ttya9)
[    10.263] (II) No input driver specified, ignoring this device.
[    10.263] (II) This device may have been added with another device file.
[    10.264] (II) config/udev: Adding input device (unnamed) (/dev/ttyaa)
[    10.264] (II) No input driver specified, ignoring this device.
[    10.264] (II) This device may have been added with another device file.
[    10.264] (II) config/udev: Adding input device (unnamed) (/dev/ttyab)
[    10.264] (II) No input driver specified, ignoring this device.
[    10.264] (II) This device may have been added with another device file.
[    10.265] (II) config/udev: Adding input device (unnamed) (/dev/ttyac)
[    10.265] (II) No input driver specified, ignoring this device.
[    10.265] (II) This device may have been added with another device file.
[    10.265] (II) config/udev: Adding input device (unnamed) (/dev/ttyad)
[    10.265] (II) No input driver specified, ignoring this device.
[    10.265] (II) This device may have been added with another device file.
[    10.266] (II) config/udev: Adding input device (unnamed) (/dev/ttyae)
[    10.266] (II) No input driver specified, ignoring this device.
[    10.266] (II) This device may have been added with another device file.
[    10.266] (II) config/udev: Adding input device (unnamed) (/dev/ttyaf)
[    10.266] (II) No input driver specified, ignoring this device.
[    10.266] (II) This device may have been added with another device file.
[    10.267] (II) config/udev: Adding input device (unnamed) (/dev/ttyb0)
[    10.267] (II) No input driver specified, ignoring this device.
[    10.267] (II) This device may have been added with another device file.
[    10.267] (II) config/udev: Adding input device (unnamed) (/dev/ttyb1)
[    10.268] (II) No input driver specified, ignoring this device.
[    10.268] (II) This device may have been added with another device file.
[    10.268] (II) config/udev: Adding input device (unnamed) (/dev/ttyb2)
[    10.268] (II) No input driver specified, ignoring this device.
[    10.268] (II) This device may have been added with another device file.
[    10.269] (II) config/udev: Adding input device (unnamed) (/dev/ttyb3)
[    10.269] (II) No input driver specified, ignoring this device.
[    10.269] (II) This device may have been added with another device file.
[    10.269] (II) config/udev: Adding input device (unnamed) (/dev/ttyb4)
[    10.269] (II) No input driver specified, ignoring this device.
[    10.269] (II) This device may have been added with another device file.
[    10.270] (II) config/udev: Adding input device (unnamed) (/dev/ttyb5)
[    10.270] (II) No input driver specified, ignoring this device.
[    10.270] (II) This device may have been added with another device file.
[    10.271] (II) config/udev: Adding input device (unnamed) (/dev/ttyb6)
[    10.271] (II) No input driver specified, ignoring this device.
[    10.271] (II) This device may have been added with another device file.
[    10.271] (II) config/udev: Adding input device (unnamed) (/dev/ttyb7)
[    10.271] (II) No input driver specified, ignoring this device.
[    10.271] (II) This device may have been added with another device file.
[    10.272] (II) config/udev: Adding input device (unnamed) (/dev/ttyb8)
[    10.272] (II) No input driver specified, ignoring this device.
[    10.272] (II) This device may have been added with another device file.
[    10.272] (II) config/udev: Adding input device (unnamed) (/dev/ttyb9)
[    10.272] (II) No input driver specified, ignoring this device.
[    10.272] (II) This device may have been added with another device file.
[    10.273] (II) config/udev: Adding input device (unnamed) (/dev/ttyba)
[    10.273] (II) No input driver specified, ignoring this device.
[    10.273] (II) This device may have been added with another device file.
[    10.273] (II) config/udev: Adding input device (unnamed) (/dev/ttybb)
[    10.273] (II) No input driver specified, ignoring this device.
[    10.273] (II) This device may have been added with another device file.
[    10.274] (II) config/udev: Adding input device (unnamed) (/dev/ttybc)
[    10.274] (II) No input driver specified, ignoring this device.
[    10.274] (II) This device may have been added with another device file.
[    10.274] (II) config/udev: Adding input device (unnamed) (/dev/ttybd)
[    10.274] (II) No input driver specified, ignoring this device.
[    10.274] (II) This device may have been added with another device file.
[    10.275] (II) config/udev: Adding input device (unnamed) (/dev/ttybe)
[    10.275] (II) No input driver specified, ignoring this device.
[    10.275] (II) This device may have been added with another device file.
[    10.275] (II) config/udev: Adding input device (unnamed) (/dev/ttybf)
[    10.276] (II) No input driver specified, ignoring this device.
[    10.276] (II) This device may have been added with another device file.
[    10.276] (II) config/udev: Adding input device (unnamed) (/dev/ttyc0)
[    10.276] (II) No input driver specified, ignoring this device.
[    10.276] (II) This device may have been added with another device file.
[    10.277] (II) config/udev: Adding input device (unnamed) (/dev/ttyc1)
[    10.277] (II) No input driver specified, ignoring this device.
[    10.277] (II) This device may have been added with another device file.
[    10.277] (II) config/udev: Adding input device (unnamed) (/dev/ttyc2)
[    10.277] (II) No input driver specified, ignoring this device.
[    10.277] (II) This device may have been added with another device file.
[    10.278] (II) config/udev: Adding input device (unnamed) (/dev/ttyc3)
[    10.278] (II) No input driver specified, ignoring this device.
[    10.278] (II) This device may have been added with another device file.
[    10.278] (II) config/udev: Adding input device (unnamed) (/dev/ttyc4)
[    10.278] (II) No input driver specified, ignoring this device.
[    10.278] (II) This device may have been added with another device file.
[    10.279] (II) config/udev: Adding input device (unnamed) (/dev/ttyc5)
[    10.279] (II) No input driver specified, ignoring this device.
[    10.279] (II) This device may have been added with another device file.
[    10.279] (II) config/udev: Adding input device (unnamed) (/dev/ttyc6)
[    10.279] (II) No input driver specified, ignoring this device.
[    10.279] (II) This device may have been added with another device file.
[    10.280] (II) config/udev: Adding input device (unnamed) (/dev/ttyc7)
[    10.280] (II) No input driver specified, ignoring this device.
[    10.280] (II) This device may have been added with another device file.
[    10.281] (II) config/udev: Adding input device (unnamed) (/dev/ttyc8)
[    10.281] (II) No input driver specified, ignoring this device.
[    10.281] (II) This device may have been added with another device file.
[    10.281] (II) config/udev: Adding input device (unnamed) (/dev/ttyc9)
[    10.281] (II) No input driver specified, ignoring this device.
[    10.281] (II) This device may have been added with another device file.
[    10.282] (II) config/udev: Adding input device (unnamed) (/dev/ttyca)
[    10.282] (II) No input driver specified, ignoring this device.
[    10.282] (II) This device may have been added with another device file.
[    10.282] (II) config/udev: Adding input device (unnamed) (/dev/ttycb)
[    10.282] (II) No input driver specified, ignoring this device.
[    10.282] (II) This device may have been added with another device file.
[    10.283] (II) config/udev: Adding input device (unnamed) (/dev/ttycc)
[    10.283] (II) No input driver specified, ignoring this device.
[    10.283] (II) This device may have been added with another device file.
[    10.283] (II) config/udev: Adding input device (unnamed) (/dev/ttycd)
[    10.283] (II) No input driver specified, ignoring this device.
[    10.283] (II) This device may have been added with another device file.
[    10.284] (II) config/udev: Adding input device (unnamed) (/dev/ttyce)
[    10.284] (II) No input driver specified, ignoring this device.
[    10.284] (II) This device may have been added with another device file.
[    10.284] (II) config/udev: Adding input device (unnamed) (/dev/ttycf)
[    10.284] (II) No input driver specified, ignoring this device.
[    10.284] (II) This device may have been added with another device file.
[    10.285] (II) config/udev: Adding input device (unnamed) (/dev/ttyd0)
[    10.285] (II) No input driver specified, ignoring this device.
[    10.285] (II) This device may have been added with another device file.
[    10.286] (II) config/udev: Adding input device (unnamed) (/dev/ttyd1)
[    10.286] (II) No input driver specified, ignoring this device.
[    10.286] (II) This device may have been added with another device file.
[    10.286] (II) config/udev: Adding input device (unnamed) (/dev/ttyd2)
[    10.286] (II) No input driver specified, ignoring this device.
[    10.286] (II) This device may have been added with another device file.
[    10.287] (II) config/udev: Adding input device (unnamed) (/dev/ttyd3)
[    10.287] (II) No input driver specified, ignoring this device.
[    10.287] (II) This device may have been added with another device file.
[    10.287] (II) config/udev: Adding input device (unnamed) (/dev/ttyd4)
[    10.287] (II) No input driver specified, ignoring this device.
[    10.287] (II) This device may have been added with another device file.
[    10.288] (II) config/udev: Adding input device (unnamed) (/dev/ttyd5)
[    10.288] (II) No input driver specified, ignoring this device.
[    10.288] (II) This device may have been added with another device file.
[    10.288] (II) config/udev: Adding input device (unnamed) (/dev/ttyd6)
[    10.288] (II) No input driver specified, ignoring this device.
[    10.288] (II) This device may have been added with another device file.
[    10.289] (II) config/udev: Adding input device (unnamed) (/dev/ttyd7)
[    10.289] (II) No input driver specified, ignoring this device.
[    10.289] (II) This device may have been added with another device file.
[    10.289] (II) config/udev: Adding input device (unnamed) (/dev/ttyd8)
[    10.289] (II) No input driver specified, ignoring this device.
[    10.289] (II) This device may have been added with another device file.
[    10.290] (II) config/udev: Adding input device (unnamed) (/dev/ttyd9)
[    10.290] (II) No input driver specified, ignoring this device.
[    10.290] (II) This device may have been added with another device file.
[    10.291] (II) config/udev: Adding input device (unnamed) (/dev/ttyda)
[    10.291] (II) No input driver specified, ignoring this device.
[    10.291] (II) This device may have been added with another device file.
[    10.291] (II) config/udev: Adding input device (unnamed) (/dev/ttydb)
[    10.291] (II) No input driver specified, ignoring this device.
[    10.291] (II) This device may have been added with another device file.
[    10.292] (II) config/udev: Adding input device (unnamed) (/dev/ttydc)
[    10.292] (II) No input driver specified, ignoring this device.
[    10.292] (II) This device may have been added with another device file.
[    10.292] (II) config/udev: Adding input device (unnamed) (/dev/ttydd)
[    10.292] (II) No input driver specified, ignoring this device.
[    10.292] (II) This device may have been added with another device file.
[    10.293] (II) config/udev: Adding input device (unnamed) (/dev/ttyde)
[    10.293] (II) No input driver specified, ignoring this device.
[    10.293] (II) This device may have been added with another device file.
[    10.293] (II) config/udev: Adding input device (unnamed) (/dev/ttydf)
[    10.294] (II) No input driver specified, ignoring this device.
[    10.294] (II) This device may have been added with another device file.
[    10.294] (II) config/udev: Adding input device (unnamed) (/dev/ttye0)
[    10.294] (II) No input driver specified, ignoring this device.
[    10.294] (II) This device may have been added with another device file.
[    10.295] (II) config/udev: Adding input device (unnamed) (/dev/ttye1)
[    10.295] (II) No input driver specified, ignoring this device.
[    10.295] (II) This device may have been added with another device file.
[    10.295] (II) config/udev: Adding input device (unnamed) (/dev/ttye2)
[    10.295] (II) No input driver specified, ignoring this device.
[    10.295] (II) This device may have been added with another device file.
[    10.296] (II) config/udev: Adding input device (unnamed) (/dev/ttye3)
[    10.296] (II) No input driver specified, ignoring this device.
[    10.296] (II) This device may have been added with another device file.
[    10.296] (II) config/udev: Adding input device (unnamed) (/dev/ttye4)
[    10.296] (II) No input driver specified, ignoring this device.
[    10.296] (II) This device may have been added with another device file.
[    10.297] (II) config/udev: Adding input device (unnamed) (/dev/ttye5)
[    10.297] (II) No input driver specified, ignoring this device.
[    10.297] (II) This device may have been added with another device file.
[    10.297] (II) config/udev: Adding input device (unnamed) (/dev/ttye6)
[    10.297] (II) No input driver specified, ignoring this device.
[    10.297] (II) This device may have been added with another device file.
[    10.298] (II) config/udev: Adding input device (unnamed) (/dev/ttye7)
[    10.298] (II) No input driver specified, ignoring this device.
[    10.298] (II) This device may have been added with another device file.
[    10.298] (II) config/udev: Adding input device (unnamed) (/dev/ttye8)
[    10.298] (II) No input driver specified, ignoring this device.
[    10.298] (II) This device may have been added with another device file.
[    10.299] (II) config/udev: Adding input device (unnamed) (/dev/ttye9)
[    10.299] (II) No input driver specified, ignoring this device.
[    10.299] (II) This device may have been added with another device file.
[    10.299] (II) config/udev: Adding input device (unnamed) (/dev/ttyea)
[    10.299] (II) No input driver specified, ignoring this device.
[    10.300] (II) This device may have been added with another device file.
[    10.300] (II) config/udev: Adding input device (unnamed) (/dev/ttyeb)
[    10.300] (II) No input driver specified, ignoring this device.
[    10.300] (II) This device may have been added with another device file.
[    10.301] (II) config/udev: Adding input device (unnamed) (/dev/ttyec)
[    10.301] (II) No input driver specified, ignoring this device.
[    10.301] (II) This device may have been added with another device file.
[    10.301] (II) config/udev: Adding input device (unnamed) (/dev/ttyed)
[    10.301] (II) No input driver specified, ignoring this device.
[    10.302] (II) This device may have been added with another device file.
[    10.302] (II) config/udev: Adding input device (unnamed) (/dev/ttyee)
[    10.302] (II) No input driver specified, ignoring this device.
[    10.302] (II) This device may have been added with another device file.
[    10.302] (II) config/udev: Adding input device (unnamed) (/dev/ttyef)
[    10.303] (II) No input driver specified, ignoring this device.
[    10.303] (II) This device may have been added with another device file.
[    10.303] (II) config/udev: Adding input device (unnamed) (/dev/ttyp0)
[    10.303] (II) No input driver specified, ignoring this device.
[    10.303] (II) This device may have been added with another device file.
[    10.304] (II) config/udev: Adding input device (unnamed) (/dev/ttyp1)
[    10.304] (II) No input driver specified, ignoring this device.
[    10.304] (II) This device may have been added with another device file.
[    10.304] (II) config/udev: Adding input device (unnamed) (/dev/ttyp2)
[    10.304] (II) No input driver specified, ignoring this device.
[    10.304] (II) This device may have been added with another device file.
[    10.305] (II) config/udev: Adding input device (unnamed) (/dev/ttyp3)
[    10.305] (II) No input driver specified, ignoring this device.
[    10.305] (II) This device may have been added with another device file.
[    10.305] (II) config/udev: Adding input device (unnamed) (/dev/ttyp4)
[    10.305] (II) No input driver specified, ignoring this device.
[    10.305] (II) This device may have been added with another device file.
[    10.306] (II) config/udev: Adding input device (unnamed) (/dev/ttyp5)
[    10.306] (II) No input driver specified, ignoring this device.
[    10.306] (II) This device may have been added with another device file.
[    10.306] (II) config/udev: Adding input device (unnamed) (/dev/ttyp6)
[    10.306] (II) No input driver specified, ignoring this device.
[    10.306] (II) This device may have been added with another device file.
[    10.307] (II) config/udev: Adding input device (unnamed) (/dev/ttyp7)
[    10.307] (II) No input driver specified, ignoring this device.
[    10.307] (II) This device may have been added with another device file.
[    10.307] (II) config/udev: Adding input device (unnamed) (/dev/ttyp8)
[    10.307] (II) No input driver specified, ignoring this device.
[    10.308] (II) This device may have been added with another device file.
[    10.308] (II) config/udev: Adding input device (unnamed) (/dev/ttyp9)
[    10.308] (II) No input driver specified, ignoring this device.
[    10.308] (II) This device may have been added with another device file.
[    10.308] (II) config/udev: Adding input device (unnamed) (/dev/ttypa)
[    10.309] (II) No input driver specified, ignoring this device.
[    10.309] (II) This device may have been added with another device file.
[    10.309] (II) config/udev: Adding input device (unnamed) (/dev/ttypb)
[    10.309] (II) No input driver specified, ignoring this device.
[    10.309] (II) This device may have been added with another device file.
[    10.310] (II) config/udev: Adding input device (unnamed) (/dev/ttypc)
[    10.310] (II) No input driver specified, ignoring this device.
[    10.310] (II) This device may have been added with another device file.
[    10.310] (II) config/udev: Adding input device (unnamed) (/dev/ttypd)
[    10.311] (II) No input driver specified, ignoring this device.
[    10.311] (II) This device may have been added with another device file.
[    10.311] (II) config/udev: Adding input device (unnamed) (/dev/ttype)
[    10.311] (II) No input driver specified, ignoring this device.
[    10.311] (II) This device may have been added with another device file.
[    10.312] (II) config/udev: Adding input device (unnamed) (/dev/ttypf)
[    10.312] (II) No input driver specified, ignoring this device.
[    10.312] (II) This device may have been added with another device file.
[    10.312] (II) config/udev: Adding input device (unnamed) (/dev/ttyq0)
[    10.312] (II) No input driver specified, ignoring this device.
[    10.312] (II) This device may have been added with another device file.
[    10.313] (II) config/udev: Adding input device (unnamed) (/dev/ttyq1)
[    10.313] (II) No input driver specified, ignoring this device.
[    10.313] (II) This device may have been added with another device file.
[    10.313] (II) config/udev: Adding input device (unnamed) (/dev/ttyq2)
[    10.313] (II) No input driver specified, ignoring this device.
[    10.313] (II) This device may have been added with another device file.
[    10.314] (II) config/udev: Adding input device (unnamed) (/dev/ttyq3)
[    10.314] (II) No input driver specified, ignoring this device.
[    10.314] (II) This device may have been added with another device file.
[    10.314] (II) config/udev: Adding input device (unnamed) (/dev/ttyq4)
[    10.314] (II) No input driver specified, ignoring this device.
[    10.314] (II) This device may have been added with another device file.
[    10.315] (II) config/udev: Adding input device (unnamed) (/dev/ttyq5)
[    10.315] (II) No input driver specified, ignoring this device.
[    10.315] (II) This device may have been added with another device file.
[    10.315] (II) config/udev: Adding input device (unnamed) (/dev/ttyq6)
[    10.315] (II) No input driver specified, ignoring this device.
[    10.315] (II) This device may have been added with another device file.
[    10.316] (II) config/udev: Adding input device (unnamed) (/dev/ttyq7)
[    10.316] (II) No input driver specified, ignoring this device.
[    10.316] (II) This device may have been added with another device file.
[    10.316] (II) config/udev: Adding input device (unnamed) (/dev/ttyq8)
[    10.316] (II) No input driver specified, ignoring this device.
[    10.316] (II) This device may have been added with another device file.
[    10.317] (II) config/udev: Adding input device (unnamed) (/dev/ttyq9)
[    10.317] (II) No input driver specified, ignoring this device.
[    10.317] (II) This device may have been added with another device file.
[    10.317] (II) config/udev: Adding input device (unnamed) (/dev/ttyqa)
[    10.317] (II) No input driver specified, ignoring this device.
[    10.318] (II) This device may have been added with another device file.
[    10.318] (II) config/udev: Adding input device (unnamed) (/dev/ttyqb)
[    10.318] (II) No input driver specified, ignoring this device.
[    10.318] (II) This device may have been added with another device file.
[    10.318] (II) config/udev: Adding input device (unnamed) (/dev/ttyqc)
[    10.319] (II) No input driver specified, ignoring this device.
[    10.319] (II) This device may have been added with another device file.
[    10.319] (II) config/udev: Adding input device (unnamed) (/dev/ttyqd)
[    10.319] (II) No input driver specified, ignoring this device.
[    10.319] (II) This device may have been added with another device file.
[    10.319] (II) config/udev: Adding input device (unnamed) (/dev/ttyqe)
[    10.320] (II) No input driver specified, ignoring this device.
[    10.320] (II) This device may have been added with another device file.
[    10.320] (II) config/udev: Adding input device (unnamed) (/dev/ttyqf)
[    10.320] (II) No input driver specified, ignoring this device.
[    10.321] (II) This device may have been added with another device file.
[    10.321] (II) config/udev: Adding input device (unnamed) (/dev/ttyr0)
[    10.321] (II) No input driver specified, ignoring this device.
[    10.321] (II) This device may have been added with another device file.
[    10.322] (II) config/udev: Adding input device (unnamed) (/dev/ttyr1)
[    10.322] (II) No input driver specified, ignoring this device.
[    10.322] (II) This device may have been added with another device file.
[    10.322] (II) config/udev: Adding input device (unnamed) (/dev/ttyr2)
[    10.322] (II) No input driver specified, ignoring this device.
[    10.322] (II) This device may have been added with another device file.
[    10.323] (II) config/udev: Adding input device (unnamed) (/dev/ttyr3)
[    10.323] (II) No input driver specified, ignoring this device.
[    10.323] (II) This device may have been added with another device file.
[    10.323] (II) config/udev: Adding input device (unnamed) (/dev/ttyr4)
[    10.323] (II) No input driver specified, ignoring this device.
[    10.323] (II) This device may have been added with another device file.
[    10.324] (II) config/udev: Adding input device (unnamed) (/dev/ttyr5)
[    10.324] (II) No input driver specified, ignoring this device.
[    10.324] (II) This device may have been added with another device file.
[    10.324] (II) config/udev: Adding input device (unnamed) (/dev/ttyr6)
[    10.324] (II) No input driver specified, ignoring this device.
[    10.324] (II) This device may have been added with another device file.
[    10.325] (II) config/udev: Adding input device (unnamed) (/dev/ttyr7)
[    10.325] (II) No input driver specified, ignoring this device.
[    10.325] (II) This device may have been added with another device file.
[    10.325] (II) config/udev: Adding input device (unnamed) (/dev/ttyr8)
[    10.325] (II) No input driver specified, ignoring this device.
[    10.325] (II) This device may have been added with another device file.
[    10.326] (II) config/udev: Adding input device (unnamed) (/dev/ttyr9)
[    10.326] (II) No input driver specified, ignoring this device.
[    10.326] (II) This device may have been added with another device file.
[    10.326] (II) config/udev: Adding input device (unnamed) (/dev/ttyra)
[    10.327] (II) No input driver specified, ignoring this device.
[    10.327] (II) This device may have been added with another device file.
[    10.327] (II) config/udev: Adding input device (unnamed) (/dev/ttyrb)
[    10.327] (II) No input driver specified, ignoring this device.
[    10.327] (II) This device may have been added with another device file.
[    10.328] (II) config/udev: Adding input device (unnamed) (/dev/ttyrc)
[    10.328] (II) No input driver specified, ignoring this device.
[    10.328] (II) This device may have been added with another device file.
[    10.328] (II) config/udev: Adding input device (unnamed) (/dev/ttyrd)
[    10.328] (II) No input driver specified, ignoring this device.
[    10.328] (II) This device may have been added with another device file.
[    10.329] (II) config/udev: Adding input device (unnamed) (/dev/ttyre)
[    10.329] (II) No input driver specified, ignoring this device.
[    10.329] (II) This device may have been added with another device file.
[    10.329] (II) config/udev: Adding input device (unnamed) (/dev/ttyrf)
[    10.329] (II) No input driver specified, ignoring this device.
[    10.329] (II) This device may have been added with another device file.
[    10.330] (II) config/udev: Adding input device (unnamed) (/dev/ttys0)
[    10.330] (II) No input driver specified, ignoring this device.
[    10.330] (II) This device may have been added with another device file.
[    10.331] (II) config/udev: Adding input device (unnamed) (/dev/ttys1)
[    10.331] (II) No input driver specified, ignoring this device.
[    10.331] (II) This device may have been added with another device file.
[    10.331] (II) config/udev: Adding input device (unnamed) (/dev/ttys2)
[    10.331] (II) No input driver specified, ignoring this device.
[    10.331] (II) This device may have been added with another device file.
[    10.332] (II) config/udev: Adding input device (unnamed) (/dev/ttys3)
[    10.332] (II) No input driver specified, ignoring this device.
[    10.332] (II) This device may have been added with another device file.
[    10.332] (II) config/udev: Adding input device (unnamed) (/dev/ttys4)
[    10.332] (II) No input driver specified, ignoring this device.
[    10.332] (II) This device may have been added with another device file.
[    10.333] (II) config/udev: Adding input device (unnamed) (/dev/ttys5)
[    10.333] (II) No input driver specified, ignoring this device.
[    10.333] (II) This device may have been added with another device file.
[    10.333] (II) config/udev: Adding input device (unnamed) (/dev/ttys6)
[    10.333] (II) No input driver specified, ignoring this device.
[    10.333] (II) This device may have been added with another device file.
[    10.334] (II) config/udev: Adding input device (unnamed) (/dev/ttys7)
[    10.334] (II) No input driver specified, ignoring this device.
[    10.334] (II) This device may have been added with another device file.
[    10.334] (II) config/udev: Adding input device (unnamed) (/dev/ttys8)
[    10.334] (II) No input driver specified, ignoring this device.
[    10.334] (II) This device may have been added with another device file.
[    10.335] (II) config/udev: Adding input device (unnamed) (/dev/ttys9)
[    10.335] (II) No input driver specified, ignoring this device.
[    10.335] (II) This device may have been added with another device file.
[    10.335] (II) config/udev: Adding input device (unnamed) (/dev/ttysa)
[    10.335] (II) No input driver specified, ignoring this device.
[    10.335] (II) This device may have been added with another device file.
[    10.336] (II) config/udev: Adding input device (unnamed) (/dev/ttysb)
[    10.336] (II) No input driver specified, ignoring this device.
[    10.336] (II) This device may have been added with another device file.
[    10.336] (II) config/udev: Adding input device (unnamed) (/dev/ttysc)
[    10.336] (II) No input driver specified, ignoring this device.
[    10.337] (II) This device may have been added with another device file.
[    10.337] (II) config/udev: Adding input device (unnamed) (/dev/ttysd)
[    10.337] (II) No input driver specified, ignoring this device.
[    10.337] (II) This device may have been added with another device file.
[    10.337] (II) config/udev: Adding input device (unnamed) (/dev/ttyse)
[    10.338] (II) No input driver specified, ignoring this device.
[    10.338] (II) This device may have been added with another device file.
[    10.338] (II) config/udev: Adding input device (unnamed) (/dev/ttysf)
[    10.338] (II) No input driver specified, ignoring this device.
[    10.338] (II) This device may have been added with another device file.
[    10.339] (II) config/udev: Adding input device (unnamed) (/dev/ttyt0)
[    10.339] (II) No input driver specified, ignoring this device.
[    10.339] (II) This device may have been added with another device file.
[    10.339] (II) config/udev: Adding input device (unnamed) (/dev/ttyt1)
[    10.339] (II) No input driver specified, ignoring this device.
[    10.339] (II) This device may have been added with another device file.
[    10.341] (II) config/udev: Adding input device (unnamed) (/dev/ttyt2)
[    10.341] (II) No input driver specified, ignoring this device.
[    10.341] (II) This device may have been added with another device file.
[    10.341] (II) config/udev: Adding input device (unnamed) (/dev/ttyt3)
[    10.341] (II) No input driver specified, ignoring this device.
[    10.341] (II) This device may have been added with another device file.
[    10.342] (II) config/udev: Adding input device (unnamed) (/dev/ttyt4)
[    10.342] (II) No input driver specified, ignoring this device.
[    10.342] (II) This device may have been added with another device file.
[    10.342] (II) config/udev: Adding input device (unnamed) (/dev/ttyt5)
[    10.342] (II) No input driver specified, ignoring this device.
[    10.343] (II) This device may have been added with another device file.
[    10.343] (II) config/udev: Adding input device (unnamed) (/dev/ttyt6)
[    10.343] (II) No input driver specified, ignoring this device.
[    10.343] (II) This device may have been added with another device file.
[    10.343] (II) config/udev: Adding input device (unnamed) (/dev/ttyt7)
[    10.344] (II) No input driver specified, ignoring this device.
[    10.344] (II) This device may have been added with another device file.
[    10.344] (II) config/udev: Adding input device (unnamed) (/dev/ttyt8)
[    10.344] (II) No input driver specified, ignoring this device.
[    10.344] (II) This device may have been added with another device file.
[    10.345] (II) config/udev: Adding input device (unnamed) (/dev/ttyt9)
[    10.345] (II) No input driver specified, ignoring this device.
[    10.345] (II) This device may have been added with another device file.
[    10.345] (II) config/udev: Adding input device (unnamed) (/dev/ttyta)
[    10.345] (II) No input driver specified, ignoring this device.
[    10.345] (II) This device may have been added with another device file.
[    10.346] (II) config/udev: Adding input device (unnamed) (/dev/ttytb)
[    10.346] (II) No input driver specified, ignoring this device.
[    10.346] (II) This device may have been added with another device file.
[    10.346] (II) config/udev: Adding input device (unnamed) (/dev/ttytc)
[    10.346] (II) No input driver specified, ignoring this device.
[    10.346] (II) This device may have been added with another device file.
[    10.347] (II) config/udev: Adding input device (unnamed) (/dev/ttytd)
[    10.347] (II) No input driver specified, ignoring this device.
[    10.347] (II) This device may have been added with another device file.
[    10.347] (II) config/udev: Adding input device (unnamed) (/dev/ttyte)
[    10.347] (II) No input driver specified, ignoring this device.
[    10.347] (II) This device may have been added with another device file.
[    10.348] (II) config/udev: Adding input device (unnamed) (/dev/ttytf)
[    10.348] (II) No input driver specified, ignoring this device.
[    10.348] (II) This device may have been added with another device file.
[    10.348] (II) config/udev: Adding input device (unnamed) (/dev/ttyu0)
[    10.348] (II) No input driver specified, ignoring this device.
[    10.348] (II) This device may have been added with another device file.
[    10.349] (II) config/udev: Adding input device (unnamed) (/dev/ttyu1)
[    10.349] (II) No input driver specified, ignoring this device.
[    10.349] (II) This device may have been added with another device file.
[    10.349] (II) config/udev: Adding input device (unnamed) (/dev/ttyu2)
[    10.349] (II) No input driver specified, ignoring this device.
[    10.349] (II) This device may have been added with another device file.
[    10.350] (II) config/udev: Adding input device (unnamed) (/dev/ttyu3)
[    10.350] (II) No input driver specified, ignoring this device.
[    10.350] (II) This device may have been added with another device file.
[    10.351] (II) config/udev: Adding input device (unnamed) (/dev/ttyu4)
[    10.351] (II) No input driver specified, ignoring this device.
[    10.351] (II) This device may have been added with another device file.
[    10.351] (II) config/udev: Adding input device (unnamed) (/dev/ttyu5)
[    10.351] (II) No input driver specified, ignoring this device.
[    10.351] (II) This device may have been added with another device file.
[    10.352] (II) config/udev: Adding input device (unnamed) (/dev/ttyu6)
[    10.352] (II) No input driver specified, ignoring this device.
[    10.352] (II) This device may have been added with another device file.
[    10.352] (II) config/udev: Adding input device (unnamed) (/dev/ttyu7)
[    10.352] (II) No input driver specified, ignoring this device.
[    10.352] (II) This device may have been added with another device file.
[    10.353] (II) config/udev: Adding input device (unnamed) (/dev/ttyu8)
[    10.353] (II) No input driver specified, ignoring this device.
[    10.353] (II) This device may have been added with another device file.
[    10.353] (II) config/udev: Adding input device (unnamed) (/dev/ttyu9)
[    10.354] (II) No input driver specified, ignoring this device.
[    10.354] (II) This device may have been added with another device file.
[    10.354] (II) config/udev: Adding input device (unnamed) (/dev/ttyua)
[    10.354] (II) No input driver specified, ignoring this device.
[    10.354] (II) This device may have been added with another device file.
[    10.354] (II) config/udev: Adding input device (unnamed) (/dev/ttyub)
[    10.355] (II) No input driver specified, ignoring this device.
[    10.355] (II) This device may have been added with another device file.
[    10.355] (II) config/udev: Adding input device (unnamed) (/dev/ttyuc)
[    10.355] (II) No input driver specified, ignoring this device.
[    10.355] (II) This device may have been added with another device file.
[    10.356] (II) config/udev: Adding input device (unnamed) (/dev/ttyud)
[    10.356] (II) No input driver specified, ignoring this device.
[    10.356] (II) This device may have been added with another device file.
[    10.356] (II) config/udev: Adding input device (unnamed) (/dev/ttyue)
[    10.356] (II) No input driver specified, ignoring this device.
[    10.356] (II) This device may have been added with another device file.
[    10.357] (II) config/udev: Adding input device (unnamed) (/dev/ttyuf)
[    10.357] (II) No input driver specified, ignoring this device.
[    10.357] (II) This device may have been added with another device file.
[    10.357] (II) config/udev: Adding input device (unnamed) (/dev/ttyv0)
[    10.357] (II) No input driver specified, ignoring this device.
[    10.357] (II) This device may have been added with another device file.
[    10.358] (II) config/udev: Adding input device (unnamed) (/dev/ttyv1)
[    10.358] (II) No input driver specified, ignoring this device.
[    10.358] (II) This device may have been added with another device file.
[    10.358] (II) config/udev: Adding input device (unnamed) (/dev/ttyv2)
[    10.358] (II) No input driver specified, ignoring this device.
[    10.359] (II) This device may have been added with another device file.
[    10.359] (II) config/udev: Adding input device (unnamed) (/dev/ttyv3)
[    10.359] (II) No input driver specified, ignoring this device.
[    10.359] (II) This device may have been added with another device file.
[    10.359] (II) config/udev: Adding input device (unnamed) (/dev/ttyv4)
[    10.360] (II) No input driver specified, ignoring this device.
[    10.360] (II) This device may have been added with another device file.
[    10.360] (II) config/udev: Adding input device (unnamed) (/dev/ttyv5)
[    10.360] (II) No input driver specified, ignoring this device.
[    10.360] (II) This device may have been added with another device file.
[    10.361] (II) config/udev: Adding input device (unnamed) (/dev/ttyv6)
[    10.361] (II) No input driver specified, ignoring this device.
[    10.361] (II) This device may have been added with another device file.
[    10.361] (II) config/udev: Adding input device (unnamed) (/dev/ttyv7)
[    10.362] (II) No input driver specified, ignoring this device.
[    10.362] (II) This device may have been added with another device file.
[    10.362] (II) config/udev: Adding input device (unnamed) (/dev/ttyv8)
[    10.362] (II) No input driver specified, ignoring this device.
[    10.362] (II) This device may have been added with another device file.
[    10.363] (II) config/udev: Adding input device (unnamed) (/dev/ttyv9)
[    10.363] (II) No input driver specified, ignoring this device.
[    10.363] (II) This device may have been added with another device file.
[    10.363] (II) config/udev: Adding input device (unnamed) (/dev/ttyva)
[    10.363] (II) No input driver specified, ignoring this device.
[    10.363] (II) This device may have been added with another device file.
[    10.364] (II) config/udev: Adding input device (unnamed) (/dev/ttyvb)
[    10.364] (II) No input driver specified, ignoring this device.
[    10.364] (II) This device may have been added with another device file.
[    10.364] (II) config/udev: Adding input device (unnamed) (/dev/ttyvc)
[    10.364] (II) No input driver specified, ignoring this device.
[    10.364] (II) This device may have been added with another device file.
[    10.365] (II) config/udev: Adding input device (unnamed) (/dev/ttyvd)
[    10.365] (II) No input driver specified, ignoring this device.
[    10.365] (II) This device may have been added with another device file.
[    10.365] (II) config/udev: Adding input device (unnamed) (/dev/ttyve)
[    10.365] (II) No input driver specified, ignoring this device.
[    10.365] (II) This device may have been added with another device file.
[    10.366] (II) config/udev: Adding input device (unnamed) (/dev/ttyvf)
[    10.366] (II) No input driver specified, ignoring this device.
[    10.366] (II) This device may have been added with another device file.
[    10.366] (II) config/udev: Adding input device (unnamed) (/dev/ttyw0)
[    10.366] (II) No input driver specified, ignoring this device.
[    10.366] (II) This device may have been added with another device file.
[    10.367] (II) config/udev: Adding input device (unnamed) (/dev/ttyw1)
[    10.367] (II) No input driver specified, ignoring this device.
[    10.367] (II) This device may have been added with another device file.
[    10.367] (II) config/udev: Adding input device (unnamed) (/dev/ttyw2)
[    10.367] (II) No input driver specified, ignoring this device.
[    10.367] (II) This device may have been added with another device file.
[    10.368] (II) config/udev: Adding input device (unnamed) (/dev/ttyw3)
[    10.368] (II) No input driver specified, ignoring this device.
[    10.368] (II) This device may have been added with another device file.
[    10.368] (II) config/udev: Adding input device (unnamed) (/dev/ttyw4)
[    10.368] (II) No input driver specified, ignoring this device.
[    10.368] (II) This device may have been added with another device file.
[    10.369] (II) config/udev: Adding input device (unnamed) (/dev/ttyw5)
[    10.369] (II) No input driver specified, ignoring this device.
[    10.369] (II) This device may have been added with another device file.
[    10.369] (II) config/udev: Adding input device (unnamed) (/dev/ttyw6)
[    10.370] (II) No input driver specified, ignoring this device.
[    10.370] (II) This device may have been added with another device file.
[    10.370] (II) config/udev: Adding input device (unnamed) (/dev/ttyw7)
[    10.370] (II) No input driver specified, ignoring this device.
[    10.370] (II) This device may have been added with another device file.
[    10.371] (II) config/udev: Adding input device (unnamed) (/dev/ttyw8)
[    10.371] (II) No input driver specified, ignoring this device.
[    10.371] (II) This device may have been added with another device file.
[    10.371] (II) config/udev: Adding input device (unnamed) (/dev/ttyw9)
[    10.371] (II) No input driver specified, ignoring this device.
[    10.372] (II) This device may have been added with another device file.
[    10.372] (II) config/udev: Adding input device (unnamed) (/dev/ttywa)
[    10.372] (II) No input driver specified, ignoring this device.
[    10.372] (II) This device may have been added with another device file.
[    10.372] (II) config/udev: Adding input device (unnamed) (/dev/ttywb)
[    10.373] (II) No input driver specified, ignoring this device.
[    10.373] (II) This device may have been added with another device file.
[    10.373] (II) config/udev: Adding input device (unnamed) (/dev/ttywc)
[    10.373] (II) No input driver specified, ignoring this device.
[    10.373] (II) This device may have been added with another device file.
[    10.374] (II) config/udev: Adding input device (unnamed) (/dev/ttywd)
[    10.374] (II) No input driver specified, ignoring this device.
[    10.374] (II) This device may have been added with another device file.
[    10.374] (II) config/udev: Adding input device (unnamed) (/dev/ttywe)
[    10.374] (II) No input driver specified, ignoring this device.
[    10.374] (II) This device may have been added with another device file.
[    10.375] (II) config/udev: Adding input device (unnamed) (/dev/ttywf)
[    10.375] (II) No input driver specified, ignoring this device.
[    10.375] (II) This device may have been added with another device file.
[    10.375] (II) config/udev: Adding input device (unnamed) (/dev/ttyx0)
[    10.375] (II) No input driver specified, ignoring this device.
[    10.375] (II) This device may have been added with another device file.
[    10.376] (II) config/udev: Adding input device (unnamed) (/dev/ttyx1)
[    10.376] (II) No input driver specified, ignoring this device.
[    10.376] (II) This device may have been added with another device file.
[    10.376] (II) config/udev: Adding input device (unnamed) (/dev/ttyx2)
[    10.376] (II) No input driver specified, ignoring this device.
[    10.376] (II) This device may have been added with another device file.
[    10.377] (II) config/udev: Adding input device (unnamed) (/dev/ttyx3)
[    10.377] (II) No input driver specified, ignoring this device.
[    10.377] (II) This device may have been added with another device file.
[    10.377] (II) config/udev: Adding input device (unnamed) (/dev/ttyx4)
[    10.377] (II) No input driver specified, ignoring this device.
[    10.378] (II) This device may have been added with another device file.
[    10.378] (II) config/udev: Adding input device (unnamed) (/dev/ttyx5)
[    10.378] (II) No input driver specified, ignoring this device.
[    10.378] (II) This device may have been added with another device file.
[    10.378] (II) config/udev: Adding input device (unnamed) (/dev/ttyx6)
[    10.379] (II) No input driver specified, ignoring this device.
[    10.379] (II) This device may have been added with another device file.
[    10.379] (II) config/udev: Adding input device (unnamed) (/dev/ttyx7)
[    10.379] (II) No input driver specified, ignoring this device.
[    10.379] (II) This device may have been added with another device file.
[    10.380] (II) config/udev: Adding input device (unnamed) (/dev/ttyx8)
[    10.380] (II) No input driver specified, ignoring this device.
[    10.380] (II) This device may have been added with another device file.
[    10.380] (II) config/udev: Adding input device (unnamed) (/dev/ttyx9)
[    10.381] (II) No input driver specified, ignoring this device.
[    10.381] (II) This device may have been added with another device file.
[    10.381] (II) config/udev: Adding input device (unnamed) (/dev/ttyxa)
[    10.381] (II) No input driver specified, ignoring this device.
[    10.381] (II) This device may have been added with another device file.
[    10.382] (II) config/udev: Adding input device (unnamed) (/dev/ttyxb)
[    10.382] (II) No input driver specified, ignoring this device.
[    10.382] (II) This device may have been added with another device file.
[    10.382] (II) config/udev: Adding input device (unnamed) (/dev/ttyxc)
[    10.382] (II) No input driver specified, ignoring this device.
[    10.382] (II) This device may have been added with another device file.
[    10.383] (II) config/udev: Adding input device (unnamed) (/dev/ttyxd)
[    10.383] (II) No input driver specified, ignoring this device.
[    10.383] (II) This device may have been added with another device file.
[    10.383] (II) config/udev: Adding input device (unnamed) (/dev/ttyxe)
[    10.383] (II) No input driver specified, ignoring this device.
[    10.383] (II) This device may have been added with another device file.
[    10.384] (II) config/udev: Adding input device (unnamed) (/dev/ttyxf)
[    10.384] (II) No input driver specified, ignoring this device.
[    10.384] (II) This device may have been added with another device file.
[    10.384] (II) config/udev: Adding input device (unnamed) (/dev/ttyy0)
[    10.384] (II) No input driver specified, ignoring this device.
[    10.384] (II) This device may have been added with another device file.
[    10.385] (II) config/udev: Adding input device (unnamed) (/dev/ttyy1)
[    10.385] (II) No input driver specified, ignoring this device.
[    10.385] (II) This device may have been added with another device file.
[    10.385] (II) config/udev: Adding input device (unnamed) (/dev/ttyy2)
[    10.385] (II) No input driver specified, ignoring this device.
[    10.385] (II) This device may have been added with another device file.
[    10.386] (II) config/udev: Adding input device (unnamed) (/dev/ttyy3)
[    10.386] (II) No input driver specified, ignoring this device.
[    10.386] (II) This device may have been added with another device file.
[    10.386] (II) config/udev: Adding input device (unnamed) (/dev/ttyy4)
[    10.386] (II) No input driver specified, ignoring this device.
[    10.386] (II) This device may have been added with another device file.
[    10.387] (II) config/udev: Adding input device (unnamed) (/dev/ttyy5)
[    10.387] (II) No input driver specified, ignoring this device.
[    10.387] (II) This device may have been added with another device file.
[    10.387] (II) config/udev: Adding input device (unnamed) (/dev/ttyy6)
[    10.387] (II) No input driver specified, ignoring this device.
[    10.387] (II) This device may have been added with another device file.
[    10.388] (II) config/udev: Adding input device (unnamed) (/dev/ttyy7)
[    10.388] (II) No input driver specified, ignoring this device.
[    10.388] (II) This device may have been added with another device file.
[    10.388] (II) config/udev: Adding input device (unnamed) (/dev/ttyy8)
[    10.389] (II) No input driver specified, ignoring this device.
[    10.389] (II) This device may have been added with another device file.
[    10.389] (II) config/udev: Adding input device (unnamed) (/dev/ttyy9)
[    10.389] (II) No input driver specified, ignoring this device.
[    10.389] (II) This device may have been added with another device file.
[    10.390] (II) config/udev: Adding input device (unnamed) (/dev/ttyya)
[    10.390] (II) No input driver specified, ignoring this device.
[    10.390] (II) This device may have been added with another device file.
[    10.390] (II) config/udev: Adding input device (unnamed) (/dev/ttyyb)
[    10.391] (II) No input driver specified, ignoring this device.
[    10.391] (II) This device may have been added with another device file.
[    10.391] (II) config/udev: Adding input device (unnamed) (/dev/ttyyc)
[    10.391] (II) No input driver specified, ignoring this device.
[    10.391] (II) This device may have been added with another device file.
[    10.392] (II) config/udev: Adding input device (unnamed) (/dev/ttyyd)
[    10.392] (II) No input driver specified, ignoring this device.
[    10.392] (II) This device may have been added with another device file.
[    10.392] (II) config/udev: Adding input device (unnamed) (/dev/ttyye)
[    10.392] (II) No input driver specified, ignoring this device.
[    10.392] (II) This device may have been added with another device file.
[    10.393] (II) config/udev: Adding input device (unnamed) (/dev/ttyyf)
[    10.393] (II) No input driver specified, ignoring this device.
[    10.393] (II) This device may have been added with another device file.
[    10.393] (II) config/udev: Adding input device (unnamed) (/dev/ttyz0)
[    10.393] (II) No input driver specified, ignoring this device.
[    10.393] (II) This device may have been added with another device file.
[    10.394] (II) config/udev: Adding input device (unnamed) (/dev/ttyz1)
[    10.394] (II) No input driver specified, ignoring this device.
[    10.394] (II) This device may have been added with another device file.
[    10.394] (II) config/udev: Adding input device (unnamed) (/dev/ttyz2)
[    10.394] (II) No input driver specified, ignoring this device.
[    10.394] (II) This device may have been added with another device file.
[    10.395] (II) config/udev: Adding input device (unnamed) (/dev/ttyz3)
[    10.395] (II) No input driver specified, ignoring this device.
[    10.395] (II) This device may have been added with another device file.
[    10.395] (II) config/udev: Adding input device (unnamed) (/dev/ttyz4)
[    10.395] (II) No input driver specified, ignoring this device.
[    10.396] (II) This device may have been added with another device file.
[    10.396] (II) config/udev: Adding input device (unnamed) (/dev/ttyz5)
[    10.396] (II) No input driver specified, ignoring this device.
[    10.396] (II) This device may have been added with another device file.
[    10.396] (II) config/udev: Adding input device (unnamed) (/dev/ttyz6)
[    10.397] (II) No input driver specified, ignoring this device.
[    10.397] (II) This device may have been added with another device file.
[    10.397] (II) config/udev: Adding input device (unnamed) (/dev/ttyz7)
[    10.397] (II) No input driver specified, ignoring this device.
[    10.397] (II) This device may have been added with another device file.
[    10.398] (II) config/udev: Adding input device (unnamed) (/dev/ttyz8)
[    10.398] (II) No input driver specified, ignoring this device.
[    10.398] (II) This device may have been added with another device file.
[    10.398] (II) config/udev: Adding input device (unnamed) (/dev/ttyz9)
[    10.398] (II) No input driver specified, ignoring this device.
[    10.398] (II) This device may have been added with another device file.
[    10.399] (II) config/udev: Adding input device (unnamed) (/dev/ttyza)
[    10.399] (II) No input driver specified, ignoring this device.
[    10.399] (II) This device may have been added with another device file.
[    10.399] (II) config/udev: Adding input device (unnamed) (/dev/ttyzb)
[    10.399] (II) No input driver specified, ignoring this device.
[    10.399] (II) This device may have been added with another device file.
[    10.400] (II) config/udev: Adding input device (unnamed) (/dev/ttyzc)
[    10.400] (II) No input driver specified, ignoring this device.
[    10.400] (II) This device may have been added with another device file.
[    10.401] (II) config/udev: Adding input device (unnamed) (/dev/ttyzd)
[    10.401] (II) No input driver specified, ignoring this device.
[    10.401] (II) This device may have been added with another device file.
[    10.401] (II) config/udev: Adding input device (unnamed) (/dev/ttyze)
[    10.401] (II) No input driver specified, ignoring this device.
[    10.401] (II) This device may have been added with another device file.
[    10.402] (II) config/udev: Adding input device (unnamed) (/dev/ttyzf)
[    10.402] (II) No input driver specified, ignoring this device.
[    10.402] (II) This device may have been added with another device file.

------=_NextPart_000_005A_01D4BD70.1DF158D0--
