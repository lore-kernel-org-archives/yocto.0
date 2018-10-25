Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60D6BE00C96; Thu, 25 Oct 2018 09:50:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [83.102.40.152 listed in list.dnswl.org]
X-Greylist: delayed 412 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Oct 2018 09:50:20 PDT
Received: from sinikuusama2.dnainternet.net (sinikuusama2.dnainternet.net
	[83.102.40.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09048E00C94
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 09:50:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id BE9C81962C
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 19:43:26 +0300 (EEST)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sinikuusama2.dnainternet.net ([83.102.40.152])
	by localhost (sinikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041) with ESMTP id UnuHBqtJnpYP for <yocto@yoctoproject.org>;
	Thu, 25 Oct 2018 19:43:26 +0300 (EEST)
Received: from oliivipuu2.dnainternet.net (oliivipuu2.dnainternet.net
	[83.102.40.53])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id 83B3E197CF
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 19:43:26 +0300 (EEST)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by oliivipuu2.dnainternet.net (Postfix) with ESMTPS id 70CD983
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 19:43:25 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.0 \(3445.100.39\))
Message-Id: <943A040F-0297-4CB9-B4AB-FECBBFF17A0C@iki.fi>
Date: Thu, 25 Oct 2018 19:43:24 +0300
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.100.39)
Subject: tzdata overwrites existing localtime/zoneinfo?
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
X-List-Received-Date: Thu, 25 Oct 2018 16:50:22 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

It seems to me that the tzdata package will overwrite whatever the =
current time zone is with its default. This is not great if you=E2=80=99re=
 upgrading the package on an existing system. Should the creation of the =
file and link be removed from the do_install and only be done in the =
pkg_postinst?

Regards,
Anders Montonen=

