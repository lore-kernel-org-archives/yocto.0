Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 266A4E008D2; Fri, 27 Apr 2018 03:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FEC4E00823
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 03:44:59 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id t123-v6so1921867iof.7
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 03:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NsioETqhMBOfGLqKjZM17fnyxuWL3TVnc7NFHvTEewQ=;
	b=kXcv54PjjFDLnpTTbmtflu2MYdpURth+GsLS/x7w0gFIe8dkFuyKQ50lEscUMO5FgE
	3g5Sf3lbLfKbDu7Rz8rjgOk8ImdNtey4FO+I8/hNu9079uu1IcsVs8MEXIn9R6RxfrqK
	Fx2mhsVDG8PLhWMOJncmjof4ZlgNDAERs8hNduSUUNwSbYngbIJpKq2lDLwxkfDJqvqF
	3O+2BYB3yPUKJCsDdaA6iHYj7pkWzhNk+P06jMLLWvBwF7ScslmHTmX8XDv166lO6B5y
	D7OUGOuVF5mEXx1Ex+wpOyz3xvhmybkK97MHfCaLjYTZ/6By+DR8Cak1Wzn8ic0xMPOx
	W2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NsioETqhMBOfGLqKjZM17fnyxuWL3TVnc7NFHvTEewQ=;
	b=R1A0FfkYOID4Q9h6VPJSlOHTTXOKS/Dylut/zATzXXKyPjymzQq2aUwMkMZyvb2Zdg
	cxtHXTN6DEj3cWQ7J8VIYOs+ac/yvIXcUY7lcDN2XdG7w9igL8G64rTb8EeJuTifa2ae
	lefYwP6J6H7yEFQHaKCowAIzgJf5u+GS8+TgOBtSQPGCMH2ACnwccJKOipUlr6FsCZC2
	1yBlEpTRoLOuZBPTmjBAKh6Dev9yOfalechzAOjc+yE0jsZIZeLLn2jV2FW4IZrUIZcX
	0/dhHtp61TIdy1dp6ylS8c3QFA4JQ4jJTcSSYxjMET+CJin5ZcSo0GVhBahSc4ydR8Oi
	s3Uw==
X-Gm-Message-State: ALQs6tAOlbbOsV9qTfI0vqcBtRmoLhRmcIM/XCsDkxsYKksGNuo+Ag3G
	wVLMGxUYTIk7qhMDXGoiMAElHfDzKuvOk215vpHw
X-Google-Smtp-Source: AB8JxZpcBn55yQNjmvWuuysQWIfNv14UsHyvVWmYUjbB4lu+4310POetFX4IIMdvUCiAtFSPUADw0RudAZZEtORLeKU=
X-Received: by 2002:a6b:ac42:: with SMTP id
	v63-v6mr1538265ioe.261.1524825898434; 
	Fri, 27 Apr 2018 03:44:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:69d5:0:0:0:0:0 with HTTP; Fri, 27 Apr 2018 03:44:57
	-0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 27 Apr 2018 13:44:57 +0300
Message-ID: <CA+FhBv87F=hTjo5R3kt1KiK4oghwxEgxBGh5NEAUdHFoLLjvbQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 27 Apr 2018 12:07:45 -0700
Subject: LINUX_VERSION issue in recipe
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
X-List-Received-Date: Fri, 27 Apr 2018 10:45:00 -0000
Content-Type: multipart/alternative; boundary="000000000000054723056ad232b8"

--000000000000054723056ad232b8
Content-Type: text/plain; charset="UTF-8"

Hi,

This must be a stupid basic question. I have the following recipe append:

keymaps_1.0.bbappend
-----------------------------------------------------------------------------
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " file://keymaps.service \
                   file://keymap.sh \
"

do_install_append() {
    install -d ${D}${sysconfdir}
    ln -sf /usr/share/keymaps/i386/qwerty/fi.map.gz
${D}${sysconfdir}/keymap-${LINUX_VERSION}.map.gz

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/keymaps.service ${D}${systemd_system_unitdir}
}

FILES_${PN} += " ${sysconfdir}/* \
                 ${systemd_system_unitdir}/* \
"

inherit systemd
SYSTEMD_SERVICE_${PN} = "${PN}.service"
-----------------------------------------------------------------------------

The LINUX_VERSION is not expanded and the final symlink name becomes  /etc/
keymap-.map.gz.

What's correct way to get the linux version in the recipe files?

Thanks,
-Damien

--000000000000054723056ad232b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This must be a stupid basic questio=
n. I have the following recipe append:</div><div><br></div><div>keymaps_1.0=
.bbappend</div><div>-------------------------------------------------------=
----------------------</div><div><div>FILESEXTRAPATHS_prepend :=3D &quot;${=
THISDIR}/${PN}:&quot;<br></div><div>SRC_URI_append =3D &quot; file://keymap=
s.service \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0file://keymap.sh \</div><div>&quot;</div><div><br></div><d=
iv>do_install_append() {</div><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdi=
r}</div><div>=C2=A0 =C2=A0 ln -sf /usr/share/keymaps/i386/qwerty/fi.map.gz =
${D}${sysconfdir}/keymap-${LINUX_VERSION}.map.gz</div><div><br></div><div>=
=C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}</div><div>=C2=A0 =C2=
=A0 install -m 0644 ${WORKDIR}/keymaps.service ${D}${systemd_system_unitdir=
}</div><div>}</div><div><br></div><div>FILES_${PN} +=3D &quot; ${sysconfdir=
}/* \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0${systemd_system_unitdir}/* \</div><div>&quot;</div><div><br></div><div>=
inherit systemd</div><div>SYSTEMD_SERVICE_${PN} =3D &quot;${PN}.service&quo=
t;</div><div>--------------------------------------------------------------=
---------------</div><div><br></div><div>The=C2=A0<span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>LINUX_VERSION is not expanded and the final symlink=C2=A0<span style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display=
:inline">name</span> becomes=C2=A0 /etc/<span style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">keymap-</=
span><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline">.map.gz.</span></span></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><br></span></span></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">What&#39;s correct way to ge=
t the linux version in the recipe files?</span></span></div><div><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline"><br></span></span></div><div><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">Thanks,</span></span></div>=
<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">-Damien</span></sp=
an></div><div><br></div>
</div></div>

--000000000000054723056ad232b8--
