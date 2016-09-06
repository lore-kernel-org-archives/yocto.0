Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C5DEE00C6A; Tue,  6 Sep 2016 01:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.83 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3604]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Sep 2016 01:59:09 PDT
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E0E9E00C6A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 01:59:09 -0700 (PDT)
Received: from fwd12.aul.t-online.de (fwd12.aul.t-online.de [172.20.26.241])
	by mailout07.t-online.de (Postfix) with SMTP id 51F7D4242904
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 10:52:26 +0200 (CEST)
Received: from [192.168.2.113]
	(JlOYAOZeQhqHhBMroZHdavMk-s2eC6rNv0EqOXsQ4OJlaNDmrlyGg+RJSRUL5YFZ6C@[84.188.177.208])
	by fwd12.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1bhC7E-0cgfcO0; Tue, 6 Sep 2016 10:52:24 +0200
From: Markus Volk <f_l_k@t-online.de>
Message-Id: <4CC0AD41-6C9A-4A21-9854-C201DC44D582@t-online.de>
Date: Tue, 6 Sep 2016 10:52:23 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-ID: JlOYAOZeQhqHhBMroZHdavMk-s2eC6rNv0EqOXsQ4OJlaNDmrlyGg+RJSRUL5YFZ6C
X-TOI-MSGID: ac82b667-8b5f-4f3f-8448-310580d89d92
Subject: infinite build loop
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
X-List-Received-Date: Tue, 06 Sep 2016 08:59:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

With latest changes in the master tree i=C2=B4m getting infinite build =
loops at task do_package for recipes that  contain a line like this in =
do_install:

echo "whatever"              > ${D}/whatever=20

can anyone confirm this ?

regards
Markus=

