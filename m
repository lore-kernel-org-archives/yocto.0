Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BDA3E00C3C; Mon, 31 Jul 2017 06:12:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF3AE00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:12:38 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id h199so124936879ith.1
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=swfGCtQGAcVHWVxguX6nQD7jMjA7xsIEeRRdHP1EMRA=;
	b=hbzigtciSJ568QNOO3R720k3Jo+UIazoxhrG9DtnVcGpGt21KmTglr82UWw1cpnQQi
	XXbrjdf6cPXCW/sQmLePBBbHl94ZD88CXchdaRsVcj2g2f3Ou1eS2ipLJ9H3uwuyuz4Y
	oEEBh2L3zp9WZbh4yqBOSkM7BPhrYvQpq6kEJHuBbbkNtv1rAf0t+CcOF+gf461fh0pB
	JD/anAZfH//ly/e+ZMvQoHL9POBkqTNRPRBhSIKds3t7hVp/VCUhl7KgAfUvETy8o2H8
	70ttkadM3bLglX/Q+ettwWbR7nl32GmhmZ2Ezj66JqxdvWVTcLUpWtXUegV7JO9HkLFh
	kAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=swfGCtQGAcVHWVxguX6nQD7jMjA7xsIEeRRdHP1EMRA=;
	b=B2Sin/mT2GOfhFiEjwcaUn3VVbmO56QTtCI5vDlJgh4YGv4mh/PBDtc9Z2cBvPPa3C
	PHLiX6S+zzJ0yHhyzgYy5T3RqFZsQTy3vay4CGfDyYuSHF+KOoWOSyzozniABMi4IZqN
	lWa9+4QKlDDwjaVw+h+/7RTLatW6UXDTfVeoeSOjNEIz4b26LP+yrCE7YlPxI3Cs7VlW
	1X8dkiF9B4ac0CE0GUP4QHMBGfgKRGs/5gInnap7hr6n0EN9za/XflPDR9tPRPs/NahG
	FVywcMTOgX82jE7hijty2vYCKMw56+Ztlk7NFeHzMdigk4OK92Db8wZQnRAEG47fb/jc
	ndqg==
X-Gm-Message-State: AIVw1110NisMUTzRJzvfKd5E+XvGJHb8nx6J4htrkiCyONvTcMynqL5w
	qV8jSwvg+y5QXHtyiWErjj1OnQAS2mGl
X-Received: by 10.36.218.3 with SMTP id z3mr17299426itg.116.1501506758159;
	Mon, 31 Jul 2017 06:12:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Mon, 31 Jul 2017 06:12:17 -0700 (PDT)
In-Reply-To: <337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 31 Jul 2017 14:12:17 +0100
Message-ID: <CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Mon, 31 Jul 2017 13:12:39 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b0ad6f2c4fa05559cc806"

--94eb2c0b0ad6f2c4fa05559cc806
Content-Type: text/plain; charset="UTF-8"

On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:

> Is my auto make disabled with icecc ?
>
> How to make it enable ? thanks.
>

That's just a debug message.

> | help2man: can't get `--help' info from automake-1.15
> | Try `--no-discard-stderr' if option outputs to stderr
> | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed


That's the error your hitting.

I think you need to update to the latest commit for the branch you're on,
there was a problem with modern perl in help2man.  What release/branch are
you using?

Ross

--94eb2c0b0ad6f2c4fa05559cc806
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 31 July 2017 at 03:33, Riko Ho <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:antonius.riko@gmail.com" target=3D"_blank">antonius.riko@gm=
ail.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FF=
FFFF">
    <p>Is my auto make disabled with icecc ?</p>
    <p>How to make it enable ? thanks.<br></p></div></blockquote><div><br><=
/div><div>That&#39;s just a debug message. <br><br>&gt; | help2man: can&#39=
;t get `--help&#39; info from automake-1.15<br>&gt; | Try `--no-discard-std=
err&#39; if option outputs to stderr<br>&gt; | Makefile:3687: recipe for ta=
rget &#39;doc/automake-1.15.1&#39; failed<br><br><br>That&#39;s the error y=
our hitting.</div><div><br></div><div>I think you need to update to the lat=
est commit for the branch you&#39;re on, there was a problem with modern pe=
rl in help2man.=C2=A0 What release/branch are you using?</div><div><br></di=
v><div>Ross</div></div></div></div>

--94eb2c0b0ad6f2c4fa05559cc806--
