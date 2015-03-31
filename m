Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B9FE008CF; Tue, 31 Mar 2015 03:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8101AE00858
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 03:55:31 -0700 (PDT)
Received: by qgep97 with SMTP id p97so10419286qge.1
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 03:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=zH8laLilGMvVu/wnhbXwYRrKCpsIAh3cGccGEokVlbs=;
	b=JJonQxSaO/rG6NFuqv3qek/ydvBEofNAWfsH9rEnPoTe6TwD4zSpQWTIrekHGere3h
	BnTArrFdiX0dFfjeOnOaPvOtTx1nD5Xez4sDVJn6fQWDaXMVRs0aoPp5PSUBSTQqG0pM
	2YZICGKI1Kf0c8JSluJLjk2+iwmDp3XMY1beS4S64UDc2El2e5sK6cBI9+J9l8NvK3zh
	ge/auGuo0wXnA2C2hWRFxQBCFrxUEWPwIpblmpnWTuU5wrser0ITq/Z/NwaUJ/dVj63A
	h949gG9JtyqtofBxxb7yyZlJXAO7821mt2qeFCULrIdA1AFCOPkZrnFUIO+If4eojJOR
	UCbg==
X-Gm-Message-State: ALoCoQk1skt+EUXLkcaV6tXRd/FNr1Y5RON8OQpkrZmjG6ciyGzDiVpc9UuxBkZyKgXaYA0xWrYx
X-Received: by 10.140.34.69 with SMTP id k63mr5997921qgk.15.1427799330865;
	Tue, 31 Mar 2015 03:55:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Tue, 31 Mar 2015 03:55:09 -0700 (PDT)
In-Reply-To: <551A40B8.2000307@dynamicdevices.co.uk>
References: <551989B0.7070907@dynamicdevices.co.uk>
	<CAJTo0LZ7D4NsVNP155jOy0pRzLCCxrYu_EbSLG60cQU8TN_hfQ@mail.gmail.com>
	<551A40B8.2000307@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Mar 2015 11:55:09 +0100
Message-ID: <CAJTo0LY=52F9TuE6vGCzbbjKWKiHOtBVsSMbcdwpUQUJe5zOmg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: yocto master work-shared, kernel .config seems to have gone awol
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
X-List-Received-Date: Tue, 31 Mar 2015 10:55:32 -0000
Content-Type: multipart/alternative; boundary=001a11c10a38ed574d0512936f0f

--001a11c10a38ed574d0512936f0f
Content-Type: text/plain; charset=UTF-8

On 31 March 2015 at 07:37, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

> One thought - it might perhaps be helpful to have two command variants to
> easily drop into either place from the command line without having to worry
> about environment variables?
>
> e.g. bitbake -c devshell-shared and bitbake -c devshell or some such?
>

Only gcc and the kernel have the concept of shared sources, so I'm not sure
this actually gains much at the cost of more tasks to confuse people.

Ross

--001a11c10a38ed574d0512936f0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 March 2015 at 07:37, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevi=
ces.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div bgc=
olor=3D"#FFFFFF" text=3D"#000000">One thought - it might perhaps be helpful=
 to have two command
    variants to easily drop into either place from the command line
    without having to worry about environment variables? <br>
    <br>
    e.g. bitbake -c devshell-shared and bitbake -c devshell or some
    such?<br></div></blockquote></div><br>Only gcc and the kernel have the =
concept of shared sources, so I&#39;m not sure this actually gains much at =
the cost of more tasks to confuse people.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c10a38ed574d0512936f0f--
