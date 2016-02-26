Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 329C0E00DAF; Fri, 26 Feb 2016 12:59:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B239E00C23
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 12:59:14 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id z8so43805080ige.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 12:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9vM3H/KBU22OrgWucuW00lvaX2DbWnSX7hToXMj/nBI=;
	b=2M+nDdPpTX/ZJGJT/VFXu3EavEaSunTH6OAJoWC13X/Ubgoz2PaZeVUws2g9QaF0Mt
	qsCdN5Z07ialxeoi7k/yjg3N8qFLuC51KnPmT22YQxSsO3SQpv/Kw+38AYwEagnoeZ0J
	OuhNnIaOs4KZNU/tV9VDrOQZV78TK4T8ZAwQsYmoqjJQpGBB9xePxSDgKWfGwemV0Q+Z
	wpROY+CU1ZZkoife5D8tD5h/3nys9kpd0jE9A8JuuwpcNnR4IGhA+WgdRR23v+dyUAiv
	m3iiWwYQ29VaGqrTjSsv7twOx12qB67z+pv4wamjS8rbVVJuf0pnuHpd68OB30yGifP/
	YCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9vM3H/KBU22OrgWucuW00lvaX2DbWnSX7hToXMj/nBI=;
	b=WXCVusRNIVvGEYgMDjVDqZtEt2dAjgyPIPB0c5T2ggChwGpFeDZVZSttWTskHmgSsU
	csfTxctzb8OOJswJyWjJ+wFwu7vmxF1Yn5og8RSaDNdgGllwFdW0BJjK3d2lbaf5LUAX
	B579zmKoExugtCxfEW79eg8KWtky2pvrCfrKR9SPa3Or1qF0TRvzp68l+s6SoZmDdOk1
	1LfDt7weMwTrmvwdM9DRwp8LyVIS67zvH2yT2TZm7E2YzYdT2o4IDSyIj4jlmBWgKO8M
	+tu5gq6Ca5G67fHMCXmErSWSzfNz9Hkcdq8jRmXJbIsAu8MzcdkKF7sgaLwqTcx02lCr
	4htg==
X-Gm-Message-State: AD7BkJIxhP/CfNMeOg/PDYIrqfa6G2t/eHbJ1V1Uv/S7W6xN7fzSSxK4TwfwKj7lWJafmPmnDGS886luZfqXXF7w
X-Received: by 10.50.126.8 with SMTP id mu8mr4537756igb.52.1456520354243; Fri,
	26 Feb 2016 12:59:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 26 Feb 2016 12:58:54 -0800 (PST)
In-Reply-To: <56D0B298.9050108@balister.org>
References: <1456508168.11498.95.camel@linuxfoundation.org>
	<56D09D35.8040002@balister.org>
	<1456512644.11498.108.camel@linuxfoundation.org>
	<2042150.gN3rpHrprf@rjs-zotac.streifs.net>
	<56D0B298.9050108@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Feb 2016 20:58:54 +0000
Message-ID: <CAJTo0LbNVZ9k5P+ugk-kg4_PBG0P8nbkJpBHjkv2XqvJrjsdyA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW09
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
X-List-Received-Date: Fri, 26 Feb 2016 20:59:16 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf52fd62052cb292b4

--047d7b1635bf52fd62052cb292b4
Content-Type: text/plain; charset=UTF-8

On 26 February 2016 at 20:16, Philip Balister <philip@balister.org> wrote:

> I must admit, I'm surprised this is tricky. I look forward to seeing
> what needs doing. Hopefully, it shows me things I can avoid in my work.
>

The moral of the story is don't rename layers if you want to maintain a
semblance of migration.  Renaming meta-yocto to meta-poky means the
bblayers.conf is invalid, so the migration code can't run because bitbake
aborts too early.

Ross

--047d7b1635bf52fd62052cb292b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 February 2016 at 20:16, Philip Balister <span dir=3D"ltr">&lt;<a href=
=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1o9" class=
=3D"a3s" style=3D"overflow:hidden">I must admit, I&#39;m surprised this is =
tricky. I look forward to seeing<br>
what needs doing. Hopefully, it shows me things I can avoid in my work.<br>=
</div></blockquote></div><br>The moral of the story is don&#39;t rename lay=
ers if you want to maintain a semblance of migration.=C2=A0 Renaming meta-y=
octo to meta-poky means the bblayers.conf is invalid, so the migration code=
 can&#39;t run because bitbake aborts too early.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b1635bf52fd62052cb292b4--
