Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F54E008D4; Sun, 16 Nov 2014 17:38:50 -0800 (PST)
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
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69AC7E00830
	for <yocto@yoctoproject.org>; Sun, 16 Nov 2014 17:38:44 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id gq1so1585121obb.23
	for <yocto@yoctoproject.org>; Sun, 16 Nov 2014 17:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cnstGxbSlrDQ/KGOMN7Oj1eutO0bfq0e2NUkHWHPwEU=;
	b=SqZenQ8kfRxkqk5JUaBL9oWMKTEZ5f76G+kuhXLhk3/JypNSXr0rkErkGj+EOYcldr
	6R/yXwmwqkP+3ygc6xf61oHX3cG6LPjiQbxKB2Pkyn/iz7TUXVWMyJ8RLGcQc2Bkv8mH
	AnmURC0FcTBWHngVGIGUGKWuEB8Ou7CL/ExcbeirW1vTxPgP2kBh6O9P4MVTuMlx1PxS
	p7c73h9f4q8pXf+QO3UdkgWjzTiaeIb27e08LyTVsAx9CmjDX9/jZQSESC/y/1AAF2ue
	PKhAUz61SNVrOT9KVmDfgg+1k/PCg+2q0+9DcA8JQCGnkGww6uW01xAYJqS5VsiZLCJu
	Zdfg==
MIME-Version: 1.0
X-Received: by 10.182.209.36 with SMTP id mj4mr8823175obc.12.1416188323539;
	Sun, 16 Nov 2014 17:38:43 -0800 (PST)
Received: by 10.202.104.89 with HTTP; Sun, 16 Nov 2014 17:38:43 -0800 (PST)
Date: Sun, 16 Nov 2014 19:38:43 -0600
Message-ID: <CAByxTR-jLaqWO++7m8Ek3mqQmhoXAuN0hU-NB7BXLzC0Qj_+aw@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Image Deployment Tool
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
X-List-Received-Date: Mon, 17 Nov 2014 01:38:50 -0000
Content-Type: text/plain; charset=UTF-8

I know hob has it's various image options for the output build. But
only .hddimg and .iso can be deployed to the physical media. So I
wanted to make a application so that other people can use other image
formats and deploy it to USB, CD, SD Card, etc. However I'm fairly new
to the embedded space and I'm still trying to find how other image
formats are placed in storage media. (I know how to write the .hddimg,
.iso, and ext3 to media) Can anyone point me to some tutorials on how
to get some of these images onto media?

