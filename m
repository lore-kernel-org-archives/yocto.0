Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B74E00C2B; Wed, 13 Sep 2017 01:55:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C18E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:55:41 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id g32so303372ioj.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uIrUB3Ueqk5IK4laDM70Zu9bby+2fQpkl6U5u89PDbk=;
	b=VhplYgjc7SS79VoE4BBkkDrUhIHZPuwGlkmJiBP2dlz5J1Y4Z8nJGKiwQS1uiOQL7U
	s59Prd8JgoceOP/KmLOJBlHPOLv04NFIyzzHShzYOzO3mFTpGXQfwWfwePfMnxB9d4HM
	0CvIVADk8CWpadLyUh716lVsgo0PkJFBNaF2bUT73bTGKb70iE1IZhLkTtbGzTUNULU7
	cKjv6tsMiEEHzZ7LLHWokO9RCZkl+4sfGJd0kSlvmDbmmLXTiZQeCFnp11aBwz5CE6bP
	xb0bsV6GAM/UDMfbg8937xYAZO04nL3hf8viIV6mmReMkfOf0kYliuB16du4+3wMl593
	95AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uIrUB3Ueqk5IK4laDM70Zu9bby+2fQpkl6U5u89PDbk=;
	b=phyzEW31OQACNZ9lbWxjm0FTVo+bVzMvpn5FQzZFcZMNZU8+E/6LG3IK0XATA2f+pf
	dZGb+dRgYUXdeD4YVlqEK4pU7DwpPHg9h9Gusfd11KC6KVuxUHWi3ljzqif9FECUO7r/
	7+vA9zkA/U1ZvR2i+x+RfsxvB7eLuqg8ZBsIrpiqS3QMCHeNVPe7kIYVHYkbYM6dcso9
	jAJ8LYj2v3sKCSxlGbUTAsEqfJSzl60wLhuLtFFPbEi8MSq5lo+veEd5G2tpbHn2CovK
	kJbYCOOwx90okpwN5Wi371CXk5gKf/EgX4JFwn0vY89Z03DxaGs4c8Nrk5hbQ/susX78
	Cp/A==
X-Gm-Message-State: AHPjjUjXGSn9S3VcDTRipH7yjLNdA2wDEna6aym6d8x0bjvnvgRc2Jxj
	R+Feo0ywgvQkjcf583fEHh+iQmEJ4dU1AeOEYfMByA==
X-Google-Smtp-Source: ADKCNb5w0DrAaUK7wBTCT0lSOEEUgY8OfpbVTqd6iAgdMemY1gijiF6z2I0buZNHEUNABKnm2PBILVRPXD4xF3zKxjk=
X-Received: by 10.107.133.92 with SMTP id h89mr16852206iod.208.1505292941107; 
	Wed, 13 Sep 2017 01:55:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Wed, 13 Sep 2017 01:55:20 -0700 (PDT)
In-Reply-To: <AM3PR01MB3280CDBFF17DF19270F0E1392690@AM3PR01MB328.eurprd01.prod.exchangelabs.com>
References: <AM3PR01MB3280CDBFF17DF19270F0E1392690@AM3PR01MB328.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Sep 2017 09:55:20 +0100
Message-ID: <CAJTo0LaZYb+ZpDOu3=kqRAwBeTL7qmSTK6sSVpiGzGk_rdZgRQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failed to launch bitbake image -u -g depexp on a Debian 9 host system ?
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
X-List-Received-Date: Wed, 13 Sep 2017 08:55:44 -0000
Content-Type: multipart/alternative; boundary="001a113ff7d009c5d305590e533d"

--001a113ff7d009c5d305590e533d
Content-Type: text/plain; charset="UTF-8"

On 12 September 2017 at 08:56, Karim ATIKI <karim_atiki@hotmail.com> wrote:

> *FATAL: Unable to import extension module "depexp" from bb.ui. Valid
> extension modules: knotty, ncurses or taskexp*
>

depexp was renamed to taskexp.

Ross

--001a113ff7d009c5d305590e533d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 September 2017 at 08:56, Karim ATIKI <span dir=3D"lt=
r">&lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_a=
tiki@hotmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_3943581956551331512divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p><i style=3D"font-size:12pt">FATAL: Unable to import extension module &qu=
ot;depexp&quot; from bb.ui. Valid extension modules: knotty, ncurses or tas=
kexp</i></p></div></div></blockquote><div><br></div><div>depexp was renamed=
 to taskexp.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113ff7d009c5d305590e533d--
