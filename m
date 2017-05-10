Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DE09E00B47; Wed, 10 May 2017 06:08:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_SPAM,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81523E00B3E
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 06:08:45 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id n4so28223347qte.2
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 06:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HptQMF3ffiIAZ0n53iOW9uCcyRDvkDLEtW2CqMvipTM=;
	b=Avj21EqB+tgKzzsESsP/kpxuL66IBp3G0Fy2aAtHQJHVTChn6SR6b7l/BtXsla0RPo
	WCYQpY9S6tYQlHSHli6utokZBBk5ivZpzyp2wLBz9g20/8PHXkdWASZxKJcXGZhFKfWs
	0gwn2IdCxObhFLFDuAGEcM3glTZ5QWGDwNdIyyPLePkArfsF2+0AhKSNpvRIuthQC/W6
	t9Zkh3K5O2u7fuZy2/cFmdvlnLTC5da0Tz8wD/gxV1e+f6FQIu9jz3Kqs4tXeAUAiYA5
	nOaZ5fCTqABSrYyHfHzILNYgzFFFtAx0YNb75tCNIuKf0ePBOTsGRnYyh3BLI2iKe958
	RcVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HptQMF3ffiIAZ0n53iOW9uCcyRDvkDLEtW2CqMvipTM=;
	b=R69oU2TSvh9Z7zGtm2Tw4/rE6cCDDVBN6F75YdI3yzh1oO23+NIg4G1yz+SM9SGlK9
	ACxo4Q0zjKIW0cUHprmHqwaSRDpvoVGGkI/8VSIW2+W633fKzJqPjVV6h0D0ULWoQ10P
	NP30K1MUF0hlf1p9pdUHtL7hWZm/54Ot6PEn/sVqEZbZ/htgugDJuzNuIkAvAwhyoq+w
	zzf4ecu500SuuSBOoCcUN5Z0Rf5VlQVpXzCGiVfplirTynI0eHt1MVNSH7s0JXvksAeH
	pA3bTt7hDwek96OhwwbUmQv2f+WFZMpIQsa1Z+06zNtpxKLY3BgGbOynkI9XLy7XV61B
	mSww==
X-Gm-Message-State: AODbwcCZouKfSsLJXKPLCgxQi/9KYLFvPifT91nNZLRHBnDwltBNrbCC
	Fr6O2hFFibqe5m3zkVfdv2oZvjxB+lt+
X-Received: by 10.200.50.49 with SMTP id x46mr5828193qta.105.1494421725052;
	Wed, 10 May 2017 06:08:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Wed, 10 May 2017 06:08:24 -0700 (PDT)
In-Reply-To: <012f01d2c983$68bea8f0$3a3bfad0$@ln-systems.com>
References: <012f01d2c983$68bea8f0$3a3bfad0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 May 2017 14:08:24 +0100
Message-ID: <CAJTo0LbyY66BKTacRNTB5hu8wq8rrg_3dzCXb-pOiP12ar+YDA@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Configure errors in my recipe
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
X-List-Received-Date: Wed, 10 May 2017 13:08:50 -0000
Content-Type: multipart/alternative; boundary=001a113577a21114ff054f2b2cb6

--001a113577a21114ff054f2b2cb6
Content-Type: text/plain; charset=UTF-8

On 10 May 2017 at 12:48, <colin.helliwell@ln-systems.com> wrote:

> | configure.ac:88: warning: macro 'AM_GLIB_GNU_GETTEXT' not found in
> library
>

That's part of glib, so add glib-2.0 to DEPENDS (and remove gettext-native
as the inherit will handle that).

Ross

--001a113577a21114ff054f2b2cb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 May 2017 at 12:48,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.hel=
liwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1c8" class=
=3D"a3s aXjCH m15bf230e2f99bcac">| <a href=3D"http://configure.ac:88" rel=
=3D"noreferrer" target=3D"_blank">configure.ac:88</a>: warning: macro &#39;=
AM_GLIB_GNU_GETTEXT&#39; not found in library<br></div></blockquote></div><=
br>That&#39;s part of glib, so add glib-2.0 to DEPENDS (and remove gettext-=
native as the inherit will handle that).</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a113577a21114ff054f2b2cb6--
