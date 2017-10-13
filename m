Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC04FE00CD4; Thu, 12 Oct 2017 23:47:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D456E00CCC
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 23:47:02 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id 196so26671082wma.1
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 23:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=Y7koneJI/LB3TqyQLYy7CsU69br+7DGznD6GKPYUCgY=;
	b=pBdvo7Pk2a+cDlk4USGjIldTWksJemt1TtV3NKgbzkvibKXADHXhirROVG8OM/TBMw
	NJFEsmWHgdT5JbOE+VVtN/ReUyTMoNgWovSDzJaoZ+cTxiNemPgRHh/pSj34rsuW/yBE
	8b1A07SyOl1rpuvJSh1ojiYf1kDzrMxR/UBwMx4tCgcwn7LSbDBPwuT7t1WMuNhmPY3+
	bRMuUF4Ft4KcwmPVKVkiUzlWMfQTmPwOZ7FhqOUIvcdroTVrGiLksIoA/ki2pDLNv7ib
	eksW44XO5T6qi44Z4mz5M/vNvxXHZR8xUdtMxnCmaAuk8Bars477C2v8StyhhdDBPGyO
	fp1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=Y7koneJI/LB3TqyQLYy7CsU69br+7DGznD6GKPYUCgY=;
	b=Bp3v9mAOjQaa/sWjW9HXHz6zkgwtWKpbdWhpDK/oedrIVvDA96sDexcBMYJ20GDXff
	oLB0VyUmnVI35QdLa/JtyqqduOVsxkm3b9BGKh4syyTH5Bey+qfllBuMG/jNcjd/zhzh
	KGnE3Ciqo4cDpgqa3pEGFAff+/hVy1AJxmJPoax7ItqEioffya5gglYGfRO8C5ydq5UR
	1sITKvMXA6ilPiYzCXF9A7jeQWgSDolyl1DlhvKOiVFGMoKTVyNxBAYNbLYQexyH2fQS
	7C3GhYf04loL5n0ixyD5ZYa/g1RN3pxM1MKmWQmfDxsZhTFrScrwLFLbxx9To36vVwm1
	KiLQ==
X-Gm-Message-State: AMCzsaUEc6eTR0rorq3UWJ4cpUEIpRqw+x0U2Jrvu5e4OjK717WiLUq4
	1wNR2XoTp8DmY4Z9F7MKVMH1Q0MpI3gvK8A91Ovj6g==
X-Google-Smtp-Source: AOwi7QCBO0QQyQYz1K0G6g9+qj9sS68JuBgWXrW1ZxTu+EA6L9AYtXHV3Wm9386t6aNv9VUAKAp9pDPTUhevGvudmls=
X-Received: by 10.28.46.210 with SMTP id u201mr509149wmu.64.1507877221426;
	Thu, 12 Oct 2017 23:47:01 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.187.206 with HTTP; Thu, 12 Oct 2017 23:46:40 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 12 Oct 2017 23:46:40 -0700
X-Google-Sender-Auth: Wyo63lSSoM35Kj6LFYxmG31ymwU
Message-ID: <CA+YB3rYmLWnWSgBZLWHi_=B3=kvRSVTj7Qdbsa3cvYgnsiJzZA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Yocto Project Developer Day at ELCE in Prague
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
X-List-Received-Date: Fri, 13 Oct 2017 06:47:04 -0000
Content-Type: multipart/alternative; boundary="001a114244ac25f47a055b68069f"

--001a114244ac25f47a055b68069f
Content-Type: text/plain; charset="UTF-8"

The Yocto Project is a Bronze sponsor of the Embedded Linux Conference in
Prague, starting on 23 October, and we also provide a conference add-on as
we have for the past several years - Yocto Project Developer Day.

DevDay is an inexpensive one-day event that enables you to learn about the
project in either the Introductory track, a detailed technical introduction
to the project taught by Linux Foundation professional trainers, or the
Advanced track, a collection of intermediate and advanced level hands-on
presentations taught by maintainers and other principals in the Yocto
Project. This day is a chance for intensive training as well as one-on-one
contact with the developers who create and maintain the Yocto Project.

In addition, each attendee will receive a development board, with three to
choose from. Lunch is provided.

For more details and a link to register, see the DevDay page at

https://www.yoctoproject.org/devday

Even if you don't attend DevDay, be sure to stop and say hello at the booth
at ELCE!

-- 
Jeff Osier-Mixon - Open Source Community Manager, Intel Corporation

--001a114244ac25f47a055b68069f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The Yocto Project is a Bronze sponsor of the Embedded Linu=
x Conference in Prague, starting on 23 October, and we also provide a confe=
rence add-on as we have for the past several years - Yocto Project Develope=
r Day.=C2=A0<div><br></div><div>DevDay is an inexpensive one-day event that=
 enables you to learn about the project in either the Introductory track, a=
 detailed technical introduction to the project taught by Linux Foundation =
professional trainers, or the Advanced track, a collection of intermediate =
and advanced level hands-on presentations taught by maintainers and other p=
rincipals in the Yocto Project. This day is a chance for intensive training=
 as well as one-on-one contact with the developers who create and maintain =
the Yocto Project.</div><div><br></div><div>In addition, each attendee will=
 receive a development board, with three to choose from. Lunch is provided.=
</div><div><br></div><div>For more details and a link to register, see the =
DevDay page at</div><div><br></div><div><a href=3D"https://www.yoctoproject=
.org/devday">https://www.yoctoproject.org/devday</a></div><div><br></div><d=
iv>Even if you don&#39;t attend DevDay, be sure to stop and say hello at th=
e booth at ELCE!</div><div><div><br></div>-- <br><div class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Jeff Osier-Mi=
xon - Open Source Community Manager, Intel Corporation</div></div></div>
</div></div>

--001a114244ac25f47a055b68069f--
