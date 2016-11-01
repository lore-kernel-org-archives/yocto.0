Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB0BE0049B; Tue,  1 Nov 2016 10:11:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B42F7E0045D
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 10:11:42 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id v138so115973667qka.0
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 10:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uQh4eMT4zOUTWM28dgTn8WriP+LIdiTiYxuh/W3ghdw=;
	b=Vw0rCm3oLV/BaDlOFwlmUftKjeIn0uhFlOhMnErCucxRUZrGMYJtFpxiOBpPUzV4hL
	1xVxsfpq5ufOX4YLe+uYH885QSMkiAoUYYLYBDYaV3RiNq2MO3VvYpfFQRdYbubBSWZY
	vi95XSsQaKTvfprWJ36t+WjqNl57fIq8RBi5jKnlIinHa6bl9Ql3N/1aXeGZC2dDl/EB
	A3dYOdd3gSiNr0/tALi+qws6Jw9XUcY4+RaIkMG6tlaRulkKJTBUg4MSkgROICPMp6Cv
	NgAvLOJ9huGgu+6ARe8ybXxCP9ZXKr4PITFE/M2oXH7NdDgTfZMwZE0WTMvxG5XKMJDr
	5YsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uQh4eMT4zOUTWM28dgTn8WriP+LIdiTiYxuh/W3ghdw=;
	b=LCPKT8x+ainqNPwUd6KF23D7uYD3ldnDf69a9KuMaT0naHv/lzbkGIw7HU7tcqVfCZ
	CQVgVlX8Nmjkx+Sw3+9oKuZdsLy8qsgxHtqDOxJx+/cnfpfC1ejmg9Qo9VpozDwg70GY
	LJm6UDOo/gw7e7BoHn5V8mHA1OwFJTxiTeJZniPl69ECnn/Xi0+OYxEMrfsLn87Kosel
	rffjc5/8TQ4xOnLdLTEXNBpzRtQV5pGTOLX4yofrBPbjdZD6IWDI4vjTwO9EZ5Hr21lS
	2M56iG0pYrS5p1hQlNmiW2IhLeuHNzZICahe3+UN3IiPsnKmgS51EyXCCQaSpmRnRGaS
	4bgA==
X-Gm-Message-State: ABUngve5VSA2vPqjK91byEY4o4DQ33+FLLAlogmoLlGz2XRYAmy5qV6UsDl/kRSoCCp9G8FIJL2cwAQjj1EegzHE
X-Received: by 10.55.8.20 with SMTP id 20mr34105538qki.3.1478020301503; Tue,
	01 Nov 2016 10:11:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Tue, 1 Nov 2016 10:11:21 -0700 (PDT)
In-Reply-To: <21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 1 Nov 2016 17:11:21 +0000
Message-ID: <CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 17:11:44 -0000
Content-Type: multipart/alternative; boundary=001a114c9d600ad97d0540406b23

--001a114c9d600ad97d0540406b23
Content-Type: text/plain; charset=UTF-8

On 1 November 2016 at 17:05, Bas Mevissen <abuse@basmevissen.nl> wrote:

> What are the criteria to call a distro supported?
>

The short version is that it's a distro that doesn't change too much, is
still supported, and we have builders on autobuilder.yoctoproject.org
running that distro.

The Centos mismatch is annoying, can you please file a bug?

Of course this is just a notice and you're entirely welcome to ignore it,
or even set SANITY_TESTED_DISTROS to "" if you're using poky.

Ross

--001a114c9d600ad97d0540406b23
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 November 2016 at 17:05, Bas Mevissen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:abuse@basmevissen.nl" target=3D"_blank">abuse@basmevissen.nl</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1mt" class=3D"=
a3s aXjCH m15820dc2cabc4df9">What are the criteria to call a distro support=
ed?<span class=3D""><br></span></div></blockquote></div><br>The short versi=
on is that it&#39;s a distro that doesn&#39;t change too much, is still sup=
ported, and we have builders on <a href=3D"http://autobuilder.yoctoproject.=
org">autobuilder.yoctoproject.org</a> running that distro.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">The Centos mismatch i=
s annoying, can you please file a bug?</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Of course this is just a notice and you&#3=
9;re entirely welcome to ignore it, or even set SANITY_TESTED_DISTROS to &q=
uot;&quot; if you&#39;re using poky.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Ross</div></div>

--001a114c9d600ad97d0540406b23--
