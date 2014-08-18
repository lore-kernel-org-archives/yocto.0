Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5929DE007F6; Sun, 17 Aug 2014 19:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B53ABE007EE
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:23 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id z10so6609485pdj.30
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=xbz5Gz9r8y+jeqBw0XiiujnszVydijkm1DE8yyRfq0M=;
	b=PYRren+FzFWCRiROHmj536h+IpHmxpw1IrEPi9L//ktnnzXTGr5Y3KgFIO1a05+Uy6
	/a9aB4GYuWj1yh6xTyfqPqvQHRwHsNThxvhqt0ItaAwwUFTKshzJR/9NGAYbl0SOaI2B
	4SB4absniOm3/ZbJlXkRtdbUdSMslY/PWHBbmHk11YJIcpJubSZGlXxtTvbQf8SPB9jw
	w6h0+m6j+BK/EjcMbYSbIGYvsHsbN9PNcuZyfXv0b3YoTzffaE0JOcg+ZjjCaQOHEkC4
	cIcsgDvIVWRqbvC4bzEXzNBfm4p0UiKSbeWqGRHLc48oUaHGICYQ7eqf4q8C9rowfIPy
	8hgg==
X-Received: by 10.66.122.175 with SMTP id lt15mr31251486pab.77.1408329742961; 
	Sun, 17 Aug 2014 19:42:22 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qp12sm22517640pdb.80.2014.08.17.19.42.20 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 17 Aug 2014 19:42:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Aug 2014 19:42:16 -0700
Message-Id: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 0/3] Samhain package
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
X-List-Received-Date: Mon, 18 Aug 2014 02:42:30 -0000

I have been sitting on this far to long. Wanted to get it
out before I completely space on it. 

Armin Kuster (3):
  samhain: New ISD package
  samhain: client package
  samhain: server package

 .../samhain/files/samhain-client.default           |   3 +
 recipes-security/samhain/files/samhain-client.init | 122 +++++++++++++++++++++
 .../samhain/files/samhain-server-volatiles         |   1 +
 .../samhain/files/samhain-server.default           |   3 +
 recipes-security/samhain/files/samhain-server.init | 116 ++++++++++++++++++++
 recipes-security/samhain/samhain-client_3.1.1.bb   |  21 ++++
 recipes-security/samhain/samhain-server_3.1.1.bb   |  50 +++++++++
 recipes-security/samhain/samhain.inc               |  82 ++++++++++++++
 8 files changed, 398 insertions(+)
 create mode 100644 recipes-security/samhain/files/samhain-client.default
 create mode 100644 recipes-security/samhain/files/samhain-client.init
 create mode 100644 recipes-security/samhain/files/samhain-server-volatiles
 create mode 100644 recipes-security/samhain/files/samhain-server.default
 create mode 100644 recipes-security/samhain/files/samhain-server.init
 create mode 100644 recipes-security/samhain/samhain-client_3.1.1.bb
 create mode 100644 recipes-security/samhain/samhain-server_3.1.1.bb
 create mode 100644 recipes-security/samhain/samhain.inc

-- 
1.9.1


