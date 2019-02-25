Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC9BE00AA9; Mon, 25 Feb 2019 04:15:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214EDE007B3
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 04:15:45 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id x9so7250033iog.12
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 04:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+Gr/xk1Fd1EbbAbzZW6Yb55BmOY23TVgyf+X/dliOtw=;
	b=YdvvKBKa/rSXM+KgANB1otX3lod1UgtnHYMEtL/CkC1IbcmjLU+gGAbh69+E2NtRPQ
	FECk5JevAXvxeSZol/kqbx8k8eL57BehdoYL/6mYy2psSoUhJR4MdHAVSgXot4gfKDQ2
	hko+vTuc+5SXmEZ5iEe9os+m5RKve5+OCEpEXeAPm9PQqFGC1k2c+0empSUCxh8R+RtJ
	VcHeMNaQpH4tMmjQXUiyYdI3+o983RPS1OjUmMTOWRgEaefGcYGvlP/HPSuKu4xOdbQl
	l+vpNMQhp5bxkoYrOTTeydDMT0TtVSvlu0etOUyC0DsQQBefWv5qxYpuiuk3Hy2pOTy3
	mpGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+Gr/xk1Fd1EbbAbzZW6Yb55BmOY23TVgyf+X/dliOtw=;
	b=EOIXqwCt6RPA5xqjS5fLtvqD0bss5plvdu2P2RE3nA79k9rTwsBjDyhFIU9u8amBGS
	W0M1ugMNn44SNdsCQpu0KdfYm0wDixJ3xvpOQh/V9/e8ag3LAoDdxrcEqFuvoOpxBchg
	3nzhyEyOTZXdowZn4Cm+V3hQ1O7RfD5qLSCjHiax/y4RHXcWTQRzmRUhkaad7b/tXrEz
	lpe7Sg7kquyziOahTi2Nj5veZ7ZFV5r2zNJxLeVW8wlXBmO2byJCQSnFqgfBk0YWx5Jw
	qh9Y6RsgVPtPydarOXkUVqZS/UwVvPPjtQy6ran2ny7XiK0QeWnD7QSPS8lI8gT87yyC
	p6Tg==
X-Gm-Message-State: AHQUAuY3aDBKWmcP+s6wGzmCJyhLYwnKzP0GXorpYqkuTWdPRCiENnI9
	GiJZQ9iLgxIpOj2smLCz2XWXSU8prFEyUcJ4319mUQ==
X-Google-Smtp-Source: AHgI3IasZrDXQMhtyyEwcRZaMbP7dGZf+T2nD/AusaS0DgS/fiVWFkc2LQBjc2nxOTM/RM31WH1/IN6mVpFt3ENYSP8=
X-Received: by 2002:a5d:818d:: with SMTP id u13mr8913954ion.20.1551096945504; 
	Mon, 25 Feb 2019 04:15:45 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
	<CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
	<CALVd-wOkq6wwojJ+U6o=X9aMa4MA8PfJfVFgvp3DrWiZTnfsGA@mail.gmail.com>
	<CAJTo0LY=6Q7QV29hbAvkxDE1Dpzv4xm8LiQKMoB9va13KQN_cg@mail.gmail.com>
	<CALVd-wMF0gNMnDbr=xMd2vsLzu6peAizK5MgY6XS=tWdFMy=HA@mail.gmail.com>
In-Reply-To: <CALVd-wMF0gNMnDbr=xMd2vsLzu6peAizK5MgY6XS=tWdFMy=HA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Feb 2019 12:15:34 +0000
Message-ID: <CAJTo0Lbo=JgFdSY6q_CKFwpaUHdFvJOCgJO9VZawtv=pUQef_A@mail.gmail.com>
To: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Mon, 25 Feb 2019 12:15:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 25 Feb 2019 at 12:14, chaitanya cherukuri
<ccvk.chaitanya@gmail.com> wrote:
>> If I understand correctly, you want to me copy what script is doing in d=
o_install(). I was thinking to  add the script has startup to a YOCTO Image=
, so that I don't need to copy anything manually and let the script to its =
job. This is how I am doing it in do_install()
>
>          install -m 0755 ${S}/startup-script ${D}${sysconfdir}/init.d/
> ln -sf ../init.d/startup-script ${D}${sysconfdir}/rcS.d/S90startup-script

You'll need to do the install yourself, but the symlink generation
should be done with the update-rcd class.

Ross

