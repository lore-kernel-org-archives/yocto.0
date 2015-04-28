Return-Path: <heliatck@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0DA2E00961; Tue, 28 Apr 2015 05:27:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (heliatck[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8708DE0086D
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 05:27:38 -0700 (PDT)
Received: by obfe9 with SMTP id e9so106587041obf.1
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 05:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RViLk4NQbb6E1LqE9gMiEOzF7L5n01XntPUM9iWtqWE=;
	b=DbsG2dU2l4vX7hYnsj562o2ZSUhD+Kqfcllj43m4M8ySEW068nFrvUF+xgNK1OSdQR
	iPT+r1bjE7RtvqAf9HhXaX/tZTZj9A/l4rv7mIRPRofpbZfXD/PxXOrGGmu8YQRmDrIJ
	/YctFA0KttpuldZHgqKujoRi3iR4/1lXWenfk2XWZ3FWR1Kgw/KUpC8kaz6hVkn3/p0/
	T2H+QYnrITBuckbrSTWJyCgFa9n9tyoYyXhUpZitQMvjQiFrWHLM3o9K1zrkSu5kx1bQ
	nXEDW93snK+JkyfN0n9U/62b5V+wd30LqLNFBJaaOd6uPY7Y3oWfJh2nSOFU95cpHbqD
	QNow==
MIME-Version: 1.0
X-Received: by 10.182.27.34 with SMTP id q2mr14347451obg.72.1430224058155;
	Tue, 28 Apr 2015 05:27:38 -0700 (PDT)
Received: by 10.202.44.3 with HTTP; Tue, 28 Apr 2015 05:27:38 -0700 (PDT)
Date: Tue, 28 Apr 2015 14:27:38 +0200
Message-ID: <CADUpHn_LzEhQ2MHWLiWsV=2iyv-1nTaXe8kpjY=1=oheXPRUoA@mail.gmail.com>
From: heli Atck <heliatck@gmail.com>
To: yocto@yoctoproject.org
Subject: Eclipse Yocto plugin help
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
X-List-Received-Date: Tue, 28 Apr 2015 12:27:42 -0000
Content-Type: multipart/alternative; boundary=089e013a078cef888b0514c7fc3f

--089e013a078cef888b0514c7fc3f
Content-Type: text/plain; charset=UTF-8

Hello,

I just started with embedded linux using yocto.

Can someone point me to a more comprehensive tutorial on application
development using the Eclipse plugin? I've got the basic helloworld example
running on a beaglebone black with TCF.

I would now like to try something else like getting a few LEDs to blink or
driving some peripheral (there's led drivers and I2C drivers in the
beaglebone kernel source). I can't really find any documentation or
examples of an application which shows how to do board specific actions.

I understand the board specific functionality is described in BSPs, but I'm
kind of lost as to how this all fits together when you're actually building
an application. The BSP is a collection of recipes and those recipes point
to source code. But how do I link my source code to the available hardware?
For example, how can I tell the compiler what functionality is available? I
see includes, but they do not appear to be board specific.

Thanks

--089e013a078cef888b0514c7fc3f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div><div>I just started wit=
h embedded linux using yocto.<br></div><div><br></div>Can someone point me =
to a more comprehensive tutorial on application development using the Eclip=
se plugin? I&#39;ve got the basic helloworld example running on a beaglebon=
e black with TCF. <br><br>I would now like to try something else like getti=
ng a few LEDs to blink or driving some peripheral (there&#39;s led drivers =
and I2C drivers in the beaglebone kernel source). I can&#39;t really find a=
ny documentation or examples of an application which shows how to do board =
specific actions.<br><br></div>I understand the board specific functionalit=
y is described in BSPs, but I&#39;m kind of lost as to how this all fits to=
gether when you&#39;re actually building an application. The BSP is a colle=
ction of recipes and those recipes point to source code. But how do I link =
my source code to the available hardware? For example, how can I tell the c=
ompiler what functionality is available? I see includes, but they do not ap=
pear to be board specific.<br><br></div>Thanks <br></div>

--089e013a078cef888b0514c7fc3f--
