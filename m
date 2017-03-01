Return-Path: <chai18740449846@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ACC3E0082E; Tue, 28 Feb 2017 23:03:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_DIGITS,
	FROM_LOCAL_HEX, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FROM_LOCAL_DIGITS From: localpart has long digit
	sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chai18740449846[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
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
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9D1E007AD
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 23:03:03 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id s186so56089576qkb.1
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 23:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2kswD2p+i/6j4ZIf7G4s9b82k73uh2qaoz8TTZplcHo=;
	b=MEMFihQ6UwyG/cxATDfy6u80pqvkeMgOKxHzj/kw+9QOpQNfS/xbDJH6INKQWJU+/M
	ajyCYh6jtiSImc2DkC1ZQpgV9t7LHrUxtBIKaHh2G3oSpF1h/I3J0OZrj7pFGDijK/uE
	7EdHB1xe8ugl4zaJVew06AlIm2//STUWuDkrMv28oy7hPa4ePgKytpQeIwTrjwoPkTw1
	ImHvTZ+DhPou5EeTtmEhIorZZAlkgLf9sEAbBfgJ1Rpjyawn6Suu6OC2qFEwLYj+8pF1
	IxmrEh3NB5RfHUsBo3UWvfd6cvzUSnV1z2KehXLfLi/wexcOfUk+7VmyDBWaCJ+st0Q0
	kEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2kswD2p+i/6j4ZIf7G4s9b82k73uh2qaoz8TTZplcHo=;
	b=Y0TRRN6eu5I407kKmt8Y0Mcbm4FLpwqIs9JZX/R3s/mHjBbZZh0quD/Xh7KYGJm1Gi
	w0PIubnY9wNt1vHBpFI4ybDTCTNwV6iyysWYS1vzWOYeMmdnClH/pchcjo0Sf9Qb+csS
	UWDPlMYVSvd4tGu+V2QSjUOQK3qZklbz6w3vHYf1Fngb3g8YZiFbl5U24kxl+sAlJ7OB
	wNruiUdnSHd9vAEfH842oxHk4BxIEeujSehXArWdjBvseuueTxwIizu4jMX4xkU1dbTZ
	rBUCdRBhOcTRiB6IeLSxHrlGHixlNVIG0TujdjceMztnwrDwaOntxSzhZI52J7DW3Z6S
	2MPA==
X-Gm-Message-State: AMke39nBsMzqBO+/DX0nikcFMqCjKfdk+9OTFm+vVbknkGTUnPk9EMLDcwdZU1jKdfXspOhGHaUyKMQixz7t+g==
X-Received: by 10.55.116.70 with SMTP id p67mr7694707qkc.216.1488351782607;
	Tue, 28 Feb 2017 23:03:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.48.203 with HTTP; Tue, 28 Feb 2017 23:03:02 -0800 (PST)
From: Ekko <chai18740449846@gmail.com>
Date: Wed, 1 Mar 2017 15:03:02 +0800
Message-ID: <CAGgoB6aOCuHFOJBcp38YUEcpCvKJ88TvKYhpZ=wO592N=jWBTQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 01 Mar 2017 08:29:24 -0800
Subject: how to use yocto make Individual components
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
X-List-Received-Date: Wed, 01 Mar 2017 07:03:04 -0000
Content-Type: multipart/alternative; boundary=001a114ff26c4dbefc0549a5e772

--001a114ff26c4dbefc0549a5e772
Content-Type: text/plain; charset=UTF-8

i have got an image with yocto & bitbake,now, i want to figure out what
happend with the u-boot and kernel when i run the command "bitbake
target",how does these task modify the source code of u-boot and kernel.

thank you!

--001a114ff26c4dbefc0549a5e772
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i have got an image with yocto &amp; bitbake,now, i w=
ant to figure out what happend with the u-boot and kernel when i run the co=
mmand &quot;bitbake target&quot;,how does these task modify the source code=
 of u-boot and kernel.</div><div><br></div><div>thank you!</div></div>

--001a114ff26c4dbefc0549a5e772--
