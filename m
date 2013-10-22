Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f45.google.com (mail-bk0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD26CE0172C
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:53:01 -0700 (PDT)
Received: by mail-bk0-f45.google.com with SMTP id mx11so1158959bkb.4
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:53:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=S8BXF2rMrbIni7N86fBNyJpAvGfiqgvPf9sZYhlajQo=;
	b=e2aNSAlq5LsZGv3LL6qF0V8GFLWfQsopGY92m0bawHtHffW95XWBN2Ff0Rx+gdyxPu
	9W5xPYP4jDTcvxf+dxyWEoNe7UEDq7h3W1aGY6JbNTJzyqeq5kpCIw6fxaVFp6BcAQNQ
	vP3qBa1m0htpzMqP8/w/X0wzGnuDUk0fjjG02AbXJ99ah4mUux4mmM+v1ROKw4yTwiwR
	tEA8NZvoRjTLU5Zc8U67jsxIFgsSccw2vtHHyMPWZjzxkBU+ZxMOedLjB//LCUNtM2z6
	eKc2hVd1e/iXMNXzHp4Q518cTxu3pduhyhkiPBMHIoNhuqv2bZqf9CgnbhJxfGbcoi6P
	RZtA==
X-Gm-Message-State: ALoCoQllNX2sS4qeV29Z7GfV+Gm8f9TLyy/m2/BSGZBU1HUxglEEsbefyABmCwq78ewH2dO8otbL
X-Received: by 10.204.232.15 with SMTP id js15mr606153bkb.50.1382431980701;
	Tue, 22 Oct 2013 01:53:00 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id b6sm12133604bko.16.2013.10.22.01.52.59
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Oct 2013 01:52:59 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Amit Tomer <amittomer25@gmail.com>
Date: Tue, 22 Oct 2013 10:52:56 +0200
Message-ID: <7055398.MVNfTLEc1P@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.4-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <CABHD4K-YkxdoaOTGFRRrHEWQqEqHD=R_58uO_J8mXK4eRQZD1g@mail.gmail.com>
References: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
	<2835025.0QrQ9WxvF6@fedora-fisso>
	<CABHD4K-YkxdoaOTGFRRrHEWQqEqHD=R_58uO_J8mXK4eRQZD1g@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How Do I add users in /etc/passwd in Yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 08:53:03 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data marted=EC 22 ottobre 2013 14:18:55, Amit Tomer ha scritto:
> Thanks Davide
> Can you please point to right link.
>=20
I found the example recipe there:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recip=
es-skeleton/useradd/useradd-example.bb

> On Tue, Oct 22, 2013 at 2:12 PM, Davide Soldan
> <davide.soldan@kynetics.it> wrote:
> > In data marted=EC 22 ottobre 2013 14:00:22, Amit Tomer ha scritto:
> >> For some requirement I wante to add some new users in /etc/passwd =
.
> >>
> >> I tried doing it in couple of way but none of it worked out well
> >>
> >> I tried to patcth the /etc/passwd file but getting few errors whil=
e
> >> bitbaking my image.
> >>
> >> Paul Eggleton suggests me that patching /etc/passwd  file won't wo=
rk
> >>
> >> Then I tried doing it in below way
> >>
> >> SRC_URI +=3D "file://passwd"
> >>
> >> do_install_append() {
> >> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
> >> passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd
> >>
> >>                     install -m 0644 ${WORKDIR}/passwd ${D}${syscon=
fdir}/passwd
> >> }
> >>
> >>  With above method I am able to add new user to /etc/passwd file
> >>
> >> but testing this image gives me trouble and now when I login to bo=
ard
> >> it is asking password.
> >>
> >> Now would like to know what are the ways to add new users in
> >> /etc/passwd file in yocto.
> >>
> >> Thanks
> >> Amit
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > I've done it creating my useradd recipe following
> > poky/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb


