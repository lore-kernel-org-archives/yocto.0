Return-Path: <Bjoern.Stenberg@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id ABABDE0157B
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2013 04:30:13 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.318.1;
	Mon, 12 Aug 2013 13:30:11 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4331)	id 4B16428B66D;
	Mon, 12 Aug 2013 13:30:11 +0200 (CEST)
Date: Mon, 12 Aug 2013 13:30:11 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20130812113011.GF12589@sestofb10.enea.se>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<20130812091145.GE12589@sestofb10.enea.se>
	<3375908.sLNS3qEgcB@helios>
MIME-Version: 1.0
In-Reply-To: <3375908.sLNS3qEgcB@helios>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: bjst@enea.com does not designate
	permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Mon, 12 Aug 2013 11:30:19 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Paul Eggleton wrote:
> Right, that's what we would be aiming for. Perhaps you could talk a littl=
e
> bit about how you manage your hardware testing and any additional softwar=
e
> and scripts you make use of there?

We run our tests from buildbot, using an expect script to allocate the righ=
t serial port (and wait if it is busy), fetch the built files, unpack the r=
ootfs to an NFS disk, reset the board, tftp the kernel and dtb, boot the ke=
rnel and start the test suite.

A line-based timeout is used for for the test suites, meaning that the time=
out is reset for each new line of output. This allows us to handle very lon=
g-running test cases while still being able detect hung tests rather quickl=
y.

Multiple images and test suites are built and ran in parallell, which is wh=
y the script waits for the serial port. One of the test suites we run is pt=
est-runner.

The output of all tests is parsed and stored in a database, cross-reference=
d with the buildbot build info. We have written an extension to the buildbo=
t web interface presenting the test results as they relate to each build.

--=20
Bj=F6rn

