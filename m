Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc2-s1.dub0.hotmail.com (dub0-omc2-s1.dub0.hotmail.com
	[157.55.1.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96EB7E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 08:48:24 -0700 (PDT)
Received: from DUB116-W92 ([157.55.1.136]) by dub0-omc2-s1.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 14 Jun 2013 08:48:23 -0700
X-TMN: [4c0vM5wgW8icusvNOZOQv1P78orQZvEcReWoFYbF+KQ=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W92ED1E5E8FAF40CDE7B21D98800@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Adrian Dudau <adrian.dudau@enea.com>
Date: Fri, 14 Jun 2013 15:48:23 +0000
Importance: Normal
In-Reply-To: <C35DE6E3665B10419D70F74D9884ABD403DC5DBF@sestoex05.enea.se>
References: <DUB116-W6373791E2F82604A24654598800@phx.gbl>,
	<C35DE6E3665B10419D70F74D9884ABD403DC5DBF@sestoex05.enea.se>
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Jun 2013 15:48:23.0236 (UTC)
	FILETIME=[99E3C040:01CE6916]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto - eclipse ADT plugin , missing autotools dependency
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
X-List-Received-Date: Fri, 14 Jun 2013 15:48:26 -0000
Content-Type: multipart/alternative;
	boundary="_3ec61286-6274-42e2-9ce1-541b29c72fcd_"

--_3ec61286-6274-42e2-9ce1-541b29c72fcd_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hi Adrian=2C
well I built the plugin locally=2C too=2C using the information from http:/=
/www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse .
It is also not very clear to me how the autotools version 3.0.1.xxxxxx is n=
ot sufficient for ADT=2C when the latter requires autotools version 1.1.0. =
Or do I understand the versioning wrongly?

In any case=2C I have downloaded Juno and it works like a charm in this cas=
e.
I can not get past the configure stage though (in the hello world test appl=
ocation). Something is wrong. but it is the topic of another post  (coming =
right up!)

Thank you for your prompt help!
Thanassis

> From: Adrian.Dudau@enea.com
> To: djnass_18@hotmail.com
> CC: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto - eclipse ADT plugin =2C missing autotools dep=
endency
> Date: Fri=2C 14 Jun 2013 14:30:42 +0000
>=20
> Hi Thanassis=2C
>=20
> On Fri=2C 2013-06-14 at 14:16 +0000=2C Thanassis Silis wrote:
> > Hello everyone=2C
> > I am using ubuntu 12.04=2C eclipse indigo=2C and have bitbaked rootfs &
> > toolchain from yocto meta-freescale 'dylan (v1.4.1)'.
> > I then went on to setup eclipse for yocto devel & debug. followed the
> > procedures from : Yocto Project Development Manual  (section
> > 4.2.2.1.3.)
> >=20
> >=20
> > =20
> >=20
> > When I try to install the yocto ADT plugin it whines saying that:
> >=20
> >=20
> > =20
> >=20
> >         Cannot complete the install because one or more required items
> >         could not be found.
> >           Software being installed: Yocto Project ADT Plug-in
> >         1.4.0.201304182148 (org.yocto.sdk.feature.group
> >         1.4.0.201304182148)
> >           Missing requirement: Yocto Project ADT Plug-in
> >         1.4.0.201304182148 (org.yocto.sdk.feature.group
> >         1.4.0.201304182148) requires 'org.eclipse.cdt.autotools.core
> >         1.1.0' but it could not be found
> >=20
> > =20
> >=20
> > =20
> >=20
> >=20
> It is obvious that the ADT plugin requires a newer version of the
> autotools package.
>=20
> >=20
> > well the Autotools are definitely installed already=2C but the version
> > that is stated next to the installed version is "Autotools support for
> > CDT (Incubation)    3.0.1.201202152032"
> > I also built the yocto-eclipse plugin from source and tried installing
> > that too. Same thing happens.
>=20
> How did you build the plugins? Against what version of Eclipse? What
> version of CDT?
> >=20
> >=20
> > =20
> >=20
> > How can I go about it?
>=20
> I'm not sure what is the latest version of CDT for Indigo=2C but you coul=
d
> try updating CDT first and see if that bumps it enough. Alternately=2C in
> case you didn't do this already=2C you could try building yocto-plugins
> against your very distribution of Eclipse.
>=20
> As a last resort=2C in case you're not confined to using Indigo=2C you co=
uld
> try downloading Juno and build/install the plugins on that.=20
> >=20
> > thank you very much for your help!
> >=20
>=20
> Best regards=2C
> --Adrian
> >=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
 		 	   		  =

--_3ec61286-6274-42e2-9ce1-541b29c72fcd_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Adrian=2C<br>well I built the=
 plugin locally=2C too=2C using the information from <a href=3D"http://www.=
yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse" target=3D=
"_blank">http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#ad=
t-eclipse</a> .<br>It is also not very clear to me how the autotools versio=
n 3.0.1.xxxxxx is not sufficient for ADT=2C when the latter requires autoto=
ols version 1.1.0. Or do I understand the versioning wrongly?<br><br>In any=
 case=2C I have downloaded Juno and it works like a charm in this case.<br>=
I can not get past the configure stage though (in the hello world test appl=
ocation). Something is wrong. but it is the topic of another post&nbsp=3B (=
coming right up!)<br><br>Thank you for your prompt help!<br>Thanassis<br><b=
r><div>&gt=3B From: Adrian.Dudau@enea.com<br>&gt=3B To: djnass_18@hotmail.c=
om<br>&gt=3B CC: yocto@yoctoproject.org<br>&gt=3B Subject: Re: [yocto] Yoct=
o - eclipse ADT plugin =2C missing autotools dependency<br>&gt=3B Date: Fri=
=2C 14 Jun 2013 14:30:42 +0000<br>&gt=3B <br>&gt=3B Hi Thanassis=2C<br>&gt=
=3B <br>&gt=3B On Fri=2C 2013-06-14 at 14:16 +0000=2C Thanassis Silis wrote=
:<br>&gt=3B &gt=3B Hello everyone=2C<br>&gt=3B &gt=3B I am using ubuntu 12.=
04=2C eclipse indigo=2C and have bitbaked rootfs &amp=3B<br>&gt=3B &gt=3B t=
oolchain from yocto meta-freescale 'dylan (v1.4.1)'.<br>&gt=3B &gt=3B I the=
n went on to setup eclipse for yocto devel &amp=3B debug. followed the<br>&=
gt=3B &gt=3B procedures from : Yocto Project Development Manual  (section<b=
r>&gt=3B &gt=3B 4.2.2.1.3.)<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &=
gt=3B  <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B When I try to install the yocto =
ADT plugin it whines saying that:<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&g=
t=3B &gt=3B  <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B         Cannot complete th=
e install because one or more required items<br>&gt=3B &gt=3B         could=
 not be found.<br>&gt=3B &gt=3B           Software being installed: Yocto P=
roject ADT Plug-in<br>&gt=3B &gt=3B         1.4.0.201304182148 (org.yocto.s=
dk.feature.group<br>&gt=3B &gt=3B         1.4.0.201304182148)<br>&gt=3B &gt=
=3B           Missing requirement: Yocto Project ADT Plug-in<br>&gt=3B &gt=
=3B         1.4.0.201304182148 (org.yocto.sdk.feature.group<br>&gt=3B &gt=
=3B         1.4.0.201304182148) requires 'org.eclipse.cdt.autotools.core<br=
>&gt=3B &gt=3B         1.1.0' but it could not be found<br>&gt=3B &gt=3B <b=
r>&gt=3B &gt=3B  <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B  <br>&gt=3B &gt=3B <br=
>&gt=3B &gt=3B <br>&gt=3B It is obvious that the ADT plugin requires a newe=
r version of the<br>&gt=3B autotools package.<br>&gt=3B <br>&gt=3B &gt=3B <=
br>&gt=3B &gt=3B well the Autotools are definitely installed already=2C but=
 the version<br>&gt=3B &gt=3B that is stated next to the installed version =
is "Autotools support for<br>&gt=3B &gt=3B CDT (Incubation)    3.0.1.201202=
152032"<br>&gt=3B &gt=3B I also built the yocto-eclipse plugin from source =
and tried installing<br>&gt=3B &gt=3B that too. Same thing happens.<br>&gt=
=3B <br>&gt=3B How did you build the plugins? Against what version of Eclip=
se? What<br>&gt=3B version of CDT?<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&=
gt=3B &gt=3B  <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B How can I go about it?<br=
>&gt=3B <br>&gt=3B I'm not sure what is the latest version of CDT for Indig=
o=2C but you could<br>&gt=3B try updating CDT first and see if that bumps i=
t enough. Alternately=2C in<br>&gt=3B case you didn't do this already=2C yo=
u could try building yocto-plugins<br>&gt=3B against your very distribution=
 of Eclipse.<br>&gt=3B <br>&gt=3B As a last resort=2C in case you're not co=
nfined to using Indigo=2C you could<br>&gt=3B try downloading Juno and buil=
d/install the plugins on that. <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B thank yo=
u very much for your help!<br>&gt=3B &gt=3B <br>&gt=3B <br>&gt=3B Best rega=
rds=2C<br>&gt=3B --Adrian<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B ______________=
_________________________________<br>&gt=3B &gt=3B yocto mailing list<br>&g=
t=3B &gt=3B yocto@yoctoproject.org<br>&gt=3B &gt=3B https://lists.yoctoproj=
ect.org/listinfo/yocto<br>&gt=3B <br>&gt=3B <br>&gt=3B <br></div> 		 	   		=
  </div></body>
</html>=

--_3ec61286-6274-42e2-9ce1-541b29c72fcd_--
