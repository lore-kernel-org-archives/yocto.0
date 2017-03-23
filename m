Return-Path: <jgugu@iscte-iul.pt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7863E00A16; Wed, 22 Mar 2017 17:21:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDC0AE009A0
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 17:21:45 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id z13so73790365iof.2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 17:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iscte-pt.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=N1bxopVORErzYU855ouIjVzvzHyq9Mj8Rdc0I/cmT7M=;
	b=2JyMQQM+X8iYIzwhROHnZANYiXs5VRtmm6grkBBdMLnEY0MtyaWz97ySCuxFws02gu
	QMRk2tYN6OzjGyDFu/mszELF4XNJNJLNZNCSyc9eZaBL+jCUib7VTvRcPhdzabzShL6+
	5ptD9FWgu/AHJo1zhEoWOUZU/KWx5p3V5JbNbUCO7whyE7yRpKasLMAYojsLBknsoG6Z
	RtOTcnSKY8rnT6i9ZYv+MmoV4nE9Jp+8i630atjXK2TSs1hQxZnGxD2DG73oZC2YAOBb
	7Nzf15PGk6TDAkCOJ2oN0XyasWXTabhvpxhCyfuu1HzVDO98QVEd5VO1LKPkLLHaQD7c
	VugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=N1bxopVORErzYU855ouIjVzvzHyq9Mj8Rdc0I/cmT7M=;
	b=MU03sPtmhv594gNM8kRRmjFRGAKie2MH34OW4vxy36Pr7u5Yf4fCgG20NkscyGXY2b
	5sY47aC3HWIZHDktmXk78cRTzDC8mb7EahZiR8qHCG6ANShITnt5SUfBHrWpgEM5kzYy
	VF4QJXs7Vq7fyfI9QnG1MtDaHlv0AECBw044TLXlfsL4Gdd73guCjE0/BFJk20jmUJMY
	4YtI2i3CFwdlUKEWJlDPlm6i7eNoVolTrizObLbed7Hki0rgk4Wd6sgMeWRRxj250w9w
	xi3Z49ScGNh+DtfdMwSo+gN1wmOQEpOxIfWrOosdUSAK1DKB0JYp2yfJ3wF/aswaNYU0
	5q+w==
X-Gm-Message-State: AFeK/H2N7Zi+p11KPMlOIrTZa5c7JjTSbbAs6DbpiS6Wsp3LmVo7DqCox0y/RGxYZ6h9cqOShaVH9wCdYuIBDBn1
X-Received: by 10.107.165.212 with SMTP id o203mr175061ioe.129.1490228505320; 
	Wed, 22 Mar 2017 17:21:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.55.214 with HTTP; Wed, 22 Mar 2017 17:21:44 -0700 (PDT)
From: Juejing Gu <Juejing_Gu@iscte.pt>
Date: Thu, 23 Mar 2017 01:21:44 +0100
Message-ID: <CAO6Cs1WcOyLMoWCJRPe3yzYytN-zf46XbkHXL=9je02mbarq2A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Outreachy 2017 with Yocto Autobuilder Documentation
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
X-List-Received-Date: Thu, 23 Mar 2017 00:21:49 -0000
Content-Type: multipart/alternative; boundary=001a1141f382b1bd2a054b5adc29

--001a1141f382b1bd2a054b5adc29
Content-Type: text/plain; charset=UTF-8

Hi,
I am Juejing Gu, a PhD student in Strategy and Entrepreneurship from
ISCTE-IUL, Portugal. I have a masters in human resources from the same
university.

Currently I have completed all the course works of my PhD as a third year
student, with just the research going on. As a PhD student, I have summer
vacation during the period of June - September (June, July, August, and
September), which I hope to contribute to Outreachy.

While I was also aiming to apply to GSoC, the projects are intensively
reserved for coding. While I have done my bachelors in Information
Management and Information Systems (from Shenzhen University), I did not do
any coding in the recent years. I would love to use this Outreachy as a
good starting point to refresh myself in FOSS development. At the same
time, the project "Improve Documentation for Yocto Autobuilder" comes
across very interesting to me, as I like to start contributing to open
source documentation during this summer. I aim to help the new developers
and users to use the Autobuilder in a more comfortable manner.

I would like to have some pointers on how to get started on this. More
specifically, *I like to receive a sample documentation task where I can
display my capabilities on documentation prior to the final application
deadline.* I would prefer the task to be actual pending documentation
tasks, so that even if I am not selected to Outreachy this year, my
documentation efforts during the application period won't be wasted. This
will also help me self-evaluate myself at earliest for the project.

I will make a complete application to this project before the 30th of March
(application deadline). In the mean time, I am also looking at Yocto
projects as a user myself.

Looking forward to hear from you.

Regards,
Juejing Gu.
-- 
Juejing Gu.
PhD Researcher in Strategy and Entrepreneurship,
ISCTE-IUL, Lisboa, Portugal.

LinkedIn: www.linkedin.com/in/juejing-gu

--001a1141f382b1bd2a054b5adc29
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div>I am Juejing Gu, a PhD student in <span>=
<span><span>Strategy and Entrepreneurship</span></span></span> from ISCTE-I=
UL, Portugal. I have a masters in human resources from the same university.=
<br><br><div><div>Currently I have completed all the course works of my PhD=
 as a third year student, with just the research going on. As a PhD student=
, I have summer vacation during the period of June - September (June, July,=
 August, and September), which I hope to contribute to Outreachy.<br><br></=
div><div>While I was also aiming to apply to GSoC, the projects are intensi=
vely reserved for coding. While I have done  my bachelors in Information Ma=
nagement and Information Systems (from Shenzhen University), I did not do a=
ny coding in the recent years. I would love to use this Outreachy as a good=
 starting point to refresh myself in FOSS development. At the same time, th=
e project &quot;Improve Documentation for Yocto Autobuilder&quot; comes acr=
oss very interesting to me, as I like to start contributing to open source =
documentation during this summer. I aim to help the new developers and user=
s to use the Autobuilder in a more comfortable manner.<br><br></div><div>I =
would like to have some pointers on how to get started on this. More specif=
ically, <b>I like to receive a sample documentation task where I can displa=
y my capabilities on documentation prior to the final application deadline.=
</b> I would prefer the task to be actual pending documentation tasks, so t=
hat even if I am not selected to Outreachy this year, my documentation effo=
rts during the application period won&#39;t be wasted. This will also help =
me self-evaluate myself at earliest for the project.<br></div><div><div><br=
></div><div>I will make a complete application to this project before the 3=
0th of March (application deadline). In the mean time, I am also looking at=
 Yocto projects as a user myself.<br></div><br></div><div>Looking forward t=
o hear from you.<br><br></div><div>Regards,<br></div><div>Juejing Gu.<br></=
div><div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr"><span><div><div dir=3D"ltr"><div><div dir=3D"ltr"><=
span><span><div>Juejing Gu.<br>PhD Researcher in Strategy and Entrepreneurs=
hip, <br>ISCTE-IUL, Lisboa, Portugal.<br><br></div><div>LinkedIn: <a href=
=3D"http://www.linkedin.com/in/juejing-gu" target=3D"_blank">www.linkedin.c=
om/in/juejing-gu</a><br><br></div></span></span></div></div></div></div></s=
pan></div></div></div></div></div></div></div></div></div></div></div></div=
>
</div></div></div>

--001a1141f382b1bd2a054b5adc29--
