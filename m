Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBCA4E00D53; Fri, 10 May 2019 16:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78655E00D4C
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 16:21:12 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id v17so6995310otp.13
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 16:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=tbi0PMNepoT1H6n0y/CBxYcGNgzxoKLApPMoWkID8jo=;
	b=Cs+Xa1gPcwT7rRfiFPb2bKJL/6ZtFfQ6m3f0H1JmQhqZ8P/y/jJ4uCDw4DAXokPAD9
	sb5z3cLSFRD+sfHeIUOZUzPn3QvE4svwe4lvpBmven1OfGImezZ+oz20+obw6b8pTeUi
	Ajg/3Ce9EXlmvYQZEq+dl0Fu3ts2y7UCLvD1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tbi0PMNepoT1H6n0y/CBxYcGNgzxoKLApPMoWkID8jo=;
	b=WWPJO599hM6fZ3sGu9QwvgTjGpYnJ3AuuNfHmfytbOoL3V6dCEo5mqMRIytz7RHw8b
	WqQ33/2ZnqwLTxPnUdTwYHGXAkH562VPcVTWT9XMd6W5drO+f4XgHfm9eO8Mc3Km2IUC
	ksPBqHPI6ObovJJYLsu1kQp1uJrlhHUx26XsswKZP4vI2xoTuWOew0l1+ftPW9wyMqiF
	zo520n795a3UAgUcbqpBhg0nsM3I6GLKO4QaywQpVFNr5w1Sno50Umbhr5XRnp+0pjUX
	6uSXmmIJR5rdi+ZwsRINTm7EKCUg5u4hKsd045BvM5BCHqIRxszH/Sz6ypnBt39PvV8h
	EmYA==
X-Gm-Message-State: APjAAAVsIdn4RFx7ySemDuD7IV23kWeISU44IpJjk3ocNbdh5VcdNS6n
	mBBJy2Epk/u/nTeXBLv6t21ItWXEoSsvOvCY0aB91OkQL8w=
X-Google-Smtp-Source: APXvYqy8vwiQVBlFjgOxRoOrNjFJKdoTJ1xRV25RyS3LgJWug54hKtr76PmOJU+3lJDvNagi9zCw4IZiHJFTGNSzzME=
X-Received: by 2002:a9d:62c7:: with SMTP id z7mr4688446otk.12.1557530471291;
	Fri, 10 May 2019 16:21:11 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 10 May 2019 16:21:00 -0700
Message-ID: <CADfgfoZ4HF74sG1NXVOFcUQNBYWPBo8NW=K5G_7sfAiSBiDO=g@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
Subject: Upcoming network outage: Fri, May 17 starting 10PM PDT (Sat, 5:00Z)
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
X-List-Received-Date: Fri, 10 May 2019 23:21:13 -0000
Content-Type: multipart/alternative; boundary="00000000000077f382058890d2b5"

--00000000000077f382058890d2b5
Content-Type: text/plain; charset="UTF-8"

What: 30-minute network outage to Portland-hosted services
When: Fri, May 17, between 10PM-3AM PDT (Sat, 05:00-10:00 UTC)
Why : Network equipment replacement by our service provider

Services Impacted:  autobuilder.yoctoproject.org, downloads.yoctoproject.org,
sstate.yoctoproject.org

Our Portland hosting provider needs to replace some of their main
network equipment, which will require rerunning some cables. They are
asking us to prepare for up to a 30-minute network outage between the
hours listed above in order to complete this work.

-- 
Michael Halstead
Linux Foundation / SysAdmin

--00000000000077f382058890d2b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>What: 30-minute network outage to Portland-hosted services</=
div><div>When: Fri, May 17, between 10PM-3AM PDT (Sat, 05:00-10:00 UTC)</di=
v><div>Why : Network equipment replacement by our service provider</div><di=
v><br></div><div>Services Impacted:=C2=A0=C2=A0<a href=3D"http://autobuilde=
r.yoctoproject.org">autobuilder.yoctoproject.org</a>, <a href=3D"http://dow=
nloads.yoctoproject.org">downloads.yoctoproject.org</a>, <a href=3D"http://=
sstate.yoctoproject.org">sstate.yoctoproject.org</a></div><div><br></div><d=
iv><div>Our Portland hosting provider needs to replace some of their main=
=C2=A0</div><div>network equipment, which will require rerunning some cable=
s. They are=C2=A0</div><div>asking us to prepare for up to a 30-minute netw=
ork outage between the=C2=A0</div><div>hours listed above in order to compl=
ete this work.</div></div><div><br></div><div>--=C2=A0</div><div>Michael Ha=
lstead</div><div><div>Linux Foundation / SysAdmin</div></div><div><br></div=
></div></div></div></div></div>

--00000000000077f382058890d2b5--
