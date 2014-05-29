Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE7E7E00B74; Thu, 29 May 2014 06:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f44.google.com (unknown [209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D427DE00B6A
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 06:15:59 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id lj1so352375pab.17
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 06:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=KS1bqg/c+gUAV/qIsVmzVMT8SBYowLBOVJEJjdJ2Krc=;
	b=B3Y5Oy99/qkDn7zi6Y9sbu6998JobOukh+agahAa4w1uFenH5NUdVCRnLzH4Ixm2SK
	egvGYKFuUBUOKfpd5VQ9Oafz9HSpJD+YnymWPLiJj3yvrCn3U4JbA+62BvoOBag3CLrp
	dGh1Tey/32Q1F4opcUpH0sUNNwYc2t7vyAp6ajEMAQySJVuPDcXRdivH52hr6JQAvuVl
	o8bI/38VQpokq/nllYIENkbZSxmgtAzUv1C0XzIncFPLC0ShGybAqnlSVWCNjxv4ekNj
	uVvG1O7TLxgh0P0bU+GgOIWtaRPThC0MdGqICNUFaWzIuwBa8gaR0O5INkkXMlJKn3CN
	GJLA==
X-Received: by 10.66.139.73 with SMTP id qw9mr8533272pab.123.1401369359238;
	Thu, 29 May 2014 06:15:59 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ei4sm1256052pbb.42.2014.05.29.06.15.55 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 May 2014 06:15:56 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 29 May 2014 15:16:02 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20140529131602.GF2426@jama>
References: <CAAPegz2wnPiugMeJ=ARa6AqLD6J59JUhPbTY7SZ9_yfL2JbDdw@mail.gmail.com>
	<538731AA.6090906@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <538731AA.6090906@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oe][PATCH 1/2] dfu-util 0.7 recipe
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
X-List-Received-Date: Thu, 29 May 2014 13:16:10 -0000
X-Groupsio-MsgNum: 19843
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="924gEkU1VlJlwnwX"
Content-Disposition: inline

--924gEkU1VlJlwnwX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 29, 2014 at 07:10:02AM -0600, Gary Thomas wrote:
> On 2014-05-29 06:46, Chris Morgan wrote:
> > dfu-util 0.7 is the latest release of dfu-util
>=20
> These patches should be sent to the OpenEmbedded mailing list
>    openembedded-devel@lists.openembedded.org
>=20
> Also, check the README in your repository for details, in particular
> the use of git send-mail for patches is preferred.

And also please remove 0.1 and add 0.7 in the same commit which will be
easier to review if sent with -M.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--924gEkU1VlJlwnwX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlOHMxIACgkQN1Ujt2V2gBz4TACbBjCahpyEmOiCT7MepUy85VW6
5xQAnjhIbXk4lwGtCO848qY8qPzW2TwH
=ioWl
-----END PGP SIGNATURE-----

--924gEkU1VlJlwnwX--
