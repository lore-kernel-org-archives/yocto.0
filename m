Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 568A1E00B9D; Fri, 30 Jun 2017 06:41:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Jun 2017 06:41:19 PDT
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94160E00B28
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 06:41:19 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 1A8E1972:E4938C02-C125814F:004586D9;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF1A8E1972.E4938C02-ONC125814F.004586D9-C125814F.004AAEF5@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 30 Jun 2017 15:35:44 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 30.06.2017 15:41:20,
	Serialize complete at 30.06.2017 15:41:20
Subject: [meta-raspberrypi] How to add a own dts file and patch the dts makefile
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
X-List-Received-Date: Fri, 30 Jun 2017 13:41:24 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004AAEF4C125814F_="

--=_alternative 004AAEF4C125814F_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

It's friday and I have some time to play a bit around. I like to build a=20
simple test-adapter using a RPi. I want to connect some of the 40GPIO pins =

with a custom mainboard. For that I like to define the pin behaviour by an =

own dts file.

I created my own dts file (testboard.dts) + a simple patch for=20
"arch/arm/boot/dts/Makefile" to add the file.

For adding them into the build-process I am append the kernel build=20
(linux-raspberrypi%.bbappend).

Now I have problems bringing them together, because the name of the=20
git/source links changes (git -> linux-raspberrypi2-standard-build/source=20
). Maybe some one has an idea?

I put the listings of the files below:

########## linux-raspberrypi%.bbappend ##########
FILESEXTRAPATHS=5Fprepend :=3D "${THISDIR}/${PN}:"

SRC=5FURI +=3D "file://testboard.dts
;subdir=3Dlinux-raspberrypi2-standard-build/source/arch/arm/boot/dts \
        file://0001-add-testboard-to-makefile.patch \
        "
PACKAGE=5FARCH =3D "raspberrypi2"

KERNEL=5FDEVICETREE +=3D "testboard.dtb"
#############################################

########## 0001-add-testboard-to-makefile.patch ##########
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile

@@ -1,4 +1,8 @@
 ifeq ($(CONFIG=5FOF),y)
+
+# my own dts files
+dtb-$(CONFIG=5FARCH=5FBCM2835) +=3D \
+       testboard.dts
=20
 dtb-$(CONFIG=5FARCH=5FBCM2835) +=3D \
        bcm2708-rpi-b.dtb \
#############################################

########## testboard.dts ##########
/dts-v1/;
#include "bcm2836.dtsi"
#include "bcm2835-rpi.dtsi"
#include "bcm283x-rpi-smsc9514.dtsi"
#include "bcm283x-rpi-usb-host.dtsi"

/ {
        compatible =3D "raspberrypi,2-model-b", "brcm,bcm2836";
        model =3D "RPi test";

        memory {
                reg =3D <0 0x40000000>;
        };

        leds {
                act {
                        gpios =3D <&gpio 47 0>;
                };

                pwr {
                        label =3D "PWR";
                        gpios =3D <&gpio 35 0>;
                        default-state =3D "keep";
                        linux,default-trigger =3D "default-on";
                };
        };

};

&gpio {
        pinctrl-0 =3D <&gpioout &alt0 &i2s=5Falt0>;

        /* I2S interface */
        i2s=5Falt0: i2s=5Falt0 {
                brcm,pins =3D <18 19 20 21>;
                brcm,function =3D <BCM2835=5FFSEL=5FALT0>;
                status =3D "disabled";
        };

        cord0: cord0 {
                brcm,pins =3D <5 6 25>;
                brcm,function =3D <BCM2835=5FFSEL=5FALT2>;
                status =3D "okay";
        };

};

&hdmi {
        hpd-gpios =3D <&gpio 46 GPIO=5FACTIVE=5FLOW>;
        status =3D "disabled";
};
#############################################

For that I put a question on stackoverflow:
https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tre=
e-for-a-raspberrypi-in-yocto

Regards form Germany!

Stefan

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 181
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.

