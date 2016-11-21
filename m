Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38A1E008E3; Mon, 21 Nov 2016 09:22:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C693E00D07
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 09:22:14 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp6-g21.free.fr (Postfix) with ESMTP id DA7007803F6
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 18:22:10 +0100 (CET)
Date: Mon, 21 Nov 2016 18:22:10 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <580836396.347526093.1479748930824.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <4182204.ZX1RAfnfPO@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: populate_sdk_ext: Unable to locate package nativesdk-buildtools-perl-dummy
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
X-List-Received-Date: Mon, 21 Nov 2016 17:22:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

> From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> Sent: Friday, 18 November, 2016 2:46:07 AM

> I think the issue is this hasn't really been tested with deb
> packaging. You
> have hit a genuine bug though - would you mind filing a bug at
> http://bugzilla.yoctoproject.org?


I still don't fully understand the problem, so I don't know where to file the bug!
But I think apt-native and buildtools-tarball are OK.

Right now I believe this is related to the ARCH value of the dummy debian packages.
It is "allarch" (in the filename and the Packages corresponding summary file)
whereas similar packages have the "all" arch.
I'm trying to understand why there is such a difference...

If someone has some knowledge on the subject to help me, it'd be great :-)

Cheers
Michel

