Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91148E00CCC; Mon, 28 Nov 2016 22:25:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3567FE00CC4
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 22:25:23 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 28 Nov 2016 22:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,715,1473145200"; d="scan'208";a="1065526085"
Received: from schan1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.189.70])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2016 22:25:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?utf-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Date: Tue, 29 Nov 2016 19:25:18 +1300
Message-ID: <5252764.ahvH5Mh1AP@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.8-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <4cd8d419a2a422c2337763d95ac5d4a@cweb28.nm.nhnsystem.com>
References: <91b5be87e9efb9b3b22d86fa7435762c@cweb29.nm.nhnsystem.com>
	<1515265.VzsD3kXDNN@peggleto-mobl.ger.corp.intel.com>
	<4cd8d419a2a422c2337763d95ac5d4a@cweb28.nm.nhnsystem.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What criteria are categorized? (tmp/work/...)
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
X-List-Received-Date: Tue, 29 Nov 2016 06:25:25 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Tue, 29 Nov 2016 14:08:27 =EC=9C=A4=EC=98=81=EC=84=9D wrote:
> I want to split the package that belongs to host and target in one re=
cipes.

It's actually quite difficult to do that in one recipe, because you hav=
e to=20
set up the environment for the host and target correctly and run the bu=
ild=20
twice. Typically we avoid that pain by creating two recipes, or using=20=

BBCLASSEXTEND =3D "native" to create a native variant within the same r=
ecipe -=20
see meta/recipes-devtools/bison/bison_3.0.4.bb for an example of the la=
tter
(you just need to use the _class-native override to set anything you wa=
nt to=20
set specific to the build host, and if necessary _class-target to set t=
hings=20
specific to the target).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

