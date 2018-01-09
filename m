Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2F3EE00D6E; Tue,  9 Jan 2018 15:40:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4400DE008FB
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 15:40:34 -0800 (PST)
Received: by mail-wr0-f171.google.com with SMTP id p6so15786035wrd.0
	for <yocto@yoctoproject.org>; Tue, 09 Jan 2018 15:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=nMhFGn3XSbZ8jpFeoxa05FZ8Cg6PdjuUmSmG4lxsFBc=;
	b=bUTGBbaM0YSpZvrALUIezOCzsdCcu+x12vzbxGtf3w05MLxBfPNRqOe4lyWOQfFwY5
	MFK17DRU2Vyro+TvrU1WsNG+GHNVh99vh3ApZGQQoZMAx6ee/zLH4pyt/tCXsHVslvWw
	aJ8L5gYPoC3Xqw/P2kMbqxz2bo0E9IcWpBXYL5fTiQ6kIVYhThiJQB4cikotJZ2bBCw1
	lWu5gJptYwiVR0aLfCQv27/EUCOv6FxT2Gf5Xc/TGJcJdv5Smmu6l6rbOA/qr1Zb5F4Q
	4/4LR3hdAROC/HggcpFUiJbnswgw/QkOhNiQbA7AtkYER67t24Vfqcxb+6XyGnFVbVG4
	hHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=nMhFGn3XSbZ8jpFeoxa05FZ8Cg6PdjuUmSmG4lxsFBc=;
	b=Qx5in+rStNWjvFbq/wKynU9M7QvQpgUhonDzkXsyyWVblDSaulgYe5HSLFj5FLPvz5
	UreyreW7TQzBhmrsUAWpdskHhnRENww5mmV9fy3lATplLLc4rcV1GqUMHJmR62ga4h1i
	rrwjLLCz0HChW4EiOpCVD3S38NLCvs/1JZkX6IX6GcpQu5xJRlt3+4MXMrHuR7HxD4ko
	pqXmlKcjmHe8B87VcKyrKdi7jqLseUNm2+Qs7Nu3z43HQlhVuI+5OKR6VUuxrxeyi3JY
	49YOfkMAhbpeE7t8L5Q8BeX4fzONXOvJD4BM0pozNjZoQJz2J9zgpWGRwVAbDnN1m3DK
	Qawg==
X-Gm-Message-State: AKwxyteuwHJKdSslKRYrXeTtdAAsDWwWAdIcUjxNh/rih7MkpDEmuL9I
	2YlHtl8aLRk5n9KBi6+kJxrt0/UR7CoVweRwzGa9nXPX
X-Google-Smtp-Source: ACJfBosMK8TwAP3NCHY3qR/qjTPf3W2tOx2tf3cjdd+3hts1JOBT5gn+4lXTMKE3zTy1W4VmskZR8GoOMxJLQHMR1w0=
X-Received: by 10.223.185.124 with SMTP id b57mr2719731wrg.13.1515541233872;
	Tue, 09 Jan 2018 15:40:33 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.149.145 with HTTP; Tue, 9 Jan 2018 15:40:13 -0800 (PST)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 9 Jan 2018 15:40:13 -0800
X-Google-Sender-Auth: oOrPFjP1QUzBPVK3fYuWaGS5KfM
Message-ID: <CA+YB3rbxUcuwWd_au=OXnf_NsF6dnBS=-6qJhwh8REGbkr_3Yw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Embedded Linux Conference coming up in Portland, Oregon
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
X-List-Received-Date: Tue, 09 Jan 2018 23:40:36 -0000
Content-Type: multipart/alternative; boundary="f403045f5430e3329a056260703a"

--f403045f5430e3329a056260703a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you have aspirations to present a talk at ELC/IOT summit this year, time
is of the essence, as the CFP expires today. As a reminder, ELC is in
Portland the 2nd week in March. The page is here:



https://events.linuxfoundation.org/events/elc-openiot-north-america-2018/


This is the premier conference for embedded Linux in the US. The Yocto
Project will also be hosting a Developer Day event on the Thursday
following the conference. This is a paid training event with introductory
and advanced tracks that provides direct access to maintainers and
information on all the latest details about the project. Stay tuned for
details.


Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation

Open Source Community Manager

--f403045f5430e3329a056260703a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<p class=3D"MsoNormal">If you have aspirations to present a talk at
ELC/IOT summit this year, time is of the essence, as the CFP expires today.=
 As a reminder, ELC is in
Portland the 2<sup>nd</sup> week in March. The page is here:</p>

<p class=3D"MsoNormal">=C2=A0</p>

<p class=3D"MsoNormal"><a href=3D"https://events.linuxfoundation.org/events=
/elc-openiot-north-america-2018/">https://events.linuxfoundation.org/events=
/elc-openiot-north-america-2018/</a></p>

<p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">This is the premier c=
onference for embedded Linux in the US. The Yocto Project will also be host=
ing a Developer Day event on the Thursday following the conference. This is=
 a paid training event with introductory and advanced tracks that provides =
direct access to maintainers and information on all the latest details abou=
t the project. Stay tuned for details. <br></p><p class=3D"MsoNormal"> <br>=
</p>

<p class=3D"MsoNormal">Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel C=
orporation</p>

<p class=3D"MsoNormal">Open Source Community Manager</p>

</div>

--f403045f5430e3329a056260703a--
