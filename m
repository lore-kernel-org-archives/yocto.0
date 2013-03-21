Return-Path: <dan.florincristian@gmail.com>
Received: from mail-da0-f45.google.com (mail-da0-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C8CE014A5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:58:41 -0700 (PDT)
Received: by mail-da0-f45.google.com with SMTP id v40so1551198dad.32
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=LNRCTvyS51i/bfHrvA6TwI4I6QOCYjJVrO/8/PE+f9o=;
	b=ZlOdxMua4ki39V/FdYuTS/3PgRWnAlti5EuVLoZRCKPV6naSUk8PGkRyzsOPs8v53r
	lccmpaE1+mVzS3eKcpNz9xsfEjppzIA2eD51UodrW6yP+7EF63g4PP6fsU4yjRc1y6Bz
	nJSBLTkBloXw52ckM6wx41tdhjv1sdmyM6BqgirVgxDbJxH673Tx48NfgcE8I2agwPJ0
	bDj/qxdifv9s4aKOGDyes15xcC0PcjlFqlzVGpt2sp8WUDCBWvowfZpRD09uWvZcOKbR
	6qh77XlzI3a6dKW7D6UTEZ2HZG+tIApZihrKRPIxTC4g/rMm6QP99ceQsFoHikuLwCqN
	JjRg==
MIME-Version: 1.0
X-Received: by 10.68.117.104 with SMTP id kd8mr14170528pbb.1.1363859921593;
	Thu, 21 Mar 2013 02:58:41 -0700 (PDT)
Received: by 10.66.134.174 with HTTP; Thu, 21 Mar 2013 02:58:41 -0700 (PDT)
Date: Thu, 21 Mar 2013 11:58:41 +0200
Message-ID: <CABzOdpRbq0Y0r38Q8MUgwZoAiRfJuZxzyhT6xE0Y5TVSn-xE9g@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Java on target machine
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
X-List-Received-Date: Thu, 21 Mar 2013 09:58:41 -0000
Content-Type: multipart/alternative; boundary=047d7b072330266b1104d86c62c2

--047d7b072330266b1104d86c62c2
Content-Type: text/plain; charset=ISO-8859-1

First of all hello every body,
A few days ago, i sent an e-mail in wich i was asking how can i run java
apps on my target machine, mr. Paul Eggleton was kind enough to answar and
gave me some links for enableing the layer, download the desired layer from
LayerIndex and so on. I followed those steps, and i've started my owm
image...
I've added the layer suport for emenlow, respectivly i've edite the
bblayar.conf adding the path to meta-intel and meta-emenlow
then i've added the path for meta-java-master...After that i read the READ
me file inside the meta-java-master and saw this:
This layer depends on:

URI: git://git.openembedded.org/openembedded-core
branch: master
revision: HEAD

URI: git://git.openembedded.org/meta-openembedded
branch: master
revision: HEAD

So i,ve downloaded the two layer and add their path to bblayer.conf. After
that i've edited the local.conf named my machine emenlow and also added
this for java:
PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-6-jre = "6b24-1.11.9"

because that was the README from the meta-java-master was saying. I've
saved my files and then i started the bitbake process...
bitbaje core-image-sato-emenlow
but there were to errors that were saying that there is no conf folder in
the ompenembedded-core and meta-openembedded so i've removed their path
from bblayer.conf and i've started again the process, i think gave me few
warnings but the process continued and my image burned succesfully. I've
booted the image and tried to run a java simple hello world program, but of
core there were no sign o java compiler. javac myfile.java ---
javac:command not found
What do you thing i should do?
Thank you.

--047d7b072330266b1104d86c62c2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

First of all hello every body,=A0<div>A few days ago, i sent an e-mail in w=
ich i was asking how can i run java apps on my target machine, mr. Paul Egg=
leton was kind enough to answar and gave me some links for enableing the la=
yer, download the desired layer from LayerIndex and so on. I followed those=
 steps, and i&#39;ve started my owm image...</div>
<div>I&#39;ve added the layer suport for emenlow, respectivly i&#39;ve edit=
e the bblayar.conf adding the path to meta-intel and meta-emenlow</div><div=
>then i&#39;ve added the path for meta-java-master...After that i read the =
READ me file inside the meta-java-master and saw this:</div>
<div><div>This layer depends on:</div><div><br></div><div>URI: git://<a hre=
f=3D"http://git.openembedded.org/openembedded-core">git.openembedded.org/op=
enembedded-core</a></div><div>branch: master</div><div>revision: HEAD</div>
<div><br></div><div>URI: git://<a href=3D"http://git.openembedded.org/meta-=
openembedded">git.openembedded.org/meta-openembedded</a></div><div>branch: =
master</div><div>revision: HEAD</div></div><div><br></div><div>So i,ve down=
loaded the two layer and add their path to bblayer.conf. After that i&#39;v=
e edited the local.conf named my machine emenlow and also added this for ja=
va:</div>
<div><div>PREFERRED_PROVIDER_virtual/java-native =3D &quot;jamvm-native&quo=
t;</div><div>PREFERRED_PROVIDER_virtual/javac-native =3D &quot;ecj-bootstra=
p-native&quot;</div></div><div>PREFERRED_VERSION_openjdk-6-jre =3D &quot;6b=
24-1.11.9&quot;</div>
<div><br></div><div>because that was the README from the meta-java-master w=
as saying. I&#39;ve saved my files and then i started the bitbake process..=
.</div><div>bitbaje core-image-sato-emenlow</div><div>but there were to err=
ors that were saying that there is no conf folder in the ompenembedded-core=
 and meta-openembedded so i&#39;ve removed their path from bblayer.conf and=
 i&#39;ve started again the process, i think gave me few warnings but the p=
rocess continued and my image burned succesfully. I&#39;ve booted the image=
 and tried to run a java simple hello world program, but of core there were=
 no sign o java compiler. javac myfile.java --- javac:command not found</di=
v>
<div>What do you thing i should do?</div><div>Thank you.</div>

--047d7b072330266b1104d86c62c2--
