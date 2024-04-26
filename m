Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82B4AC4345F
	for <webhook@archiver.kernel.org>; Fri, 26 Apr 2024 19:22:38 +0000 (UTC)
Subject: Re: [yocto] issue adding the user with the yocto kirkstone
To: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>, yocto@lists.yoctoproject.org
From: "Daniel" <dchvs11@gmail.com>
X-Originating-Location: Alajuela, Provincia de Alajuela, CR (201.204.89.104)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Apr 2024 12:22:31 -0700
References: <27643.1714153781642827519@lists.yoctoproject.org>
In-Reply-To: <27643.1714153781642827519@lists.yoctoproject.org>
Message-ID: <27643.1714159351905953827@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="btF4la24CZp93RgFnoPu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Apr 2024 19:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63006

--btF4la24CZp93RgFnoPu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You might want to check the "useradd/usermod" options with the "useradd/use=
rmod --help" command. If you want to add a password the flag would be "-p",=
 and this argument expects the password to be encrypted. You can generate t=
his encrypted password with the command: " openssl passwd -1 <password_to_h=
ash_encrypt> ", for example.

Now, I've just noticed that we are referring to the 'root' user, which alre=
ady exists! In this case, you just need to change its password, and you can=
 use the 'usermod' command with the '-p' flag. Here are the two scenarios:

# Case for adding a new user with password
EXTRA_USERS_PARAMS : append =3D "\

useradd -m -s /bin /bash -p '<encrypted password>' <new_user>; \
"

# Case for adding a password to an existent user like root
EXTRA_USERS_PARAMS : append =3D "\
usermod -p '<encrypted password>' root; \
"

Note. Remember to escape characters from the encrypted password. For exampl=
e, if there are any dollars in your string, escape them with the backslash.=
 For instance:

- '$7abc.$8'
+ '\$7abc.\$8'

=E2=80=94Daniel

--btF4la24CZp93RgFnoPu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>You might want to check the "useradd/usermod" options with the "useradd/=
usermod --help" command. If you want to add a password the flag would be "-=
p", and this argument expects the password to be encrypted. You can generat=
e this encrypted password with the command: "<span style=3D"color: #ce9178;=
">openssl passwd -1 &lt;password_to_hash_encrypt&gt;</span>", for example.<=
/p>
<p>Now, I've just noticed that we are referring to the 'root' user, which a=
lready exists! In this case, you just need to change its password, and you =
can use the 'usermod' command with the '-p' flag. Here are the two scenario=
s:<br /><br /># Case for adding a new user with password<br /><span style=
=3D"color: #9cdcfe;">EXTRA_USERS_PARAMS</span><span style=3D"color: #ffffff=
;">:</span><span style=3D"color: #c586c0;">append</span><span style=3D"colo=
r: #ffffff;"> </span><span style=3D"color: #d4d4d4;">=3D</span><span style=
=3D"color: #ffffff;"> </span><span style=3D"color: #ce9178;">"\</span></p>
<div><span style=3D"color: #ce9178;"> useradd -m -s </span><span style=3D"c=
olor: #569cd6;">/bin</span><span style=3D"color: #ce9178;">/bash -p '&lt;en=
crypted password&gt;' &lt;new_user&gt;; \</span></div>
<div><span style=3D"color: #ce9178;">"<br /></span><br /># Case for adding =
a password to an existent user like root</div>
<div><span style=3D"color: #9cdcfe;">EXTRA_USERS_PARAMS</span><span style=
=3D"color: #ffffff;">:</span><span style=3D"color: #c586c0;">append</span><=
span style=3D"color: #ffffff;"> </span><span style=3D"color: #d4d4d4;">=3D<=
/span><span style=3D"color: #ffffff;"> </span><span style=3D"color: #ce9178=
;">"\</span></div>
<div><span style=3D"color: #ce9178;"> usermod -p '&lt;encrypted password&gt=
;' </span><span style=3D"color: #ce9178;">root; \</span></div>
<div><span style=3D"color: #ce9178;">"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #ce9178;">Note. Remember to escape characters fr=
om the encrypted password. For example, if there are any dollars in your st=
ring, escape them with the backslash. For instance:<br /><br />- '$7abc.$8'=
<br />+ '\$7abc.\$8'</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #ce9178;">&mdash;Daniel</span></div>

--btF4la24CZp93RgFnoPu--

