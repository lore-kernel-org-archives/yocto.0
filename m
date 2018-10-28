Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63463E009AA; Sun, 28 Oct 2018 11:31:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [83.102.40.153 listed in list.dnswl.org]
Received: from sirokuusama2.dnainternet.net (sirokuusama2.dnainternet.net
	[83.102.40.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 545DDE00872
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:31:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sirokuusama2.dnainternet.net (Postfix) with ESMTP id 30327123DF;
	Sun, 28 Oct 2018 20:31:47 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sirokuusama2.dnainternet.net ([83.102.40.153])
	by localhost (sirokuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id e7qdHfKcJ3Xr; Sun, 28 Oct 2018 20:31:46 +0200 (EET)
Received: from oliivipuu2.dnainternet.net (oliivipuu2.dnainternet.net
	[83.102.40.53])
	by sirokuusama2.dnainternet.net (Postfix) with ESMTP id EE36F123A4;
	Sun, 28 Oct 2018 20:31:46 +0200 (EET)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by oliivipuu2.dnainternet.net (Postfix) with ESMTPS id C00BC83;
	Sun, 28 Oct 2018 20:31:44 +0200 (EET)
Mime-Version: 1.0 (Mac OS X Mail 12.0 \(3445.100.39\))
From: Anders Montonen <Anders.Montonen@iki.fi>
In-Reply-To: <94c69dbc-f1e6-f51e-3200-d37edb531bd7@gmail.com>
Date: Sun, 28 Oct 2018 20:31:44 +0200
Message-Id: <F885A7B9-BEEE-45B1-AD98-F111F5FFB0BD@iki.fi>
References: <943A040F-0297-4CB9-B4AB-FECBBFF17A0C@iki.fi>
	<94c69dbc-f1e6-f51e-3200-d37edb531bd7@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3445.100.39)
Cc: yocto@yoctoproject.org
Subject: Re: tzdata overwrites existing localtime/zoneinfo?
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
X-List-Received-Date: Sun, 28 Oct 2018 18:31:50 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

> On 28 Oct 2018, at 17:27, akuster808 <akuster808@gmail.com> wrote:
> On 10/25/18 5:43 PM, Anders Montonen wrote:
>> It seems to me that the tzdata package will overwrite whatever the =
current time zone is with its default. This is not great if you=E2=80=99re=
 upgrading the package on an existing system. Should the creation of the =
file and link be removed from the do_install and only be done in the =
pkg_postinst?
> Timely email.. 2018g just got release. I will take a look at this =
issue
> shortly.

A colleague pointed out that although ${sysconfdir}/localtime is added =
to CONFFILES, the get_conffiles() function in package.bbclass explicitly =
removes symlinks from the list of configuration files.

Regards,
Anders Montonen=

