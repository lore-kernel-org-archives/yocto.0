Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C8F0E00B67; Wed, 18 Jun 2014 00:54:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E77BE00B5D
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 00:54:24 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id n15so592932wiw.17
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 00:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=GcN3PVDbp7dI836P4TNYQqljdJvHLrCLJNck+ovq6Cc=;
	b=eSx/cHKdJVDLskZB8njIgl+oXAWry1TCjtTC1v086NgTuX+N/6aM0S1rAKwFfAs5Id
	Vfyv3u3lCJbt7nrvhHCZLR+hXmSWPg9/Yx51nCjYkvdSzydlmSMlFuO5DyGMG5EC6j4o
	eS+3mfvM9IcKyHJ/StU8nzDX4DQcn39AjbUVD6ymLLl2yuHhlRgC18q2N3VcZvMQUNDv
	5cQFaq2qj60VTeC+68/0EcS6NlLCd4hV9VLPF7wQY8sjDJ8i50ZLzynvqZWa6TxUhzBG
	Rl5pTPHcu6JLEXRaFAq2M8xnTCjFSL/0P1QMiTCL1FGOLgI0oG9In7Bbp/1CqunyyVIj
	ZEUw==
X-Received: by 10.180.207.9 with SMTP id ls9mr2543499wic.32.1403078063732;
	Wed, 18 Jun 2014 00:54:23 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id y8sm3710894eef.5.2014.06.18.00.54.22
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jun 2014 00:54:22 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 18 Jun 2014 09:54:22 +0200
To: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
Message-ID: <20140618075422.GD2117@jama>
References: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
	<20140612085627.GD2428@jama>
	<CAJTo0LZt+i_3rbmrjxgP6b5RgNsEFEvaQ6aEd2kX-qVMiUjR+g@mail.gmail.com>
	<9AD1F2A584A7644C9605656D538412FEAA5B8F@G08CNEXMBPEKD03.g08.fujitsu.local>
MIME-Version: 1.0
In-Reply-To: <9AD1F2A584A7644C9605656D538412FEAA5B8F@G08CNEXMBPEKD03.g08.fujitsu.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] add recipe cim-schema, cim-schema-docs and license file DMTF.
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
X-List-Received-Date: Wed, 18 Jun 2014 07:54:36 -0000
X-Groupsio-MsgNum: 20214
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iVCmgExH7+hIHJ1A"
Content-Disposition: inline

--iVCmgExH7+hIHJ1A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2014 at 07:30:49AM +0000, yaoxp@cn.fujitsu.com wrote:
> Why not in oe-core?
> What recipe can be put in oe-core, and what recipe can be put in meta-oe?

"core" recipes which are used by most if not all OE builds

"opt-in" extra recipes go to different "topic" layers

nobody needed or asked for cim until now, so it's not "core" by this
definition.

> > -----Original Message-----
> > From: Burton, Ross [mailto:ross.burton@intel.com]
> > Sent: Thursday, June 12, 2014 5:27 PM
> > To: Yao, Xinpan
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] [PATCH] add recipe cim-schema, cim-schema-docs and
> > license file DMTF.
> >=20
> > On 12 June 2014 09:56, Martin Jansa <martin.jansa@gmail.com> wrote:
> > > Why is this recipe needed in oe-core layer? Wouldn't meta-networking
> > > be more suitable?
> > >
> > > The patch also belongs to oe-core ML not yocto.
> >=20
> > Agreed, unless there's a strong reason then this should go to meta-netw=
orking
> > (so send to the openembedded-devel list).
> >=20
> > Ross
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--iVCmgExH7+hIHJ1A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlOhRa4ACgkQN1Ujt2V2gBwsywCgkKgRXJDg/D9zLhy7PGGTHBtn
4TEAoIiM5N6IDgrXTlFehq1VEn0nnc/E
=Lps3
-----END PGP SIGNATURE-----

--iVCmgExH7+hIHJ1A--
