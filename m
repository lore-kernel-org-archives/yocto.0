Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 022DAE01480
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 10:29:39 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id fa10so659762pad.13
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 10:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=M5sAr6M3ZhF+LOllznDALGaKoeV9CF5VUjCz6JkMJm8=;
	b=NnATAl93OHw+VexzhmQzSEVfgfFfLPiUqGxsq8VPhZ2hDsWFmeOaP2khHAPVuwHESi
	ThERc9mE0Zl36alROn03VmnPPO4AShDLjX1xRfR1I222LvZvWrblaE4m3sWdKgazov10
	NKwbya9ATHDN3hzwymwj6kBak/mqSKmIA/c49nYVdvJ56wv0s+9UTa9lXUJ2IELLPdcJ
	q/jWK7hJrFaV0tPKQSQ3jczY1mjlA5a/RVE12s5NFfPaWDpzKOpPy8WwtI/SJ2tsyHU6
	Gomx6k6JW/OT0LAw6KG/QnZtIohnQu7HvvB2IVhk3CuQrOsA6XAGx6TJn6thoIz2JcEP
	XcGQ==
X-Received: by 10.68.63.194 with SMTP id i2mr56605753pbs.4.1362680979828;
	Thu, 07 Mar 2013 10:29:39 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id hu2sm2484176pbc.38.2013.03.07.10.29.36
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 10:29:38 -0800 (PST)
Date: Thu, 7 Mar 2013 19:29:33 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20130307182933.GS32228@jama.dyndns-home.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
MIME-Version: 1.0
In-Reply-To: <96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 07 Mar 2013 18:29:40 -0000
X-Groupsio-MsgNum: 12409
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="f0Ums9VvOMUG7syy"
Content-Disposition: inline

--f0Ums9VvOMUG7syy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 07, 2013 at 10:22:54AM -0800, Paul D. DeRocco wrote:
> Or maybe I should just build the system without samba, run it, manually
> install samba just like any other user, and then use dd to save the modif=
ied
> image for production use. Does that sound like a good idea?

No, adding extra layer is pretty basic operation and should be properly
documented. Can you send some pointers what have you read about adding a
layer and what wasn't easy to understand?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--f0Ums9VvOMUG7syy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlE43I0ACgkQN1Ujt2V2gBxM5QCghh4JBGw8rbdlWcPhK8Co9gXz
WGgAmwTwMwAW0bLzPUC/NjfliZKfzzRi
=SIQJ
-----END PGP SIGNATURE-----

--f0Ums9VvOMUG7syy--
