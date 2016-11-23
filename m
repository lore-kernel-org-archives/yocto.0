Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30BC2E008E4; Tue, 22 Nov 2016 19:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A093AE0083D
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 19:19:16 -0800 (PST)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])
	by msfrf2623.sfr.fr (SMTP Server) with ESMTP id 970651C005C0F;
	Wed, 23 Nov 2016 04:19:13 +0100 (CET)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2623.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 23 Nov 2016 04:19:12 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Trevor Woerner' <twoerner@gmail.com>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<20161122151027.GA11632@openSUSE-i7.site>
	<001d01d244dc$d4b41030$7e1c3090$@neuf.fr>
	<20161122183028.GA18396@openSUSE-i7.site>
In-Reply-To: <20161122183028.GA18396@openSUSE-i7.site>
Date: Wed, 23 Nov 2016 04:19:08 +0100
Message-ID: <004201d24538$5cfdaea0$16f90be0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFf1IQYxDJY5eNUZl6goLQmP6eODgFqulgMAe7Yct8CbSFUyqGckbGQ
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Wed, 23 Nov 2016 03:19:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Trevor,

No, that would be me missing a patch in my branch... :(
It should be 4.7.10, and it did compile yesterday.
My mistake, I'm adding that right now, please retry.

Herve

-----Original Message-----
From: Trevor Woerner [mailto:twoerner@gmail.com]=20
Sent: mardi 22 novembre 2016 19:30
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/1] Modify =
raspberrypi3.conf and add raspberrypi3-64.conf

On Tue 2016-11-22 @ 05:23:49 PM, Herve Jourdain wrote:
> I didn't have any such branch, but I've created them now.
> They are located at: https://github.com/hjourdain/meta-raspberrypi and =
https://github.com/hjourdain/openembedded-core.
> I've just pushed my patches there. I've not tested out of those =
repositories yet, but I did test those patches before, and they were =
working, so hopefully everything will be alright.

It looks like the raspberry pi's linux tree has been rebased again :-(

	ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: =
Fetcher failure: Unable to find revision =
a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from =
upstream
	ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: =
Fetcher failure for URL: =
'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.7.y=
'. Unable to fetch URL from any source.

Checking out the rpi-4.7.y branch of =
git://github.com/raspberrypi/linux.git
doesn't give a a45a35c08598b23f9fd82e49c83b46c7d536244f revision. Also, =
the HEAD of that branch is 4.7.10. Any idea how far back I have to go to =
find 4.7.7? Or maybe I should just try 4.7.10?


