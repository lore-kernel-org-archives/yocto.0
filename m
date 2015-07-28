Return-Path: <ryansvb91@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E0F1E00A4C; Tue, 28 Jul 2015 11:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ryansvb91[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 975BDE00985
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 11:10:50 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so148363404igb.0
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 11:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8NOvN0C9te0LMMA//sIGrC2fzqtSXpJcCcH3JLG4oPA=;
	b=vSNIrlPr1f/b29jte/m5V9E4mRjETMtHwRx28/u636xbk472fHtProSrpIP+nXNgpz
	NZwOonJ7tXu97AAtql2Aj+X5x7hVJm2BYXxRQzBt1ACsD4m+E8wxtb4Rubq6SMA4OK+C
	F9VR2oKODkxNVLhGfwPcqfo2C7jTacxIwzX7JCyDJg20Bp7/gb89kDuDzo9wWllE57Jd
	BUIsV+qI+6ryhlheP6Wkun75TIi2kD3YikZzY2vTPHQqFg7Mv4Uk65U8Px3OLOkotJXR
	Z0nDmg8w2rBJG7sQY087Fx8QY3ff3eWohAAwDY4K+HL84O+6KCagtP3JgXUueXBcA1mp
	rq5g==
MIME-Version: 1.0
X-Received: by 10.107.138.13 with SMTP id m13mr61494618iod.24.1438107049900;
	Tue, 28 Jul 2015 11:10:49 -0700 (PDT)
Received: by 10.79.116.78 with HTTP; Tue, 28 Jul 2015 11:10:49 -0700 (PDT)
Date: Tue, 28 Jul 2015 11:10:49 -0700
Message-ID: <CAMeZNHTxCpwOnpSCB6R=Tfc7YA-Fn2H6zDbgP0g2PfZsbzmf3Q@mail.gmail.com>
From: Ryan Soussan <ryansvb91@gmail.com>
To: yocto@yoctoproject.org
Subject: Including Libavformat
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
X-List-Received-Date: Tue, 28 Jul 2015 18:10:53 -0000
Content-Type: multipart/alternative; boundary=001a113f1ef2dbbee6051bf3633b

--001a113f1ef2dbbee6051bf3633b
Content-Type: text/plain; charset=UTF-8

Hello,
Is there a way to include libavformat without including ffmpeg or libav?
Libav and ffmpeg seem to both require a commericial license and we're
trying to avoid that.

Thanks,
Ryan

--001a113f1ef2dbbee6051bf3633b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>Is there a way to include l=
ibavformat without including ffmpeg or libav?=C2=A0 Libav and ffmpeg seem t=
o both require a commericial license and we&#39;re trying to avoid that. <b=
r><br></div>Thanks,<br></div>Ryan<br></div>

--001a113f1ef2dbbee6051bf3633b--
