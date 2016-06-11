Return-Path: <alexis.lothore@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67ABDE00E50; Sat, 11 Jun 2016 10:32:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexis.lothore[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2C0E00E39
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 10:32:34 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id n184so28246393wmn.1
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 10:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=3yLo0OF3AYQwQeeMBWRjY1b2ymI42Tk//Az1mLHuvWw=;
	b=PyS8hoNqw+MZR00uIsiGhphLU6TEs9gUq2/JPtUvqBS7nCbyzCroXZtFl3SaRca1fD
	Kzw/Qi/+FNMn4YBJfl9Ls3yQsleyZR8h3J2B0jsgFBt6v8aD/4J0kv9OvVTi3ptrVtrz
	ySCw2bNNALRWrn88NUB7W+eMuZIvFxCRO55BrnAo/fY9kJ5UqA/cDX9t1ECbOuofRdsH
	CegcQKRrJeS3imyw3fwb/7gf7akp9aEbM7Zy1TUCHBxko8M2FkY2jpG46NHewoNFiErv
	A0V0uSV/AOrbtE0M53KwdL4fowF9QpeEjsml9qAogDrEAihr20Liti/Alk+wethZweGE
	DO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3yLo0OF3AYQwQeeMBWRjY1b2ymI42Tk//Az1mLHuvWw=;
	b=ZG5C4STxWpWeUZR0U/sis/10Y8EYTfPNrVSHgbEDXcSPgpECeIHSnGl3895yhR+uUj
	zQ1Y4Aq0z9GsxpbcE86hona3Nzpk9lDzBhwfOgsa9LUM/wDWWJI7ylAdist/KeQe+mAc
	EqU6nqc8IFHftPX75WnVR9m3+yk9Gt3AGifyNBUhY7srozYwQmzJ+sZKxVwQHkb5PRQI
	CfoeMwqH9QkmGhJuDMvrRg3TuarCLncUL8H2dvEm9Un+4XBZCzvLpmdjyz9mULlulRu+
	Uz9nMI1LnISLttszopAHpnOZ3bSwfDspSIFB4g/lntDC1HPQZTtV71fFAXSbGXIIg6z4
	DpDg==
X-Gm-Message-State: ALyK8tKsuS3PWtNLOiolwxaOdMFawuXOK8bz1kV2+DGacmdhcyJtwky0HidbbOxMX3YkbRg94s5E3fGxU3R1Gw==
X-Received: by 10.28.22.77 with SMTP id 74mr4438576wmw.36.1465666353062; Sat,
	11 Jun 2016 10:32:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.188.212 with HTTP; Sat, 11 Jun 2016 10:32:32 -0700 (PDT)
In-Reply-To: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
References: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@gmail.com>
Date: Sat, 11 Jun 2016 19:32:32 +0200
Message-ID: <CALmdmcAkpAp64nc8W89BhPMKN0_h7Vjij0K0KKrKKH63d6eELQ@mail.gmail.com>
To: yocto@yoctoproject.org, matt@madison.systems
Subject: Re: Issue creating systemd service recipe
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
X-List-Received-Date: Sat, 11 Jun 2016 17:32:47 -0000
Content-Type: multipart/alternative; boundary=001a11467c505567330535040aba

--001a11467c505567330535040aba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Matt,
thank you for your answer, I was typing a mail to, I found this fix too
minutes before your answer ^^
However, I do not understand why the first syntax did not work, since the
systemd class seems to seek the service file here to. Here is the code
which make me think of that possibility, in systemd.bbclass :

139     def systemd_check_services():
140         searchpaths =3D [oe.path.join(d.getVar("sysconfdir", True),
"systemd", "system"),]
141         searchpaths.append(d.getVar("systemd_system_unitdir", True))

But at least, it works with the new path in my recipe

2016-06-11 13:20 GMT+02:00 Alexis Lothor=C3=A9 <alexis.lothore@gmail.com>:

> Hello,
> I am currently trying to set up an Iot showcase platform using
> lowpan-tools on raspberry.
> To do so, I added systemd and I am now trying to create a recipe
> installing my lowpan configuration script and lowpan.service. I used
> connman-init-systemd.bb in meta-eca as a template to my recipe, which
> looks like the following (lowpan-init-systemd.bb):
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> SUMMARY =3D "Configuration files to set up Lowpan interface"
> DESCRIPTION =3D "Used to configure a lowpan interface with systemd when
> driver is loaded"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D0835ade698e0bcf8506ecda2f7b4f3=
02"
>
> SRC_URI +=3D "\
>         file://COPYING \
>         file://init.sh \
>         file://lowpan.service \
> "
> S =3D "${WORKDIR}"
>
> inherit systemd
>
> SYSTEMD_PACKAGES =3D "${PN}"
>
> SYSTEMD_SERVICE_${PN} =3D " lowpan.service"
>
> FILES_${PN} +=3D " lowpan.service \
>                  /opt/lowpan/init.sh \
> "
>
>
> do_install () {
>     install -d ${D}{sysconfdir}/systemd/system
>     install -d ${D}/opt/lowpan
>     install -m 0755 ${WORKDIR}/lowpan.service
> ${D}{sysconfdir}/systemd/system
>     install -m 0755 ${WORKDIR}/init.sh ${D}/opt/lowpan
> }
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> and the service file, located in "files" :
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [Unit]
> Description=3DLowpan interface configuration
> Wants=3Dsys-subsystem-net-devices-wpan0.device
> After=3Dsys-subsystem-net-devices-wpan0.device
>
> [Service]
> Type=3Doneshot
> RemainAfterExit=3Dno
> ExecStart=3D/opt/lowpan/init.sh
>
> [Install]
> WantedBy=3Dmulti-user.target
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I chose to inherit systemd to be sure that my service is not only
> installed but also enabled at first boot.
> However, when I try to bitbake this recipe only (or the whole image, whic=
h
> has a IMAGE_INSTALL_append =3D "lowpan-tools lowpan-init-systemd"), I get=
 the
> following error at some point :
>
>
> *lowpan-init-systemd-1.0-r0 do_package: Function failed:
> SYSTEMD_SERVICE_lowpan-init-systemd value lowpan.service does not exist*
> Thinking it was due to file location, (trying to read systemd.bbclass, I
> think the class does not find my service file) I tried adding ${S},
> ${WORKDIR} or so before lowpan.service in SYSTEMD_SERVICE, but it changed
> nothing.
> Can someone explain me what I am doing wrong in this case ?
>
> --
> Alexis Lothor=C3=A9
> =C3=89l=C3=A8ve-Ing=C3=A9nieur =C3=A0 l'INSA de Toulouse
> 5A Automatique-Electronique : Syst=C3=A8mes Embarqu=C3=A9s Critiques
> 06.51.59.81.45
>



--=20
Alexis Lothor=C3=A9
=C3=89l=C3=A8ve-Ing=C3=A9nieur =C3=A0 l'INSA de Toulouse
5A Automatique-Electronique : Syst=C3=A8mes Embarqu=C3=A9s Critiques
06.51.59.81.45

--001a11467c505567330535040aba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Matt,<div>thank you for your answer, I was typing a =
mail to, I found this fix too minutes before your answer ^^<br><div>However=
, I do not understand why the first syntax did not work, since the systemd =
class seems to seek the service file here to. Here is the code which make m=
e think of that possibility, in systemd.bbclass :=C2=A0</div><div><br></div=
><div><div>139 =C2=A0 =C2=A0 def systemd_check_services():</div><div>140 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 searchpaths =3D [oe.path.join(d.getVar(&quot;sy=
sconfdir&quot;, True), &quot;systemd&quot;, &quot;system&quot;),]</div><div=
>141 =C2=A0 =C2=A0 =C2=A0 =C2=A0 searchpaths.append(d.getVar(&quot;systemd_=
system_unitdir&quot;, True))</div></div><div><br></div></div><div>But at le=
ast, it works with the new path in my recipe</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2016-06-11 13:20 GMT+02:00 Alexis Lo=
thor=C3=A9 <span dir=3D"ltr">&lt;<a href=3D"mailto:alexis.lothore@gmail.com=
" target=3D"_blank">alexis.lothore@gmail.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr">Hello,=C2=A0<div>I am currently trying=
 to set up an Iot showcase platform using lowpan-tools on raspberry.</div><=
div>To do so, I added systemd and I am now trying to create a recipe instal=
ling my lowpan configuration script and lowpan.service. I used <a href=3D"h=
ttp://connman-init-systemd.bb" target=3D"_blank">connman-init-systemd.bb</a=
> in meta-eca as a template to my recipe, which looks like the following (<=
a href=3D"http://lowpan-init-systemd.bb" target=3D"_blank">lowpan-init-syst=
emd.bb</a>):=C2=A0</div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>=
<div><div>SUMMARY =3D &quot;Configuration files to set up Lowpan interface&=
quot;</div><div>DESCRIPTION =3D &quot;Used to configure a lowpan interface =
with systemd when driver is loaded&quot;</div><div>LICENSE =3D &quot;MIT&qu=
ot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D0835ade698e0b=
cf8506ecda2f7b4f302&quot;</div><div><br></div><div>SRC_URI +=3D &quot;\</di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://COPYING \</div><div>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 file://init.sh \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file:=
//lowpan.service \</div><div>&quot;</div><div>S =3D &quot;${WORKDIR}&quot;<=
/div><div><br></div><div>inherit systemd</div><div><br></div><div>SYSTEMD_P=
ACKAGES =3D &quot;${PN}&quot;</div><div><br></div><div>SYSTEMD_SERVICE_${PN=
} =3D &quot; lowpan.service&quot;</div><div><br></div><div>FILES_${PN} +=3D=
 &quot; lowpan.service \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0/opt/lowpan/init.sh \</div><div>&quot;</div><div><b=
r></div><div><br></div><div>do_install () {</div><div>=C2=A0 =C2=A0 install=
 -d ${D}{sysconfdir}/systemd/system</div><div>=C2=A0 =C2=A0 install -d ${D}=
/opt/lowpan</div><div>=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/lowpan.servi=
ce ${D}{sysconfdir}/systemd/system</div><div>=C2=A0 =C2=A0 install -m 0755 =
${WORKDIR}/init.sh ${D}/opt/lowpan</div><div>}</div><div>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</div><div><div>and the service file, located in &quot;fi=
les&quot; :=C2=A0</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><di=
v><div>[Unit]</div><div>Description=3DLowpan interface configuration</div><=
div>Wants=3Dsys-subsystem-net-devices-wpan0.device</div><div>After=3Dsys-su=
bsystem-net-devices-wpan0.device</div><div><br></div><div>[Service]</div><d=
iv>Type=3Doneshot</div><div>RemainAfterExit=3Dno</div><div>ExecStart=3D/opt=
/lowpan/init.sh</div><div><br></div><div>[Install]</div><div>WantedBy=3Dmul=
ti-user.target</div></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>=
<div><br></div><div>I chose to inherit systemd to be sure that my service i=
s not only installed but also enabled at first boot.</div><div>However, whe=
n I try to bitbake this recipe only (or the whole image, which has a IMAGE_=
INSTALL_append =3D &quot;lowpan-tools lowpan-init-systemd&quot;), I get the=
 following error at some point :=C2=A0</div><div><i><div><b><br></b></div><=
div><b>lowpan-init-systemd-1.0-r0 do_package: Function failed: SYSTEMD_SERV=
ICE_lowpan-init-systemd value lowpan.service does not exist</b></div><div><=
br></div></i></div><div>Thinking it was due to file location, (trying to re=
ad systemd.bbclass, I think the class does not find my service file) I trie=
d adding ${S}, ${WORKDIR} or so before lowpan.service in SYSTEMD_SERVICE, b=
ut it changed nothing.</div><div>Can someone explain me what I am doing wro=
ng in this case ?</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>=
<br></div><div>--=C2=A0<br></div><div data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr">Alexis Lothor=C3=A9<div>=C3=89l=C3=A8v=
e-Ing=C3=A9nieur =C3=A0 l&#39;INSA de Toulouse</div><div>5A Automatique-Ele=
ctronique : Syst=C3=A8mes Embarqu=C3=A9s Critiques</div><div>06.51.59.81.45=
</div></div></div></div></div>
</font></span></div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Alexis Lothor=C3=A9<div>=C3=89l=C3=A8ve-Ing=C3=A9nieur =
=C3=A0 l&#39;INSA de Toulouse</div><div>5A Automatique-Electronique : Syst=
=C3=A8mes Embarqu=C3=A9s Critiques</div><div>06.51.59.81.45</div></div></di=
v></div></div>
</div>

--001a11467c505567330535040aba--
