Return-Path: <smweaver545@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 248CAE0083A; Tue, 23 Dec 2014 09:14:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smweaver545[at]gmail.com)
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
	*      [209.85.212.177 listed in list.dnswl.org]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D59E002F9
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 09:14:46 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id l15so11475545wiw.4
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 09:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yVC1ypvF68LcGAFcceTw4fAVYegiSXPHEbH1/bfyLQc=;
	b=zJCC+3Vo6SX1jV9USKiCs4fnDBCYjoi3X9oPFtgzyDGweU1ckiDoZauEXfcJVzBk1c
	gYiDglNElV8IfGqNWu8L7cNGS2cuYg4zgtH8pro8tew5+hnv9gF0RBsFs/N8uamMfhD1
	Kmfv73d1/bz4Cdqbwjgohvdt/h4oT0mzrTEd6wk0CMbzAEaXbWEjwoCT20IYsVQ+JLbO
	jCqowHvy5oEHyoLt8X61JHqTOx+kyIicanPk0gTc7j03ynnjSXqnNCwNM1ZaurT13qQ8
	E3qkWEFYkleTIkecoopKir5eE3T+y75aKQuT3BRBHcro0bDkHd7c11kjNz5F5Q+jubTn
	ZwHg==
MIME-Version: 1.0
X-Received: by 10.194.22.101 with SMTP id c5mr54572420wjf.22.1419354885986;
	Tue, 23 Dec 2014 09:14:45 -0800 (PST)
Received: by 10.216.70.79 with HTTP; Tue, 23 Dec 2014 09:14:45 -0800 (PST)
Date: Tue, 23 Dec 2014 17:14:45 +0000
Message-ID: <CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com>
From: Stuart Weaver <smweaver545@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 24 Dec 2014 08:48:33 -0800
Subject: changing grub.cfg per image
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
X-List-Received-Date: Tue, 23 Dec 2014 17:14:51 -0000
Content-Type: multipart/alternative; boundary=047d7b5d44acca1e4e050ae54fc1

--047d7b5d44acca1e4e050ae54fc1
Content-Type: text/plain; charset=UTF-8

Hi All,

I've currently got two yocto images. I would like to have different
grub.cfg files for each image and therefore was wondering what would be the
best way to achieve this?

Currently I am playing with the idea of just changing the APPEND variable
within the machine conf file, however there doesn't seem to be a way of
making this image dependant. Hence, would I have to create two different
machines and change which machine I'm building for everytime I build each
image?

Another idea would be to create my own version of grub-efi.bbclass however
I'm currently unsure of how to choose my custom version within a image file.

If anyone has any suggestions on the best way forward, it would be very
much appreciated!

Regards,
Stuart

--047d7b5d44acca1e4e050ae54fc1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I&#39;ve currently got two yoct=
o images. I would like to have different grub.cfg files for each image and =
therefore was wondering what would be the best way to achieve this?</div><d=
iv><br></div><div>Currently I am playing with the idea of just changing the=
 APPEND variable within the machine conf file, however there doesn&#39;t se=
em to be a way of making this image dependant. Hence, would I have to creat=
e two different machines and change which machine I&#39;m building for ever=
ytime I build each image?</div><div><br></div><div>Another idea would be to=
 create my own version of grub-efi.bbclass however I&#39;m currently unsure=
 of how to choose my custom version within a image file.</div><div><br></di=
v><div>If anyone has any suggestions on the best way forward, it would be v=
ery much appreciated!</div><div><br></div><div>Regards,</div><div>Stuart</d=
iv></div>

--047d7b5d44acca1e4e050ae54fc1--
