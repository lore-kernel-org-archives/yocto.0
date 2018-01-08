Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF768E00DF2; Mon,  8 Jan 2018 04:14:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F06E00A00
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 04:14:06 -0800 (PST)
Received: by mail-yb0-f177.google.com with SMTP id 65so238246ybz.6
	for <yocto@yoctoproject.org>; Mon, 08 Jan 2018 04:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1kD+x4BCx1dPA6DxjyLFs2FBTes2PWStqLYdFsfgSTs=;
	b=qoA+lltN1B/WXP7EjOGojpifmN6+gHEgUqzwPxpNR6wHuJbzIeXQDnE3Rhyd86rOhF
	ufV1wkRU8v5o8kPD1eU8hsS5c1Ag6hyiqx2g7Ig1XdV6rcufN9HdZthWTLk3rmuvH+33
	GDpX87XodvHhNCHQvVovrGt+sgWcwoqZx6P0xjZEq/IoDcSJx7PEqBjjiFZN8WlC533Z
	ADJVdyBvrBHyaVoZD8T+Xu4QvaAPaN+vF7/She5zvu9TuwFe1lHShxsrz0CXmHOQpa9W
	j+zFkO4VSDAj8gzpFgk6P6QUllMt1fvhuO3xsuX96cFHJ7uDWu6urxCMOZ07tH0II5zh
	5zMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1kD+x4BCx1dPA6DxjyLFs2FBTes2PWStqLYdFsfgSTs=;
	b=c+WhnzT3mkD2QgxnwmvyZjuPPUr2xZJpyWpOVjjv+5QllFp4IfVtNJhBHFIiYs7WOs
	hsOP0A8BKwYst/1cJlSeG+jgMmTLoYXHvOm0oRHAIbqwCClXHvue0RJ+7rpk5jcqb21p
	9gUPvoYoVifHF3wZj0kvUb2aaaUB6KHf9QTXa/j2H21pkM7QAznt4PQyU7Pbl6x0M3sW
	zTnS4sEmAI04cY5QtcWOm+t6I2DwHsWp7AYbtYDh9uNhZk6zHK8O0NYLvaTI/XtmOxpi
	TWdhJKN+OyOMVZxZCWyyVIGb7UITNvgEeresmwc0JqrH0CHjlXIwPUtUWFGlOj+Ns/xL
	vqFg==
X-Gm-Message-State: AKGB3mI/JixyuXEYjX8h6gEb6abNXw4bp3opajRHzsDQ8KGspAYoITab
	heZEJlSnh9GT90nK3WXmItBy+krb2qE6yeYEOG0=
X-Google-Smtp-Source: ACJfBouKJEbjQjjui3fTwpinsR9LZL0A+RFC0NcNuCbVxFeinwdh2CiWcIFz228xyPRbUk2Im3CKyeZj5PjQppz2CH0=
X-Received: by 10.37.133.143 with SMTP id x15mr10541366ybk.253.1515413645853; 
	Mon, 08 Jan 2018 04:14:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.130.136 with HTTP; Mon, 8 Jan 2018 04:14:05 -0800 (PST)
In-Reply-To: <4652517.ZQGAsBVoUS@peggleto-mobl.ger.corp.intel.com>
References: <CALbNGRRKv72-BPBKKeEMwCiGUf5VkqCE6gSYf91pUPySX=eK_A@mail.gmail.com>
	<16972162.Agi7Apa5Ls@peggleto-mobl.ger.corp.intel.com>
	<4652517.ZQGAsBVoUS@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Mon, 8 Jan 2018 13:14:05 +0100
Message-ID: <CALbNGRTWb-EhnVQnVgTOLZpNXfTuFLzCvpfO9hdUcGFERyCqHQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Layer index not updated
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
X-List-Received-Date: Mon, 08 Jan 2018 12:14:07 -0000
Content-Type: multipart/alternative; boundary="089e08329d3c0c877a056242bc8c"

--089e08329d3c0c877a056242bc8c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 20, 2017 at 9:12 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday, 10 November 2017 8:32:36 AM NZDT Paul Eggleton wrote:
> > On Thursday, 9 November 2017 9:36:26 PM NZDT Andreas M=C3=BCller wrote:
> > > did not find any heads up here so: Layer index stopped updating ~1,5
> month.
> > > Low priority - this is just notification & thanks in advance for taki=
ng
> > > care :)
> >
> > I reported this to Michael a week or so ago but I think he's still
> battling an
> > upgrade of the layer index code among other things. Michael, any update=
s?
>
> Looks like the layer index updates are still broken - Michael?
>
> Ping?

--089e08329d3c0c877a056242bc8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Nov 20, 2017 at 9:12 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span c=
lass=3D"">On Friday, 10 November 2017 8:32:36 AM NZDT Paul Eggleton wrote:<=
br>
&gt; On Thursday, 9 November 2017 9:36:26 PM NZDT Andreas M=C3=BCller wrote=
:<br>
&gt; &gt; did not find any heads up here so: Layer index stopped updating ~=
1,5 month.<br>
&gt; &gt; Low priority - this is just notification &amp; thanks in advance =
for taking<br>
&gt; &gt; care :)<br>
&gt;<br>
&gt; I reported this to Michael a week or so ago but I think he&#39;s still=
 battling an<br>
&gt; upgrade of the layer index code among other things. Michael, any updat=
es?<br>
<br>
</span>Looks like the layer index updates are still broken - Michael?<br>
<br></blockquote></div>Ping?<br></div></div>

--089e08329d3c0c877a056242bc8c--
