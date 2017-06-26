Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A600AE009A0; Mon, 26 Jun 2017 09:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696CFE00718
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 09:12:46 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id m84so1338489ita.0
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 09:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MXrnQC3fQI5SQ/n4qWTT2iOaBbBrm1rAZUdxX/xVE4I=;
	b=gkeq6nzHfy/vcAISgIDjd+szVAKWaBZpXVvmnHgNVvxgpnFb/Ggw9NkxwVa0aqpFml
	KpzFZsXMl8AyP70gHShzgEm7zTBPO+RqB72CcUah9iHdXvQfso7uDq2ujGuZgDHWR0mC
	Ilp0LAMEJUKCL3UiEy6EI08tZLB4abKgTSPIAx6GsUC/6smZJ2PNlRsddSX9BCTLk/ET
	JqwlQr+fBlNkOqLAKjFQxZ2qKdpwXwPgfSXItuw7jUP/f7aG9YQmlJjx1goWylgKbd37
	DM/61Ju1HPndaKh8tDlVGEnmL/RTRRfwFw4B2F0pEbcDjnepUs/MvnnwMVdRtJRjcAvR
	y0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MXrnQC3fQI5SQ/n4qWTT2iOaBbBrm1rAZUdxX/xVE4I=;
	b=QxT66RMUlbf/u7VL6DuNAyCejJjPDoO/ZhYUmDQjT+m7SpzmuNdFeCEWyBFb/qykSV
	kEP0ZKSrhfI+eso/C0DDJrxYYetPqeyQaTiL94mqjvRBVedRt0z4tpQEZ8gGRuH7qYj9
	xaawhEA/xrEXTAtNy/3sx0HlHAM97906NRENbCdOFNMyf9h2A0zNZGb2nebxXhoxM+DY
	rfCvCJf/Z44Yx0anwyo51ex4igQbek+bLPSydTWGqr9uPUKZ4PBOwaAqYtsqcr3oyEyt
	7FGJ7Pw/Frd6XA+9tymXi0WPI3wsBtKkrP1l8DGBz1k12YOqPwCIHSqzOv18ohhTM3AI
	Z/9A==
X-Gm-Message-State: AKS2vOwz39LKNN/vkQErqkJ3gU/tSntNXDtxlRzAY+tdMUBf+3zjYQI+
	aLlwn5s2hmN0kvMHoOh7/uH3gCqFvuyLI2qilQ==
X-Received: by 10.36.88.135 with SMTP id f129mr474481itb.22.1498493566235;
	Mon, 26 Jun 2017 09:12:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Mon, 26 Jun 2017 09:12:05 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <CAHUNapSrkQSNUA9hRmw+wH0rN3zNcxSdQmoP-=WG-pegFW9qnA@mail.gmail.com>
References: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
	<CAHUNapSrkQSNUA9hRmw+wH0rN3zNcxSdQmoP-=WG-pegFW9qnA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jun 2017 17:12:05 +0100
Message-ID: <CAK18fxFB7oLwTQ93wYQXV6JZZ0OZ6jaNNfgKzSBeqdFc6qGfLQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Jenkins, reviews and mailing list
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
X-List-Received-Date: Mon, 26 Jun 2017 16:12:49 -0000
Content-Type: multipart/alternative; boundary="001a113bbf3cb730db0552df3885"

--001a113bbf3cb730db0552df3885
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 26, 2017 at 2:29 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > We've been testing a setup with meta-raspberrypi which seems to work
> fine:
> > PR to github integrated with a jenkins server and use mailing list for
> > discussions.
> >
> > I propose to copy the same setup to meta-chip too.
>
> That's all fine. As the maintainer (thank you!) you're welcome to use
> whatever workflow with which you're the happiest... as long as you
> update the "Contributing" section of the README :-)
>

Sure. That makes sense.

--
Andrei Gherzan

--001a113bbf3cb730db0552df3885
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Jun 26, 2017 at 2:29 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span c=
lass=3D"gmail-">On Mon, Jun 26, 2017 at 9:21 AM, Andrei Gherzan &lt;<a href=
=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; We&#39;ve been testing a setup with meta-raspberrypi which seems to wo=
rk fine:<br>
&gt; PR to github integrated with a jenkins server and use mailing list for=
<br>
&gt; discussions.<br>
&gt;<br>
</span><span class=3D"gmail-">&gt; I propose to copy the same setup to meta=
-chip too.<br>
<br>
</span>That&#39;s all fine. As the maintainer (thank you!) you&#39;re welco=
me to use<br>
whatever workflow with which you&#39;re the happiest... as long as you<br>
update the &quot;Contributing&quot; section of the README :-)<br>
</blockquote></div><div><br></div><div>Sure. That makes sense.</div><div><b=
r class=3D"gmail-Apple-interchange-newline">--</div>Andrei Gherzan<br></div=
></div>

--001a113bbf3cb730db0552df3885--
