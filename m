Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5CD3E00905; Fri,  2 Sep 2016 13:38:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F10E0083D
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 13:38:51 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id e124so58561586ith.0
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 13:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gjVEio1KCdHcPJISWMmpybOHPQX9CU06+qO/lGUTuWo=;
	b=S3rYWBU0eVjc5VAwzbDZWVIvteKXtlVFv7AEQmZC+xdiW8T517YFVjQmVEeBcWfalP
	Hn4009G+2QQPURMAYYvKSvLHyFFE/6kNdZFLOeHtr4yTVxrTdD4v+k7cPFgiftIsJVVN
	7x3lx8WdrzuAMDXw6MphPy6aiCk9cv7qDtTLq88UC2zFomOPiwlTmtKYD/b6F6+w9zyP
	M6p/ZKYEfyhrLaiG6NmT/BUJvSdiYv0aQMikGrjAxJfNQSKuKRwRxNV4NJrEtZ6wEQGk
	AtMrqz8SJO3ULcnmrB5nkEv2BeLEomFCUWHPsEpz4+AVBALny4DuCFGVjc0m6AQ0GWHC
	xAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gjVEio1KCdHcPJISWMmpybOHPQX9CU06+qO/lGUTuWo=;
	b=diefj3qIBkVn4xVZp+LcPOu8LKP387PQSX505uSG1954KzT2TinL9x5yj9se8C4aTJ
	7Vtdo0uiooLFb/suEakI0QZZAPJloXoQJETmIAw5K3tAC1gybZhOX+WqzjfEB6kREEOd
	RIhT7PrvPS1dA0SBo7bRBlzc50ZFw3DJGWacGsX0DtstLPG6oGkt6rTk0YNrOqEZH0FU
	p64HU2pprPBaHAzI4V7UTWRXQCdjkDvYuDOW9i/VnXnH8pDcdd8SuIlJdudDj/VDZVlz
	pHo7ULN3twTFqJsH6WmtAB0Qb3qhd0w5Hr2yWMwNjoTA8diM4fuTQwWCHV9ASOCP2avP
	mYRg==
X-Gm-Message-State: AE9vXwMK4C44O1MDjY1LcXJI9E8qQKpMg/a5XaGoYRye0WBeNNtFstO6vY+Iam2tYxaj22XKDTF3I3QShjPwuguS
X-Received: by 10.36.20.204 with SMTP id 195mr7008597itg.83.1472848730249;
	Fri, 02 Sep 2016 13:38:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 2 Sep 2016 13:38:29 -0700 (PDT)
In-Reply-To: <1472809074511.4904346.d7b67376df474a2c9d5e3203df7516240d1e1763@spica.telekom.de>
References: <1472809074511.4904346.d7b67376df474a2c9d5e3203df7516240d1e1763@spica.telekom.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Sep 2016 21:38:29 +0100
Message-ID: <CAJTo0La9v8M1e7GajBmya2AeH7PnMZniTtyB0Hhs_Wf4xBJxhQ@mail.gmail.com>
To: "pirmin.weisser@t-online.de" <pirmin.weisser@t-online.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto web-kiosk project matchbox-keyboard
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
X-List-Received-Date: Fri, 02 Sep 2016 20:38:54 -0000
Content-Type: multipart/alternative; boundary=001a1143e4e4601b89053b8c51b6

--001a1143e4e4601b89053b8c51b6
Content-Type: text/plain; charset=UTF-8

On 2 September 2016 at 10:37, pirmin.weisser@t-online.de <
pirmin.weisser@t-online.de> wrote:

> One function is not working on the target system: The automatic popup of
> the virtual keyboard when I select a text entry field (e.g. by touching it).
>
> Display and Touch are working fine, internet connection via Ethernet is
> there and the midori browser comes up automatically.
>
> If I start the matchbox-keyboard manually with
>
> >Display=:0.0 matchbox-keyboard
>
> the keboard windows comes up and it works as expected: I can use the touch
> screen to enter text.
>
>
What version of Poky are you using?  This was broken in a previous release
but should have been fixed now.

Ross

--001a1143e4e4601b89053b8c51b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 September 2016 at 10:37, <a href=3D"mailto:pirmin.weisser@t-online.de"=
>pirmin.weisser@t-online.de</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:pir=
min.weisser@t-online.de" target=3D"_blank">pirmin.weisser@t-online.de</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p style=3D"margin:0px 5=
px 0px 0px">One function is not working on the target system: The automatic=
 popup of the virtual keyboard when I select a text entry field (e.g. by to=
uching it).</p>
<p style=3D"margin:0px 5px 0px 0px">Display and Touch are working fine, int=
ernet connection via Ethernet is there and the midori browser comes up auto=
matically.</p>
<p style=3D"margin:0px 5px 0px 0px">If I start the matchbox-keyboard manual=
ly with</p>
<p style=3D"margin:0px 5px 0px 0px">&gt;Display=3D:0.0 matchbox-keyboard</p=
>
<p style=3D"margin:0px 5px 0px 0px">the keboard windows comes up and it wor=
ks as expected: I can use the touch screen to enter text.</p>
<p style=3D"margin:0px 5px 0px 0px"></p></blockquote></div><br>What version=
 of Poky are you using?=C2=A0 This was broken in a previous release but sho=
uld have been fixed now.</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></div>

--001a1143e4e4601b89053b8c51b6--
