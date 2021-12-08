Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D21EC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 09:49:41 +0000 (UTC)
Subject: Re: Behaviour of .bbappend when default script is not present
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Dec 2021 01:49:40 -0800
References: 
 <AM9PR09MB4642DA102E325C002B178EB1A86F9@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB4642DA102E325C002B178EB1A86F9@AM9PR09MB4642.eurprd09.prod.outlook.com>
Message-ID: <8665.1638956980399468876@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Acz6Wn8uupiMoyxZPV6a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 09:49:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55515

--Acz6Wn8uupiMoyxZPV6a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

You could also consider using the `BBFILES_DYNAMIC`[1] variable, this way y=
our bbappend
would only apply when there is `meta-raspberrypi` in the build configuratio=
n. Your bbappend
could be placed in custom layer under
`dynamic-layers/raspberrypi/recipes-bsp/bootfiles/ rpi-cmdline.bbappend ` p=
ath and than in its
layer.conf file add

BBFILES_DYNAMIC +=3D " \
   raspberrypi :${ LAYERDIR }/ dynamic - layers / raspberrypi / recipes -*/=
*/*. bbappend \
"

Looks like the best option to add kernel command parameters is to use ` rpi=
-cmdline.bbappend`
with dynamic-layers as mentioned above. You should add changes to CMDLINE[2=
] variable

[1]https://docs.yoctoproject.org/ref-manual/variables.html#term-BBFILES_DYN=
AMIC
[2]https://github.com/agherzan/meta-raspberrypi/blob/master/recipes-bsp/boo=
tfiles/rpi-cmdline.bb#L39

Regards
--
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--Acz6Wn8uupiMoyxZPV6a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br /><span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b ChMk=
0b" data-language-for-alternatives=3D"en" data-language-to-translate-into=
=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=3D"1"><span>You coul=
d also consider using the `BBFILES_DYNAMIC`[1] variable, this way your bbap=
pend<br />would only apply when there is `meta-raspberrypi` in the build co=
nfiguration. Your bbappend<br />could be placed in custom layer under<br />=
`dynamic-layers/raspberrypi/recipes-bsp/bootfiles/</span></span></span><spa=
n class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b ChMk0b" data-language-f=
or-alternatives=3D"en" data-language-to-translate-into=3D"pl" data-phrase-i=
ndex=3D"0" data-number-of-phrases=3D"1"><span><span class=3D"VIiyi" lang=3D=
"en"><span class=3D"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en" da=
ta-language-to-translate-into=3D"pl" data-phrase-index=3D"0" data-number-of=
-phrases=3D"1"><span>rpi-cmdline.bbappend</span></span></span>` path and th=
an in its<br />layer.conf file add<br /></span></span></span><br />
<pre class=3D"code highlight" lang=3D"conf"><span id=3D"LC7" class=3D"line"=
 lang=3D"conf"><span class=3D"n">BBFILES_DYNAMIC</span> +=3D <span class=3D=
"err">"</span> \</span>
<span id=3D"LC9" class=3D"line" lang=3D"conf">    <span class=3D"n">raspber=
rypi</span>:${<span class=3D"n">LAYERDIR</span>}/<span class=3D"n">dynamic<=
/span>-<span class=3D"n">layers</span>/<span class=3D"n">raspberrypi</span>=
/<span class=3D"n">recipes</span>-*/*/*.<span class=3D"n">bbappend</span> \=
</span>
<span id=3D"LC10" class=3D"line" lang=3D"conf"><span class=3D"err">"</span>=
</span>
</pre>
<span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b ChMk0b" data-langua=
ge-for-alternatives=3D"en" data-language-to-translate-into=3D"pl" data-phra=
se-index=3D"0" data-number-of-phrases=3D"1"><span><br />Looks like the best=
 option to add kernel command parameters is to use `</span></span></span><s=
pan class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b ChMk0b" data-language=
-for-alternatives=3D"en" data-language-to-translate-into=3D"pl" data-phrase=
-index=3D"0" data-number-of-phrases=3D"1"><span><span lang=3D"EN-US">rpi-cm=
dline.bbappend`</span><br />with dynamic-layers as mentioned above. You sho=
uld add changes to CMDLINE[2] variable<br /><br />[1]https://docs.yoctoproj=
ect.org/ref-manual/variables.html#term-BBFILES_DYNAMIC<br />[2]https://gith=
ub.com/agherzan/meta-raspberrypi/blob/master/recipes-bsp/bootfiles/rpi-cmdl=
ine.bb#L39<br /><br /></span></span></span>Regards<br />--<br />Tomasz =C5=
=BByjewski <br />Embedded Systems Engineer <br />GPG: 5C495EA3EBEECA59 <br =
/><a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com<span class=3D"VIiyi" lang=3D"en"><span class=3D"JLq=
J4b ChMk0b" data-language-for-alternatives=3D"en" data-language-to-translat=
e-into=3D"pl" data-phrase-index=3D"0" data-number-of-phrases=3D"1"><span></=
span></span></span>

--Acz6Wn8uupiMoyxZPV6a--

