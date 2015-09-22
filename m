Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D1DE01019; Tue, 22 Sep 2015 07:02:17 -0700 (PDT)
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
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA92EE00CC2
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:02:16 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so163035741wic.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=+vsgEYxiE8izuDxmYcZciZxkSgS0o5WlkvJ8XlWf6Ho=;
	b=iOLAGnhStVAvYoB2rMI9rwSdlJ+0ZjmvZoqe3TId/Nl1nbylZZ3S/jPhDWPMY6+l7v
	yqDaJ9B/yt3r6TyKsuP1FBfd2otFpz7ZmFAhkYXsGGnqEQjGeqfvAvY4qGWzG0vnMFHr
	KhkKVwrPSmJ6llclfMMQB19aRxhnIc8AIBgiqqhPIiv//AYWbd6FkFUjMcv6IThsvWDC
	5bccy9ymPJ1tTAK+MGF6iFIQNIDkAIitJKrW5K4I4o1zNGn1B7LC5Va77hRYdW+vj1Kv
	TSDglyRKXCXwM8uwZLV48wYHDvLKNecekW3kE/fbJS4KMyxK9Vbu+qxuwN95shSSR1a+
	9AXQ==
X-Received: by 10.181.27.138 with SMTP id jg10mr21274551wid.29.1442930535564; 
	Tue, 22 Sep 2015 07:02:15 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	ub7sm3319147wib.17.2015.09.22.07.02.14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Sep 2015 07:02:14 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 22 Sep 2015 16:02:18 +0200
To: Gilles CARRY <gilles.carry@st.com>
Message-ID: <20150922140218.GB2388@jama>
References: <9A1915A5EDF1BD429C7E67EC45EFD43501570B6336@SAFEX1MAIL1.st.com>
MIME-Version: 1.0
In-Reply-To: <9A1915A5EDF1BD429C7E67EC45EFD43501570B6336@SAFEX1MAIL1.st.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Easy tracking of dependencies
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
X-List-Received-Date: Tue, 22 Sep 2015 14:02:17 -0000
X-Groupsio-MsgNum: 26478
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline

--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 22, 2015 at 03:11:03PM +0200, Gilles CARRY wrote:
> Hello,
>=20
> I'm facing many cases in which bitbake spuriously rebuilds too many (all?=
) components despite the shared state cache. I'm not detailing these cases =
as I know it just a matter of variables and new tasks we added in our build=
 process.
> My concern is about how I can track these dependencies when the spurious =
rebuilds occur. I have done this in the past and used commands or log files=
 explaining what caused the rebuild of such or such component. Unfortunatel=
y, I just can't remember what it was. (my fault)
>=20
> Does Yocto provide a way to track these dependencies? (ie. This task was =
triggered because this variable changed)
> Sorry if this question has already been asked but I'm failing to find the=
 answer from the Yocto doc or from the web.

I'm using scripts/sstate-diff-machines.sh to create snapshots of all
relevant sstate signatures for all interesting builds (like our daily
official build) then it's easy to compare current signatures against
yesterday's official build when spurious rebuilds occur.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--i9LlY+UWpKt15+FH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYBX2kACgkQN1Ujt2V2gBwDzgCfZ3t7nv7WzfBDZSb+sY01HvVN
56wAnAqXniApyWVeVmKcBNOEUNSOsafi
=zO9J
-----END PGP SIGNATURE-----

--i9LlY+UWpKt15+FH--
