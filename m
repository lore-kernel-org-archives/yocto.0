Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55F22E0084F; Fri, 20 Feb 2015 04:23:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0012]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Feb 2015 04:23:51 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 740CBE00831
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 04:23:51 -0800 (PST)
Received: from mail-wg0-f45.google.com ([74.125.82.45]) by mail.gmx.com
	(mrgmx002) with ESMTPSA (Nemesis) id 0MdKgV-1Y6QTd27LX-00IUMI for
	<yocto@yoctoproject.org>; Fri, 20 Feb 2015 13:18:46 +0100
Received: by mail-wg0-f45.google.com with SMTP id k14so12854943wgh.4
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 04:18:45 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.180.98.105 with SMTP id eh9mr15632533wib.51.1424434725940;
	Fri, 20 Feb 2015 04:18:45 -0800 (PST)
Received: by 10.194.39.169 with HTTP; Fri, 20 Feb 2015 04:18:45 -0800 (PST)
Date: Fri, 20 Feb 2015 13:18:45 +0100
Message-ID: <CAAKMwipcazbOT9_u=Y88fbw5UHEBaCDTPMJb56Jvi0anem1RcQ@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:xrPExMpd8rcADzrfGgRsbqZzNAcKfwbgAXanBcSY9DgVBF5oUVP
	eanKsF5NCxO0TScF9cYTcpELd0CGJs9U2AL3ANFf8yxTVWGBeUT0VVxDo9gVaWSWQ1mYeeF
	cpojjkAZVt+R352QYo42S+Yozj3cMtZQxYNxLRvXgDcVLBCzh9rocgrS6RV+apd0wHFLPEg
	WaVdqE1iwKUgBsQwq6J7g==
X-UI-Out-Filterresults: notjunk:1;
Subject: Edit project specific config files of other recipe like /etc/ssh/ssh_config from openssh
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Feb 2015 12:23:55 -0000
Content-Type: multipart/alternative; boundary=089e0115fba8d878a5050f840d4d

--089e0115fba8d878a5050f840d4d
Content-Type: text/plain; charset=UTF-8

Hi,

I create a layer for my project.
How can I edit (patch?)  project specific config files of other recipe for
the rootfs without touching the original recipe.
Project specific config files could by /etc/ssh/ssh_config (do not touch
recipe openssh )

Friendly regrades
Kai Ulrich

--089e0115fba8d878a5050f840d4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I create a layer for my project.<br>How can I e=
dit (patch?) =C2=A0project specific config files of other recipe for the ro=
otfs without touching the original recipe.<br>Project specific config files=
 could by /etc/ssh/ssh_config (do not touch recipe openssh )<br><br>Friendl=
y regrades<br>Kai Ulrich<i class=3D""><br></i></div>

--089e0115fba8d878a5050f840d4d--
