Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C931E014F7
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:35:58 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r4E9ZokO000698; Tue, 14 May 2013 11:35:50 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id 6FA52E405A;
	Tue, 14 May 2013 11:35:49 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout02.retarus.com (Postfix) with SMTP id D41A6E4056;
	Tue, 14 May 2013 11:35:48 +0200 (CEST)
X-RMX-Split: 2013-05-14 11:35:46 +0200
In-Reply-To: <5657638.Np3iF1lsb7@helios>
References: <OFF65EFDAC.F177D7D1-ONC1257B6B.002720EC-C1257B6B.00288BEC@retarus.de>
	<5657638.Np3iF1lsb7@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
MIME-Version: 1.0
X-KeepSent: E5D984C5:AA62713E-C1257B6B:00342B6A;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFE5D984C5.AA62713E-ONC1257B6B.00342B6A-C1257B6B.00349BEB@retarus.de>
Date: Tue, 14 May 2013 11:34:38 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05/14/2013 11:35:39,
	Serialize complete at 05/14/2013 11:35:39
X-RMX-ID: 20130514-113539-r4E9Zcq1009763-0@kdin01
X-RMX-TRACE: 2013-05-14 11:35:39 KdIn2013@kdin01/mailcc05 [0.3s]
	20130514-113539-r4E9Zcq1009763-0@kdin01 0:00:00
X-RMX-TRACE: 2013-05-14 11:35:39 RmxMSO@kdin01/mailcc10 [0.1s]
	20130514-113539-r4E9Zcq1009763-0@kdin01 0:00:00
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Confused which layers are needed for meta-intel/meta-crownbay
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
X-List-Received-Date: Tue, 14 May 2013 09:35:59 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00349BE9C1257B6B_="

--=_alternative 00349BE9C1257B6B_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

> Hi Felix,
>=20
> On Tuesday 14 May 2013 09:22:53 Felix01 Fischer wrote:
> > I'm currently trying to build a booting core-image-sato image with=20
MACHINE
> > ?=3D"crownbay". I'm using  poky 9.0.0 and meta-intel (dylan branch).
> >=20
> > I've discovered something which confuses me:
> >=20
> > First meta-intel/meta-crownbay/README states that it is to be used=20
with
> > the openembedded.org bitbake and openembedded-core layer (both on=20
branch
> > master). Isn't this opposite in using yocto (as both provide bitbake)=20
?
>=20
> It's not the opposite, it's the same. Poky is composed of=20
openembedded-core,=20
> bitbake, yocto-docs and a few other bits and pieces; so you can either=20
use=20
> poky here or openembedded-core + bitbake.
>=20

First, thank you for your quick reply :-)

So I guess, it's fine only to add meta-intel and meta-intel/meta-crownbay=20
to BBLayers and not openembedded-core and bitbake, too?

If so, why not remove this confusing reference to open-embedded?

> > Second meta-intel/meta-crownbay/README.sources points to yocto-1.3=20
(Line
> > 10).
>=20
> This is an oversight. Nitin, can you please correct this or avoid having =

the=20
> fixed version URL in the document at all?
>=20
> > Is it possible that these layers aren't ready for yocto 1.4 despite=20
being
> > packaged as "1.4-final", "1.4" and "danny-9.0.0"?
>=20
> No, I think this is just a case where the URL hasn't been updated in the =


> README.sources file.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre



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

--=_alternative 00349BE9C1257B6B_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<tt><font size=3D2>&gt; Hi Felix,<br>
&gt; <br>
&gt; On Tuesday 14 May 2013 09:22:53 Felix01 Fischer wrote:<br>
&gt; &gt; I'm currently trying to build a booting core-image-sato image
with MACHINE<br>
&gt; &gt; ?=3D&quot;crownbay&quot;. I'm using &nbsp;poky 9.0.0 and meta-int=
el
(dylan branch).<br>
&gt; &gt; <br>
&gt; &gt; I've discovered something which confuses me:<br>
&gt; &gt; <br>
&gt; &gt; First meta-intel/meta-crownbay/README states that it is to be
used with<br>
&gt; &gt; the openembedded.org bitbake and openembedded-core layer (both
on branch<br>
&gt; &gt; master). Isn't this opposite in using yocto (as both provide
bitbake) ?<br>
&gt; <br>
&gt; It's not the opposite, it's the same. Poky is composed of openembedded=
-core,
<br>
&gt; bitbake, yocto-docs and a few other bits and pieces; so you can either
use <br>
&gt; poky here or openembedded-core + bitbake.<br>
&gt; <br>
<br>
First, thank you for your quick reply :-)<br>
</font></tt>
<br><tt><font size=3D2>So I guess, it's fine only to add meta-intel and met=
a-intel/meta-crownbay
to BBLayers and not openembedded-core and bitbake, too?<br>
<br>
If so, why not remove this confusing reference to open-embedded?</font></tt>
<br><tt><font size=3D2><br>
&gt; &gt; Second meta-intel/meta-crownbay/README.sources points to yocto-1.3
(Line<br>
&gt; &gt; 10).<br>
&gt; <br>
&gt; This is an oversight. Nitin, can you please correct this or avoid
having the <br>
&gt; fixed version URL in the document at all?<br>
&gt; <br>
&gt; &gt; Is it possible that these layers aren't ready for yocto 1.4 despi=
te
being<br>
&gt; &gt; packaged as &quot;1.4-final&quot;, &quot;1.4&quot; and &quot;dann=
y-9.0.0&quot;?<br>
&gt; <br>
&gt; No, I think this is just a case where the URL hasn't been updated
in the <br>
&gt; README.sources file.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt; <br>
&gt; -- <br>
&gt; <br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
</font></tt>
<br>
<br>
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

--=_alternative 00349BE9C1257B6B_=--
