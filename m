Return-Path: <lorenz@sigma-star.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B887AE00D88; Tue, 17 Sep 2019 06:08:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43824E00DB6
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 06:08:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 719561810A9A5;
	Tue, 17 Sep 2019 15:08:33 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
	by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id nHMqSbmbAMZI; Tue, 17 Sep 2019 15:08:32 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
	by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id vKbgAOOmRWAL; Tue, 17 Sep 2019 15:08:32 +0200 (CEST)
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
	by lilium.sigma-star.at (Postfix) with ESMTP id 798631810A9A5;
	Tue, 17 Sep 2019 15:08:32 +0200 (CEST)
Date: Tue, 17 Sep 2019 15:08:32 +0200 (CEST)
From: Lorenz Kofler <lorenz@sigma-star.at>
To: yocto@yoctoproject.org
Message-ID: <1286559489.33897.1568725712049.JavaMail.zimbra@sigma-star.at>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF69 (Linux)/8.8.12_GA_3809)
Thread-Index: rRtX2tmErz9xMGW9NA10ctaBK/0pRA==
Thread-Topic: meta-selinux thud compatibility
X-Mailman-Approved-At: Fri, 20 Sep 2019 08:04:32 -0700
Subject: meta-selinux thud compatibility
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
X-List-Received-Date: Tue, 17 Sep 2019 13:08:42 -0000
Content-Type: multipart/alternative; 
	boundary="=_4ab0f5d3-2ff7-4f2d-bc3f-ecf08c3285b0"

--=_4ab0f5d3-2ff7-4f2d-bc3f-ecf08c3285b0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

according to your layer.conf file is the meta-selinux layer compatible with thud, however it did not build successfully. 
I had to revert the patch eafe868098f52b061422bffc13fbc582d687d4ed. 
Is it possible to make a Yocto version dependent .bbappend file? Or maybe just remove compatibility for thud. 

Regard Lorenz Kofler 

--=_4ab0f5d3-2ff7-4f2d-bc3f-ecf08c3285b0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><body><div style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000"><div>Hello,<br data-mce-bogus="1"></div><div><br data-mce-bogus="1"></div><div>according to your layer.conf file is the meta-selinux layer compatible with thud, however it did not build successfully.<br data-mce-bogus="1"></div><div>I had to revert the patch eafe868098f52b061422bffc13fbc582d687d4ed.</div><div>Is it possible to make a Yocto version dependent .bbappend file? Or maybe just remove compatibility for thud.<br data-mce-bogus="1"></div><div><br data-mce-bogus="1"></div><div>Regard Lorenz Kofler<br data-mce-bogus="1"></div></div></body></html>

--=_4ab0f5d3-2ff7-4f2d-bc3f-ecf08c3285b0--
