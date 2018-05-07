Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C03C1E00C11; Mon,  7 May 2018 14:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01910E008D2
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 14:53:29 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id g21-v6so30206141wrb.8
	for <yocto@yoctoproject.org>; Mon, 07 May 2018 14:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=LbxqLPsj4sffLPVls0GFh6s1Bsn/hzVsrEgwyEqdi1U=;
	b=Rn2T3v5lDI3l7zczmYDLGj8rWLp6GWS3KzojiLWpJbcZXkiWk0xrgw0238rEUYnIUl
	+Dzmqh2Pn/x2+j35heBE0D51QyECCBEviz5L4+39U4B/0lwdv1vkCiKiQM3S8MuqNqDo
	IzpmZ7IoPOdJxYQ5UuGmwPRlDVKN+5/AWnRyZb16T8Fa/37F7iEfgktynXB9XuJ+ltZz
	owopqJKAb2gWGCA8MlPA1RUDTpXDBjDcg+EACzNl9fZRwU8rZ86cALO1c0SGPpObyL8f
	KAfwb+SKbTsNJfbw0K6K9q9+Hq5T+ZeNFEr8vVcmIqTvhig6hayoFhza9pQREK7IKr6y
	QN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=LbxqLPsj4sffLPVls0GFh6s1Bsn/hzVsrEgwyEqdi1U=;
	b=plsOxu81hNTmdLkFn3V4KW/B9cawflvJzJPAHq8AV0j9IeDIAq5t4T3hzvROdj8UvM
	zxoOX3/WDC30R2fDMZgJI1LM4LIg3nH/MFjsbrFGYRRP4JQOxhq3Nhj/ENkVdQ0LIZpv
	5CocJ4FYgj7++hA40WDDYs/BP3UCVGog4saElNR6fvwrRA9fqZYPkY7HyOH3tSyW2rW/
	zQFDXOdyg1PEZhikWpEgvgHv5z+ITf5yOdJ0/wJXsZ2+TN1yoTP5EOZ8w3REDxTmwSat
	mAVvQxtoZ68mmE5PgFDinHzAoHF64Y6+H0mGJvUbiY8eC2ROe4BzhavoOHeCwnYWEQu0
	ZmGQ==
X-Gm-Message-State: ALQs6tC5u0sBYMDdr9FdjBrkiu1fHWqBiaMphSFvclel9vncdRtF60jV
	bCwcgkUx2oNxoZ8o3ZPrdp9KiGMblhSQ1zUqlDr7LsqP
X-Google-Smtp-Source: AB8JxZr/yU5n5oYgH1idDiRa5BwbYHQf3m+1qyhGB3Wpue2DfXZSWgBu10r+4y6tZeXlLmhq3GCsaz3X5iEshEWC0p0=
X-Received: by 2002:adf:e64b:: with SMTP id
	b11-v6mr30263344wrn.51.1525730008474; 
	Mon, 07 May 2018 14:53:28 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.223.229.139 with HTTP; Mon, 7 May 2018 14:53:07 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 7 May 2018 14:53:07 -0700
X-Google-Sender-Auth: xBUMUWo48NaGR66t73_dczeIrVk
Message-ID: <CA+YB3rba5-xUdzRg2jE8oaY6+ZLhu3ROV0O6_=w7Dc+qPVSqpQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org
Subject: Yocto Project changes in progress
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
X-List-Received-Date: Mon, 07 May 2018 21:53:30 -0000
Content-Type: multipart/alternative; boundary="0000000000002daaa9056ba4b38f"

--0000000000002daaa9056ba4b38f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Hello everyone. I'd like to briefly address rumors around Richard Purdie's
transition from Intel to a more neutral position, and Intel's reduction in
resources for the project.

We set up the Yocto Project in 2010 through Linux Foundation, with over 20
member organizations, so it would function as a true open source project -
neutral, unbiased, and well distributed. Those things are what make open
source projects less vulnerable to any one person or company. This is
actually a very exciting transitional time for the project, and all
existing member organizations are fully behind the project. We will let
people know details as they are available.

Meanwhile, the 2.5 "Sumo" release is on the way and should be released
soon, the 2.6 planning process has started in earnest (please
participate!), and we are excited to see what the future has in store for
the project.

--=20
Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
Open Source Community Ecosystem Strategist

--0000000000002daaa9056ba4b38f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial">=
Hello everyone. I&#39;d like to briefly address rumors around Richard Purdi=
e&#39;s transition from Intel to a more neutral position, and Intel&#39;s r=
eduction in resources for the project.=C2=A0</div><div style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial"><br></div><div style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial">We set up the Y=
octo Project in 2010 through Linux Foundation, with over 20 member organiza=
tions, so it would function as a true open source project - neutral, unbias=
ed, and well distributed. Those things are what make open source projects l=
ess vulnerable to any one person or company. This is actually a very exciti=
ng transitional time for the project, and all existing member organizations=
 are fully behind the project. We will let people know details as they are =
available.</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial">Meanwhile, the 2.5 &quot;Sumo&quot; release is on=
 the way and should be released soon, the 2.6 planning process has started =
in earnest (please participate!), and we are excited to see what the future=
 has in store for the project.</div><div><br></div>-- <br><div class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div dir=3D"ltr"><div>Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mi=
xon, Intel Corporation</div><div>Open Source Community Ecosystem Strategist=
</div><div><br></div></div></div></div></div></div>
</div>

--0000000000002daaa9056ba4b38f--
