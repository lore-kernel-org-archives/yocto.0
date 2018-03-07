Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ACC6E00D91; Wed,  7 Mar 2018 09:15:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB793E0084D;
	Wed,  7 Mar 2018 09:15:19 -0800 (PST)
Received: by mail-wr0-f178.google.com with SMTP id v65so2935961wrc.11;
	Wed, 07 Mar 2018 09:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to:cc;
	bh=ehidydyXvmlYWHtM8kIRxlzrEdRK+/yD35M22WR27DI=;
	b=Vun3+7YqUnDuWuA3Kzy/n78JaO6b/gzywlRd9A1W4cU0Rs4kXAtTCcLAnnQRgic/lV
	bCm6nuTgbQAtT7Xt6d+JrSFddq9xJorzTTBPrF5IQ5nG9YsCY9CysjBw05zUeZQ10fpq
	1JGlWRcjjEGZHGufdzoBQOgoQ5rDJRm/DnyCyf9Fh+vDOVJ9lgPyNO9v29HGk6mJIrgc
	vHx1rHAZDNasux3FWbCl/MGGpXkPyUHEeWk9so0XFZLEYmDZ7vlD1K+Z4SKb+KFPl5DV
	klEA4hNuSlqf67j85YJN1/lsG6snxjZglqvMrc9ZZilG90xKdGQrGFb+TVexl+eUjm44
	IpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:cc;
	bh=ehidydyXvmlYWHtM8kIRxlzrEdRK+/yD35M22WR27DI=;
	b=VC5dZAnC/XYGP4lwOUdnCy96ttP2pCpeu7fq6xvG/MpkZv6KUCJ+Nf1TrrKpT0YdZY
	c6otyj3/4fS1MnPZwgp47fsbW0AoitnXs2ADyYHVOWol7xSsQ/qWcv/AmJMqdlmr2R7G
	BimEmGUc05Bim0F5aFjlu64kJVXKY98NuDk/AYyLuOb5kfKtabn7EZ9Fg7Lw/LzUXogk
	sLb5UT2K4S4RIdj6W7K3lMZBlUZLMHLmXiLq4OQVFP5CZSpTRad4Fkh8QdxI/O5fNk0W
	4BnTCiTwi8vvOrNiwZCc+R5pLWqSpy0CwqnzianW51utAsOA8GXr+8ihYEOG+pilfD/M
	IYSw==
X-Gm-Message-State: APf1xPBRFXRed3ykJRA9rPWFxOBYUHFSoZ+MSYfrZdd1Kx93z7GJFmq5
	Y7QlXBuu4lOpCXEExe/6IUhPMir3E/Rdx77AT9HQnduy
X-Google-Smtp-Source: AG47ELvIrwwymQqPfy4G3wyZo8efE69OhRbpUNoUPegwTz07eInTWZU2He27UPze5N2Hzitkv10lW7np/VcFsvAJXtw=
X-Received: by 10.223.139.68 with SMTP id v4mr20832653wra.23.1520442918503;
	Wed, 07 Mar 2018 09:15:18 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.199.134 with HTTP; Wed, 7 Mar 2018 09:14:57 -0800 (PST)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 7 Mar 2018 09:14:57 -0800
X-Google-Sender-Auth: kt5fQBImASD4osVU6P8OQCF1kiI
Message-ID: <CA+YB3rY6F21ChH6iEysaH41D6vcLc+=_vyY1F9gobBzr9_8KGw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: yocto-announce@yoctoproject.org
Subject: New Yocto Project website
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
X-List-Received-Date: Wed, 07 Mar 2018 17:15:22 -0000
Content-Type: multipart/alternative; boundary="f403045e9fac0f09570566d5b40c"

--f403045e9fac0f09570566d5b40c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Yocto Project Advocacy Team has been working on a new project website
for many months now, and we were finally able to launch it this week, just
in time for SCALE and ELC.

We appreciate the feedback we have gotten from some of you, and we will be
sending out a survey asking for more feedback in the coming weeks. For now,
we know there are hiccups to address, so we'd like you to please bear with
us over the next week or so as we iron out issues. If you do find any
serious problems that aren't being addressed, please let us know.

https://www.yoctoproject.org

Thanks

Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation Open Source =
Community Manager

--f403045e9fac0f09570566d5b40c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The Yocto Project Advocacy Team has been working on a=
 new project website for many months now, and we were finally able to launc=
h it this week, just in time for SCALE and ELC.<br></div><div><br>We apprec=
iate the feedback we have gotten from some of you, and we will be sending o=
ut a survey asking for more feedback in the coming weeks. For now, we know =
there are hiccups to address, so we&#39;d like you to please bear with us o=
ver the next week or so as we iron out issues. If you do find any serious p=
roblems that aren&#39;t being addressed, please let us know.<br><br></div><=
div><a href=3D"https://www.yoctoproject.org">https://www.yoctoproject.org</=
a><br></div><div><br>Thanks<br><br>Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mi=
xon, Intel Corporation Open Source Community Manager<br><br>=C2=A0<br><br>=
=C2=A0</div></div>

--f403045e9fac0f09570566d5b40c--
