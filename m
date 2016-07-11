Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8F7AE00DF2; Mon, 11 Jul 2016 04:04:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A281FE00DC8
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 04:04:53 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id h190so58508222ith.1
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 04:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=54HAd0M9h9HFTh2Zsq+MVzKlbBwxT//2KKXEHT7dZMw=;
	b=ckLDrhX6Ik0xfU4qgthCzjXdk9W6imQW+NVIwHekOF/Hsy8PEFWLV83s95YypPmoFl
	f5p81h3c7UH8BU+VKht+WAVtZSznizGZTSjHmyMUvss7kRfpFTVeFoLpV9RqKoFzuRPZ
	ISN8He5wXfi2V5RaiFw4e4HpN+41l/pzAWiAizFYoQD6efriFN00w/S5yelT2GPiKAXp
	VrMleeAsV5Pbwq2I9eycKSmbMSlOlAviahsOKqX35umtibGVBr/rs9CVlhOTVT4fPIY0
	c+0O5j6GWYGGdF2WXbvCxIuZ4wuOhs6iDyKd6I/Du2bfvQY9ISZQsOb9LCv0Vl5PXFz9
	byGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=54HAd0M9h9HFTh2Zsq+MVzKlbBwxT//2KKXEHT7dZMw=;
	b=FSE1BQkAM04L67eU70UoYwQa0UVCB9grGmmWYPArTSQtAEfDIWLk4W5aDaGcrDqMKo
	SCq5lDv+ApIAKGA+t1dFXUAfjb4zQ7Uo+GjZwa8A3dN7rJWkX7/szPql+mgKOSOcUDvq
	KcPxHn5VYXO0Yyi1yx+QDdC7DLSQu7h60QQt/yihvpxCOy0P+nLQLVY/nxMvXR5gHKeM
	B7/hu8zWKjVGEEqyObc2WthVDocBceHZK5havxYASwrN/ZMfBjE149HrmpTMcMuLhhZR
	V4CwTDf6JgcK6Ntb134x89YJiyseevnDQTPUsDQ2zVrzYSZgkEDfVFfhHx22T+jg+mTT
	tRuw==
X-Gm-Message-State: ALyK8tKP79GVHf/TxrLY5hWrQ7YlKDKtS1seyIPhfTr3Dd6BoQa+0wLfRwUeerE3L89a/MU3Tm874b+TzFni4xeO
X-Received: by 10.36.57.70 with SMTP id l67mr14687374ita.22.1468235092631;
	Mon, 11 Jul 2016 04:04:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 11 Jul 2016 04:04:33 -0700 (PDT)
In-Reply-To: <cover.1468233661.git.jussi.kukkonen@intel.com>
References: <cover.1468233661.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Jul 2016 12:04:33 +0100
Message-ID: <CAJTo0LbDhrGHVJ2LYpS8LATrpWpbJDayiAihzQ2-SGo8Uyk1Ow@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [libmatchbox][PATCH 0/4] Add xsetting-client in tree + fixes
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
X-List-Received-Date: Mon, 11 Jul 2016 11:04:57 -0000
Content-Type: multipart/alternative; boundary=001a114a9c6624d06305375a1ff9

--001a114a9c6624d06305375a1ff9
Content-Type: text/plain; charset=UTF-8

On 11 July 2016 at 11:51, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Add an internal copy of xsettings-client into libmatchbox: it was
> never meant to be a shared library.
>
> Other commits avoid deprecated API use or fix problems found by
> modern gcc with -Wall.
>

Looks good, feel free to push.

Ross

--001a114a9c6624d06305375a1ff9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 July 2016 at 11:51, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2mf" cl=
ass=3D"a3s aXjCH m155d99725ac21c08">Add an internal copy of xsettings-clien=
t into libmatchbox: it was<br>
never meant to be a shared library.<br>
<br>
Other commits avoid deprecated API use or fix problems found by<br>
modern gcc with -Wall.</div></blockquote></div><br>Looks good, feel free to=
 push.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a114a9c6624d06305375a1ff9--
