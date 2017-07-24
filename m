Return-Path: <victor_wang@winmate.com.tw>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E57CE00BF3; Mon, 24 Jul 2017 02:34:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [122.147.158.238 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx.winmate.com.tw (mail.winmate.com.tw [122.147.158.238])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 75AB2E00A9C
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 02:34:50 -0700 (PDT)
Received: from winmate.com.tw([192.168.100.101]) by RaidenMAILD([192.168.1.6]);
	Mon, 24 Jul 2017 17:36:49 +0800
Received: from WE1441 ([192.168.8.41]) by winmate.com.tw ([220.130.150.210]);
	Mon, 24 Jul 2017 17:34:41 +0800
From: "victor_wang.Winmate" <victor_wang@winmate.com.tw>
To: <yocto@yoctoproject.org>
Date: Mon, 24 Jul 2017 17:33:50 +0800
Message-ID: <000601d3045f$f559bea0$e00d3be0$@winmate.com.tw>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdMEW8zeKLHjFJjsT4SaM745EnM+vw==
Subject: Showing HDMI and LVDS in the same time
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
X-List-Received-Date: Mon, 24 Jul 2017 09:34:53 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0007_01D304A3.0382CB00"
Content-Language: zh-tw

------=_NextPart_000_0007_01D304A3.0382CB00
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I=E2=80=99m trying to display HDMI and LVDS In the same time recently.

But now I have got three different issues here.

By the way I=E2=80=99m using SABRESD IMX.6 for development.

=20

First issue :

I had trying to modify the ipu_id and disp_id to 0 and 1 like below.

=20

&hdmi_core {

        ipu_id =3D <0>;/*winmate victor test*/

        disp_id =3D <1>;/*winmate victor test*/

        status =3D "okay";

};

=20

And my bootargs settings is like below.

=20

setenv mmcargs "setenv bootargs console=3D${console},${baudrate} ${smp} =
consoleblank=3D0 root=3D${mmcroot} video=3Dmxcfb0:dev=3Dldb =
video=3Dmxcfb1:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 video=3Dmxcfb2:off =
video=3Dmxcfb3:off"

=20

But HDMI can=E2=80=99t work unless I change my bootargs settings like =
below and it will work.

=20

setenv mmcargs "setenv bootargs console=3D${console},${baudrate} ${smp} =
consoleblank=3D0 root=3D${mmcroot} =
video=3Dmxcfb0:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 video=3Dmxcfb2:off =
video=3Dmxcfb3:off"

=20

Second issue :=20

I had trying to modify the ipu_id and disp_id to 0 and 1 like below.

=20

&hdmi_core {

        ipu_id =3D <0>;/*winmate victor test*/

        disp_id =3D <1>;/*winmate victor test*/

        status =3D "okay";

};

=20

And I will print ipu_id and disp_id out in the driver like below.

=20

static int hdmi_core_get_of_property(struct platform_device *pdev)

{

        struct device_node *np =3D pdev->dev.of_node;

        int err;

        int ipu_id, disp_id;

=20

        err =3D of_property_read_u32(np, "ipu_id", &ipu_id);

        if (err) {

                dev_dbg(&pdev->dev, "get of property ipu_id fail\n");

                return err;

        }

        err =3D of_property_read_u32(np, "disp_id", &disp_id);

        if (err) {

                dev_dbg(&pdev->dev, "get of property disp_id fail\n");

                return err;

        }

        ipu_id =3D 0;

        disp_id =3D 1;

=20

        mxc_hdmi_ipu_id =3D ipu_id;

        mxc_hdmi_disp_id =3D disp_id;

=20

        dev_err(&pdev->dev, "winmate victor ipu: %d disp: =
%d\n",mxc_hdmi_ipu_id,mxc_hdmi_disp_id);

=20

        return err;

}

=20

But it always print winmate victor ipu: 0 disp: 0 not winmate victor =
ipu: 0 disp: 1.

It is weird that it didn=E2=80=99t show the value that I gave it.

=20

=20

Third issue :

I had trying to modify the ipu_id and disp_id to 0 and 1 like below.

=20

&hdmi_core {

        ipu_id =3D <0>;/*winmate victor test*/

        disp_id =3D <1>;/*winmate victor test*/

        status =3D "okay";

};

=20

And I try to set ipu_id and disp_id to 0 and 1 in the driver like below.

=20

static int hdmi_core_get_of_property(struct platform_device *pdev)

{

        struct device_node *np =3D pdev->dev.of_node;

        int err;

        int ipu_id, disp_id;

=20

        err =3D of_property_read_u32(np, "ipu_id", &ipu_id);

        if (err) {

                dev_dbg(&pdev->dev, "get of property ipu_id fail\n");

                return err;

        }

        err =3D of_property_read_u32(np, "disp_id", &disp_id);

        if (err) {

                dev_dbg(&pdev->dev, "get of property disp_id fail\n");

                return err;

        }

        ipu_id =3D 0;

        disp_id =3D 1;

=20

        mxc_hdmi_ipu_id =3D 0;

        mxc_hdmi_disp_id =3D 1;/*winmate victor*/

=20

        dev_err(&pdev->dev, "winmate victor ipu: %d disp: =
%d\n",mxc_hdmi_ipu_id,mxc_hdmi_disp_id);

=20

        return err;

}

=20

In this case I will get this information in my syslog.

=20

mxc_sdc_fb fb@1: registered mxc display driver hdmi

mxc_sdc_fb fb@1: Winmate victor You are now using ipu0-di1

=20

It seems it have confirm the id and prepare to used.

But HDMI still show nothing.

=20

By the way, the bootargs setting is like below.

=20

setenv mmcargs "setenv bootargs console=3D${console},${baudrate} ${smp} =
consoleblank=3D0 root=3D${mmcroot} video=3Dmxcfb0:dev=3Dldb =
video=3Dmxcfb1:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 video=3Dmxcfb2:off =
video=3Dmxcfb3:off"

=20

=20

=20

=20

=20

First question : Is that possible that Yocto can display HDMI and LVDS =
in the same time?

Second question : According to the first issue. Why HDMI just can work =
on mxcfb0 ?

Third question : According to the second issue. Why is the ipu_id and =
disp_id didn=E2=80=99t show the value that I gave them ?

Fourth question : According to the third issue. I had set the id into 0 =
and 1 but why HDMI still can=E2=80=99t work?

=20

Please Help!

Thanks in advanced !

Best Regards

Victor Wang

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Winmate Commuication INC.

 <tel:+886-2-8511-0288> Tel:+886-2-8511-0288 ext 878; =
Fax:+886-2-85110211

=E2=9C=89  <mailto:victor_wang@winmate.com.tw> =
victor_wang@winmate.com.tw

=20


------=_NextPart_000_0007_01D304A3.0382CB00
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94;
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94";
	panose-1:2 2 5 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-TW link=3Dblue =
vlink=3Dpurple style=3D'text-justify-trim:punctuation'><div =
class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US>Hi =
All,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I=E2=80=99m trying to display HDMI and LVDS In the same =
time recently.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>But now I have got three different issues =
here.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>By =
the way I=E2=80=99m using SABRESD IMX.6 for =
development.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>First issue :<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I had trying to modify the ipu_id =
and disp_id to 0 and 1 like below.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&amp;hdmi_core =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ipu_id =3D =
&lt;0&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disp_id =3D =
&lt;1&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0status =3D =
&quot;okay&quot;;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>};<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And my bootargs settings is like =
below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>setenv mmcargs &quot;setenv bootargs =
console=3D${console},${baudrate} ${smp} consoleblank=3D0 =
root=3D${mmcroot} video=3Dmxcfb0:dev=3Dldb =
video=3Dmxcfb1:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 video=3Dmxcfb2:off =
video=3Dmxcfb3:off&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>But HDMI can=E2=80=99t work unless I change my bootargs =
settings like below and it will work.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>setenv mmcargs &quot;setenv =
bootargs console=3D${console},${baudrate} ${smp} consoleblank=3D0 =
root=3D${mmcroot} video=3Dmxcfb0:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 =
video=3Dmxcfb2:off video=3Dmxcfb3:off&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Second issue : =
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I had =
trying to modify the ipu_id and disp_id to 0 and 1 like =
below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&amp;hdmi_core {<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ipu_id =3D =
&lt;0&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disp_id =3D =
&lt;1&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0status =3D =
&quot;okay&quot;;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>};<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And I will print ipu_id and disp_id out in the driver like =
below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>static int hdmi_core_get_of_property(struct platform_device =
*pdev)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct =
device_node *np =3D pdev-&gt;dev.of_node;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int =
err;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ipu_id, =
disp_id;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D =
of_property_read_u32(np, &quot;ipu_id&quot;, =
&amp;ipu_id);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(&amp;pdev-&gt;dev, &quot;get of =
property ipu_id fail\n&quot;);<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D =
of_property_read_u32(np, &quot;disp_id&quot;, =
&amp;disp_id);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(&amp;pdev-&gt;dev, &quot;get of =
property disp_id fail\n&quot;);<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ipu_id =3D =
0;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disp_id =3D =
1;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mxc_hdmi_ipu_id =
=3D ipu_id;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mxc_hdmi_disp_id =
=3D disp_id;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
dev_err(&amp;pdev-&gt;dev, &quot;winmate victor ipu: %d disp: =
%d\n&quot;,mxc_hdmi_ipu_id,mxc_hdmi_disp_id);<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return =
err;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>But it always print winmate victor ipu: 0 disp: 0 not =
winmate victor ipu: 0 disp: 1.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>It is weird that it didn=E2=80=99t =
show the value that I gave it.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Third issue =
:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I had =
trying to modify the ipu_id and disp_id to 0 and 1 like =
below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&amp;hdmi_core {<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ipu_id =3D =
&lt;0&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disp_id =3D =
&lt;1&gt;;/*winmate victor test*/<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0status =3D =
&quot;okay&quot;;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>};<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And I try to set ipu_id and disp_id to 0 and 1 in the =
driver like below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>static int hdmi_core_get_of_property(struct platform_device =
*pdev)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct =
device_node *np =3D pdev-&gt;dev.of_node;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int =
err;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ipu_id, =
disp_id;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D =
of_property_read_u32(np, &quot;ipu_id&quot;, =
&amp;ipu_id);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(&amp;pdev-&gt;dev, &quot;get of =
property ipu_id fail\n&quot;);<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D =
of_property_read_u32(np, &quot;disp_id&quot;, =
&amp;disp_id);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) =
{<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_dbg(&amp;pdev-&gt;dev, &quot;get of =
property disp_id fail\n&quot;);<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ipu_id =3D =
0;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 disp_id =3D =
1;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mxc_hdmi_ipu_id =
=3D 0;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mxc_hdmi_disp_id =
=3D 1;/*winmate victor*/<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
dev_err(&amp;pdev-&gt;dev, &quot;winmate victor ipu: %d disp: =
%d\n&quot;,mxc_hdmi_ipu_id,mxc_hdmi_disp_id);<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return =
err;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>}<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>In this case I will get this information in my =
syslog.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>mxc_sdc_fb fb@1: registered mxc display driver =
hdmi<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>mxc_sdc_fb fb@1: Winmate victor You are now using =
ipu0-di1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>It seems it have confirm the id and prepare to =
used.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>But =
HDMI still show nothing.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>By the way, the bootargs setting is like =
below.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>setenv mmcargs &quot;setenv bootargs =
console=3D${console},${baudrate} ${smp} consoleblank=3D0 =
root=3D${mmcroot} video=3Dmxcfb0:dev=3Dldb =
video=3Dmxcfb1:dev=3Dhdmi,1920x1080M@60,if=3DRGB24 video=3Dmxcfb2:off =
video=3Dmxcfb3:off&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>First question : Is that possible that Yocto can display =
HDMI and LVDS in the same time?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Second question : According to the =
first issue. Why HDMI just can work on mxcfb0 ?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Third question : According to the =
second issue. Why is the ipu_id and disp_id didn=E2=80=99t show the =
value that I gave them ?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Fourth question : According to the third issue. I had set =
the id into 0 and 1 but why HDMI still can=E2=80=99t =
work?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Please Help!<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Thanks in advanced =
!<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><i><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>B=
est Regards</span></i></b><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif";color=
:#000066'><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><i><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>V=
ictor Wang</span></i></b><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></b><span =
lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>W=
inmate Commuication INC.</span><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><=
a href=3D"tel:+886-2-8511-0288"><span =
style=3D'color:#0563C1'>Tel:+886-2-8511-0288</span></a> ext 878; =
Fax:+886-2-85110211</span><span lang=3DEN-US =
style=3D'font-family:"=E6=96=B0=E7=B4=B0=E6=98=8E=E9=AB=94","serif"'><o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-family:"MS =
Mincho";color:black'>=E2=9C=89</span><span lang=3DEN-US =
style=3D'color:black'>&nbsp;</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:purple'>=
<a href=3D"mailto:victor_wang@winmate.com.tw"><span =
style=3D'color:#0563C1'>victor_wang@winmate.com.tw</span></a></span><span=
 lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>

------=_NextPart_000_0007_01D304A3.0382CB00--
