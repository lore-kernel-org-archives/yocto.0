Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AB67E00CC4; Wed, 13 Sep 2017 18:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07C16E00CAF
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 18:01:07 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Sep 2017 18:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,390,1500966000"; d="scan'208";a="128526868"
Received: from ttorling-mac01.jf.intel.com ([10.24.14.73])
	by orsmga004.jf.intel.com with ESMTP; 13 Sep 2017 18:01:07 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <7CFAA22325604C53A54F411F4ED0687E@PAULD>
Date: Wed, 13 Sep 2017 18:01:06 -0700
Message-Id: <B66D1D7A-8DA2-48B1-A241-0C4FE48A959A@linux.intel.com>
References: <7CFAA22325604C53A54F411F4ED0687E@PAULD>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: Eclipse Target Communication Framework prevents shutdown
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
X-List-Received-Date: Thu, 14 Sep 2017 01:01:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

You are probably on an older Yocto Project release and missing this =
commit:
=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Db467a22729bea8=
86d7bde976c9606ac8e4589cde

Also, Mars support will be dropped soon, so please consider moving to =
Neon.

> On Sep 13, 2017, at 12:16 PM, Paul D. DeRocco <pderocco@ix.netcom.com> =
wrote:
>=20
> I'm using TCF on a Raspberry Pi and on an Intel Atom, for remote =
target
> debugging with Eclipse Mars. It works fine, except for one thing: if I
> have to reboot the target, it puts up a message that says that "A stop =
job
> is running for Target Communication Framework", and it takes a minute =
and
> a half to time out. How do I get TCF to respond to the usual kill =
signal
> on shutdown, or have a more reasonable timeout like five seconds?
>=20
> --=20
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


