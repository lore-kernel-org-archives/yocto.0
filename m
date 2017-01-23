Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37AC5E0082A; Mon, 23 Jan 2017 05:53:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC1AE00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:53:39 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id m98so15036886iod.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qLJl5xGa6uzzyx08v6gxKLqhOlCyEzNG6CLxlpIpMFg=;
	b=qTCGErRQum6h1mhri0W/cgTbnUZ/CY1PTY0Q3upoSVNs2ar83Z6WBIXxo2kvdvrO5O
	zhton75WkbT2B+MQ//YvuJBWY/C5t5v84h5jzUiftomgrE/9kmkD/zYb/4CvBeE+1RvP
	8J2npWIKl2p+E4dGTKD9vNRtFxl3sG+mIpphkDnb/vgqorRmsVpwry2dAiqFfsosyvXM
	ra8Hqvtem4+exPev6U3Lc5lrSRzmQ1KajIZO71lh91iRkZghVLFzTiO3AP99jYni7Vu3
	yn1dEG2vwirM/r06ukHKgFQMf7LmBoauFgMrAaJ3PsjEw62+cfHJ5iCnVro6uY/IkqAQ
	XcKA==
X-Gm-Message-State: AIkVDXLUdzGb4Q5qK3ZaT05xa6M5iZdLGGuvNUUJltumbOdUq+16UenhfqoLDZ2/Vs8j3A==
X-Received: by 10.107.169.205 with SMTP id f74mr27962138ioj.28.1485179619168; 
	Mon, 23 Jan 2017 05:53:39 -0800 (PST)
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com.
	[209.85.223.177])
	by smtp.gmail.com with ESMTPSA id m79sm9602498ioo.0.2017.01.23.05.53.38
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jan 2017 05:53:38 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id l66so110440269ioi.1
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:53:38 -0800 (PST)
X-Received: by 10.107.37.148 with SMTP id l142mr23046334iol.159.1485179618537; 
	Mon, 23 Jan 2017 05:53:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.18.73 with HTTP; Mon, 23 Jan 2017 05:53:37 -0800 (PST)
Received: by 10.107.18.73 with HTTP; Mon, 23 Jan 2017 05:53:37 -0800 (PST)
In-Reply-To: <1485178020.20333.33.camel@intel.com>
References: <20170117155910.23792-1-git@andred.net>
	<1484671376.19478.75.camel@intel.com>
	<1484671769.3257.8.camel@andred.net>
	<1485178020.20333.33.camel@intel.com>
From: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
Date: Mon, 23 Jan 2017 13:53:37 +0000
X-Gmail-Original-Message-ID: <CAKUP++sSpg2bSO=03_ziqG_uVmd8_U1-YQw_hw_L7J3YfkrKmA@mail.gmail.com>
Message-ID: <CAKUP++sSpg2bSO=03_ziqG_uVmd8_U1-YQw_hw_L7J3YfkrKmA@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Mon, 23 Jan 2017 13:53:42 -0000
Content-Type: multipart/alternative; boundary=001a11405eee973c700546c3537b

--001a11405eee973c700546c3537b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 Jan 2017 13:27, "Patrick Ohly" <patrick.ohly@intel.com> wrote:

On Tue, 2017-01-17 at 16:49 +0000, Andr=C3=A9 Draszik wrote:
> I have no preference either way.

Let's remove the hard dependency. I've posted a "swupd-image.bbclass:
avoid depending on time command" patch which does that. Are you okay
with that?


Sure, thanks Patrick.

--001a11405eee973c700546c3537b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote=
">On 23 Jan 2017 13:27, &quot;Patrick Ohly&quot; &lt;<a href=3D"mailto:patr=
ick.ohly@intel.com">patrick.ohly@intel.com</a>&gt; wrote:<br type=3D"attrib=
ution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div class=3D"quoted-text">On Tue, 2017-01-=
17 at 16:49 +0000, Andr=C3=A9 Draszik wrote:<br>
&gt; I have no preference either way.<br>
<br>
</div>Let&#39;s remove the hard dependency. I&#39;ve posted a &quot;swupd-i=
mage.bbclass:<br>
avoid depending on time command&quot; patch which does that. Are you okay<b=
r>
with that?</blockquote></div></div></div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Sure, thanks Patrick.</div><div dir=3D"auto"></div></div>

--001a11405eee973c700546c3537b--
