Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10950E0085D; Fri, 26 May 2017 18:53:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8555E0077F
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 18:53:48 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id k91so18622647ioi.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 18:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pwZ7p7pi45wXIsCwAYdg1bTJgK/6lAny+sv+HboX6ls=;
	b=vDCDlOTboiH+zf+Cpz2szXO50d8BfwN+tiVnkeslpmeThYCMnlylksVdOhKl4qmuL2
	eIsK4NLwiOCTs9ICP4rZjUjyiCG4lEbbzY3+U5PNnbRBFi2lbuAfVJhdwtYoPUHAFh+D
	LVq1U9wCaHBSgLLE25SHsKEIusi2Fl64WsHYaQ5E4CW0fK+3clJfFMhGJZMG9AETLodX
	etrhaOAwjTSjnuLehKAoIGyUN7K1iEzw/5q8ZP/Pba/6TJm5Cu2dSJJYtd22gaka4dcz
	jBH6nZUbg4nXeSHIniSNW9k/vhURn6VOHPpIPZkfiKARoa0o1F2rMf2NSs7Tn/g2ivzg
	ZPTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pwZ7p7pi45wXIsCwAYdg1bTJgK/6lAny+sv+HboX6ls=;
	b=T39GLaftuvfx3PmUfIGEImKQ/VWONVoTNUqh1qUS1v8dNdlXpLjoPuzPb9tkQeEqKy
	EvCISsTUkobeKWO1NWg5kWKoO2wlsh8jH8uw2lThn2Lds7PM5s4SKV6QM/8lShqlpkR1
	HepB/cpg/xKaGScZdbZPM6V1BRSB5VcOAPepwh0llHQvY/mgZGK+UOZn1nc2rF8NdnGC
	t/ZY9cCqZ+xqU1NPYS6CZ6tzXvn3dwRoNOFSjZlCv/2z/YQAi1wyUGNkudMga5yJK3kp
	E9rsK5pJAgHwlWhDjOtr0Y9MIp7FX+fvWkiKn+1U9RQxAf0k3a3BvMgq/4chiicYl+LV
	n1bQ==
X-Gm-Message-State: AODbwcBEic70R1xE1JefhZGZAiil6C/yJsG3ZQw1FZLdR+d56MymWKh6
	rIf+Qah1yH8nEnCF4xG+gvMVbv0XseHP
X-Received: by 10.107.167.197 with SMTP id q188mr4567832ioe.110.1495850028106; 
	Fri, 26 May 2017 18:53:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 26 May 2017 18:53:07 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <2F9B07C5AA344ED6AA5B799671B76F5A@PAULD>
References: <2F9B07C5AA344ED6AA5B799671B76F5A@PAULD>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 27 May 2017 02:53:07 +0100
Message-ID: <CAK18fxExd7+Sv6HHq+pU2tH4TWcSS37hhju7BDAVwGGHrd+B2Q@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to replace an arch*.inc file?
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
X-List-Received-Date: Sat, 27 May 2017 01:53:53 -0000
Content-Type: multipart/alternative; boundary="001a1141ca94901f62055077b94b"

--001a1141ca94901f62055077b94b
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sat, May 27, 2017 at 2:34 AM, Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> I'd like to try the Linaro version of arch-armv8.inc in an RPi3 project,
> because it has an ilp32 tune option. What's the correct way to incorporate
> this?
>

Probably the easiest way would be to create a new machine configuration.
Where is this linaro version of arch-armv8?

--
Andrei Gherzan

--001a1141ca94901f62055077b94b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,<br>
<br><div class=3D"gmail_quote">On Sat, May 27, 2017 at 2:34 AM, Paul D. DeR=
occo <span dir=3D"ltr">&lt;<a href=3D"mailto:pderocco@ix.netcom.com" target=
=3D"_blank">pderocco@ix.netcom.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">I&#39;d like to try the Linaro version o=
f arch-armv8.inc in an RPi3 project,<br>
because it has an ilp32 tune option. What&#39;s the correct way to incorpor=
ate<br>
this?<br></blockquote><div><br></div><div>Probably the easiest way would be=
 to create a new machine configuration. Where is this linaro version of arc=
h-armv8?</div><div><div><br></div><div>--</div><div>Andrei Gherzan</div></d=
iv></div></div></div>

--001a1141ca94901f62055077b94b--
