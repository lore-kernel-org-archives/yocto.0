Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC401E00CAC; Tue, 22 Sep 2015 00:08:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
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
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5542E005B1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:08:54 -0700 (PDT)
Received: by oiev17 with SMTP id v17so514116oie.1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5TMyUfDM3okIjf9CkK1oJwcaQclLIH+Ombc4lQpjnv0=;
	b=NQ/qFaCvpLz0DbAXXV4ehVfMIXhpwqhYSh6BHp94kRRn+QeMDJHAyYelh3uNT0fkXx
	CcO4XmzX8Hzmr78MzFY3pLZGha51vsbwKLV81w0aT+VEQZ+/zNsiw7asYerqZWYQZXTo
	/JyqXC3iFu6dU7EebukCJFzuEY13+Q1xxWrFFbQnsNaxXUTPWoZkUpUeAlDaScjmnd3H
	QW/LRuDBZnXKNNGhpvCgeTZMSa7LXbPQ/kfjZZ/ZpXyQwgxg3EzTBaNzn2YkFivdUKrD
	6Q7bPPmNURQFdKDtBXIBvRvqyfNhhlhc0RJUvstwIU7IWzU2T7gn/1g+XRQvMeG6ZVOf
	GWkA==
MIME-Version: 1.0
X-Received: by 10.202.50.215 with SMTP id y206mr3263140oiy.48.1442905733175;
	Tue, 22 Sep 2015 00:08:53 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Tue, 22 Sep 2015 00:08:53 -0700 (PDT)
Date: Tue, 22 Sep 2015 12:38:53 +0530
Message-ID: <CAKjpqyLYek-qdQh-ZbrHwZ5xVw-BuLNw3R9Up8Sh1xPwj6y84w@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: yocto@yoctoproject.org
Subject: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 07:08:58 -0000
Content-Type: multipart/alternative; boundary=001a113ce2c0aba16a052050ab54

--001a113ce2c0aba16a052050ab54
Content-Type: text/plain; charset=UTF-8

Hi

While installing gstreamer-1.0 i am facing following errors in do_rootfs:

Configuring xfsprogs-mkfs.
Configuring packagegroup-rdk-oss-mediaserver.
Configuring gst-plugins-bad-linsys.
Configuring gst-plugins-good-isomp4.
Collected errors:
 * opkg_install_cmd: Cannot install package gst-plugins-base-version.

ERROR: Function failed: do_rootfs




Regards
Mayank

--001a113ce2c0aba16a052050ab54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<div><br></div><div>While installing gstreamer-1.0=
 i am facing following errors in do_rootfs:</div><div><br></div><div><div>C=
onfiguring xfsprogs-mkfs.</div><div>Configuring packagegroup-rdk-oss-medias=
erver.</div><div>Configuring gst-plugins-bad-linsys.</div><div>Configuring =
gst-plugins-good-isomp4.</div><div>Collected errors:</div><div>=C2=A0* opkg=
_install_cmd: Cannot install package gst-plugins-base-version.</div><div><b=
r></div><div>ERROR: Function failed: do_rootfs</div></div><div><br></div><d=
iv><br></div><div><br></div><div><br></div><div>Regards</div><div>Mayank</d=
iv></div>

--001a113ce2c0aba16a052050ab54--
