Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE862E00AD8; Mon, 26 Nov 2018 03:57:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 169D1E0097C
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:57:37 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id p17so13318268lfh.4
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5XKxAqajtnkSovG+1hd3NTBtd0llT+ZY/pyNwKXCtvA=;
	b=Omu+yYFm92K2uNYYGhJdQTDtsGXZ6XCOBnTyquOPTzU7xoddZSm6jEl+cgiXkiFs4l
	FHT3IDZe6AbeOr6vtN3llBXLia0pJsQMXcw/7zhJVqr656l3xjefo9ucyI3Dn3t6jc2O
	htpyLhvIgZKSmVbszOWO2/0Q9HCkmJIhGCw5QY85AJ4RzL+nVmgX6neW/jtuJn6VoMFW
	1oCsyOHx+hNuqrxTG9R70sbVYimARSGkpoj+7ofWVUu4HUmiBhei6fAs4Eykcbw5bSAc
	mdKR+0+F9w4Rmdecm2RSJ5UNaYVU4yGX9gPR9epMXbxI0vS7Qf0uGng/PIIcOS7WpXDF
	MaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5XKxAqajtnkSovG+1hd3NTBtd0llT+ZY/pyNwKXCtvA=;
	b=TAO+/gG+MkI1yNN+hP2N5LABtOu9Svm4J8+e/IZfZypdglkHiDwdW15lAWQjwF/nfU
	h6g0TOiUAP/91hlmCYy040Sa687+rTqNSOTTu+VBx6ek94Us56WfcmTF99L8JFmdsKzS
	e5hM7OTa2zbQS0eTGe3JK6zN13wp9BtlzYoYhaqeg3H0sxL2Hnr0zlSmv/Sx4Zu9UJ+l
	uLH4+EK6LVZSKzo5iYr3KnF8hkh5hb6fsl5Tv+RjoEGRSVqLV/ZbGR5kuxsTPmm/Pi8O
	Fx1eEioT6x0+YXvzOwSr/h5bqR9dcBLYzolPN+DsX/D8+fSXuWofjYgYllWDqvRN8Hl6
	1NTw==
X-Gm-Message-State: AGRZ1gJIddDYC9RXNCf6+aVkcC7d63iohughe/XNWewonCllF61jpfK5
	lYlGsQqvLy9h3cnZ/4KgUW/PTezMUc6+Nnsa0GSF/A==
X-Google-Smtp-Source: AJdET5dEJQ9EE60C9PQFo99bTT9D0PaHW2ropO9XcqY0DFLXgv2kdXztI+hSP/o6ZVlbTgC2S6XAOxXZ1wJaTHVqc20=
X-Received: by 2002:a19:945b:: with SMTP id w88mr14859027lfd.15.1543233456494; 
	Mon, 26 Nov 2018 03:57:36 -0800 (PST)
MIME-Version: 1.0
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Mon, 26 Nov 2018 11:57:23 +0000
Message-ID: <CABj1EzHdrsR71h4UGCg2P0EutEhw8TkZL=oZjEUzZazsj51qCg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Date/Time Update Without NTP
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
X-List-Received-Date: Mon, 26 Nov 2018 11:57:38 -0000
Content-Type: multipart/alternative; boundary="000000000000fae580057b9009bd"

--000000000000fae580057b9009bd
Content-Type: text/plain; charset="UTF-8"

Hi There,

I'm using yocto sumo with systemd, and have an issue where I can't identify
which service is grabbing time from the ethernet based network.

If I start the unit without a network connection, the time is reported as
EPOC. As soon as I connect the network, the date/time is updated. However,
there isn't anything in the logs that I can see which tells details of the
service which has updated time. Also, the ntpd binary is not installed.

Is there a time service, other than NTP, which would typically be enabled
on Yocto builds?

Cheers,
Donal

--000000000000fae580057b9009bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi There,<div><br><div>I&#39;m using yocto sumo with syste=
md, and have an issue where I can&#39;t identify which service is grabbing =
time from the ethernet based network.</div><div><br></div><div>If I start t=
he unit without a network connection, the time is reported as EPOC. As soon=
 as I connect the network, the date/time is updated. However, there isn&#39=
;t anything in the logs that I can see which tells details of the service w=
hich has updated time. Also, the ntpd binary is not installed.</div><div><b=
r></div><div>Is there a time service, other than NTP, which would typically=
 be enabled on Yocto builds?</div><div><br></div><div>Cheers,</div><div>Don=
al</div><div><br></div></div></div>

--000000000000fae580057b9009bd--
