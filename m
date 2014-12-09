Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFADE00853; Mon,  8 Dec 2014 17:19:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7651AE007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 17:19:32 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 08 Dec 2014 17:17:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,541,1413270000"; d="scan'208";a="650623843"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2014 17:19:17 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.62]) by
	pgsmsx106.gar.corp.intel.com ([169.254.9.17]) with mapi id
	14.03.0195.001; Tue, 9 Dec 2014 09:19:13 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: Jim Rafert <jimr@spectralogic.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQ
Date: Tue, 9 Dec 2014 01:19:13 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A2500FD@PGSMSX101.gar.corp.intel.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Tue, 09 Dec 2014 01:19:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

How did you jam the clang compiler into the SDK tarball?

Chan Kit

-----Original Message-----
From: Jim Rafert [mailto:jimr@spectralogic.com]=20
Sent: Tuesday, December 09, 2014 1:48 AM
To: yocto@yoctoproject.org; Yu, Chan KitX
Subject: Building clang with Yocto

Hello Chan,

I have been working to a similar goal, to include clang in the toolchain to=
 be used for compiling applications to run on the target.  Using clang to c=
ompile the OS and kernel are not required or  desired by me. =20

You may get some insight from the thread I started in November on the subje=
ct.  I'm not sure that this contains all of the posts on the subject. You m=
ay want to search the archive for November.

I have not been successful yet in getting clang actually packaged in the to=
olchain, in the Yocto build,  but at least it builds.  I have a postbuild s=
cript that takes the built clang compiler from the work directory and jams =
it into the SDK tarball that is embedded in the sdk install script.

-Jim-


________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of yocto-request@yoctoproject.org [yocto-request@yoctoproject.org]
Sent: Monday, December 08, 2014 2:56 AM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 51, Issue 26

Send yocto mailing list submissions to
        yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
        https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
        yocto-request@yoctoproject.org

You can reach the person managing the list at
        yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."

