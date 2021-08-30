Received: from mailout06.t-online.de (mailout06.t-online.de [194.25.134.19])
 by mx.groups.io with SMTP id smtpd.web11.1193.1630349147420486021
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 11:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.19, mailfrom: f_l_k@t-online.de)
Received: from fwd21.aul.t-online.de (fwd21.aul.t-online.de [172.20.27.66])
	by mailout06.t-online.de (Postfix) with SMTP id 8CFB3AC54;
	Mon, 30 Aug 2021 20:45:44 +0200 (CEST)
Received: from [192.168.178.33] (EC6e52ZVrhLR1TgDZ2JWzAy9BX33sNwyqDrMBWDIhBBMQN19NN00OWWPzakKJZ5wMn@[79.219.231.180]) by fwd21.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mKmHs-3w9EFk0; Mon, 30 Aug 2021 20:45:40 +0200
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
To: Matthias Klein <matthias.klein@optimeas.de>
References: <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Cc: yocto@lists.yoctoproject.org
From: "Markus Volk" <f_l_k@t-online.de>
Message-ID: <c725971a-cf08-40b0-5150-2d0c23c831ab@t-online.de>
Date: Mon, 30 Aug 2021 20:45:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
X-ID: EC6e52ZVrhLR1TgDZ2JWzAy9BX33sNwyqDrMBWDIhBBMQN19NN00OWWPzakKJZ5wMn
X-TOI-EXPURGATEID: 150726::1630349140-00002A54-9EB15090/0/0 CLEAN NORMAL
X-TOI-MSGID: e6c4045a-be1c-4b9b-9589-b827d73f6fa0
Content-Type: multipart/alternative;
 boundary="------------47F66A33F451F21C170B0492"
Content-Language: en-US

--------------47F66A33F451F21C170B0492
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

I also have problems with setting passwords in current master branch. I=20
only can provide a hacky workaround. I added the following lines to my=20
image recipe to inject the passwords manually after rootfs creation:

RETRO_USER_PASSWORD ?=3D "retro"
ROOT_USER_PASSWORD ?=3D "root"
ROOTFS_POSTPROCESS_COMMAND +=3D "set_root_passwd;"
ROOTFS_POSTPROCESS_COMMAND +=3D "set_retro_passwd;"

set_root_passwd() {
 =A0=A0 ROOTPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz ${ROOT_USER_PASSW=
ORD})"
 =A0=A0 sed -i "s%^root:[^:]*:%root:${ROOTPW_ENCRYPTED}:%"=20
${IMAGE_ROOTFS}/etc/shadow
}

set_retro_passwd() {
 =A0=A0 RETROPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz=20
${RETRO_USER_PASSWORD})"
 =A0=A0 sed -i "s%^retro:[^:]*:%retro:${RETROPW_ENCRYPTED}:%"=20
${IMAGE_ROOTFS}/etc/shadow
}


Am 30.08.21 um 14:54 schrieb Matthias Klein:
> Hello,
>
> I am trying to find a working alternative for the old -P option.
>
> Previous:
> EXTRA_USERS_PARAMS =3D "usermod -P toor root;"
>
> The suggestions from this thread don't seem to work: https://lists.openem=
bedded.org/g/openembedded-core/topic/84548199
>
> Current:
> hash=3D"$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHO=
D_SHA512))")"
> EXTRA_USERS_PARAMS =3D "usermod -p ${hash} root;"
>
> The hashed password does not seem to be escaped properly in the extrauser=
s-bbclass. The password in the shadow file is missing $ characters.
>
> Is there a way (with the current master branch) to define a password?
>
> Many greetings,
> Matthias
>
>
>=20
>

--------------47F66A33F451F21C170B0492
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>I also have problems with setting passwords in current master
      branch. I only can provide a hacky workaround. I added the
      following lines to my image recipe to inject the passwords
      manually after rootfs creation:<br>
      <br>
      RETRO_USER_PASSWORD ?=3D "retro"<br>
      ROOT_USER_PASSWORD ?=3D "root"<br>
      ROOTFS_POSTPROCESS_COMMAND +=3D "set_root_passwd;"<br>
      ROOTFS_POSTPROCESS_COMMAND +=3D "set_retro_passwd;"<br>
      <br>
      set_root_passwd() {<br>
      =A0=A0 ROOTPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz
      ${ROOT_USER_PASSWORD})"<br>
      =A0=A0 sed -i "s%^root:[^:]*:%root:${ROOTPW_ENCRYPTED}:%"
      ${IMAGE_ROOTFS}/etc/shadow<br>
      }<br>
      <br>
      set_retro_passwd() {<br>
      =A0=A0 RETROPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz
      ${RETRO_USER_PASSWORD})"<br>
      =A0=A0 sed -i "s%^retro:[^:]*:%retro:${RETROPW_ENCRYPTED}:%"
      ${IMAGE_ROOTFS}/etc/shadow<br>
      }</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Am 30.08.21 um 14:54 schrieb Matthias
      Klein:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.P=
ROD.OUTLOOK.COM">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hello,

I am trying to find a working alternative for the old -P option.

Previous:=20
EXTRA_USERS_PARAMS =3D "usermod -P toor root;"

The suggestions from this thread don't seem to work: <a class=3D"moz-txt-li=
nk-freetext" href=3D"https://lists.openembedded.org/g/openembedded-core/top=
ic/84548199">https://lists.openembedded.org/g/openembedded-core/topic/84548=
199</a>

Current:=20
hash=3D"$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHOD_=
SHA512))")"
EXTRA_USERS_PARAMS =3D "usermod -p ${hash} root;"

The hashed password does not seem to be escaped properly in the extrausers-=
bbclass. The password in the shadow file is missing $ characters.

Is there a way (with the current master branch) to define a password?

Many greetings,
Matthias

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------47F66A33F451F21C170B0492--
