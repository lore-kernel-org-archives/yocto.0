Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E40B5E00736; Thu, 24 Jul 2014 13:45:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [84.234.17.171 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F1CBE006C4
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 13:45:46 -0700 (PDT)
Received: from [109.224.171.0] (port=20381
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1XAPtX-0000FN-5q; Thu, 24 Jul 2014 21:45:43 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
Date: Thu, 24 Jul 2014 21:45:41 +0100
To: Yocto Project <yocto@yoctoproject.org>,
 meta-intel@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Subject: Why won't my app use multiple threads under 'valleyisland'?
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
X-List-Received-Date: Thu, 24 Jul 2014 20:45:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a recipe for an application. This has:

1) A main thread;
2) An OpenGL ('X' / EGL) graphics rendering thread created using posix =
threads;
3) As many threads as required from the graphics thread for GStreamer to =
service various pipelines.

On a Cedartrail platform this happily uses multiple cores.

However, if I use the same recipe under a 64-bit valleyisland build =
(daisy) it only ever uses a single core (and virtually grinds to a =
halt).

'top' shows CPU usage for the application never goes above 25% (J1900, =
so four cores available). Running four instances of 'yes' gets the total =
CPU usage to 100%, so all the cores are available.

'taskset' shows that the affinity mask for the application is not =
restricting the set of available cores.

Umm... Any ideas what's going on here?

It looks as if GStreamer and OpenGL are fighting for access to =
something, but the pipelines only render to 'fakesink' and 'appsink'.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




