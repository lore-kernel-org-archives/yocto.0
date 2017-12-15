Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71EE8E00D98; Thu, 14 Dec 2017 20:43:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1613DE00AD7
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 20:43:11 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id g7so5035162pgs.0
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 20:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=d7Ehin8643fu5QA+VfJIkKu6BwJZH6qFq1ixGHaAWFk=;
	b=e7ql9cuDcEa0NlGL19h9N74aB0+6IiN9AHVsgMVY+ts45hPv/HIgwL/t0IWUQBvXz0
	Dzonc23HOKZ3LYYCWM8TRzifCFhA9ProMziRp7lxQGbr59RochDw5bYHAhDO8mu2OCv0
	oCaCv0pUIQWRzUuhPP+2zAXi0Okp901mfaffG+ZgMbA5S/76+55n2ddssDbv7M/F69rA
	oLuYuA3Q8g45n/GOk6SPprCLr9a78pEZbZf32a0moBRceR+IWay6DUiH6n+8qOydZojV
	+Ay21V83J8rm9ncctyGEJYffGtvLGbCY8qJb8YScU/o5kG6oNf2xDhgIwmCEeLpIWOck
	bnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=d7Ehin8643fu5QA+VfJIkKu6BwJZH6qFq1ixGHaAWFk=;
	b=PqsS7Yd9nCf5V99NsDPTYLb+c5hLvYh18kQdwcSblAy06Imuzy8mkQGcE7PGb33T6K
	OWHsTcDJ/KmxTcEElyOiONQtOowwaiZaRQnEbLhtDkk9IylWeFsrAL8aojHKyuL3FyyA
	IR4V6lalyaSMbVdY3IUVpEeYgundowHuZKdCFHxX2nvG0RYFlkT9gkjP2KnjcLYwrPKp
	ujI3p8QoVDRM49ZbE71nZZD9ZExuB1ljLzmWRdMgnSqsjH+oHObKDo9fzTiLR5DVLNTM
	4b1MOuc7ZSSpLPydmLy+RNsyT8AkN+oi/vakUZOMklKBnHNGHpUijTb3js0Fgp+NmVZz
	T7SA==
X-Gm-Message-State: AKGB3mIRY9dial+9PGhxP5ZlsHRMbJOOmlQQkeWK/7VgHH5K8uucuuzT
	8Gk4dvSpUPGA1hg2JsoXznu/9MvFVlvEsSKGZ9E=
X-Google-Smtp-Source: ACJfBovbVLSlGHZFCNUv3toMHsATEKExmt1bvMs0YQPevfM90UslvSBset794RBbNvc6rRSNy2ETx3R+ufdfda/6AXU=
X-Received: by 10.99.42.210 with SMTP id q201mr10481307pgq.7.1513312990751;
	Thu, 14 Dec 2017 20:43:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Thu, 14 Dec 2017 20:43:10 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Fri, 15 Dec 2017 05:43:10 +0100
Message-ID: <CAPb0b+OoUvTRRAO-ViEkEt=qnERAyZ9X+mnQxkExH22eCuvGVw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Bluetooth
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
X-List-Received-Date: Fri, 15 Dec 2017 04:43:12 -0000
Content-Type: multipart/alternative; boundary="001a1146df143f7140056059a3af"

--001a1146df143f7140056059a3af
Content-Type: text/plain; charset="UTF-8"

hello

i ve been strugggeling since couple of days with raspberry pi 0 board and
can not figure out how to enable the chip, whether it is enabled by default
or it needs some intervention. I generated the rpi-basic-image and tested
with the hiconfigure -a but the chip is not detected.

Any body had similar issue and got it to solve?

--001a1146df143f7140056059a3af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hello<br><br></div>i ve been strugggeling since =
couple of days with raspberry pi 0 board and can not figure out how to enab=
le the chip, whether it is enabled by default or it needs some intervention=
. I generated the rpi-basic-image and tested with the hiconfigure -a but th=
e chip is not detected.<br><br></div>Any body had similar issue and got it =
to solve?<br></div>

--001a1146df143f7140056059a3af--
