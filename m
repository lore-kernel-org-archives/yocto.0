Return-Path: <Peter.Seebach@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F68EE009C1; Wed, 23 Sep 2015 11:27:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D241E009C1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 11:27:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8NIR9FX029574
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 11:27:09 -0700 (PDT)
Received: from seebs-worktop (172.25.40.228) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Wed, 23 Sep 2015 11:27:08 -0700
Date: Wed, 23 Sep 2015 13:27:07 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <20150923132707.4b1dfc77@seebs-worktop>
X-Mailer: Claws Mail 3.9.3 (GTK+ 2.24.23; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: [meta-mingw] gcc 5.2 partial patches
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
X-List-Received-Date: Wed, 23 Sep 2015 18:27:15 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

So I've got patches for meta-mingw which make it fail in an interesting way
instead of in a boring way.

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=seebs/gcc52gw

With these, we get past all the obvious not-even-applying, and blow up
because one of the mingw headers complains that it can't be compiled except
for WIN32 targets. Have not further explored yet.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

