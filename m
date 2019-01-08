Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF333E00CD6; Tue,  8 Jan 2019 03:33:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6957FE0048C;
	Tue,  8 Jan 2019 03:33:39 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id w25so3150155otm.13;
	Tue, 08 Jan 2019 03:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mcbAVOYXPJMdOd9x7peSKjkp/JWxJme9WyiAlV/rdu0=;
	b=Dwx2i3BP0buW3QVaiHHdY0OmvuT0Zu7gLG79YbHUTK6Ky+2XZjqGo+z/jJfKV/rufs
	j2Xf8/Lu5g++4oCOamWFxsgOP99N2TZ4CzRuFGLMF4ymSZ+EFPOEoSIoS1beXDjA3DMw
	WVAb/mjT3s450Tyb8lGKa/m2wXPGdVQnRIDhl5I7pABNgZRnRJAFj7pLJguR8UN/3Hy9
	3hyFw8uwxWP/CujZdNEv4Ba4dMBisjU+XcbpIfJhsMVoYgTEq9HU27HgkJQOG52uLFQu
	y1tfJlbDf7WTsK2k712oJJuUPf542Ttvun2f49bOgTtE72NLUi9LAhKJWCLxQrszHK8c
	2WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mcbAVOYXPJMdOd9x7peSKjkp/JWxJme9WyiAlV/rdu0=;
	b=EQ9/n7rq8LqTUS4Xzv8PjZJ8EExGEixrAjSdNGRmKMCdAywKSEYCcjXf5Blg33CYYc
	lnmUa0rbEV7JkFw326Oux57AiaD9TdD35svn2J2e+t4pyhZdIgpC9lHTKGzTkCEIU/xb
	ceAPYYh/sEzN4jsLnG1cN2ZvuGMcigcKAu16G0ShXEiJvJBWRsiZxsY6lq8nieQubcUO
	XZGQ9CfXzoOaQRghOWsp4KXKeZok49BPL2TfPDKPm71a8/GXJYzWT/GfC9Lj8aC9VHCb
	z88X49KakVfcWbHMiRiJyRiG1Kkaht8i3mhsWtv0U5qI6wkDIY6gwpWxD6hJYLt+X9N0
	lgGQ==
X-Gm-Message-State: AJcUukf/bCMPzVPMp52FB83NAGEHcEtTgJX1hhc7OCsQFZLoZy/WTHLZ
	buLPKHgxJuy5SE2RUdpJmkOig1rXPTB5tT3rWxU=
X-Google-Smtp-Source: ALg8bN7h/8XAM4mMfHjccBiXTpgjdsa9UUPALFm0Ao1VctkLWIkZLOve2ZszooZKLy5atsJBFskPaiyEquLTLGMsE2Q=
X-Received: by 2002:a9d:c06:: with SMTP id 6mr976778otr.326.1546947218675;
	Tue, 08 Jan 2019 03:33:38 -0800 (PST)
MIME-Version: 1.0
References: <20190107050058.27491.16171@packages.yoctoproject.org>
	<CANNYZj_VuJT4Z04eVc22yGHrAaPx+iaBJHXDN9QN938zahDJxg@mail.gmail.com>
	<CAJTo0Lau=yftGi8+3KktfUoaVH8ZuFrg+8nYVY5uH5z-PE-t9g@mail.gmail.com>
	<3847059.mRjBMpplpY@localhost.localdomain>
In-Reply-To: <3847059.mRjBMpplpY@localhost.localdomain>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Jan 2019 12:33:27 +0100
Message-ID: <CANNYZj_aZE4_cygjpo0ZfBNRWsOVHe5CFtokcmLb930dLS=NcQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Tue, 08 Jan 2019 11:33:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Jan 2019 at 20:32, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> I think the RRS still serves a purpose, if it's putting out correct information of course.
> I have spent quite a bit of time reworking it, but Michael hasn't had the time to do
> the upgrade yet. I will ping him again.

It is certainly useful, I just wonder if we still need these mailing
list reports specifically. AUH does largely the same job, and adds
proposed upgrade patches too :)

Alex

