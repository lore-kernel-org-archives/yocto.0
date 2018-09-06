Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E003E00AB3; Thu,  6 Sep 2018 04:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124F7E00A85
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 04:05:51 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id v198-v6so1992885oif.9
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 04:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ek+XhGGuBqxdVxgwxxindf7LWcKE1GXFZcvSPD6m+wI=;
	b=rbcyS11frB8jRznstQ6yP2DkCN6fh8lLMJu8tSxN6qMG0+wlJ43DlCDONA8h18f4KB
	aJ6gjyN88Re0e6SWlooy1mCi0x0YizDDFspsiwKNrrDxoWTiY3xyNeGH3Bj37eqoHhx1
	gsQPGmsn+Z1r3n4kYOLm03mXOFmvoKKRb03AyFq0xPqTDxRORwwu3iJUTv4c6pBg5JIj
	rjAHqtAhgrfjLTRkUgw2ZXnyHYRxH95t+rHAlDAwh4GccMi7cwT+OHXLHzui3uuCdsFG
	blXg1J1tHx4QxbidkxKm6DkUQqjITsnYeWs6KuiTj6/KEhDcpGz9lPeuxjhaHGmdTZjI
	UsDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ek+XhGGuBqxdVxgwxxindf7LWcKE1GXFZcvSPD6m+wI=;
	b=YpLCT0e5DxVjf6sKeLfR/ktFTHIAg/+Z+B1Mdd6YEIq2zNSxkg+mdv6WAvBRKRHqLQ
	PJyGjb1baYE6CTJ90v1g6mo0mWD2cTRV6VdvMJELKGUtgp0phm/ESxgVEWgF9Sqnxcst
	FRAZhVo+4s0GPKQtKjz5Wldz3CgDEhTr54pK+K8ksKX28s0wej9g1qqFkSIJPpJPR3Kv
	88wruqtvki8hxT6MRdJ5UeDF+1L5dBtxtuSgdqEnM/wP1SkBdtr51SJ3qL8m4lCY1ihf
	AEc765AkVCU637kwmyPzQen5XF8jdlQeDTsfzzXocERnfz1sGAYyTrFyRq5nQETyb/x1
	84Ug==
X-Gm-Message-State: APzg51AY3InXPotBQPrMwBZ0H8prpdrfJo4AD+R2OQ1w/wBgk7wPivJu
	uIqaWNYZEgdJQ6KyUpqbxqWBh4s2Ma0ciFT8u7PaAmpyXiw=
X-Google-Smtp-Source: ANB0VdZw+JVdbTeoC/cG+ZNhsOH20lrf6ekTyUxb5Zlz+w6LUoUlZURz+cCYW4EnlCG6Iv1Jmlzk/jw14a2Tq2KcS+c=
X-Received: by 2002:aca:b885:: with SMTP id
	i127-v6mr2385297oif.180.1536231951198; 
	Thu, 06 Sep 2018 04:05:51 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 6 Sep 2018 13:05:39 +0200
Message-ID: <CAEhQi8=UHJzm-Kfx_6sBZLAtjxJCChfxKaQtHkoAUCAWt60Xhg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [Question]: do_configure fail if cmake project is making use of ExternalProject
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
X-List-Received-Date: Thu, 06 Sep 2018 11:05:53 -0000
Content-Type: multipart/alternative; boundary="000000000000be6da5057531dfd1"

--000000000000be6da5057531dfd1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a cmake project that is making use of ExternalProject_Add. The
external project will make use of git clone to pull down the project. The
problem that I am seeing is that the do_configure will fail because it
cannot find git which is not part of the sysroot the reason for git not
being part the sysroot is that git-native is included in ASSUME_PROVIDED
which prevent me from getting it into the sysroot and when running
do_configure it will only look for it in the sysroot and not on the host if
I am not mistaken? What would the best way be to proceed to solve this
problem?

BR
M=C3=A5ns Zigher

--000000000000be6da5057531dfd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a cmake project that is maki=
ng use of ExternalProject_Add. The external project will make use of git cl=
one to pull down the project. The problem that I am seeing is that the do_c=
onfigure will fail because it cannot find git which is not part of the sysr=
oot the reason for git not being part the sysroot is that git-native is inc=
luded in ASSUME_PROVIDED which prevent me from getting it into the sysroot =
and when running do_configure it will only look for it in the sysroot and n=
ot on the host if I am not mistaken? What would the best way be to proceed =
to solve this problem?</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigh=
er</div></div>

--000000000000be6da5057531dfd1--
