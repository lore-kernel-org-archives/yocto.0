Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4C7FE00C40; Thu,  7 Jul 2016 01:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5DF1E00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 01:29:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u678TpHN022400
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Jul 2016 01:29:52 -0700 (PDT)
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Thu, 7 Jul 2016 01:29:51 -0700
Date: Thu, 7 Jul 2016 16:29:46 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20160707082946.GC23595@pek-khao-d1>
References: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
	<CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
	<alpine.LFD.2.20.1607061508290.3259@localhost.localdomain>
	<577D5DE0.5010706@windriver.com>
MIME-Version: 1.0
In-Reply-To: <577D5DE0.5010706@windriver.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to tftp download a newer u-boot into RAM and simply execute it?
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
X-List-Received-Date: Thu, 07 Jul 2016 08:30:01 -0000
X-Groupsio-MsgNum: 30939
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4jXrM3lyYWu4nBt5"
Content-Disposition: inline

--4jXrM3lyYWu4nBt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2016 at 03:37:04PM -0400, Bruce Ashfield wrote:
> >=20
> >    so, before i commit myself to this, who's the PPC/MPC8315E-RDB
> > expert on this list who can confirm a stock u-boot should flash to NOR
> > and just plain run?

The ramboot is not supported for this board in u-boot. There do have some
codes about ramboot in the startup code, but you can't expect it to work
without some tweaking.

Thanks,
Kevin

--4jXrM3lyYWu4nBt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXfhL6AAoJEJNY7TDerrFxeJgH/2dU5wevCRzcND9arXASqvx6
y6cGjDakSPqSkC77lxRzvu8BGPMwX2FcV2JACI3aw4p4D5VP1jeLxCfNvxyj+pYQ
opCDtJI+kWuBB3JQlFK04Zurb04+cUfIkm3jAqJVRAUgtTVdp7gR3bB+byv7BWTG
GPuKPnHbTGkQEd7qjR4YQ3lrFqefVOSLn3jgxRYNq7BpU+OUUxpCBFr7OgrFm7kD
U8mHv0Rv0IGlmXJr/VaCtM9QuczohlbHR9EXq4lSvcZGCF3tIH4zdwtbah+yrMSC
chyUjzPE3btnvIIXLZshb/mnrm39WPGkH3Hik1Q/eULQQQFMWwKHyQke4I7+kLA=
=MTaA
-----END PGP SIGNATURE-----

--4jXrM3lyYWu4nBt5--
