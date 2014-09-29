Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D4A8E00873; Mon, 29 Sep 2014 01:39:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8FAEE00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 01:39:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 29 Sep 2014 01:37:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,618,1406617200"; d="scan'208";a="580519921"
Received: from marksmed-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.173])
	by orsmga001.jf.intel.com with ESMTP; 29 Sep 2014 01:39:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joseph Andrew de la =?ISO-8859-1?Q?Pe=F1a?= <jdelapena@lexmark.com>
Date: Mon, 29 Sep 2014 09:39:36 +0100
Message-ID: <2647971.Ts2ODotvJE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.3-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAJrRHk58ivpRq3GD8XbNp9YOCdivLhCK_36=p16RgHqR3ZO2GA@mail.gmail.com>
References: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
	<5194477.G6vUEZEebf@peggleto-mobl5.ger.corp.intel.com>
	<CAJrRHk58ivpRq3GD8XbNp9YOCdivLhCK_36=p16RgHqR3ZO2GA@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Sep 2014 08:39:43 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 29 September 2014 08:09:33 Joseph Andrew de la Pe=F1a wrote:
> On Fri, Sep 26, 2014 at 5:02 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > There isn't, but you can just add nativesdk-perl-modules to your SD=
K (via
> > appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing - =
it's a
> > meta-package that will bring in all of the core modules.
>
> I would like to ask why you specifically noted the TOOLCHAIN_TARGET_T=
ASK
> and not the TOOLCHAIN_HOST_TASK?
> Why are you inclined to putting it into the target sysroot and not th=
e host
> sysroot? Or plainly what are the guidelines on where to put the unit =
to
> that toolchain task?

Actually I had this wrong, it should be TOOLCHAIN_HOST_TASK - it's not =
a=20
target package. Where to put a particular package in the two parts of t=
he SDK=20
depends on where the package is normally designed to run - the build ho=
st or=20
the target.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

