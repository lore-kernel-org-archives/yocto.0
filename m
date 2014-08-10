Return-Path: <vinodmaverickr007@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CD0BE007C8; Sat,  9 Aug 2014 23:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vinodmaverickr007[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.68 listed in list.dnswl.org]
Received: from mail-qa0-f68.google.com (mail-qa0-f68.google.com
	[209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC94BE006AD
	for <yocto@yoctoproject.org>; Sat,  9 Aug 2014 23:16:31 -0700 (PDT)
Received: by mail-qa0-f68.google.com with SMTP id dc16so2159147qab.3
	for <yocto@yoctoproject.org>; Sat, 09 Aug 2014 23:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=h5s8r3GxzL+5xMwmAayNFP79Hsd9T9sb+YHrnBLHK8Q=;
	b=MHFIWcE2Lz8SEhFdKhKCxTldL6yHQWySfChpUyvlrT0vljxbIqiVAmDUMaBVQm5xrC
	XaVdia6loC5+YebiZYGezyhnJZYwFjciqvRQ8N5jQdw9XgH8Xpf5R2//eeo55pGpOt5s
	gWvo1cXgRP/e8vx2xj2QDu8fochA0OoDWwVmz4p+So5Sl/wGWqrlAmIl6yWb28Pij4XB
	LelT+stVRHjS76PhpBIv8jBrVtwMVDwJIpUOvIEWZY2vEJ+o/QMKoraLdlLXt7ML4B62
	NqWD6TqcHvSjenh0dMI/altUerW7vs9iiRzduxl5kznxj9JreUSnd5fWBoVK72FCwQOE
	USSQ==
MIME-Version: 1.0
X-Received: by 10.140.23.134 with SMTP id 6mr37016469qgp.55.1407651390868;
	Sat, 09 Aug 2014 23:16:30 -0700 (PDT)
Received: by 10.140.17.70 with HTTP; Sat, 9 Aug 2014 23:16:30 -0700 (PDT)
Received: by 10.140.17.70 with HTTP; Sat, 9 Aug 2014 23:16:30 -0700 (PDT)
Date: Sun, 10 Aug 2014 11:46:30 +0530
Message-ID: <CAGWLT1TAjjZ015Ajs7FtC9yeOU9eXTw07HTWngyRkCssKkQo7Q@mail.gmail.com>
From: vinod kumar <vinodmaverickr007@gmail.com>
To: yocto@yoctoproject.org
Subject: Build the kernel for I.mx6 board
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
X-List-Received-Date: Sun, 10 Aug 2014 06:16:36 -0000
Content-Type: multipart/alternative; boundary=001a11c123061ed60405004061e9

--001a11c123061ed60405004061e9
Content-Type: text/plain; charset=UTF-8

Hi,

I have build the yocto for I.mx6 board. After building the source code,
kernel is in build directory. So when I run
bitbake linux-imx -c cleanall, it remove the entire kernel source code.

So I have some queries:
1) Is it possible to modify(to made changes) the kernel source code
directly from source directory, without going into build directory.

2) How can I remove the compiled file(.o) file from the kernel source code,
without deleting the entire kernel source code.

--001a11c123061ed60405004061e9
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Hi,</p>
<p dir="ltr">I have build the yocto for I.mx6 board. After building the source code, kernel is in build directory. So when I run<br>
bitbake linux-imx -c cleanall, it remove the entire kernel source code.</p>
<p dir="ltr">So I have some queries:<br>
1) Is it possible to modify(to made changes) the kernel source code directly from source directory, without going into build directory.</p>
<p dir="ltr">2) How can I remove the compiled file(.o) file from the kernel source code, without deleting the entire kernel source code.</p>

--001a11c123061ed60405004061e9--
