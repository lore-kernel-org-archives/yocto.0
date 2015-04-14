Return-Path: <heliatck@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D5E7E0095C; Tue, 14 Apr 2015 01:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (heliatck[at]gmail.com)
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
	*      [209.85.216.53 listed in list.dnswl.org]
Received: from mail-vn0-f53.google.com (mail-vn0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCC64E00932
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 01:25:00 -0700 (PDT)
Received: by vnbg7 with SMTP id g7so762242vnb.11
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 01:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kOSsMlrireMYQxHp3iTRHf5b0QI5OQhVUfQEkglMWIg=;
	b=mvAeqPSYTIBiAbN1KJq+a690Nd5MTstDdF06cU1nvGHmI9svP8b12inMii77uFvXWH
	xdiXoXKEY5vkJ/cEwzznZbX5VoDitJ0I1inYXGbik5wo1PgsI1z9EScxRktiB3k4WJ6b
	CdzuufHu8ExottU/NBcoGhnAYPNj3jeFCupiRunGJAnAHyHiz8/WcxEoCDoHqKpNJoKn
	DD8nWVr4o8E+Q4W66CjxEvuNv0mNY7SjUrLh6Opdy+RZbfUGt0yt8uLk6LXieQhnxgsk
	zgvZiQ8CdB7b1/LO2h5hKNOxqog6UjS7EOuEm6TemXun3rGdGsirSwnyVa8RnIT9KeD+
	zOvw==
MIME-Version: 1.0
X-Received: by 10.202.190.134 with SMTP id o128mr6959468oif.111.1428999900037; 
	Tue, 14 Apr 2015 01:25:00 -0700 (PDT)
Received: by 10.202.44.3 with HTTP; Tue, 14 Apr 2015 01:24:59 -0700 (PDT)
Date: Tue, 14 Apr 2015 10:24:59 +0200
Message-ID: <CADUpHn9xaSy=EAmyK2gCyTd6Lgb=qKXwm19KExn1QXroh8w8Kw@mail.gmail.com>
From: heli Atck <heliatck@gmail.com>
To: yocto@yoctoproject.org
Subject: 1.7.1 ADT-installer errors
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
X-List-Received-Date: Tue, 14 Apr 2015 08:25:04 -0000
Content-Type: multipart/alternative; boundary=001a113dccec6d09e00513aaf779

--001a113dccec6d09e00513aaf779
Content-Type: text/plain; charset=UTF-8

Hi, I'm new to Yocto (and embedded Linux for that matter). I was following
the ADT manual to get started with application development. I tried using
the ADT-installer script, but ran into some errors.

Here's the relevant part of the installer log file:






*Creating directory /home/spe/test-yocto/qemux86...Extracting rootfs:
core-image-sato-sdk-qemux86.tar.bz2, using pseudo...tar (child):
./download_image/core-image-sato-sdk-qemux86.tar.bz2: Cannot open: No such
file or directorytar (child): Error is not recoverable: exiting nowtar:
Child returned status 2tar: Error is not recoverable: exiting now*

There are no files in my /download_image directory so I guess they have not
been properly retrieved from the repository. I looked at the repository for
1.7.1 at http://adtrepo.yoctoproject.org/1.7.1/rootfs/qemux86/ and some of
the relevant files seem to be missing.

Or did I mis a step somewhere?

Sammy

--001a113dccec6d09e00513aaf779
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I&#39;m new to Yocto (and embedded Linux for that=
 matter). I was following the ADT manual to get started with application de=
velopment. I tried using the ADT-installer script, but ran into some errors=
. <br><br></div>Here&#39;s the relevant part of the installer log file:<br>=
<div><br><i>Creating directory /home/spe/test-yocto/qemux86...<br>Extractin=
g rootfs: core-image-sato-sdk-qemux86.tar.bz2, using pseudo...<br>tar (chil=
d): ./download_image/core-image-sato-sdk-qemux86.tar.bz2: Cannot open: No s=
uch file or directory<br>tar (child): Error is not recoverable: exiting now=
<br>tar: Child returned status 2<br>tar: Error is not recoverable: exiting =
now</i><br><br></div><div>There are no files in my /download_image director=
y so I guess they have not been properly retrieved from the repository. I l=
ooked at the repository for 1.7.1 at <a href=3D"http://adtrepo.yoctoproject=
.org/1.7.1/rootfs/qemux86/">http://adtrepo.yoctoproject.org/1.7.1/rootfs/qe=
mux86/</a> and some of the relevant files seem to be missing.<br><br></div>=
<div>Or did I mis a step somewhere?<br><br></div><div>Sammy<br></div></div>

--001a113dccec6d09e00513aaf779--
