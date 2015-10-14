Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0402E00A70; Wed, 14 Oct 2015 06:28:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.13 listed in list.dnswl.org]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BDBE009EF
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 06:28:48 -0700 (PDT)
Received: from [192.168.159.8] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue101) with ESMTPSA (Nemesis) id 0MTxmj-1aCzoV2MCn-00QhGa for
	<yocto@yoctoproject.org>; Wed, 14 Oct 2015 15:28:46 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <561E588D.5060609@2net.co.uk>
Date: Wed, 14 Oct 2015 14:28:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
X-Provags-ID: V03:K0:nmvgRVF6lrqMXNyGmEAp5MfHBIs++NU3liuERgLnuIhMcIN8zyQ
	YUfWbA05dzhzjC5FOtp/M3vFomWATX8h1ipbCrovlKQXKOfVa3+grTdw8XljFxw3Lb343pv
	X4imhu/qxtgEzEdSuPHImfVU+w5jZz+IlXhJ1wIRyNsfJyuBXvSdGmLKOaYX5XuJwdX+y1V
	FhOWaVyNQ11fz6lx1vCfQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2EiiAWuego8=:fe4MWQRnYiBwn+PkBG3QN+
	A0vJxhURrbwyCLaJBBjTXY9Xq5ms0a6UMQHRDFXAgC9NNqSaopumJYOiTgzI92wXFMoJVwgWQ
	fwTizULiPF3LoaOaYSSdC4TRVPczLrJXF0pzSmcZhu5mWPbfyOZEHg8UnHhxErP8r3nRW/iMl
	JDlytdmBu7x/t/QFY/ZDX0bCf/DC5rMyFkus4ZeZ6JWBzd3jJYKeSXUvLbH/dlycYlcvXcWUA
	9qjFilKbs3aCtN42QhMDvC7u5TgYAdKZlj+GIVWt0vxKgx74co29bAFHq2cIa2lizfG05JrrG
	C0JuGnZIQSjk14TWlhHjkL4lCeYCAP3FmATY30y46wy+p/7hvedr6+rCr06QZ+u1/yVFjn2/W
	T0IFsFQvDsYaSfQzlhiyQWMBB7tFSIbjNJUnTWnSvEg9Dhfjf7Jda1aHWJy7KViLPVsK/Whut
	VlSaiiONh6QWC6h+B9NTFcdd9L7seA6BdWWl95blPQqcwxeXf8tBGc6jvLW0cG998oHCDiWRL
	PkemkpjdjpBN3JaNNMX8OI151BRafHdDlyueVWRti86ZQwvdPIrE3uHYs8jNyOFZiSJDLuIYT
	XbUi0UgjxLGkpkjG+hdk3fr9lU9hSx0Mba041/eIuipw4Mwd0xTQiZ6zMYxm5VLSmFrb1lU1N
	BdbtDATeZ7h4wf2oxvWCrPw/a2Xw4HSRvHILrTAUwHUxBLcqoMRgMhETEDJ+VAcS5CoMLOc7X
	Uspq/01fhNg7jhsVqe09QeA0N7XIBZvkodZl+bKssUtyFQ34vM5TmHCaeZ4OHUc0GIsDZQfW7
	mO0902LHIIgjsIstKc5A1yrSshHj0a/0AVgMplc4FoejlYFy/hfKDK5RlKc6mW7P1C4aOihc/
	Ay8qnJi+goEg/vKJc5ZccEtC0RSFPT7nrCEtl6kqZK9NmmkK20o+uu0KSceraU
Subject: RFC: Yocto LTS?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Oct 2015 13:28:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Is there a statement about the period of support for a Yocto release?
Looking through the updates, it seems that 12 months is typical, a was
the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
declaration anywhere that this is the expected norm.

Leading on from that, is 12 months enough? Most projects have a
lifecycle that is much longer. Is there an argument for an LTS Yocto
release, maybe once a year? If not, what is the recommended way for a
project developer to keep a distribution up to date in the light of the
several well-publicised security flaws that have been discovered over
the last year or so and the new ones that will no doubt be discovered in
the future?

Regards,
Chris Simmonds