--=_alternative 004AAEF4C125814F_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">It's friday and I have some time to
play a bit around. I like to build a simple test-adapter using a RPi. I
want to connect some of the 40GPIO pins with a custom mainboard. For that
I like to define the pin behaviour by an own dts file.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I created my own dts file (testboard=
.dts)
+ a simple patch for &quot;arch/arm/boot/dts/Makefile&quot; to add the
file.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">For adding them into the build-proce=
ss
I am append the kernel build (linux-raspberrypi%.bbappend).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Now I have problems bringing them to=
gether,
because the name of the git/source links changes (git -&gt; </font><font si=
ze=3D2 color=3Dblue face=3D"sans-serif">linux-raspberrypi2-standard-build/s=
ource</font><font size=3D2 face=3D"sans-serif">
). Maybe some one has an idea?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I put the listings of the files belo=
w:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">########## linux-raspberrypi%.bbappe=
nd
##########</font>
<br><font size=3D2 face=3D"sans-serif">FILESEXTRAPATHS=5Fprepend :=3D &quot=
;${THISDIR}/${PN}:&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI +=3D &quot;</font><a href=
=3D"file://rpi-fencing.dts;subdir=3Dlinux-raspberrypi2-standard-build/arch/=
arm/boot/dts"><font size=3D2 color=3Dblue face=3D"sans-serif">file://</font=
><font size=3D2 face=3D"sans-serif">testboard</font><font size=3D2 color=3D=
blue face=3D"sans-serif">.dts;subdir=3Dlinux-raspberrypi2-standard-build/so=
urce/arch/arm/boot/dts</font></a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; </font><=
a href=3D"file://0001-add-rpi-fencing-to-makefile.patch/"><font size=3D2 co=
lor=3Dblue face=3D"sans-serif">file://0001-add-</font><font size=3D2 face=
=3D"sans-serif">testboard</font><font size=3D2 color=3Dblue face=3D"sans-se=
rif">-to-makefile.patch</font></a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &quot;</=
font>
<br><font size=3D2 face=3D"sans-serif">PACKAGE=5FARCH =3D &quot;raspberrypi=
2&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">KERNEL=5FDEVICETREE +=3D &quot;testb=
oard.dtb&quot;</font>
<br><font size=3D2 face=3D"sans-serif">####################################=
#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">########## </font><font size=3D2 col=
or=3Dblue face=3D"sans-serif">0001-add-</font><font size=3D2 face=3D"sans-s=
erif">testboard</font><font size=3D2 color=3Dblue face=3D"sans-serif">-to-m=
akefile.patch</font><font size=3D2 face=3D"sans-serif">
##########</font>
<br><font size=3D2 face=3D"sans-serif">--- a/arch/arm/boot/dts/Makefile</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">+++ b/arch/arm/boot/dts/Makefile</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">@@ -1,4 +1,8 @@</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;ifeq ($(CONFIG=5FOF),y)</font>
<br><font size=3D2 face=3D"sans-serif">+</font>
<br><font size=3D2 face=3D"sans-serif">+# my own dts files</font>
<br><font size=3D2 face=3D"sans-serif">+dtb-$(CONFIG=5FARCH=5FBCM2835) +=3D=
 \</font>
<br><font size=3D2 face=3D"sans-serif">+ &nbsp; &nbsp; &nbsp; &nbsp;testboa=
rd.dts</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;dtb-$(CONFIG=5FARCH=5FBCM2835)=
 +=3D
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bc=
m2708-rpi-b.dtb
\</font>
<br><font size=3D2 face=3D"sans-serif">####################################=
#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">########## testboard.dts ##########<=
/font>
<br><font size=3D2 face=3D"sans-serif">/dts-v1/;</font>
<br><font size=3D2 face=3D"sans-serif">#include &quot;bcm2836.dtsi&quot;</f=
ont>
<br><font size=3D2 face=3D"sans-serif">#include &quot;bcm2835-rpi.dtsi&quot=
;</font>
<br><font size=3D2 face=3D"sans-serif">#include &quot;bcm283x-rpi-smsc9514.=
dtsi&quot;</font>
<br><font size=3D2 face=3D"sans-serif">#include &quot;bcm283x-rpi-usb-host.=
dtsi&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">/ {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; compatib=
le
=3D &quot;raspberrypi,2-model-b&quot;, &quot;brcm,bcm2836&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; model
=3D &quot;RPi test&quot;;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; memory
{</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; reg =3D &lt;0 0x40000000&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; };</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; leds
{</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; act {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; gpios
=3D &lt;&amp;gpio 47 0&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; };</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; pwr {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; label
=3D &quot;PWR&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; gpios
=3D &lt;&amp;gpio 35 0&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; default-state
=3D &quot;keep&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; linux,default-trigger
=3D &quot;default-on&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; };</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; };</font>
<br>
<br><font size=3D2 face=3D"sans-serif">};</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&amp;gpio {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; pinctrl-0
=3D &lt;&amp;gpioout &amp;alt0 &amp;i2s=5Falt0&gt;;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; /*
I2S interface */</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; i2s=5Fal=
t0:
i2s=5Falt0 {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; brcm,pins =3D &lt;18 19 20 21&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; brcm,function =3D &lt;BCM2835=5FFSEL=5FALT0&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; status =3D &quot;disabled&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; };</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; cord0:
cord0 {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; brcm,pins =3D &lt;5 6 25&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; brcm,function =3D &lt;BCM2835=5FFSEL=5FALT2&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; status =3D &quot;okay&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; };</font>
<br>
<br><font size=3D2 face=3D"sans-serif">};</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&amp;hdmi {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; hpd-gpios
=3D &lt;&amp;gpio 46 GPIO=5FACTIVE=5FLOW&gt;;</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; status
=3D &quot;disabled&quot;;</font>
<br><font size=3D2 face=3D"sans-serif">};</font>
<br><font size=3D2 face=3D"sans-serif">####################################=
#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">For that I put a question on stackov=
erflow:<br>
</font><a href=3D"https://stackoverflow.com/questions/44702426/how-to-setup=
-an-own-device-tree-for-a-raspberrypi-in-yocto"><font size=3D2 color=3Dblue=
 face=3D"sans-serif">https://stackoverflow.com/questions/44702426/how-to-se=
tup-an-own-device-tree-for-a-raspberrypi-in-yocto</font></a>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards form Germany!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Stefan<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 181<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font>

--=_alternative 004AAEF4C125814F_=--
