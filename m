Return-Path: <mla@lausch.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B37E007DA; Sun,  3 Jul 2016 04:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1560]
X-Greylist: delayed 530 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Jul 2016 04:11:20 PDT
Received: from gs.bofh.at (gs.bofh.at [213.208.138.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB1CE006D2
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 04:11:20 -0700 (PDT)
Received: from loki.home.lausch.at (unknown
	[IPv6:2001:15c0:66a7:10:e23f:49ff:fe17:1191])
	by gs.bofh.at (Postfix) with ESMTPSA id 0816E9AA
	for <yocto@yoctoproject.org>; Sun,  3 Jul 2016 13:02:27 +0200 (CEST)
Message-ID: <1467543746.19812.9.camel@lausch.at>
From: Michael Lausch <mla@lausch.at>
To: yocto@yoctoproject.org
Date: Sun, 03 Jul 2016 13:02:26 +0200
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: devtool build fails the second time
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
X-List-Received-Date: Sun, 03 Jul 2016 11:11:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,
I want to use `devtool modify <recipe>' to modify the source code and
create patches. <recipe> already contains some source patches.

My workflow looks like this:

devtool modity <recipe>
Fetching, Unpacking, Patching 
all works

devtool build <recipe>


devtool build <recipe>
fails during compile task, that's expected and that's the reason i want
to create the patches.

A second
devtool build <recipe> 
call, immediatly after the first one fails with
do_fetch: Taskhash mismatch 5786499f8bbbc5af0471f764b7796c77 verses
919d46a764e4f9122d53f1b74d37a4b8

The same taskhash error happens for the do_patch task, with different
hash sums.

The do_patch task fails with the error, that the patches have already
been applied. 

what am I doing wrong?


