Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3003E00901; Tue, 30 Oct 2018 08:51:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E2EE003DB
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 08:51:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id A41C5F6E84;
	Tue, 30 Oct 2018 08:51:35 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TLvS66ReW89t; Tue, 30 Oct 2018 08:51:34 -0700 (PDT)
Received: from Jakobs-Air.localdomain (h-244-80.A137.corp.bahnhof.se
	[176.10.244.80])
	by smtp1.genivi.org (Postfix) with ESMTPSA id D2833F6E20;
	Tue, 30 Oct 2018 08:51:33 -0700 (PDT)
Message-ID: <1540914685.12542.214.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Organization: GENIVI Alliance
Date: Tue, 30 Oct 2018 16:51:25 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Fetcher failure on mpfr 4.0.1
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
X-List-Received-Date: Tue, 30 Oct 2018 15:51:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'm right now seeing a fetcher failure on mpfr-4.0.1.tar.xz

As far as mirrors I believe we rely on this through the inclusion of
poky.conf?

http://downloads.yoctoproject.org/mirror/sources/

but we also add our own (PRE)MIRRORS in the conf files.  Regardless of the
project, it's not enough to rely on an external source.  But unfortunately I
found our own mirror was out-of-date and not updated and I have to look into
what's needed to fix.  (Our build agents generally cache the sources locally
 on disk as well, so that's why the network mirror is rarely hit.)

Now, looking at yoctoproject downloads above, the mpfr-4.0.1 tarball seems
missing there too.  This led me to two questions:

1.  First, is there a point to posting fetcher failures to this list or is
that just noise?

2. Nonetheless it led me ask what the normal situation is for updating the
yoctoproject.org mirror?  Maybe it's deliberately not done for the latest
master, only for released versions?  (Although thud branch now exists...)

Just for reference, looks like the mpfr recipe was updated on poky
master/thud at:

    470327eb1f5 (Khem Raj 2018-08-15)

Best Regards
- Gunnar



