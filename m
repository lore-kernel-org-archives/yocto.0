Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02DF0E0072A; Wed, 17 Dec 2014 13:00:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95531E00344
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 13:00:48 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id wp4so5903726obc.11
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 13:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version
	:content-transfer-encoding;
	bh=RAnxezRoGtWBP4Kq8R9fwPzI65dtj/51mTKjw3FwCyo=;
	b=PZuHfq6bV1i8st4uDVZMZkeJk+3eiIrXxpYQuuN8yVuiNKpLwCufFuuKQSITFUoM7F
	QJHgajEPstCgDxcSc7/rW0y1RG655siWfognvaAe+iYLdxcWSF1I0RKUKVzIR+Oegvr0
	fzT8S1q4ebJWGk61chXx13487mgupD6vtdXOK0h/uw80rXwE5XzdvEM0ATf27nGGNg3h
	qCGZt0r1GveAmoyDcfwqDJkWMtcb0vfQOe1ZhpQhpdXExo5l3EokXzBLt1Mhe95c0eh8
	VGKoIFLpRzLdIHT6Az0MzRcZ+biuICH7zW1RbIkJ5gGTtvikNDd3hrozUXIHHGDg2f5K
	gFtQ==
X-Received: by 10.202.84.147 with SMTP id i141mr25828897oib.56.1418850047266; 
	Wed, 17 Dec 2014 13:00:47 -0800 (PST)
Received: from localhost.localdomain
	(r74-192-163-173.gtwncmta01.grtntx.tl.dh.suddenlink.net.
	[74.192.163.173])
	by mx.google.com with ESMTPSA id xs2sm960689obc.7.2014.12.17.13.00.46
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 Dec 2014 13:00:46 -0800 (PST)
Message-ID: <1418850045.7263.7.camel@gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 17 Dec 2014 15:00:45 -0600
X-Mailer: Evolution 3.12.8 (3.12.8-1.fc21) 
Mime-Version: 1.0
Subject: Using YP for non-embedded purposes.
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
X-List-Received-Date: Wed, 17 Dec 2014 21:00:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello everyone,

I am developing a linux distro for small businesses and I am wanting to
have a easy to use tool to develop that OS. However with the main-line
distros there is a lot of hoops to jump over to get to that point
(re-branding, remove certain software, etc). So I was wondering is it
possible to use the tool and it's documentation to develop a
non-embedded linux using YP?

Thank you,
John


