Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5890AE014E7
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 23:46:15 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r4E6k8d1006337; Tue, 14 May 2013 08:46:09 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id D54A4135674;
	Tue, 14 May 2013 08:46:08 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout01.retarus.com (Postfix) with SMTP id A21E5135674;
	Tue, 14 May 2013 08:46:08 +0200 (CEST)
X-RMX-Split: 2013-05-14 08:46:03 +0200
In-Reply-To: <CAJTo0LZsK6a2+Te2VCkVhfvV7LA5UcOiPdW2ViiJqfBUBsUR2Q@mail.gmail.com>
References: <23c0c78e3de800ff998f3cc987ca51a1@fiskare.de>
	<CAJTo0LZsK6a2+Te2VCkVhfvV7LA5UcOiPdW2ViiJqfBUBsUR2Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: 041B1D6A:D7B9E5E2-C1257B6B:002485EC;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF041B1D6A.D7B9E5E2-ONC1257B6B.002485EC-C1257B6B.002527AA@retarus.de>
Date: Tue, 14 May 2013 08:45:50 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05/14/2013 08:45:56,
	Serialize complete at 05/14/2013 08:45:56
X-RMX-ID: 20130514-084556-r4E6juqb006434-0@kdin02
X-RMX-TRACE: 2013-05-14 08:45:56 KdIn2013@kdin02/mailcc05 [0.3s]
	20130514-084556-r4E6juqb006434-0@kdin02 0:00:00
X-RMX-TRACE: 2013-05-14 08:45:56 RmxMSO@kdin02/mailcc09 [0.1s]
	20130514-084556-r4E6juqb006434-0@kdin02 0:00:00
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Antwort: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Tue, 14 May 2013 06:46:15 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002527A9C1257B6B_="

--=_alternative 002527A9C1257B6B_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

 yocto-bounces@yoctoproject.org schrieb am 07.05.2013 20:51:52:

> "Burton, Ross" <ross.burton@intel.com>=20
> Gesendet von: yocto-bounces@yoctoproject.org
>=20
> 07.05.2013 20:51
>=20
> An
>=20
> Felix Fischer <felix@fiskare.de>,=20
>=20
> Kopie
>=20
> yocto@yoctoproject.org
>=20
> Thema
>=20
> Re: [yocto] Antwort: Re: booting with systemd fails with poky 9.0.0=20
> & meta-ivi 4.0 & meta-intel master=20
>=20
> On 7 May 2013 17:13, Felix Fischer <felix@fiskare.de> wrote:
> > The last two lines I get are
> >
> > systemd-udev[48]: starting version 199
> > Waiting for removable media...
>=20
> It's possibly waiting for the automounter to run, but it's not
> installed.  Check that udev-extraconf is installed in your
> rootfs/initramfs or whatever is booting.  core-image-minimal-initramfs
> does, but I've no idea if the IVI images pull it in explicitly as we
> recently removed it as a universal recommendation in systemd/udev.
>=20

I built an image with udev-extraconf and the following changed:

No change with genivi and crownbay layers enabled (distro =3D=20
"poky-ivi-systemd")

 "/init ....." errors disappeared but the boot process still hangs while=20
"waiting for removable media" for a build with only crownbay layers=20
enabled (distro =3D "poky", systemd set as init manager)

Viele Gr=FC=DFe

Felix Fischer

Studentischer Mitarbeiter (VC-D1)
Vehicle Cockpit Electronics Devices

IAV GmbH
Carnotstr. 1
10587 BERLIN
GERMANY

Phone: +49 30 39978-9540
Fax:      +49 30 39978-9411
E-Mail:  <mailto:felix01.fischer@iav.de>
Internet: http://www.iav.com

Sitz/Registered Office: Berlin,=20
Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
Registernummer/Company Registration Number: HRB 21 280,=20
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,=20
Dr. R=FCdiger Goyk

--=_alternative 002527A9C1257B6B_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif"><br>
 </font>
<br>
<br><tt><font size=3D2>yocto-bounces@yoctoproject.org schrieb am 07.05.2013
20:51:52:<br>
<br>
&gt; &quot;Burton, Ross&quot; &lt;ross.burton@intel.com&gt; </font></tt>
<br><tt><font size=3D2>&gt; Gesendet von: yocto-bounces@yoctoproject.org<br>
&gt; </font></tt>
<br><tt><font size=3D2>&gt; 07.05.2013 20:51</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; An</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Felix Fischer &lt;felix@fiskare.de&gt;, </font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Kopie</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; yocto@yoctoproject.org</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Thema</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Re: [yocto] Antwort: Re: booting with systemd fails with poky 9.0.0
<br>
&gt; &amp; meta-ivi 4.0 &amp; meta-intel master </font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; On 7 May 2013 17:13, Felix Fischer &lt;felix@fiskare.de&gt; wrote:<br>
&gt; &gt; The last two lines I get are<br>
&gt; &gt;<br>
&gt; &gt; systemd-udev[48]: starting version 199<br>
&gt; &gt; Waiting for removable media...<br>
&gt; <br>
&gt; It's possibly waiting for the automounter to run, but it's not<br>
&gt; installed. &nbsp;Check that udev-extraconf is installed in your<br>
&gt; rootfs/initramfs or whatever is booting. &nbsp;core-image-minimal-init=
ramfs<br>
&gt; does, but I've no idea if the IVI images pull it in explicitly as
we<br>
&gt; recently removed it as a universal recommendation in systemd/udev.<br>
&gt; </font></tt>
<br>
<br><tt><font size=3D2>I built an image with udev-extraconf and the followi=
ng
changed:<br>
</font></tt>
<br><tt><font size=3D2>No change with genivi and crownbay layers enabled
(distro =3D &quot;poky-ivi-systemd&quot;)<br>
<br>
</font></tt><font size=3D3> &quot;/init .....&quot; errors disappeared but
the boot process still hangs while &quot;waiting for removable media&quot;
for a build with only crownbay layers enabled (distro =3D &quot;poky&quot;,
systemd set as init manager)</font><tt><font size=3D2><br>
</font></tt>
<br><font size=3D2 face=3D"sans-serif">Viele Gr=FC=DFe<br>
<br>
Felix Fischer<br>
<br>
Studentischer Mitarbeiter (VC-D1)<br>
Vehicle Cockpit Electronics Devices<br>
<br>
IAV GmbH<br>
Carnotstr. 1<br>
10587 BERLIN<br>
GERMANY<br>
<br>
Phone: +49 30 39978-9540<br>
Fax: &nbsp; &nbsp; &nbsp;+49 30 39978-9411<br>
E-Mail: &nbsp;&lt;</font><a href=3Dmailto:felix01.fischer@iav.de><font size=
=3D2 face=3D"sans-serif">mailto:felix01.fischer@iav.de</font></a><font size=
=3D2 face=3D"sans-serif">&gt;<br>
Internet: </font><a href=3Dhttp://www.iav.com/><font size=3D2 face=3D"sans-=
serif">http://www.iav.com</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
Sitz/Registered Office: Berlin, <br>
Registergericht/Registration Court: Amtsgericht Charlottenburg, <br>
Registernummer/Company Registration Number: HRB 21 280, <br>
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,
Dr. R=FCdiger Goyk</font>

--=_alternative 002527A9C1257B6B_=--
