Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3599BE00869; Sun, 28 Sep 2014 22:14:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91EA3E00861
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 22:13:51 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q107so11219455qgd.23
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 22:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zeA1txwvyDe9RG18lzU+G3MSS2uhPrH44DN0C8tpcC4=;
	b=Ydwi9++jFKG2yoG8FHBifwwFJzFohFWmNrQScsXeH1PUsBvTnnWWBEUMUBhRMYh7HM
	Zq8+Q/Wec1kDIR2UzEQf3PiMMf/tUv4AyasTGZdzGjSTcmi5nOvxXfLVL2Ul5YjxlKNX
	ty8LArp42pDJvKB5OYOPuFg0I8ssT/RUMpXGvaORNQQcXgBdQxwjwpuBB2t61DYw+pbe
	oDu7hWd3hJof/YktRhRnaydO2WPp3zEfhgYS1BL8EpRAqriYT4eZNljErU2oPmrSzLdr
	V0JtEfE7iOud2zgfLbDNi4QdvSXdreC19v3bltwQgCENqHb+V1qKbJas8LxcOAORWKNA
	LvDA==
MIME-Version: 1.0
X-Received: by 10.140.51.104 with SMTP id t95mr57797994qga.31.1411967630744;
	Sun, 28 Sep 2014 22:13:50 -0700 (PDT)
Received: by 10.140.98.233 with HTTP; Sun, 28 Sep 2014 22:13:50 -0700 (PDT)
Date: Mon, 29 Sep 2014 13:13:50 +0800
Message-ID: <CACjDgANDVFPaH33FkyQTwB+npRJ093G6CPvttoqbnbUT3tLJnA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Daisy with MariaDB 5.5
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
X-List-Received-Date: Mon, 29 Sep 2014 05:14:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

May I ask if there is any recipe for MariaDB 5.5 on the Daisy Branch?  Thanks.

