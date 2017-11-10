Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DA1AE00CE2; Thu,  9 Nov 2017 19:56:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AA10E00C45
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 19:56:08 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Nov 2017 19:56:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,372,1505804400"; 
   d="scan'208";a="411665"
Received: from phande-mobl1.amr.corp.intel.com ([10.255.67.248])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2017 19:56:07 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F094B9F2@IR-CENTRAL.corp.innerrange.com>
Date: Thu, 9 Nov 2017 19:56:06 -0800
Message-Id: <5FAA747E-CE0D-4FA9-BE5A-4E0C330B7D5C@linux.intel.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B9F2@IR-CENTRAL.corp.innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
X-Mailer: Apple Mail (2.3273)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto git repositories, shallow clone, uploadpack.allowReachableSHA1InWant
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
X-List-Received-Date: Fri, 10 Nov 2017 03:56:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Adding Michael Halstead.

> On Nov 9, 2017, at 6:03 PM, Craig McQueen =
<craig.mcqueen@innerrange.com> wrote:
>=20
> I'm using git submodule to set up a Yocto build using the various =
layers required for my project. I see that recent git has the ability to =
specify that a submodule repository should be a "shallow" clone.
>=20
> However, when I tried it with meta-mono, I got an error "server does =
not allow request for unadvertised object".
>=20
> It appears that for such a shallow clone of a specified commit to =
work, the repository must enable uploadpack.allowReachableSHA1InWant.
>=20
> Could this option be enabled for all Yocto git repositories? This =
would potentially save a lot of time and download bandwidth for =
everyone.
>=20
> --=20
> Craig McQueen
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


