Return-Path: <randym@stratagemsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70EDEE00905; Tue,  4 Oct 2016 18:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [204.8.75.169 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4278]
X-Greylist: delayed 979 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Oct 2016 18:55:30 PDT
Received: from stsolohosting.com (mx.stsolohosting.com [204.8.75.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C38FDE0089B
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 18:55:30 -0700 (PDT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
	x-ip-name=174.2.14.158; 
Received: from [192.168.0.17] (unverified [174.2.14.158]) 
	by stsolohosting.com (SurgeMail 7.1e) with ESMTP (TLS) id
	1848544-1344334 
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 19:17:32 -0600
From: Randy Mortensen <randym@stratagemsystems.com>
Message-Id: <FD7F0B5E-B86A-4271-B14C-A0516EC3C353@stratagemsystems.com>
Date: Tue, 4 Oct 2016 19:39:09 -0600
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-Authenticated-User: randym@stratagemsystems.com 
X-Mailman-Approved-At: Wed, 05 Oct 2016 07:44:52 -0700
Subject: openjdk failures
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
X-List-Received-Date: Wed, 05 Oct 2016 01:55:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Using Jethro release and attempting to build either openjdk-7 or 8 fails =
when fetching icedtea7-native/2.1.3-r1.0 due to checksum mismatches (on =
all the SRC_URI entries).=20
openjdk-7 did successfully build about a month ago.

Is there a workaround, fix or other suggestions?
Thanks=

