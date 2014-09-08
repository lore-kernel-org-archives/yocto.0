Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 884D8E004F5; Sun,  7 Sep 2014 21:21:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A4CE0034C;
	Sun,  7 Sep 2014 21:21:29 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id a108so1361827qge.14
	for <multiple recipients>; Sun, 07 Sep 2014 21:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xHBVbuCXfaNqJRn3ZPCNXU9SenHSmZqtp+Up3udAgZo=;
	b=oCNqvM4Xtx5GXfAIF1lHJDqGvdQ7uLaq6tLgzCx6ua1UfIaKhUiXJFmHzcqHXEoERI
	r89nRaHaheQ+ISExv3E6xhKAvESLSXhiekn55CfY3r8IWsieALlRkxfpPkQFI0IpzoLr
	CETkWYHB2PqEQ12WRs5hJTNikKDyvfYYSto+misigNrbZgCSct5Ns8rWxR+MBvHscqW7
	2v+bVRQNiXHqvbok6JRvGhxQ2zAQVCkRO//QBesfpAXWNHXkUYIBwm9/EUJvUF8jfdGP
	qR/gOPjTeeQRhTiF/FWZzkMYM8QMac5tbr96ZVTIFo901qrd0k8+TFtJLjp6pTBZaukH
	tWhg==
MIME-Version: 1.0
X-Received: by 10.229.202.199 with SMTP id ff7mr38150315qcb.9.1410150088426;
	Sun, 07 Sep 2014 21:21:28 -0700 (PDT)
Received: by 10.224.166.198 with HTTP; Sun, 7 Sep 2014 21:21:28 -0700 (PDT)
Date: Mon, 8 Sep 2014 09:51:28 +0530
Message-ID: <CAP3RZogHv9R=+fG_e3xHeZ-L2WJgWwGMRAqi3UaBYh_dWYsDgg@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building own kernel instead of taking from git
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
X-List-Received-Date: Mon, 08 Sep 2014 04:21:36 -0000
Content-Type: text/plain; charset=UTF-8

I want to build my kernel source code in yocto. For that i have
modified the required linux-imx.inc file.

Inside that i have given kernel source directory in SRC_URI and S variable.

Is this approach fine, or is there any better solution i can get?

