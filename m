Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3284E00D72; Tue,  1 Oct 2019 12:16:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
	[209.85.217.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3CEE00CBC
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 12:16:28 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id b123so10194358vsb.5
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=saQM0YMfmsNzlyDrR/hUmmkZagejvJrEVsSPgy/0AOE=;
	b=AcZlL4GBvrXnZVpn9cQjhtV1Jh2P+x5a3xiGl9Nf2Q+lfkG/ocU0v+vgNlekxAfpRr
	VnZQ0WLh9xEv4Bgoq2iDKgaPviQl2umIeNdHrXTsj2u+TSEMqBmZLJ2VotXhSJ0bL7r8
	GDypoK2yOH30U+N4JDp6o1YQg26BEr7/s6yxShAgR8CpI1KO3r5y+Pn9g/NJYT7cZ1P/
	ygMvSkyaSqKDJ7ZIHW2j25A1pBfValCVbFWVL3Fmda5QZbNHLlH8VyvI+3O1dZ3FqQQ/
	U3J3/BISTi2MIn/urkwF8cYdMHphun20sZ5kUNbxbHYwqHi5elzPZlzRsagpRnBQjI8s
	diqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=saQM0YMfmsNzlyDrR/hUmmkZagejvJrEVsSPgy/0AOE=;
	b=Ez5XW4fa6qQJYCMfk5Z0d77WFYX9PtUZfnqppbx1s50/gEKtU/3r2l5+/Y1bA3FnKd
	Kim+bCiBsZbA9U1eWEuWerWtzzb5gNUcOdB83uLpTnguo18Ai0xJ515LNwGtxQ095xmN
	wIDAW2LVqAzNLkCdOFCv5fEljZFnSyzUF5e4kebxFQDAl55XHO9kdBpT121GBOf+53i+
	ALU5LD18gv7I/2nGqyODd4KjB+Ukwc+0uhcEcbXAWOImaTkT3gtmOY4L09KFb6FXYnz3
	CRPNPJiUEYCRJWrVSlI11tcZiEwcCWiZSRlRhm+IhSIpWuTeWCCSpqU4NsSDub3TKA9O
	EhrA==
X-Gm-Message-State: APjAAAUEFBAAP+kuwaiGh4l+tXu17E6ClWawMrGhv6YTIYs8jxWJatLe
	+eQ2RnVaPJ+G64jg2Xn3Suija9Yntto96uHLh18=
X-Google-Smtp-Source: APXvYqwWMgxP7lpAKE5PY/T/M3ZPt+CxgmQyenPfJ9lQG7JCqczUULCUZRLnhx7I017WLX8iiK9T3CHuviawQGum7oM=
X-Received: by 2002:a67:2c43:: with SMTP id s64mr13389043vss.94.1569957388067; 
	Tue, 01 Oct 2019 12:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9KAnpTGSC_V4W40AwD7nSPm-Q+RcxRBqMLHLw=ykBcNA@mail.gmail.com>
In-Reply-To: <CAK5yBb9KAnpTGSC_V4W40AwD7nSPm-Q+RcxRBqMLHLw=ykBcNA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Oct 2019 21:16:16 +0200
Message-ID: <CANNYZj9q28NdSq8w1fHsJE3yLGoQJjqCwVewni3TXz1YVfJ=NA@mail.gmail.com>
To: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzQw4oCZMTk=?=
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
X-List-Received-Date: Tue, 01 Oct 2019 19:16:30 -0000
Content-Type: multipart/alternative; boundary="0000000000006da70e0593de30fe"

--0000000000006da70e0593de30fe
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Oct 2019 at 16:54, Stephen K Jolley <sjolley.yp.pm@gmail.com>
wrote:

> A significant performance problem has been found on the autobuilder where
> some builds are scaling in time badly as the sstate cache grows, taking 12
> hours or more in some cases. Unfortunately nobody seems motivated to help
> work on this kind of issue.
>

Wait a moment, I believe there is a patch for this issue?
http://lists.openembedded.org/pipermail/openembedded-core/2019-September/287445.html

Alex

--0000000000006da70e0593de30fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 1 Oct 2019 at 16:54, Stephen K Jo=
lley &lt;<a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;b=
ackground-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;vertical-align:baseline;white-space:pre-wrap">A significant per=
formance problem has been found on the autobuilder where some builds are sc=
aling in time badly as the sstate cache grows, taking 12 hours or more in s=
ome cases. Unfortunately nobody seems motivated to help work on this kind o=
f issue.</span></p>
</div></blockquote><div><br></div><div>Wait a moment, I believe there is a =
patch for this issue?</div><div><a href=3D"http://lists.openembedded.org/pi=
permail/openembedded-core/2019-September/287445.html">http://lists.openembe=
dded.org/pipermail/openembedded-core/2019-September/287445.html</a></div><d=
iv><br></div><div>Alex<br> </div></div></div>

--0000000000006da70e0593de30fe--
