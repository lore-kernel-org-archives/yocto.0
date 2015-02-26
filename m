Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41AEFE006E9; Thu, 26 Feb 2015 04:13:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB80E003AB
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 04:12:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Feb 2015 04:12:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,652,1418112000"; d="scan'208";a="657510700"
Received: from jwatso2-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.2.13])
	by orsmga001.jf.intel.com with ESMTP; 26 Feb 2015 04:12:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 26 Feb 2015 12:12:55 +0000
Message-ID: <1560120.onCEMgK5eA@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54EE5EAC.6050901@linux.intel.com>
References: <54EE5EAC.6050901@linux.intel.com>
MIME-Version: 1.0
Subject: Re: Recipe reporting system Announcement
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
X-List-Received-Date: Thu, 26 Feb 2015 12:13:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 25 February 2015 17:45:48 An=EDbal Lim=F3n wrote:
> I'm glad to announce the available of the Recipe reporting system
> (a.k.a, RRS) [1].
>=20
> The RRS publish the status of Recipes for Openembedded-core (meta)
> layer, the status means:
> who maintains the Recipe?, what other Linux distribution contains the=

> Package, list of upgrades
> of a Recipe, upstream version of the Recipe and Milestone statics abo=
ut
> package upgrades, details [2].
>=20
>=20
> The RRS design specification can be found at Bugzilla [3] and the sou=
rce
> code is available [4].
>=20
> Special mention to,
>      Belen Barros Pena for did the design of the RRS [3].
>      Saul Wold for supporting the development direction.
>      Michael Halstead for help in production setup.
>      Paul Eggleton for make the Layerindex app that servers as base o=
f RRS.
>=20
> Contact me for any issue.
>=20
> Best regards,
>      alimon
>=20
> [1] http://packages.yoctoproject.org/
> [2] http://packages.yoctoproject.org/rrs/about/
> [3] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6273
> [4]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dalimo=
n/RRS

Great work An=EDbal, and thanks!

Just to clear up any confusion, at the moment this is effectively a for=
k of the=20
OE layer index code, and I still have the task to try to help get the R=
RS =20
changes merged into the OE layer index master branch, which I fully int=
end to=20
do. Unfortunately I haven't had a chance to do that yet but luckily the=
 code=20
for the OE layer index isn't changing very much at all at the moment, s=
o the=20
two codebases are unlikely to diverge much while we are waiting for tha=
t to be=20
done.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

