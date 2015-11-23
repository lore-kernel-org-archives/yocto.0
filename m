Return-Path: <emrahislek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2ABDE00AD9; Mon, 23 Nov 2015 00:22:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (emrahislek[at]gmail.com)
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
	*      [209.85.213.53 listed in list.dnswl.org]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93859E00AB7
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 00:22:12 -0800 (PST)
Received: by vkha189 with SMTP id a189so32323920vkh.2
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 00:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=i6Sqgf9DiwjXcAtNQ0LOYKRb9drD0K5Fh0vBlijz99g=;
	b=yBPUZeWSZwhVi5ilboWmqdrWAQxf4G6/MC3boNqSAAcswHLW0WOFKc/ebZWSSXte8n
	22monR+q9baGIeEuwl2iMEi/b7LpT+NVU/Lc80J/jbV7zomsbPTYJkaEQT12B6h1Jw8H
	xMgH+Q2wFr4GM8BUbzEviy6Iqb/4pkOM5XCQXO5A1ot5heW5i1Lk0DB3crVddi0r1l1S
	AUzk77N6YUAGTRk8KvgynIM0OkOrit55KHjNkIiYCz4Kl0VqlUhp45Ow5VT/DJV5wid/
	zfuyMUI3wt8qaWBCshQ+a/nJjIHW9LuIpygsE7FZeIHhsqG3z2xDGJ3Lp+mmUDqU/pW4
	epkQ==
X-Received: by 10.31.8.147 with SMTP id 141mr17074879vki.33.1448266931738;
	Mon, 23 Nov 2015 00:22:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.25.3 with HTTP; Mon, 23 Nov 2015 00:21:52 -0800 (PST)
From: =?UTF-8?B?RW1yYWggxLDFn2xlaw==?= <emrahislek@gmail.com>
Date: Mon, 23 Nov 2015 10:21:52 +0200
Message-ID: <CAJxhh45U7k=3b+4qNx5VbQu5KP+hqVyvnsQNwg9f_FpR1FVCAQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: I2C driver problem
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
X-List-Received-Date: Mon, 23 Nov 2015 08:22:15 -0000
Content-Type: multipart/alternative; boundary=001a1144f130019e44052530ecf3

--001a1144f130019e44052530ecf3
Content-Type: text/plain; charset=UTF-8

Hi,
I generated yocto core-image-minimal for microzed board. My problem is that
there is no i2c bus under /dev or other places. I installed i2c-tools but
this is not working without port. Could you help me? How can I add i2c
under /dev?
Thanks.

---------------------------------------------------------------
Emrah Islek

E-mail : emrahislek@gmail.com

--001a1144f130019e44052530ecf3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I generated yocto core-image-minimal for microzed =
board. My problem is that there is no i2c bus under /dev or other places. I=
 installed i2c-tools but this is not working without port. Could you help m=
e? How can I add i2c under /dev?</div><div>Thanks.</div><div><div><br></div=
><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">----=
-----------------------------------------------------------<br>Emrah Islek<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">E-mail : <a href=3D"mailto=
:emrahislek@gmail.com" target=3D"_blank">emrahislek@gmail.com</a></div></di=
v></div></div>
</div></div>

--001a1144f130019e44052530ecf3--
