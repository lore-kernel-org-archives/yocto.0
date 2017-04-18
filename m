Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673CFE00867; Tue, 18 Apr 2017 05:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D51FDE00826
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 05:24:39 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id a1so89999745uaf.3
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 05:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dRmtJePxXylpqb1hYYkkCqCHUjEGt31Yh+sqe+rklVY=;
	b=qs1h2XY9vrifZouijpqkXWyyrf4lt1WV+UC7uDv48HDZBda/iD+JQIseMGgA/wt+EJ
	IVLmorpY2cABIDMy178H0xRItOuVegSzyvmdRZ+7bPlx2pkNXHFvbC/R0pcQkxepHQbS
	1qhx4YKtl1c1eIFTgA6YUVcmF45HLiQ93QRNqhxcERD2or6AocPjZUWomQc5BaYg931a
	swsTG+6yScxq+6gBkod9S/q2qsLzt6ibH0XW6gsePGBjIflNH6HOjJSShc8Bt/QzDoFX
	9qujtHXRW5xEpLuxZKIdS/NnoBi0uBqhDTkXycKCSaDcZqmD2lhAihLjAARpSWmYkmSQ
	E2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dRmtJePxXylpqb1hYYkkCqCHUjEGt31Yh+sqe+rklVY=;
	b=ls2kqkuxPyHaPDW84Mt6CLAxzhZQPc0ZqNrz6cke0CNdbSaNJYV3YkO5oQVNRodYMu
	3NMOhd1TijDfcSdN0Ktatexz33MuO+WzlK9WWnEf358s4BM94nH4bBuH4sc5Ol3uXdvD
	PNJ9haD6ScXnisnZbO5YtwnpXOIvZRAX1/DiB32ePv9x0byTcahRoY7nG8OMoZiSLcv0
	7aReDFcF28JMxcRxfDbRdrE3Bp8/W1PSgJZwurYs1zGtrb2R3LEVdmoMX2DKAxsNu+JI
	UfqiHrEzR8kLyFFh/IXZ3whaky2kYZtn/k0p5Hww2rzIo29/OJARp+U640gAct0pubCw
	B1IQ==
X-Gm-Message-State: AN3rC/6lBS5qyzFygDNqIYN+eo6CH+sc5kooDOTcOc+BhVsBE/s5KhM2
	wYJo7PydUwC8P5x+KEqsWSzWuI/Vrw==
X-Received: by 10.176.78.29 with SMTP id g29mr6613089uah.55.1492518278820;
	Tue, 18 Apr 2017 05:24:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Tue, 18 Apr 2017 05:24:38 -0700 (PDT)
From: Weng Josn <sadlife1990@gmail.com>
Date: Tue, 18 Apr 2017 15:24:38 +0300
Message-ID: <CAAHuHfyWegZ3OYy97i_+r1DXQ0v_YsozhV7VLeqwepiUWnZ1kg@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Yocto cups serial port support
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
X-List-Received-Date: Tue, 18 Apr 2017 12:24:40 -0000
Content-Type: multipart/alternative; boundary=f40304378a6cd47a55054d6ffdbd

--f40304378a6cd47a55054d6ffdbd
Content-Type: text/plain; charset=UTF-8

Hello,


I checked /usr/lib/cups/backend not inclued "serial" backend.
How can enable cups serial port ?



Thanks.

--f40304378a6cd47a55054d6ffdbd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div><br></div><div>I checked=C2=A0/u=
sr/lib/cups/backend not inclued &quot;serial&quot; backend.<br></div><div>H=
ow can enable cups serial port ?</div><div><br></div><div><br></div><div><b=
r></div><div>Thanks.</div></div>

--f40304378a6cd47a55054d6ffdbd--
