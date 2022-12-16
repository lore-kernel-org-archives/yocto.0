Return-Path: <frederic.martinsons@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32445C4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 07:57:53 +0000 (UTC)
Subject: Re: Ownership issue during do_image
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Cugnaux, Occitanie, FR (88.163.88.103)
X-Originating-Platform: Linux Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 15 Dec 2022 23:57:50 -0800
References: <5009.1668597641945474046@lists.yoctoproject.org>
In-Reply-To: <5009.1668597641945474046@lists.yoctoproject.org>
Message-ID: <28940.1671177470292511205@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W8M0vpDkM2sGLZlURCzR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 07:57:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58810

--W8M0vpDkM2sGLZlURCzR
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hello, some news about this issue.

Tim pointed me to the docker and the reason why crops container have some U=
ID:GID manipulation: [see there](https://github.com/crops/extsdk-container/=
blob/master/usersetup.py).

I used an ubuntu 20.04 VM to setup a build without docker and I fall into t=
he exact same problem.

But finally, I found that a workaround by creating and using another workin=
g directory inside my image creation command (though I clearly don't know w=
hy this work and the former way don't, despite it worked with yocto warrior=
)

Before that, I have a working directory that was created in the bbclass :
```
SQSHDIR =3D "${S}/sqshimg/${MACHINE}"

do_image_tapos_sqshimg[dirs] +=3D "${SQSHDIR}"
do_image_tapos_sqshimg[cleandirs] +=3D "${SQSHDIR}"
do_image_tapos_sqshimg[recrdeptask] +=3D "do_deploy"

IMAGE_CMD_tapos-sqshimg() {

	install -d ${SQSHDIR}
```

I simply replaced the creation command by:
```
IMAGE_CMD_tapos-sqshimg() {

     SQSHDIR_WORKDIR=3D$(mktemp -d)
```

and voil=C3=A0 !


--W8M0vpDkM2sGLZlURCzR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello, some news about this issue.</p>

<p>Tim pointed me to the docker and the reason why crops container have som=
e UID:GID manipulation: <a href=3D"https://github.com/crops/extsdk-containe=
r/blob/master/usersetup.py" target=3D"_blank">see there</a>.</p>

<p>I used an ubuntu 20.04 VM to setup a build without docker and I fall int=
o the exact same problem.</p>

<p>But finally, I found that a workaround by creating and using another wor=
king directory inside my image creation command (though I clearly don't kno=
w why this work and the former way don't, despite it worked with yocto warr=
ior)</p>

<p>Before that, I have a working directory that was created in the bbclass =
:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">SQSHDIR =3D &#3=
4;${S}/sqshimg/${MACHINE}&#34;

do_image_tapos_sqshimg[dirs] +=3D &#34;${SQSHDIR}&#34;
do_image_tapos_sqshimg[cleandirs] +=3D &#34;${SQSHDIR}&#34;
do_image_tapos_sqshimg[recrdeptask] +=3D &#34;do_deploy&#34;

IMAGE_CMD_tapos-sqshimg() {

	install -d ${SQSHDIR}
</code></pre>
<p>I simply replaced the creation command by:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">IMAGE_CMD_tapos=
-sqshimg() {

     SQSHDIR_WORKDIR=3D$(mktemp -d)
</code></pre>
<p>and voil=C3=A0 !</p>

--W8M0vpDkM2sGLZlURCzR--

