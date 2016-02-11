Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6FE0E00BEB; Thu, 11 Feb 2016 06:11:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5896BE00BE6
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 06:11:55 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id 9so55517229iom.1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 06:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=1gdlAl6r7sy/ToS2wspGHZeoD6au7KTiV6LyS59jJ6M=;
	b=TX0nb3HQv1PeNH09wFF3ViVBgTT3oYS5p1lB/ii3GLrX/Ee+HDev+MS3Lc7bc+8zz+
	RqV0rfCUyROyOGbq+7sZoopvfSF59pbtJDMeQSr+vMAbLgo8tdUhm0A+jUEW1vrnY7Rc
	UC1zfVqvbhnyRH9v/mnwVmc4KiGruW/M5utfppH99Xv6AHOKhu97Si32jYhxHlsRmIKK
	GlYKobWu8gehIuv8us3AwGWHEY+8UjkiKrmnorkO7wgx5+wz1OkePu2RioJpdIariLMH
	uajItLVyapI4rw9yp8uIaDgOrygYYVvl5OnUdx1NZ6Ut4z/uWm+fTjfOQecBi0vOGlTO
	YAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=1gdlAl6r7sy/ToS2wspGHZeoD6au7KTiV6LyS59jJ6M=;
	b=eIwS8upWaLtbkAfDr39LtIHJhmpoOEf/+xx4G8xMLb6Jgpz6JYLjCE7+wZNf7giIuD
	0FwSe0wLayw3zMMvlE2RPW7Bl+XNm7tjiICi76dMRvvlXFIf5fbwOIMSVgrUQHAb29XI
	XNok+A4OUJO/5BoWThdGOSrFl2Mv2OBT+te8TqrNFxEUHSnoZK80l8wh9RIDVoep/U57
	X2M1QD/fJj1WkdqkXAa4f0ENPCqjMtI7QOF4fv0KWP5rxAvsht13kdWKDV/WZ5swmYIE
	MtSsceND15UXJ3XZpTcKIKB5/n/tC6KhOrD+z9ln8eAZETJ1DlVLMd59o1QMPBILFDMy
	ch6w==
X-Gm-Message-State: AG10YOTomFiOTwA9Vqo2ttHZwL8uPWubNzTHDCZaYqQXb4VXme+NCgP+ciT8jjJWo0sQ62xvG1OQxveWXYoY3EiR
X-Received: by 10.107.164.15 with SMTP id n15mr41053858ioe.148.1455199915562; 
	Thu, 11 Feb 2016 06:11:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 11 Feb 2016 06:11:36 -0800 (PST)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Feb 2016 14:11:36 +0000
Message-ID: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Dropping Debian 7 as supported?
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
X-List-Received-Date: Thu, 11 Feb 2016 14:11:59 -0000
Content-Type: multipart/alternative; boundary=001a113776820b705f052b7f2290

--001a113776820b705f052b7f2290
Content-Type: text/plain; charset=UTF-8

Hi,

I'm proposing that we drop Debian 7 from the supported distributions list
in master, so that the 2.1 release supports Debian 8.  Debian 7 was
released in 2013, Debian 8 superceded it in April 2015 so will have been
out for a year when 2.1 is released, which also means that is when Debian 7
stops receiving security fixes. Nobody should be running Debian 7 after
April 2016!

Any objections?

Cheers,
Ross

--001a113776820b705f052b7f2290
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m proposing that we drop Debi=
an 7 from the supported distributions list in master, so that the 2.1 relea=
se supports Debian 8.=C2=A0 Debian 7 was released in 2013, Debian 8 superce=
ded it in April 2015 so will have been out for a year when 2.1 is released,=
 which also means that is when Debian 7 stops receiving security fixes. Nob=
ody should be running Debian 7 after April 2016!</div><div><br></div><div>A=
ny objections?</div><div><br></div><div>Cheers,</div><div>Ross</div></div>

--001a113776820b705f052b7f2290--
