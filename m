Return-Path: <Erwin.Rieger.ext@rohde-schwarz.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D705FE008A6; Tue,  3 Feb 2015 01:23:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [80.246.32.97 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail02.rohde-schwarz.com (mail02.rohde-schwarz.com
	[80.246.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4760E0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 01:23:08 -0800 (PST)
Received: from amu315.rsint.net ([10.0.26.64]) by mail02.rohde-schwarz.com
	with ESMTP id 2015020310230448-218692 ;
	Tue, 3 Feb 2015 10:23:04 +0100 
Received: from rus19.rsint.net ([10.0.33.19])
	by amu315.rsint.net (Totemo SMTP Server) with SMTP ID 105
	for <yocto@yoctoproject.org>; Tue, 3 Feb 2015 10:23:05 +0100 (CET)
X-Disclaimed: 1
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
In-Reply-To: <54D028EC.3010001@windriver.com>
References: <54D028EC.3010001@windriver.com>,
	<OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com>
From: Erwin.Rieger.ext@rohde-schwarz.com
To: yocto@yoctoproject.org
Message-ID: <OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com>
Date: Tue, 3 Feb 2015 10:23:03 +0100
X-Mailer: Lotus Domino Web Server Release 8.5.3FP6 HF1218 December 12, 2014
X-KeepSent: D2FD4259:5EFAEEC5-C1257DE1:00338C9C;
	type=4; flags=0; name=$KeepSent
X-RUS_SENSITIVITY: 10
X-Sign: 0
X-MIMETrack: Itemize by SMTP Server on RSSMTP02/RSSMTP at 03.02.2015 10:23:04, 
	Serialize by Router on RSSMTP02/RSSMTP at 03.02.2015 10:23:18,
	Serialize complete at 03.02.2015 10:23:18
Subject: Re: How to use different busybox defconfig's in the initramfs and rootfs image
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
X-List-Received-Date: Tue, 03 Feb 2015 09:23:23 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00338C9CC1257DE1_="

--=_alternative 00338C9CC1257DE1_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8


Hello,

thank you for your reply.

I have a working solution now, but it is not as clean as i would like it to=
 be and some new questions arose with it.

My current setup consists of a busybox.bbappend file that is used to custom=
ize the rootfs
busybox (defconfig, some /etc files and so on) and a busybox-initramfs.bb r=
ecipe for the initramfs busybox (as you
suggested).

The=C2=A0busybox.bbappend (see below) is straight forward, so no problem wi=
th that.

To create the=C2=A0busybox-initramfs.bb in my custom layer, i have included=
 the base busybox recipe from the meta layer with
an 'require' statement.

Then i had to extend the=C2=A0FILESEXTRAPATHS variable to point back to the=
 base recipe files-directory since it
no longer found the SRC_URI files from meta/busybox.bb and meta/busybox.inc=
. See the=C2=A0BUSYBOXBASEDIR
variable in the=C2=A0busybox-initramfs.bb below.

I feel that his construct is not that elegant, so here comes the first ques=
tion:

Is there a nicer/cleaner way to include/reference the source files from the=
 base busybox recipe in the=C2=A0meta layer?

The second question concerns the versioning: The busybox.bbappend file uses=
 a 'version wildcard' (_%) to
match all versions of the base busybox recipe. But in the=C2=A0busybox-init=
ramfs.bb recipe i have to hardwire the=C2=A0
version of the base recipe.

How can i use a 'version wildcard' in a 'require' statement?

I've tried 'require recipes-core/busybox/busybox_%.bb' but that gives me a =
parse error so it seems not to be
possible to use version wildcards together with require/include.


My current busybox-initramfs.bb recipe:
-------------------------------------------------------------------
DESCRIPTION =3D "Use different busybox defconfig for initramfs."

# require recipes-core/busybox/busybox_1.22.1.bb

PV =3D "1.22.1"
require recipes-core/busybox/busybox_${PV}.bb

S =3D "${WORKDIR}/busybox-${PV}"

# Point FILESPATH to base busybox files dir
BUSYBOXBASEDIR =3D "${THISDIR}/../../../meta/recipes-core/busybox"
FILESEXTRAPATHS_prepend :=3D "${BUSYBOXBASEDIR}/busybox:"
FILESEXTRAPATHS_prepend :=3D "${BUSYBOXBASEDIR}/files:"

# Include our initramfs busybox defconfig
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"

BUSYBOX_SPLIT_SUID =3D "0"
-------------------------------------------------------------------


The busybox_%.bbappend for the rootfs busybox:
-------------------------------------------------------------------
DESCRIPTION =3D "Customize busybox."

# Include our rootfs busybox defconfig=C2=A0
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"

SRC_URI +=3D " \
=C2=A0 =C2=A0 file://inetd.conf \
=C2=A0 =C2=A0 "

do_install_append() {
=C2=A0 =C2=A0 install ${WORKDIR}/inetd.conf ${D}${sysconfdir}
}

BUSYBOX_SPLIT_SUID =3D "0"
-------------------------------------------------------------------

Best Regards, Erwin Rieger



-----ChenQi <Qi.Chen@windriver.com> schrieb: -----
An: <Erwin.Rieger.ext@rohde-schwarz.com>, <yocto@yoctoproject.org>
Von: ChenQi <Qi.Chen@windriver.com>
Datum: 03.02.2015 02:48
Betreff: Re: [yocto] How to use different busybox defconfig's in the initra=
mfs and rootfs image

The only way I know is to make a new recipe, busybox-initramfs.bb, for exam=
ple.
Install busybox for image rootfs and busybox-initramfs for initramfs.

Best Regards,
Chen Qi

On 02/02/2015 09:21 PM, Erwin.Rieger.ext@rohde-schwarz.com wrote:
Hello list,

i have used Yocto to create a initramfs linux kernel and a corresponding ro=
otfs for a embedded linux system.

Things are working as expected, so far.

Now i want to fine-tune my setup and want to use a different busybox config=
uration in the initramfs as the one in the rootfs image.
For example, the initramfs busybox should contain support for switch-root a=
nd that is not needed in the rootfs.
On the other hand, the rootfs should contain a=C2=A0"full-fledged" busybox =
(with inetd enabled, for example).

So the question is: How can i build/install a package two times with differ=
ing configurations in one bitbake run?.

How can this be done the Yocto-way without copying busybox.bb and hacking i=
t the way i need it?

I've tried various combinations, e.g. bb-appending busybox, inheriting from=
 busybox and so on - but to no avail.

Maybe someone have an idea on how to do that?


PS:
* The kernel recipe is derived (bbappend) from=C2=A0core-image-minimal-init=
ramfs.
* Rootfs recipe is derived from=C2=A0core-image-minimal.bb.


--=C2=A0
Erwin Rieger
--=C2=A0




--=_alternative 00338C9CC1257DE1_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8
Content-ID: <>

<font face=3D"Default Sans Serif,Verdana,Arial,Helvetica,sans-serif" size=
=3D"2"><br><font face=3D"Verdana, Arial, Helvetica, sans-serif">Hello,</fon=
t><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></=
div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">than=
k you for your reply.</div><div style=3D"font-family: Verdana, Arial, Helve=
tica, sans-serif;"><br></div><div style=3D"font-family: Verdana, Arial, Hel=
vetica, sans-serif;">I have a working solution now, but it is not as clean =
as i would like it to be and some new questions arose with it.</div><div st=
yle=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><div =
style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">My current se=
tup consists of a busybox.bbappend file that is used to customize the rootf=
s</div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">b=
usybox (defconfig, some /etc files and so on) and a busybox-initramfs.bb re=
cipe for the initramfs busybox (as you</div><div style=3D"font-family: Verd=
ana, Arial, Helvetica, sans-serif;">suggested).</div><div style=3D"font-fam=
ily: Verdana, Arial, Helvetica, sans-serif;"><br></div><div style=3D"font-f=
amily: Verdana, Arial, Helvetica, sans-serif;">The&nbsp;busybox.bbappend (s=
ee below) is straight forward, so no problem with that.</div><div style=3D"=
font-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><div style=
=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">To create the&nbsp=
;busybox-initramfs.bb in my custom layer, i have included the base busybox =
recipe from the meta layer with</div><div style=3D"font-family: Verdana, Ar=
ial, Helvetica, sans-serif;">an 'require' statement.</div><div style=3D"fon=
t-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><div style=3D"f=
ont-family: Verdana, Arial, Helvetica, sans-serif;">Then i had to extend th=
e&nbsp;FILESEXTRAPATHS variable to point back to the base recipe files-dire=
ctory since it</div><div style=3D"font-family: Verdana, Arial, Helvetica, s=
ans-serif;">no longer found the SRC_URI files from meta/busybox.bb and meta=
/busybox.inc. See the&nbsp;BUSYBOXBASEDIR</div><div style=3D"font-family: V=
erdana, Arial, Helvetica, sans-serif;">variable in the&nbsp;busybox-initram=
fs.bb below.</div><div style=3D"font-family: Verdana, Arial, Helvetica, san=
s-serif;"><br></div><div style=3D"font-family: Verdana, Arial, Helvetica, s=
ans-serif;">I feel that his construct is not that elegant, so here comes th=
e f<b style=3D"font-size: 12.7272720336914px;">irst question</b><span style=
=3D"font-size: 12.7272720336914px;">:</span></div><div style=3D"font-family=
: Verdana, Arial, Helvetica, sans-serif;"><span style=3D"font-size: 12.7272=
720336914px;"><br></span></div><div style=3D"font-family: Verdana, Arial, H=
elvetica, sans-serif;"><span style=3D"font-size: 12.7272720336914px;">Is th=
ere a nicer/cleaner way to include/reference the source files from the base=
 busybox recipe in the&nbsp;</span><span style=3D"font-size: 12.72727203369=
14px;">meta layer?</span></div><div style=3D"font-family: Verdana, Arial, H=
elvetica, sans-serif;"><br></div><div style=3D"font-family: Verdana, Arial,=
 Helvetica, sans-serif;">The <b>second question</b> concerns the versioning=
: The busybox.bbappend file uses a 'version wildcard' (_%) to</div><div sty=
le=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">match all versio=
ns of the base busybox recipe. But in the&nbsp;busybox-initramfs.bb recipe =
i have to hardwire the&nbsp;</div><div style=3D"font-family: Verdana, Arial=
, Helvetica, sans-serif;">version of the base recipe.</div><div style=3D"fo=
nt-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><div style=3D"=
font-family: Verdana, Arial, Helvetica, sans-serif;">How can i use a 'versi=
on wildcard' in a 'require' statement?</div><div style=3D"font-family: Verd=
ana, Arial, Helvetica, sans-serif;"><br></div><div><font face=3D"Verdana, A=
rial, Helvetica, sans-serif">I've tried '</font><font face=3D"monospace, Co=
urier New, Courier, monospace" size=3D"2">require recipes-core/busybox/busy=
box_%.bb</font><font face=3D"Verdana, Arial, Helvetica, sans-serif" style=
=3D"font-size: 12.7272720336914px;">' but that gives me a parse error so it=
 seems not to be</font></div><div style=3D"font-family: Verdana, Arial, Hel=
vetica, sans-serif;"><span style=3D"font-size: 12.7272720336914px;">possibl=
e to use version wildcards together with require/include.</span></div><div =
style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><di=
v style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><br></div><=
div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">My curren=
t busybox-initramfs.bb recipe:</div><blockquote style=3D"margin: 0 0 0 40px=
; border: none; padding: 0px;"><div><div><span style=3D"font-family: monosp=
ace, 'Courier New', Courier, monospace; font-size: small;">----------------=
---------------------------------------------------</span></div><div><font =
face=3D"monospace, Courier New, Courier, monospace" size=3D"2">DESCRIPTION =
=3D "Use different busybox defconfig for initramfs."</font></div></div><div=
><div><br></div></div><div><div><span style=3D"font-family: monospace, 'Cou=
rier New', Courier, monospace; font-size: small;"># require recipes-core/bu=
sybox/busybox_1.22.1.bb</span></div></div><div><span style=3D"font-family: =
monospace, 'Courier New', Courier, monospace; font-size: small;"><br></span=
></div><div><span style=3D"font-family: monospace, 'Courier New', Courier, =
monospace; font-size: small;">PV =3D "1.22.1"</span></div><div><div><font f=
ace=3D"monospace, Courier New, Courier, monospace" size=3D"2">require recip=
es-core/busybox/busybox_${PV}.bb</font></div></div><div><div><font face=3D"=
monospace, Courier New, Courier, monospace" size=3D"2"><br></font></div></d=
iv><div><div><font face=3D"monospace, Courier New, Courier, monospace" size=
=3D"2">S =3D "${WORKDIR}/busybox-${PV}"</font></div></div><div><div><font f=
ace=3D"monospace, Courier New, Courier, monospace" size=3D"2"><br></font></=
div></div><div><div><font face=3D"monospace, Courier New, Courier, monospac=
e" size=3D"2"># Point FILESPATH to base busybox files dir</font></div></div=
><div><div><font face=3D"monospace, Courier New, Courier, monospace" size=
=3D"2">BUSYBOXBASEDIR =3D "${THISDIR}/../../../meta/recipes-core/busybox"</=
font></div></div><div><div><font face=3D"monospace, Courier New, Courier, m=
onospace" size=3D"2">FILESEXTRAPATHS_prepend :=3D "${BUSYBOXBASEDIR}/busybo=
x:"</font></div></div><div><div><font face=3D"monospace, Courier New, Couri=
er, monospace" size=3D"2">FILESEXTRAPATHS_prepend :=3D "${BUSYBOXBASEDIR}/f=
iles:"</font></div></div><div><div><font face=3D"monospace, Courier New, Co=
urier, monospace" size=3D"2"><br></font></div></div><div><div><font face=3D=
"monospace, Courier New, Courier, monospace" size=3D"2"># Include our initr=
amfs busybox defconfig</font></div></div><div><div><font face=3D"monospace,=
 Courier New, Courier, monospace" size=3D"2">FILESEXTRAPATHS_prepend :=3D "=
${THISDIR}/${BPN}:"</font></div></div><div><div><font face=3D"monospace, Co=
urier New, Courier, monospace" size=3D"2"><br></font></div></div><div><div>=
<font face=3D"monospace, Courier New, Courier, monospace" size=3D"2">BUSYBO=
X_SPLIT_SUID =3D "0"</font></div></div><div><span style=3D"font-family: mon=
ospace, 'Courier New', Courier, monospace; font-size: small;">-------------=
------------------------------------------------------</span></div></blockq=
uote><div><div><font face=3D"monospace, Courier New, Courier, monospace" si=
ze=3D"2"><br></font></div><div><br></div><div style=3D"font-family: Verdana=
, Arial, Helvetica, sans-serif;"><span style=3D"font-size: 12.7272720336914=
px;">The busybox_%.bbappend for the rootfs busybox:</span></div></div><bloc=
kquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;"><div><div>=
<font size=3D"2" face=3D"monospace, Courier New, Courier, monospace">------=
-------------------------------------------------------------</font></div><=
div><font size=3D"2" face=3D"monospace, Courier New, Courier, monospace">DE=
SCRIPTION =3D "Customize busybox."</font></div></div><div><div><font size=
=3D"2" face=3D"monospace, Courier New, Courier, monospace"><br></font></div=
></div><div><div><font size=3D"2" face=3D"monospace, Courier New, Courier, =
monospace"># Include our rootfs busybox defconfig&nbsp;</font></div></div><=
div><div><font size=3D"2" face=3D"monospace, Courier New, Courier, monospac=
e">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"</font></div></div><div=
><div><font size=3D"2" face=3D"monospace, Courier New, Courier, monospace">=
<br></font></div></div><div><div><font size=3D"2" face=3D"monospace, Courie=
r New, Courier, monospace">SRC_URI +=3D " \</font></div></div><div><div><fo=
nt size=3D"2" face=3D"monospace, Courier New, Courier, monospace">&nbsp; &n=
bsp; file://inetd.conf \</font></div></div><div><div><font size=3D"2" face=
=3D"monospace, Courier New, Courier, monospace">&nbsp; &nbsp; "</font></div=
></div><div><div><font size=3D"2" face=3D"monospace, Courier New, Courier, =
monospace"><br></font></div></div><div><div><font size=3D"2" face=3D"monosp=
ace, Courier New, Courier, monospace">do_install_append() {</font></div></d=
iv><div><div><font size=3D"2" face=3D"monospace, Courier New, Courier, mono=
space">&nbsp; &nbsp; install ${WORKDIR}/inetd.conf ${D}${sysconfdir}</font>=
</div></div><div><div><font size=3D"2" face=3D"monospace, Courier New, Cour=
ier, monospace">}</font></div></div><div><div><font size=3D"2" face=3D"mono=
space, Courier New, Courier, monospace"><br></font></div></div><div><div><f=
ont size=3D"2" face=3D"monospace, Courier New, Courier, monospace">BUSYBOX_=
SPLIT_SUID =3D "0"</font></div></div><div><span style=3D"font-family: monos=
pace, 'Courier New', Courier, monospace; font-size: small;">---------------=
----------------------------------------------------</span></div></blockquo=
te><div><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif; f=
ont-size: 12.7272720336914px;"><br></div></div><div><font face=3D"Verdana, =
Arial, Helvetica, sans-serif">Best Regards, Erwin Rieger</font></div><div s=
tyle=3D"font-family: Verdana, Arial, Helvetica, sans-serif;"><span style=3D=
"font-size: 12.7272720336914px;"><br></span></div><div style=3D"font-family=
: Verdana, Arial, Helvetica, sans-serif;"><span style=3D"font-size: 12.7272=
720336914px;"><br></span></div><div style=3D"font-family: Verdana, Arial, H=
elvetica, sans-serif;"><br><font color=3D"#990099">-----ChenQi &lt;Qi.Chen@=
windriver.com&gt; schrieb: -----</font><div style=3D"padding-left:5px;"><di=
v style=3D"padding-right:0px;padding-left:5px;border-left:solid black 2px;"=
>An: &lt;Erwin.Rieger.ext@rohde-schwarz.com&gt;, &lt;yocto@yoctoproject.org=
&gt;<br>Von: ChenQi &lt;Qi.Chen@windriver.com&gt;<br>Datum: 03.02.2015 02:4=
8<br>Betreff: Re: [yocto] How to use different busybox defconfig's in the i=
nitramfs and rootfs image<br><br>
 =20
    <!--Notes ACF
<meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">-->
 =20
 =20
    <div class=3D"moz-cite-prefix">The only way I know is to make a new
      recipe, busybox-initramfs.bb, for example.<br>
      Install busybox for image rootfs and busybox-initramfs for
      initramfs.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 02/02/2015 09:21 PM, <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:Erwin.Rieger.ext@rohde-schwarz.com">Erwin.Rieger.ext@rohde-schwarz.=
com</a> wrote:<br>
    </div>
    <blockquote cite=3D"mid:OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE=
0.004958B5@rohde-schwarz.com" type=3D"cite">
      <!--Notes ACF
<meta http-equiv=3D"Content-Type" content=3D"text/html;        charset=3Dwi=
ndows-1252">-->
      <font size=3D"2" face=3D"Default Sans        Serif,Verdana,Arial,Helv=
etica,sans-serif"><font face=3D"Verdana,          Arial, Helvetica, sans-se=
rif">Hello list,</font>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
i
          have used Yocto to create a initramfs linux kernel and a
          corresponding rootfs for a embedded linux system.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
Things
          are working as expected, so far.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
Now
          i want to fine-tune my setup and want to use a different
          busybox configuration in the initramfs as the one in the
          rootfs image.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
For
          example, the initramfs busybox should contain support for
          switch-root and that is not needed in the rootfs.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
On
          the other hand, the rootfs should contain a&nbsp;"full-fledged"
          busybox (with inetd enabled, for example).</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
So
          the question is: How can i build/install a package two times
          with differing configurations in one bitbake run?.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
How
          can this be done the Yocto-way without copying busybox.bb and
          hacking it the way i need it?</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
I've
          tried various combinations, e.g. bb-appending busybox,
          inheriting from busybox and so on - but to no avail.</div>
        <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;">=
<br>
        </div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif">Maybe
            someone have an idea on how to do that?</font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif">PS:</font=
></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif">* The
            kernel recipe is derived (bbappend)
            from&nbsp;core-image-minimal-initramfs.</font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif">* Rootfs
            recipe is derived from&nbsp;core-image-minimal.bb.</font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Verdana, Arial, Helvetica, sans-serif">
            <div>--&nbsp;</div>
            <div>Erwin Rieger</div>
            <div>--&nbsp;</div>
          </font></div>
      </font>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
 =20

</div></div></div><div></div></font>

--=_alternative 00338C9CC1257DE1_=--
