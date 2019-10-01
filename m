Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C59F9E00D4F; Tue,  1 Oct 2019 02:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DDAE00D35
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 02:13:42 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id y21so2367260wmi.0
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 02:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Db7AaNPL1CtoqSK0vo3rBWPMoaLEW256doo3tR3BtMA=;
	b=knR87a4D681ne3CHVf+ujiTmPkZNvcipehj2zVjk9uby7UrpZ6QFRhpGRvC6xFpHrb
	OmNSMmWfkhLXydVcRD9axeo7VneAo/U8JECCUT1jpEua6n2i+QyB3hd2vd9RZH9KP/77
	l08She5hV1J2CZ7XCabG8iMww56/b2lWrOWdPF2QKcjSK3CFXc8MsTFzqDr1I/91uiT0
	36xfPbNWwLYKrh68y1VfmJu8zBJzRzsfYWPxk7jUo1YGUfV4yz/jb7RPSXx2KxfRAAMh
	i/1J9f98yoZBko/0q4qrKKbwG9XTcnkE+t6Pr99UHHDFCg+/wH577v1Nph7HWOaAkASQ
	90Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Db7AaNPL1CtoqSK0vo3rBWPMoaLEW256doo3tR3BtMA=;
	b=EofroKwXYXXwkmAU3S4ax/jLXmsUEEhA1g4KDofz2N4b5GT43XyIZYH/+hJtrx7hUy
	xUwy6XQiOInSYiPnVHHcUkMLEwST52LYxDEdCiu6RqH2WFFGdm4gbG5MZPUsmFe6dS16
	dzF2B7VyB5kfLga8sxbcVvliQPYTK4yjPI544N706zmTh33B9HTKmqN+7vKvn/uxJ27x
	oi+KliupAbPJehqsFuiyj/7u79T4a3qOMtrkjVcjcXa/q7CSGnHiiWG92WWJhggIVzO9
	BhsZ486C+uOamMWAPECZmBGcD8axefYOyYYloNH84BV5hWa6+NBjNOFOFYOApx6iozb+
	yiSg==
X-Gm-Message-State: APjAAAUhg6ttac7CCzror46eAhfPMObMhXVRgKdZwMeLhNUvkHugirRe
	FWKxdQNWKezwdGfc3f7duf4=
X-Google-Smtp-Source: APXvYqxEYSoBNvUP5d0PDco/DJDEu7w7k1Thv2QUgzkajv0LqTqigM5gLq4PL1OT8lwLVA8xZJYAQQ==
X-Received: by 2002:a1c:3cc3:: with SMTP id j186mr2616179wma.119.1569921221360;
	Tue, 01 Oct 2019 02:13:41 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	c6sm17327536wrm.71.2019.10.01.02.13.40
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 01 Oct 2019 02:13:40 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 1 Oct 2019 11:13:40 +0200
To: Damien LEFEVRE <lefevre.da@gmail.com>
Message-ID: <20191001091340.GA1582@jama>
References: <CA+FhBv9rA12ik5StBmeDAD1b8gLy1Si3S-muQNmBqw824VXPXA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FhBv9rA12ik5StBmeDAD1b8gLy1Si3S-muQNmBqw824VXPXA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: do_fetch_append: syntax error
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
X-List-Received-Date: Tue, 01 Oct 2019 09:13:42 -0000
X-Groupsio-MsgNum: 46790
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2019 at 11:35:21AM +0300, Damien LEFEVRE wrote:
> Hi,
>=20
> I have the following bbappend
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI +=3D " \
>     file://tegra186_cti_defconfig \
> "
>=20
> do_fetch_append(){
>     mv ${WORKDIR}/tegra186_cti_defconfig ${WORKDIR}/defconfig
> }
>=20
> For this I get an error:
>   File "autogenerated", line 3
>     mv ${WORKDIR}/tegra186_cti_defconfig ${WORKDIR}/defconfig
>           ^
> SyntaxError: invalid syntax
>=20
> Can someone explain why? I get the same in do_fetch_append. Starts working
> with do_configure_append but that's too late in case of rebuild.

do_fetch is python task, you cannot append shell code to it.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXZMYwwAKCRA3VSO3ZXaA
HAxaAJ9/KsN33A+7ZWADOrYVkBmXkypSrgCeJuBaXIkzJjGXP4HBhQ8g9I6zIEw=
=vW9G
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--
