Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E869E0071E; Mon, 25 Apr 2016 07:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7B4EE00566
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 07:32:31 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id o66so214504850ywc.3
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 07:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=L1vq+MRkkbtFb4w2GAIBpaDrXnVLsBnPyg+O32vFaqs=;
	b=BBsvF7YDrngtk5Uh5CXBcoas6jJpr5ki8RsfTR9sih/rnuaAdW8mttS2SeMXDzNp+a
	U+FmgBu3NEm5Y1vCrBka6dRRtPdQ6VCz/Nd2SltsSu+jcRWWASUnQmHpN2yPGTsOMD4O
	0BeSU/9oBa063n6tKWQVx2RbZdQUqNpwd1THkXbwDm4SHEtzke3zT1HaQr7D3/jg6em2
	5B/gvqV1F/4Z5gukbFrS3Jwt+Wpnd8HXmOqbUtOJ90VK7CygmhqHTgodtzbdZ5Me+F1a
	r7FZMFhi6+BGnwAA/kdbu1IjLaKgEIBeHM1pBtcWsjgNVDUGzu2/zv5NWIQp+H+wxZJF
	sxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=L1vq+MRkkbtFb4w2GAIBpaDrXnVLsBnPyg+O32vFaqs=;
	b=h4nSRAlZleDKvWI+e+qPlSUWI2kRxoMEu6P0GoeOHS7mSSDaVbkjpY0DCc1QDjbNhN
	a8Yb7/moQbomRZJSYc/220p1CjiZ0n0w+W7is9T0Lv5bbbe4m7qRgQt7VYGJccds4YTu
	pmSUYgumYjLyq7qeirVrCSyDX9H9Iaqti4DJ7OaesdnbzexFs7ipTX4aNM4HK2vDbVbR
	guTAx8m2iDiQmfrGZy5DwLP8abvifOj/JP3VluSWcB/F/myw6Zj2+O5i8UvXfTpYl0qK
	aGtILkBfZBnMsKANxvENIkrH98A5MwiB78LRzTbSzy88RFcukl4j0HpJazm0MnA7lvLI
	GY3g==
X-Gm-Message-State: AOPr4FWRJu0bwf4uhz2T8rS4eWNFs3J8WOPXqVYFqg1X6xs1btLtYXEZ/V/dZeOYKlFLrlzXg+C72V6FYYULng==
MIME-Version: 1.0
X-Received: by 10.176.6.161 with SMTP id g30mr9279417uag.142.1461594381960;
	Mon, 25 Apr 2016 07:26:21 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Mon, 25 Apr 2016 07:26:21 -0700 (PDT)
Date: Mon, 25 Apr 2016 11:26:21 -0300
Message-ID: <CAF3SDA6udbSNzcx3to0E8aKVo+q6K02KXcKDMV2n1rbzbdhz5w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Compiling tollchain at x64 to run at x86
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
X-List-Received-Date: Mon, 25 Apr 2016 14:32:37 -0000
Content-Type: multipart/alternative; boundary=94eb2c047ca0f14e2505314ff5c2

--94eb2c047ca0f14e2505314ff5c2
Content-Type: text/plain; charset=UTF-8

Hi everybody

I need to install a toolchain compiled by Yocto but my machine (where the
toolchain will be compiled) is a x64, and the machine where the toolchain
will run is x86. How can I achieve this?

Best regards,
- dhs

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c047ca0f14e2505314ff5c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi everybody<br><br></div>I need to install=
 a toolchain compiled by Yocto but my machine (where the toolchain will be =
compiled) is a x64, and the machine where the toolchain will run is x86. Ho=
w can I achieve this?<br><br></div>Best regards,<br></div><div>- dhs<br></d=
iv><div><div><div><div><br>-- <br><div class=3D"gmail_signature"><div style=
=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><=
i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div></div></div></div></div>

--94eb2c047ca0f14e2505314ff5c2--
