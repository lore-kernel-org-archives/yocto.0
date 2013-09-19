Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83540E01479
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 01:27:48 -0700 (PDT)
Received: from horus27 (127.0.0.1) by horus27 (Axigen) with ESMTPSA id 23DA5E; 
	Thu, 19 Sep 2013 10:27:45 +0200
Received: from [172.30.250.254] by horus.es with HTTP;
	Thu, 19 Sep 2013 10:27:45 +0200
From: Diego Gonzalez <diego.gonzalez@horus.es>
Date: Thu, 19 Sep 2013 10:27:45 +0200
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1379579265426525500@horus.es>
Importance: Normal
MIME-Version: 1.0
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: problem with sft in fsl-image-gui
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
X-List-Received-Date: Thu, 19 Sep 2013 08:27:51 -0000
Content-Type: multipart/alternative;
	boundary="===axigen=9097639517529638340684191496943882857126=axigen==="

--===axigen=9097639517529638340684191496943882857126=axigen===
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello everybody,

we have an issue with sftp server in our fsl-image-gui. When we try to conn=
ect using sftp, then we get an error saying connection closed.
After a closer look inside  the fsl-image-gui , we saw that /usr/bin/sftp-s=
erver directory  is not installed in this image. Also, we vericated that ss=
h connection works good.=20

We already now that this work fine in fsl-core-image-sato-sdk. In fact you =
can find out that /usr/bin/sftp-server directory exists.=20
Trying to fix it we put several commands inside the local.conf . However we=
 didn't fix it.

How can I solve it?.=20

Cheers


Diego Gonz=C3=A1lez Gonz=C3=A1lez
Dpto. de Control Industrial HORUS HARDWARE S.A.
Pol Ind Europolis C/Berna n=C2=BA4
28232 Las Rozas de Madrid
diego.gonzalez@horus.es

--===axigen=9097639517529638340684191496943882857126=axigen===
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style id=3D"axi-htmleditor-style" type=3D"text/css">p { margin=
: 0px; }</style></head><body style=3D"font-size: 10pt; font-family: Arial; =
background-image: none; background-repeat: repeat; background-attachment: f=
ixed;">Hello everybody,<br><br>we have an issue with sftp server in our fsl=
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
</body></html>

--===axigen=9097639517529638340684191496943882857126=axigen===--
