Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA80E00C81; Tue,  3 Sep 2019 00:04:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (f_l_k[at]t-online.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [194.25.134.82 listed in list.dnswl.org]
X-Greylist: delayed 509 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Sep 2019 00:04:10 PDT
Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF3DBE0098A
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 00:04:10 -0700 (PDT)
Received: from fwd08.aul.t-online.de (fwd08.aul.t-online.de [172.20.26.151])
	by mailout05.t-online.de (Postfix) with SMTP id 1ED6E4266D5B
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 08:55:40 +0200 (CEST)
Received: from genericx86-64
	(GvZUF+ZF8h2ET-9V1uzaXqIRo-FGsiWyxJvP3dqPjsOROWCPLprqAwUHIhe0hlCgYk@[79.219.232.14])
	by fwd08.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1i52j4-4b6gue0; Tue, 3 Sep 2019 08:55:38 +0200
Date: Tue, 3 Sep 2019 08:55:33 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20190903085533.e18e9c3c566afe6e9a83f32f@t-online.de>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: GvZUF+ZF8h2ET-9V1uzaXqIRo-FGsiWyxJvP3dqPjsOROWCPLprqAwUHIhe0hlCgYk
X-TOI-MSGID: 0dd093b7-2dbc-423d-909d-8f399175ac7e
Subject: Error at extensible sdk installation
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
X-List-Received-Date: Tue, 03 Sep 2019 07:04:11 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit


Hello,

i built myself an extensible sdk from current master branch. After successful build i tried to install and got the following error:

/home/builder/tuxbox_sdk/tmp/sysroots/x86_64/usr/bin/postinst-docbook-xsl-stylesheets-native-xmlcatalog: line 5: xmlcatalog: command not found

and was able to fix it wby adding "xmlcatalog" to HOSTTOOLS, but i guess thats not the propper way to fix it
 
-- 
Markus Volk <f_l_k@t-online.de>


