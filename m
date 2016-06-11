Return-Path: <matt@madison.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF6CE00E37; Sat, 11 Jun 2016 10:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68261E00E33
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 10:29:34 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id j7so39089229lfg.1
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=madison-systems.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=ot4k31u7sp8nkkPvyIcx4M9kH6r9VypvHRyR+usGEeA=;
	b=ThYJQi5M8WQ9V77RF1EosUeX1vGf+cGsp9QNraO1DHj+u1S+AtxsgSYp1+cYrFcQs3
	zdUFRnIGZgnNi0hlxqzezBFY+RX53ax9r9OU8S9SSawPAB5ragtYsH2t6pq+8AtsTgRl
	EPoHXV3nC5x6K0wgs6rB52o2oX9Xt9glHlLfTj8h9JPT0idvEZ2uVIATZcC20sYzctgQ
	leSiBYOFVWl7AsPCjyW4/OriGQ0G2UuJtuhp6I/4B0we4nwDc9DXh1kmwj9cGXiKVJj1
	9u+I+aJ9DhcR7fvHQgvibxTKEhPsA/AdObECFXXfeslZMTv6cQil1uRmZtf4zqDQ77mb
	8nMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=ot4k31u7sp8nkkPvyIcx4M9kH6r9VypvHRyR+usGEeA=;
	b=dM449M4mDn86M8ZQ1ra4YTzvlAqwSIKBPlK/TjISxG6INmNPQoY27Q4nop6qlfvImz
	P/QdFrfz3pwYEz228nEPBkqwXfg+bcuzmMlnG1i6Yq45UW9k11p7/YIjdA+6VM64JVbR
	qRwUJZ0ItKsLkoJrEpfqQhZTz2+U4eloK+M2lHi+m1OWjY1fVDwZw9p9MPo+jWzh/SuZ
	CA4g5/WkDqaGFW8vapyE3BP6rifkNje0rl0rjZNH9yAM3A/DMhrzPv2ta0niFmHH/Ux2
	VPataqop0ELOm/1pdqHA4RC+8wqznXv1wIRm1yT5IJL9v9d7Few7tXxB9FPNELe8WKxR
	1rVw==
X-Gm-Message-State: ALyK8tKnbtOSi6CORSpw0b90/w0XfBYSlSQeAXjXM74xnzdBP9DmIBzVLKIjU32q4ngZgyM65pSt6IKaF2AXPw==
MIME-Version: 1.0
X-Received: by 10.25.33.2 with SMTP id h2mr1680323lfh.186.1465666172595; Sat,
	11 Jun 2016 10:29:32 -0700 (PDT)
Received: by 10.25.25.13 with HTTP; Sat, 11 Jun 2016 10:29:32 -0700 (PDT)
In-Reply-To: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
References: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
Date: Sat, 11 Jun 2016 10:29:32 -0700
Message-ID: <CAGgRHJroXw8FL5WPZvWRPhK2OdeB5i9-ZAzG81haCefQ+EV6og@mail.gmail.com>
From: Matt Madison <matt@madison.systems>
To: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 11 Jun 2016 17:29:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 11, 2016 at 4:20 AM, Alexis Lothor=C3=A9
<alexis.lothore@gmail.com> wrote:
> Hello,
> I am currently trying to set up an Iot showcase platform using lowpan-too=
ls
> on raspberry.
> To do so, I added systemd and I am now trying to create a recipe installi=
ng
> my lowpan configuration script and lowpan.service. I used
> connman-init-systemd.bb in meta-eca as a template to my recipe, which loo=
ks
> like the following (lowpan-init-systemd.bb):
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> SUMMARY =3D "Configuration files to set up Lowpan interface"
> DESCRIPTION =3D "Used to configure a lowpan interface with systemd when d=
river
> is loaded"
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

Instead of ${D}${sysconfdir}/systemd/system, install the service file
into ${D}${systemd_system_unitdir}.

-Matt

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
> I chose to inherit systemd to be sure that my service is not only install=
ed
> but also enabled at first boot.
> However, when I try to bitbake this recipe only (or the whole image, whic=
h
> has a IMAGE_INSTALL_append =3D "lowpan-tools lowpan-init-systemd"), I get=
 the
> following error at some point :
>
> lowpan-init-systemd-1.0-r0 do_package: Function failed:
> SYSTEMD_SERVICE_lowpan-init-systemd value lowpan.service does not exist
>
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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

