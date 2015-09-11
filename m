Return-Path: <sander@visser.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DB51E00CAB; Fri, 11 Sep 2015 03:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,RCVD_IN_SORBS_DUL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 RCVD_IN_SORBS_DUL RBL: SORBS: sent directly from
	dynamic IP address
	*      [81.170.142.210 listed in dnsbl.sorbs.net]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2771]
X-Greylist: delayed 376 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Sep 2015 03:39:25 PDT
Received: from mail.visser.se (h-142-210.a357.priv.bahnhof.se [81.170.142.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC4FBE00B63
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 03:39:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.visser.se (Postfix) with ESMTP id 3E0D011F779
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 12:32:36 +0200 (CEST)
Received: from mail.visser.se ([127.0.0.1])
	by localhost (mail.visser.se [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id ms95TAjnMWOq for <yocto@yoctoproject.org>;
	Fri, 11 Sep 2015 12:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.visser.se (Postfix) with ESMTP id CB46611FCDA
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 12:32:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.visser.se
Received: from mail.visser.se ([127.0.0.1])
	by localhost (mail.visser.se [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id P3Zu5GIrbKiQ for <yocto@yoctoproject.org>;
	Fri, 11 Sep 2015 12:32:19 +0200 (CEST)
Received: from mail.visser.se (localhost [127.0.0.1])
	by mail.visser.se (Postfix) with ESMTP id 98B7711F779
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 12:32:19 +0200 (CEST)
Date: Fri, 11 Sep 2015 12:32:19 +0200 (CEST)
From: Sander Visser <sander@visser.se>
To: yocto@yoctoproject.org
Message-ID: <1960827785.38335.1441967539008.JavaMail.zimbra@visser.se>
MIME-Version: 1.0
X-Originating-IP: [192.157.10.100]
X-Mailer: Zimbra 8.6.0_GA_1162 (ZimbraWebClient - IE11 (Win)/8.6.0_GA_1162)
Thread-Topic: libsoup license
Thread-Index: F7+P/LikMo30ObYTQBTRgR5fGgUBcA==
X-Mailman-Approved-At: Fri, 18 Sep 2015 10:13:04 -0700
Subject: libsoup license
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
X-List-Received-Date: Fri, 11 Sep 2015 10:39:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi

Does anyone know why the license is marked LGPL2 and not LGPL2+ in libsoup-2.4_2.50.0.bb? It seems "or (at your option) any later version" is allowed via for example libsoup/soup-requester.h.

Nowhere could I see that the "or (at your option) any later version" is missing.

/Regards Sander

