Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4445E007A2; Fri, 26 Sep 2014 02:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757B1E00769
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 02:03:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga103.fm.intel.com with ESMTP; 26 Sep 2014 01:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,603,1406617200"; d="scan'208";a="480157292"
Received: from tmediriw-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.182])
	by azsmga001.ch.intel.com with ESMTP; 26 Sep 2014 02:02:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joseph Andrew de la =?ISO-8859-1?Q?Pe=F1a?= <jdelapena@lexmark.com>
Date: Fri, 26 Sep 2014 10:02:42 +0100
Message-ID: <5194477.G6vUEZEebf@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
References: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Wildcard in RDEPENDS when exporting perl modules to SDK
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
X-List-Received-Date: Fri, 26 Sep 2014 09:03:13 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Joseph,

On Friday 26 September 2014 13:37:29 Joseph Andrew de la Pe=F1a wrote:
> I would like to ask how to include all perl modules into nativesdk? I=
 see
> that all RDEPENDS for perl has a prefix of ${PN}-module-perl-*. How c=
an I
> include all perl modules into the nativesdk host package group? Is th=
ere a
> wild card that can be used?

There isn't, but you can just add nativesdk-perl-modules to your SDK (v=
ia=20
appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing - it's=
 a=20
meta-package that will bring in all of the core modules.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

