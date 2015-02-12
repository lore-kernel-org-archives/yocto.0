Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26862E0087C; Thu, 12 Feb 2015 14:19:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B71F2E007CF
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 14:19:43 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id h11so8001768wiw.1
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 14:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=I4IMmwVpL4torA2PlPPr06sLT06CjLXENro2sUdCtYY=;
	b=tnmRf8K3+THxDSXOS3o3C3WqyBuT8Z1qb/2KXzhj4MdAdyZCjZ6QOCC0vQmjHtDtJz
	voRY/iVGtjCn38NTaKMwrxOXSN5i+12AtzmhQHgPZx5x0F3TDu8qYxNoJaKCieh6I7tA
	HixjwDpI8PlmkLoDSAqdMwHQVVhBYDt1ktaN3Ex5+Uo5GDpbBmwCJhY8IAkumWdzV0b+
	v8GBYB+DrvxFutyG+NxtyEb4gdkQFx6mQdkHHZcksyTNj2NZ7SHl1DRwksHofg+QTaHn
	IIHLwOPZYjwgjTYldS/fkQWLlod1fWzNdP920bdTLbfjc4hdQ3kOZqFPyPw/UCJu8NEe
	Yf6w==
X-Received: by 10.181.13.146 with SMTP id ey18mr10489184wid.84.1423779582557; 
	Thu, 12 Feb 2015 14:19:42 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	lj13sm4294939wic.9.2015.02.12.14.19.41
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Feb 2015 14:19:41 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 12 Feb 2015 23:19:46 +0100
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150212221946.GH2272@jama>
References: <54DD1A4C.60004@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <54DD1A4C.60004@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Why did my build need to redo so many tasks?
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
X-List-Received-Date: Thu, 12 Feb 2015 22:19:46 -0000
X-Groupsio-MsgNum: 23569
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3VRmKSg17yJg2MZg"
Content-Disposition: inline

--3VRmKSg17yJg2MZg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 12, 2015 at 02:25:32PM -0700, Gary Thomas wrote:
> Yesterday, I built a large image using Poky/Yocto 870323cac1e
> Today I updated my Poky repo to 231d4a9d3
>=20
> When I rebuilt the same image, bitbake kicked off more than
> 5200 tasks, building virtually every package from scratch.
>=20
> How can I tell why this happened?  I don't have buildhistory
> enabled, but I do still have the tmp & sstate-cache trees
> from the process.  Is there enough info laying around that
> I can tell, e.g. why the GCC toolchain had to be rebuilt
> completely?
>=20
> Am I correct in assuming that bitbake-whatchanged is really
> a Quija board and can only tell me [in advance] what will need
> to be done if my layers change?  When I ran it after the long
> build above, it didn't really tell me much :-(

I'm using
openembedded-core/scripts/sstate-diff-machines.sh
to create sstate signature snaphosts for interesting builds, then
when I'm surprised by number of re-executions, I create another snapshot
and compare them.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--3VRmKSg17yJg2MZg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlTdJwIACgkQN1Ujt2V2gBwfbQCfbi+g6q2tEczPB4aTQDuB6Pdd
YUgAoIg3kJtbIuRh9gVvv968wyDKCeE5
=dLAT
-----END PGP SIGNATURE-----

--3VRmKSg17yJg2MZg--
