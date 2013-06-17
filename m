Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc2-s19.dub0.hotmail.com (dub0-omc2-s19.dub0.hotmail.com
	[157.55.1.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8017E01547
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 01:32:51 -0700 (PDT)
Received: from DUB116-W32 ([157.55.1.137]) by dub0-omc2-s19.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 17 Jun 2013 01:32:49 -0700
X-TMN: [bLrHYSKG7Ilax/UHP5B21MOjsPX82jNpq+yq7aBu1us=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W32661C49D6864210769D8598830@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Adrian Dudau <adrian.dudau@enea.com>
Date: Mon, 17 Jun 2013 08:32:49 +0000
Importance: Normal
In-Reply-To: <C35DE6E3665B10419D70F74D9884ABD403DE3AF9@sestoex05.enea.se>
References: <DUB116-W11741B9D094589E5132592398810@phx.gbl>,
	<C35DE6E3665B10419D70F74D9884ABD403DE3AF9@sestoex05.enea.se>
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Jun 2013 08:32:49.0513 (UTC)
	FILETIME=[40375590:01CE6B35]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eclipse error in downloading file when trying to debug on the actual target
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
X-List-Received-Date: Mon, 17 Jun 2013 08:32:52 -0000
Content-Type: multipart/alternative;
	boundary="_71db0705-0eeb-46eb-bc21-b63c5bec40e6_"

--_71db0705-0eeb-46eb-bc21-b63c5bec40e6_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hi Adrian=2C
I switched to TCF perspective and indeed I cannot see the files.=20
Looking for info on TCF I realised I needed tcf-agent running on the target=
 board.
However=2C ssh'ing to the target board=2C I see there is no tcf-agent execu=
table.
This seems odd as I have built the fsl-image-gui-sdk image. So tcf-agent sh=
ould be there.

I'll try to compile it independently and upload it to my image.

thank you for your info


> From: Adrian.Dudau@enea.com
> To: djnass_18@hotmail.com
> CC: yocto@yoctoproject.org
> Subject: Re: [yocto] eclipse error in downloading file when trying to deb=
ug on the actual target
> Date: Mon=2C 17 Jun 2013 07:31:23 +0000
>=20
> On Sat=2C 2013-06-15 at 16:40 +0000=2C Thanassis Silis wrote:
> > Hello everyone=2C
> > I created a "hello world" ADT C application (basically following the
> > PDM http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#=
application-development-workflow )
> >=20
> >=20
> > The guide gives directions to run the built application in a qemu
> > instance. However=2C this fails.  The reason seems to be related to the
> > imx6 uImage.=20
> > https://lists.yoctoproject.org/pipermail/meta-freescale/2012-December/0=
00360.html
> > so I didn't try to much to play around with qemu and switched to try
> > and do debugging directly on the board (the real target).
> >=20
> >=20
> > I presume paragraph 4.2.2.6. is the same for both cases (qemu vs real
> > target) - only in step 10=2C i provided the real targets ip address (I
> > can ssh to this address without any problem and indeed connect to my
> > target board - a freescale imx6q sabrelite board).
> >=20
> >=20
> > When I press debug however=2C this msg pops up:
> >=20
> >=20
> >         "Launching
> >         <projectname>_gdb_armv7a-vfp-neon-poky-linux-gnueabi" has
> >         encountered an error.
> >=20
> >=20
> > and the details are:
> >=20
> >=20
> >         Error during file upload.
> >         Connection refused
> >         Connection refused
> >         Connection refused
> >        =20
> >        =20
> > any idea about what could cause this error?
> >=20
> >=20
> > Thank you for your help=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> Hi=2C
>=20
> Can you browse the target from Eclipse? Try opening the TCF connection
> in the RSE perpective and see if you can access the files. Youy might
> have to provide some login details (user+pass).
>=20
> br=2C
> --Adrian
 		 	   		  =

--_71db0705-0eeb-46eb-bc21-b63c5bec40e6_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Adrian=2C<br>I switched to TC=
F perspective and indeed I cannot see the files. <br>Looking for info on TC=
F I realised I needed tcf-agent running on the target board.<br>However=2C =
ssh'ing to the target board=2C I see there is no tcf-agent executable.<br>T=
his seems odd as I have built the fsl-image-gui-sdk image. So tcf-agent sho=
uld be there.<br><br>I'll try to compile it independently and upload it to =
my image.<br><br>thank you for your info<br><br><br><div>&gt=3B From: Adria=
n.Dudau@enea.com<br>&gt=3B To: djnass_18@hotmail.com<br>&gt=3B CC: yocto@yo=
ctoproject.org<br>&gt=3B Subject: Re: [yocto] eclipse error in downloading =
file when trying to debug on the actual target<br>&gt=3B Date: Mon=2C 17 Ju=
n 2013 07:31:23 +0000<br>&gt=3B <br>&gt=3B On Sat=2C 2013-06-15 at 16:40 +0=
000=2C Thanassis Silis wrote:<br>&gt=3B &gt=3B Hello everyone=2C<br>&gt=3B =
&gt=3B I created a "hello world" ADT C application (basically following the=
<br>&gt=3B &gt=3B PDM http://www.yoctoproject.org/docs/latest/dev-manual/de=
v-manual.html#application-development-workflow )<br>&gt=3B &gt=3B <br>&gt=
=3B &gt=3B <br>&gt=3B &gt=3B The guide gives directions to run the built ap=
plication in a qemu<br>&gt=3B &gt=3B instance. However=2C this fails.  The =
reason seems to be related to the<br>&gt=3B &gt=3B imx6 uImage. <br>&gt=3B =
&gt=3B https://lists.yoctoproject.org/pipermail/meta-freescale/2012-Decembe=
r/000360.html<br>&gt=3B &gt=3B so I didn't try to much to play around with =
qemu and switched to try<br>&gt=3B &gt=3B and do debugging directly on the =
board (the real target).<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=
=3B I presume paragraph 4.2.2.6. is the same for both cases (qemu vs real<b=
r>&gt=3B &gt=3B target) - only in step 10=2C i provided the real targets ip=
 address (I<br>&gt=3B &gt=3B can ssh to this address without any problem an=
d indeed connect to my<br>&gt=3B &gt=3B target board - a freescale imx6q sa=
brelite board).<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B When I=
 press debug however=2C this msg pops up:<br>&gt=3B &gt=3B <br>&gt=3B &gt=
=3B <br>&gt=3B &gt=3B         "Launching<br>&gt=3B &gt=3B         &lt=3Bpro=
jectname&gt=3B_gdb_armv7a-vfp-neon-poky-linux-gnueabi" has<br>&gt=3B &gt=3B=
         encountered an error.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=
=3B &gt=3B and the details are:<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=
=3B &gt=3B         Error during file upload.<br>&gt=3B &gt=3B         Conne=
ction refused<br>&gt=3B &gt=3B         Connection refused<br>&gt=3B &gt=3B =
        Connection refused<br>&gt=3B &gt=3B         <br>&gt=3B &gt=3B      =
   <br>&gt=3B &gt=3B any idea about what could cause this error?<br>&gt=3B =
&gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Thank you for your help <br>&gt=
=3B &gt=3B _______________________________________________<br>&gt=3B &gt=3B=
 yocto mailing list<br>&gt=3B &gt=3B yocto@yoctoproject.org<br>&gt=3B &gt=
=3B https://lists.yoctoproject.org/listinfo/yocto<br>&gt=3B <br>&gt=3B Hi=
=2C<br>&gt=3B <br>&gt=3B Can you browse the target from Eclipse? Try openin=
g the TCF connection<br>&gt=3B in the RSE perpective and see if you can acc=
ess the files. Youy might<br>&gt=3B have to provide some login details (use=
r+pass).<br>&gt=3B <br>&gt=3B br=2C<br>&gt=3B --Adrian<br></div> 		 	   		 =
 </div></body>
</html>=

--_71db0705-0eeb-46eb-bc21-b63c5bec40e6_--
