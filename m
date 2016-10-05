Return-Path: <randym@stratagemsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94649E00C98; Wed,  5 Oct 2016 16:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [204.8.75.169 listed in list.dnswl.org]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from stsolohosting.com (mx.stsolohosting.com [204.8.75.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 699C2E00C72
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 16:45:55 -0700 (PDT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
	x-ip-name=174.2.14.158; 
Received: from [192.168.0.17] (unverified [174.2.14.158]) 
	by stsolohosting.com (SurgeMail 7.1e) with ESMTP (TLS) id
	1852724-1344334 for multiple; Wed, 05 Oct 2016 17:24:13 -0600
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Randy Mortensen <randym@stratagemsystems.com>
In-Reply-To: <2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
Date: Wed, 5 Oct 2016 17:45:53 -0600
Message-Id: <A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
X-Mailer: Apple Mail (2.3124)
X-Authenticated-User: randym@stratagemsystems.com 
Cc: Randy Mortensen <randy.mort@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Wed, 05 Oct 2016 23:46:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>=20
> =46rom what I gleaned from recent discussions of fetcher errors, this =
is somehow connected with rollout of Python related security fixes to =
various Linux distributions and/or some ...-native recipes.=20
>=20
> It was a bunch of tar balls that are named as mercurial hashes from =
within iced tea rather than the yocto fetch. I worked around it by =
grabbing the tarballs from a different checkout since I didn't have time =
to dig into it.=20
>=20
> It affected a fresh checkout I was building from scratch.=20
>=20
>=20
Thanks for the response. This also happened to me when trying to build =
from scratch.=20
For my clarification, did you already have the tar balls downloaded or =
were you able to download them from a previous (icedtea) commit somehow?=

