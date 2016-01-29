Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C858AE00AF4; Fri, 29 Jan 2016 06:59:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19EE8E00ADD
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 06:59:41 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id r129so72163159wmr.0
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 06:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=8EZgra1SBNqMFPA5S6vJZIRDo+0rm21vMmkZ+OlL1Gk=;
	b=0e2rjdZwlSAPwXNCkks8T+2WaUK80i2iURWi/D6w1iVGAd3VKTPFPhJCYse6nE4GYi
	kJvSjqyuHlz7CD+ASnd0C4EjKhhQNGdpzaq8CzqxoU5oytinm7VbfvUeu1K9H/OV6Vla
	BIlY3W4AjgWX22tA22m2fDLpKNf0yE1GA1cWAoAS5JZH4xRXANJoonB/So0HPHyntFX/
	6gTMytej4mmT/fvWJuxqqv5dlmWzVU88N60vDT0SIyWe1O+/yt899YmujTqUqcP27tuz
	18w3E0xdXpIjDfJknnT9/E15fjjCpc6i65DsxZqmPYzmRCeHZ/wGVJL39gutlmXM1LMk
	AnIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=8EZgra1SBNqMFPA5S6vJZIRDo+0rm21vMmkZ+OlL1Gk=;
	b=hw4CjcR8nwzoUG76+AcCzTmgWN8l9OoZpiqB6vR57QfJeT2/74+j5HMYYvFAKAVEbr
	gVHIAXFssdVoS0VlaSquIYNXk74FIyhylvhWAhQcy38dpnYSHBcIWmCmJ+zXiOj4Y7eE
	JKaR7GuYlSbnAeRHmuZPurJSM0r2cMjvgZ6RPuJD5SE3ivqugZNYtMRMuNUwWVgrmsaz
	f5XlH8fRhDOUPYa04t8iaJ8O9J/HUAp9UsgdUrJB2Umwx8h2rn07k94Lbb9pJnBFQvK7
	DlVNpL6NzJbh0RWrfya2eQM4qxWZLdyKSOlwTSQH/HS00DAaQwrHdiGcSD0v5LkjyiZQ
	Apiw==
X-Gm-Message-State: AG10YOQKttyl2Fk0jX13KUpj9Ds8DPrBTxIUg6tcS8wAG09GtUGleTdQRTIh/AIpuipoGA==
X-Received: by 10.194.121.70 with SMTP id li6mr9234041wjb.33.1454079580971;
	Fri, 29 Jan 2016 06:59:40 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id w66sm7229975wmd.2.2016.01.29.06.59.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Jan 2016 06:59:39 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 29 Jan 2016 16:02:05 +0100
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <20160129150205.GB2574@jama>
References: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: About style used on .bb* files
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
X-List-Received-Date: Fri, 29 Jan 2016 14:59:44 -0000
X-Groupsio-MsgNum: 28150
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dTy3Mrz/UPE2dbVg"
Content-Disposition: inline

--dTy3Mrz/UPE2dbVg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 29, 2016 at 11:50:03AM -0200, Daniel. wrote:
> Hi everybody
>=20
> I'm here to ask if is there any "standard style" that should be used on
> recipe files. I found my self using 8 columns tabs but I really don't know
> if is there any style that should be used. If not would be good to create
> one :). What you guys think about?

http://www.openembedded.org/wiki/Styleguide

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--dTy3Mrz/UPE2dbVg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlarfuwACgkQN1Ujt2V2gBzV6ACeMI3fQsXycRx0W8vg7u1zgtPs
SesAoLLLwl4UjZAcsPGzb+eg+x8kKqtu
=IWBU
-----END PGP SIGNATURE-----

--dTy3Mrz/UPE2dbVg--
