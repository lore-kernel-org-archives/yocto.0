Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5034FE0172B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:42:48 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id d7so1139251bkh.26
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=eNJX3+NYuWCRT/uDCx8UvB3+9BiuSlPBgVtdxwzbDrw=;
	b=dyy0XdvPIgR/enqwiSFmDKBCmMwkroDrIDBS4vYkgQXKtn1GMt4RvvQSl1Q5yZd6Gf
	FtQFHR4b7Q/Ll7KdqlAbj5nSVpYh1c7apwbQGEEsDzjCsqZz0+uBWigZqCKxAadGwyKS
	bhWPpVo+EnhGtG5biOcLMmCTi6pPkQkNZZRR4oMJJlPOdqfIS1syliVGa3jj5PkJsJ+P
	hTLpjHWbOWzn/GH3AkAJAPOQi6moc256XxKQv0N2JG4czC4J+Bd163PbTBb8f61N8HVh
	rLjjP6rVTZ33A9/EbBk10SRyW123pSa1wxq3M6Iz9foWkop2bmf84m2xAnvZya26axD4
	fxVA==
X-Gm-Message-State: ALoCoQkkg9gdLYeBhE4FII1ciC8FWmBC/mkp8BcRLw2UtiXS4FeXT3VmO1TCgQS8YJQUF8RdaW76
X-Received: by 10.204.234.8 with SMTP id ka8mr10925098bkb.5.1382431367556;
	Tue, 22 Oct 2013 01:42:47 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id z6sm12115101bkn.8.2013.10.22.01.42.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Oct 2013 01:42:46 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: yocto@yoctoproject.org
Date: Tue, 22 Oct 2013 10:42:40 +0200
Message-ID: <2835025.0QrQ9WxvF6@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.4-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
References: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
MIME-Version: 1.0
Cc: Amit Tomer <amittomer25@gmail.com>
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
X-List-Received-Date: Tue, 22 Oct 2013 08:42:52 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data marted=EC 22 ottobre 2013 14:00:22, Amit Tomer ha scritto:
> For some requirement I wante to add some new users in /etc/passwd .
>=20
> I tried doing it in couple of way but none of it worked out well
>=20
> I tried to patcth the /etc/passwd file but getting few errors while
> bitbaking my image.
>=20
> Paul Eggleton suggests me that patching /etc/passwd  file won't work
>=20
> Then I tried doing it in below way
>=20
> SRC_URI +=3D "file://passwd"
>=20
> do_install_append() {
> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
> passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd
>=20
>                     install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdi=
r}/passwd
> }
>=20
>  With above method I am able to add new user to /etc/passwd file
>=20
> but testing this image gives me trouble and now when I login to board=

> it is asking password.
>=20
> Now would like to know what are the ways to add new users in
> /etc/passwd file in yocto.
>=20
> Thanks
> Amit
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I've done it creating my useradd recipe following
poky/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb

