Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF614E015BD
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 00:08:19 -0700 (PDT)
Received: from horus27 (127.0.0.1) by horus27 (Axigen) with ESMTPSA id 1FAD13; 
	Wed, 25 Sep 2013 09:08:14 +0200
Received: from [172.30.250.254] by horus.es with HTTP;
	Wed, 25 Sep 2013 09:08:14 +0200
From: Diego Gonzalez <diego.gonzalez@horus.es>
Date: Wed, 25 Sep 2013 09:08:14 +0200
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1380092894836405500@horus.es>
In-Reply-To: <1379579265426525500@horus.es>
References: <1379579265426525500@horus.es>
Importance: Normal
MIME-Version: 1.0
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: Re: problem with sft in fsl-image-gui
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
X-List-Received-Date: Wed, 25 Sep 2013 07:08:21 -0000
Content-Type: multipart/alternative;
	boundary="===axigen=9994330796400620303106786290719940498691=axigen==="

--===axigen=9994330796400620303106786290719940498691=axigen===
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline




=09
=09
=09
=09


Hello,





we  discovered how to add sftp function
in our customizable image. There's a package called eclipse-debug
(~/poky/meta/recipes-core/packagegroup), which you can find a RDPENDS
to openssh-sftp-server.


So you have at
least 4 possibilities to add it in your image (select just one) :



 * In a
	customizable image or in the local.conf : IMAGE_FEATURES +=3D " =E2=80=A6
	eclipse-debug"

=09
 * In a
	customizable image : IMAGE_INSTALL +=3D " \

	=E2=80=A6. \
openssh-sftp-server
										\
"

=09
 * In the
	local.conf : IMAGE_INSTALL_append =3D " openssh-sftp-server"

=09
 * In the
	local.conf : CORE_IMAGE_EXTRA_INSTALL +=3D " openssh-sftp-server"






I'm asking my self : why ?

Thank you,




Cheers




Diego Gonz=C3=A1lez Gonz=C3=A1lez
Dpto. de Control Industrial HORUS HARDWARE S.A.
Pol Ind Europolis C/Berna n=C2=BA4
28232 Las Rozas de Madrid
diego.gonzalez@horus.es
On Thu, 09/19/2013 10:27 AM, Diego Gonzalez <diego.gonzalez@horus.es> wrote=
:
> Hello everybody,
>=20
> we have an issue with sftp server in our fsl-image-gui. When we try to co=
nnect using sftp, then we get an error saying connection closed.
> After a closer look inside  the fsl-image-gui , we saw that /usr/bin/sftp=
-server directory  is not installed in this image. Also, we vericated that =
ssh connection works good.=20
>=20
> We already now that this work fine in fsl-core-image-sato-sdk. In fact yo=
u can find out that /usr/bin/sftp-server directory exists.=20
> Trying to fix it we put several commands inside the local.conf . However =
we didn't fix it.
>=20
> How can I solve it?.=20
>=20
> Cheers
>=20

> Diego Gonz=C3=A1lez Gonz=C3=A1lez
> Dpto. de Control Industrial HORUS HARDWARE S.A.
> Pol Ind Europolis C/Berna n=C2=BA4
> 28232 Las Rozas de Madrid
> diego.gonzalez@horus.es

--===axigen=9994330796400620303106786290719940498691=axigen===
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style id=3D"axi-htmleditor-style" type=3D"text/css">p { margin=
: 0px; }</style></head><body style=3D"font-size: 10pt; font-family: Arial; =
background-image: none; background-repeat: repeat; background-attachment: f=
ixed;">


=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; }</style>


<p style=3D"margin-bottom: 0in">Hello,</p>
<p style=3D"margin-bottom: 0in"><br>
</p>
<p style=3D"margin-bottom: 0in">we  discovered how to add <b>sftp</b> funct=
ion
in our customizable image. There's a package called eclipse-debug
(~/poky/meta/recipes-core/packagegroup), which you can find a RDPENDS
to o<b>penssh-sftp-server.</b></p>

<p style=3D"margin-bottom: 0in; font-weight: normal">So you have at
least 4 possibilities to add it in your image (select just one) :</p>

<ol><li><p style=3D"margin-bottom: 0in; font-weight: normal">In a
	customizable image or in the local.conf : IMAGE_FEATURES +=3D " =E2=80=A6
	eclipse-debug"</p>
	</li><li><p style=3D"margin-bottom: 0in; font-weight: normal">In a
	customizable image : IMAGE_INSTALL +=3D " \</p>
	<ol><ol><ol><ol><ol><ol><ol><ol><ol><p style=3D"margin-bottom: 0in; font-w=
eight: normal">=E2=80=A6. \</p><p style=3D"margin-bottom: 0in; font-weight:=
 normal">openssh-sftp-server
										\</p><p style=3D"margin-bottom: 0in; font-weight: normal">"</p></=
ol></ol></ol></ol></ol></ol></ol></ol></ol>
	</li><li><p style=3D"margin-bottom: 0in; font-weight: normal">In the
	local.conf : IMAGE_INSTALL_append =3D " openssh-sftp-server"</p>
	</li><li><p style=3D"margin-bottom: 0in; font-weight: normal">In the
	local.conf : CORE_IMAGE_EXTRA_INSTALL +=3D " openssh-sftp-server"</p>
</li></ol>
<p style=3D"margin-bottom: 0in; font-weight: normal"><br>
</p>
<p style=3D"margin-bottom: 0in; font-weight: normal">I'm asking my self : w=
hy ?</p>
<p style=3D"margin-bottom: 0in; font-weight: normal">Thank you,
</p><p style=3D"margin-bottom: 0in; font-weight: normal"><br>
</p>Cheers
<p style=3D"margin-bottom: 0in; font-weight: normal"><br>
</p><div class=3D"x-axi-signature"><div class=3D"x-axi-signature" style=3D"=
; font-size: 10pt; font-family: Arial;"><br>Diego Gonz=C3=A1lez Gonz=C3=A1l=
ez<br><div style=3D"text-align: left;">Dpto. de Control Industrial</div><di=
v style=3D"text-align: left;">&nbsp;</div><div style=3D"text-align: left;">=
HORUS HARDWARE S.A.<br>Pol Ind Europolis C/Berna n=C2=BA4<br>28232 Las Roza=
s de Madrid<br><a id=3D"ext-gen5000" href=3D"mailto:enrique.fernandez@horus=
.es">diego.gonzalez@horus.es</a></div></div></div><br>On Thu, 09/19/2013 10=
:27 AM, Diego&nbsp;Gonzalez&nbsp;&lt;diego.gonzalez@horus.es&gt; wrote:<br>=
<blockquote style=3D"border-left: 2px solid rgb(00, 00, 204); padding-left:=
 4px; margin-left: 16px;"><div style=3D"font-family: Arial; font-size: 10pt=
;"><style id=3D"axi-htmleditor-style" type=3D"text/css">p { margin: 0px; }<=
/style>Hello everybody,<br><br>we have an issue with sftp server in our fsl=
-image-gui. When we try to connect using sftp, then we get an error saying =
connection closed.<br>After a closer look inside&nbsp; the fsl-image-gui , =
we saw that /usr/bin/sftp-server directory&nbsp; is not installed in this i=
mage. Also, we vericated that ssh connection works good. <br><br>We already=
 now that this work fine in fsl-core-image-sato-sdk. In fact you can find o=
ut that /usr/bin/sftp-server directory exists. <br>Trying to fix it we put =
several commands inside the local.conf . However we didn't fix it.<br><br><=
pre class=3D"bz_comment_text"><font face=3D"arial">How can I solve it?. <br=
><br>Cheers</font><br></pre><div class=3D"x-axi-signature"><div class=3D"x-=
axi-signature" style=3D"; font-size: 10pt; font-family: Arial;"><br>Diego G=
onz=C3=A1lez Gonz=C3=A1lez<br><div style=3D"text-align: left;">Dpto. de Con=
trol Industrial</div><div style=3D"text-align: left;">&nbsp;</div><div styl=
e=3D"text-align: left;">HORUS HARDWARE S.A.<br>Pol Ind Europolis C/Berna n=
=C2=BA4<br>28232 Las Rozas de Madrid<br><a id=3D"ext-gen5000" href=3D"mailt=
o:enrique.fernandez@horus.es">diego.gonzalez@horus.es</a></div></div></div>=
</div></blockquote></body></html>

--===axigen=9994330796400620303106786290719940498691=axigen===--
