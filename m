Received: from 4.mo6.mail-out.ovh.net (4.mo6.mail-out.ovh.net [87.98.184.159])
 by mx.groups.io with SMTP id smtpd.web12.1022.1600750500483749767
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 21:55:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 87.98.184.159, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player755.ha.ovh.net (unknown [10.110.115.178])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id 79D06227DA7
	for <yocto@lists.yoctoproject.org>; Tue, 22 Sep 2020 06:54:58 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player755.ha.ovh.net (Postfix) with ESMTPSA id C5D521673DF9A
	for <yocto@lists.yoctoproject.org>; Tue, 22 Sep 2020 04:54:57 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R002621a37e7-af84-40c8-af2e-aa6e807ae873,
                    95AFC2FAD2FB182CF8B327B6F57E1D19FBE29F14) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] RDEPENDS problem
To: yocto@lists.yoctoproject.org
References: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <7b358546-b987-e1ee-dc10-f8f296cafd27@3mdeb.com>
Date: Tue, 22 Sep 2020 06:54:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8db68087bc7e4b248070690947f6eb64@sakuraus.com>
X-Ovh-Tracer-Id: 9484862294498618886
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudefgdeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtsegrtderredtfeehnecuhfhrohhmpeforggtihgvjhcurfhijhgrnhhofihskhhiuceomhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepjedtjefglefhhedtveeijedtvefhleevtdffhfegtedvgfegtddvheeivdekgeefnecuffhomhgrihhnpehlihgstggrnhhfvghsthhivhgrlhdrshhopdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------9D0812993F2797E24F6FD897"
Content-Language: en-US

--------------9D0812993F2797E24F6FD897
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable


On 21.09.2020 23:46, Greg Wilson-Lindberg wrote:
>  =A0I have a custom recipe that copies a .so, that libMotors.so calls fu=
nctions in another libcanfestival.so.
>
> When I first added in the copy of the .so
> I didn't have an RDEPENDS and Yocto printed out an warning listing the p=
ackage that it wanted. I added an RDEPENDS_${PN}
> with all of the packages listed, but I'm still getting an error for the =
first libMotors.so:
>
> ERROR: userconfig-1.0-r0 do_package_qa: QA Issue: /home/sakura/lib/libMo=
tors.so.1.0.0 contained in package userconfig requires libcanfestival.so, b=
ut no providers found in RDEPENDS_userconfig? [file-rdeps]
>
> In userdepends I added:
>
> RDEPENDS_${PN} +=3D "canfestival libelf libgcrypt pcsc-lite-lib qtbase q=
tdeclarative qtserialport zint"
>
> Package canfestival_3-asc in has:
>
> FILES_${PN} =3D "/usr/lib/libcanfestival.so /usr/lib/libcanfestival_unix=
.so /usr/lib/libcanfestival_can_socket.so"
>
> which seems to me like it should satisfy the requirements of the RDEPEND=
S, but it is not. bitbake initially gave me a warning
> that listed canfestival as needing to be added to an RDEPENDS for userco=
nfig. But now it is saying that it can't figure out
> what package supplies the libcanfestival.so file.
>
> Can someone help me to understand what is going on? How do I explicitly =
say that a package supplies a given file?
You could try with PROVIDES:=20
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PR=
OVIDES
>
>=20
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------9D0812993F2797E24F6FD897
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 21.09.2020 23:46, Greg
      Wilson-Lindberg wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8db68087bc7e4b248070690947f6eb64@sakuraus.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
=A0I have a custom recipe that copies a .so, that libMotors.so calls funct=
ions in another libcanfestival.so.

When I first added in the copy of the .so
I didn't have an RDEPENDS and Yocto printed out an warning listing the pac=
kage that it wanted. I added an RDEPENDS_${PN}=20
with all of the packages listed, but I'm still getting an error for the fi=
rst libMotors.so:

ERROR: userconfig-1.0-r0 do_package_qa: QA Issue: /home/sakura/lib/libMoto=
rs.so.1.0.0 contained in package userconfig requires libcanfestival.so, but=
 no providers found in RDEPENDS_userconfig? [file-rdeps]

In userdepends I added:

RDEPENDS_${PN} +=3D "canfestival libelf libgcrypt pcsc-lite-lib qtbase qtd=
eclarative qtserialport zint"

Package canfestival_3-asc in has:

FILES_${PN} =3D "/usr/lib/libcanfestival.so /usr/lib/libcanfestival_unix.s=
o /usr/lib/libcanfestival_can_socket.so"

which seems to me like it should satisfy the requirements of the RDEPENDS,=
 but it is not. bitbake initially gave me a warning=20
that listed canfestival as needing to be added to an RDEPENDS for userconf=
ig. But now it is saying that it can't figure out
what package supplies the libcanfestival.so file.

Can someone help me to understand what is going on? How do I explicitly sa=
y that a package supplies a given file?</pre>
    </blockquote>
    You could try with PROVIDES:
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/do=
cs/latest/ref-manual/ref-manual.html#var-PROVIDES">https://www.yoctoproject=
.org/docs/latest/ref-manual/ref-manual.html#var-PROVIDES</a><br>
    <blockquote type=3D"cite"
      cite=3D"mid:8db68087bc7e4b248070690947f6eb64@sakuraus.com"><br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------9D0812993F2797E24F6FD897--
