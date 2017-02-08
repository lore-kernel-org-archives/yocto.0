Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1898FE006C6; Wed,  8 Feb 2017 07:01:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6911CE00519
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 07:01:30 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id x49so167183364qtc.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 07:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4pbEQSS7VzeZhCHV9/VcHWh6tNky/SIMum3CZcs11l0=;
	b=gDEtTf82B5N8acLjajeZ5wi622vfUyscSUGDa4ZWY/KDaFDvU3XzBoo04O5l+c7aHK
	CNbqy1Rr7SMsPWU27InZar2ob2F7JiYfHELY3+6MsgKgKnDlAlerPne+n58FU5uQboSn
	yyoEZ8MadD3OgtN7hEQOqZlzbSeL290Dsxp1E7nwESIfvfJBym+g3ZhKKNk767eoxLiG
	wnRTe/HvBJjHs71tqb57LavSTjdrJXRnmKOAC7CnBv6Fbi0VywjBrTyA3St6scngShQa
	nQmrNJlghdPTwf1ysuEplSvawSYCwllGWm92C4WOxGvdkcNA5cT0Z56EpPGd3i3yW7ml
	CTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4pbEQSS7VzeZhCHV9/VcHWh6tNky/SIMum3CZcs11l0=;
	b=BvqymzPRW/xFGG68hRReKfAHNZAItz7UIGQrrWEKoe7mHp5QQus5K0bwAcjlQL1pZ8
	Z6ftfR2KqToQvp1l/jS5nwFxQIEuGi3MkhkrUsxvdvDrkVujoSmlcx9TzN+wmQL+2XIh
	rY8EtzOStqv5hGhBoj0bZ1n/Z9ASLyxx5sFd2Y7J3Uc1kiOgVG2/eS2HGI+Ryh1fp+9L
	I2IBfYCskuotKllzyVMOKMvGtS2CF1QBeW0KE9+x4XP7UgBcoElxbuVwyA+g+lR4QiLN
	DBhQ75AJqGO1+GCCUrK+0A5j/Vr8oJUnQJ9h99CNVystPwkdtul9d1JAkA2TdvbReTJw
	n/qQ==
X-Gm-Message-State: AMke39nkyElo7FrfTTVLOt2OaDAd5MeHvoP83WR4BuNl2YJ6g7+fJRVeq0p12fMJVMb4i6nDGjtyysxM4Koalcg/
X-Received: by 10.237.54.1 with SMTP id e1mr18971011qtb.68.1486566090269; Wed,
	08 Feb 2017 07:01:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 8 Feb 2017 07:01:09 -0800 (PST)
In-Reply-To: <CABaDK3Vx3kuY0h8G9pX8TLKCCWEOz3-s2XfzpoxSKHKShx-MAQ@mail.gmail.com>
References: <CABaDK3Vx3kuY0h8G9pX8TLKCCWEOz3-s2XfzpoxSKHKShx-MAQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Feb 2017 15:01:09 +0000
Message-ID: <CAJTo0LbMNK-z=w8eB4R+AHBjw5FoPJiZ9_kxYh1P3O_PFowtuA@mail.gmail.com>
To: Joseph Ngigi <jngigiw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Core-Image-sato GUI
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
X-List-Received-Date: Wed, 08 Feb 2017 15:01:44 -0000
Content-Type: multipart/alternative; boundary=001a1142dcf0bf0c4005480623e3

--001a1142dcf0bf0c4005480623e3
Content-Type: text/plain; charset=UTF-8

On 8 February 2017 at 10:43, Joseph Ngigi <jngigiw@gmail.com> wrote:

> My only concern is I'd like to include a login prompt once the GUI starts,
> for security purposes. Which files should I use to do that?
>

meta-oe has some graphical login managers, such as lxdm or gdm.

Ross

--001a1142dcf0bf0c4005480623e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 February 2017 at 10:43, Joseph Ngigi <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jngigiw@gmail.com" target=3D"_blank">jngigiw@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div>My only concern is I&#39;d =
like to include a login prompt once the GUI starts, for security purposes. =
Which files should I use to do that?<br></div></blockquote></div><br>meta-o=
e has some graphical login managers, such as lxdm or gdm.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142dcf0bf0c4005480623e3--
