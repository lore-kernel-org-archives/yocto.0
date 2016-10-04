Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAD1AE00756; Tue,  4 Oct 2016 13:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64256E00563
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 12:59:58 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2016 12:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,444,1473145200"; d="scan'208";a="16646264"
Received: from hle6-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.42])
	by orsmga004.jf.intel.com with ESMTP; 04 Oct 2016 12:59:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Date: Wed, 05 Oct 2016 08:59:53 +1300
Message-ID: <15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
	<127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Tue, 04 Oct 2016 20:00:00 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tue, 04 Oct 2016 19:47:58 Dinh Nguyen wrote:
> The c-mlib.bb below has the packages var as
> PACKAGES =3D+ "${PN}=E2=80=9D I also tried PACKAGES =3D "${PN}=E2=80=9D=
=20

PACKAGES =3D "${PN}" should work (or use bitbake -e recipename | less, =
search=20
for ^PACKAGES=3D (with /) and look through the history to see why not).=


However, if you do make that work I suspect you'll probably hit other=20=

warnings/errors due to unpackaged files or other issues. I guess you ar=
e=20
trying to work around the fact that you have a non-symlink .so file tha=
t you=20
want to get into the main ${PN} package, is that correct?

Cheers,
Paul=20

--=20

Paul Eggleton
Intel Open Source Technology Centre

