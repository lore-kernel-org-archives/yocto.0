Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D94E00D78; Tue, 23 Feb 2016 15:32:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7F4E00D73
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 15:32:19 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id z135so7894447iof.0
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 15:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0cjZeuqcJelM/0WpWg5CVk4UOTwqCEBsRrxQlKqtdwg=;
	b=BaCY7WBn+qY3HYKMnNA1ZiOOwaMHIqu84JpvszO6444yVTy6NwudO9OC95NR2v1i5z
	TlbE0oQQdDd6bOb2kWrKbg4CGpYBShw5gs7psCf+7asTPeRi7l0sN8Qf9iK3JnIY1HNn
	A4jHoUOkWhJdkeVeU7A/Ef7T79C2FjW9roA/7V3wXucTWKY1ruyVSNp/FUnwZSLFPI5f
	W9MpD9E16ZBI/NmoaXshELRPspSSzcMJ6cPJE63Oxjz6xY3wGbfBZ7lBuPUX+AWh2dpi
	bcBnh3Jx6qrvZxgjBmIC8pQoKOqn89A2/smkXXJnh7Jo/et/V94hzfYx5DIQDQmcJcd8
	oShw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0cjZeuqcJelM/0WpWg5CVk4UOTwqCEBsRrxQlKqtdwg=;
	b=X3e45WMLUh6r+iyDGYNNvYCtkGH0MhpICU7jXAWS93HcO+nmJt3OzEC1zsFzWHtoYp
	+6meHstdgdgSaXS8+2NqmjM1KOlw8ztqqEaUrSR1MKqSGOfKTWz92ISKM+k5vwjkr9tX
	QrpSbuaaFHfnV+jRXx8Dvgr9JJVRhDZ3qS51gXGsAVn394eKsPnutpYiS9HbqhafEMTs
	h3nyRjzwsmOx9QCznK9Leq7Uj4rAg3kj8m09ifJXPkfsX89MqXo4WT62y2qRWuqkLVQs
	t23dD/dgeDlhQDFVhe1L1PVuEbckVrNLihTvxW43XyOdzoGiSSCaYlvJC/KT09RuseRf
	IquQ==
X-Gm-Message-State: AG10YOSOtu4GDCj/5cTRorcGQkOBQFDR5D1/zc0XBd054HBg5w+VIdXEI7FBiV69O4+oqooChiaCZL4KcJfJUuFW
X-Received: by 10.50.126.8 with SMTP id mu8mr18811159igb.52.1456270339050;
	Tue, 23 Feb 2016 15:32:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 23 Feb 2016 15:31:59 -0800 (PST)
In-Reply-To: <1A6015B8D99146E38ACD9B44DFFA2F3E@PAULD>
References: <1A6015B8D99146E38ACD9B44DFFA2F3E@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Feb 2016 23:31:59 +0000
Message-ID: <CAJTo0LazHOrRn4owLSQtEV4ZCvnc1Co=cw24NTLtA1bdOcTiyQ@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to deal with patch failures due to new source?
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
X-List-Received-Date: Tue, 23 Feb 2016 23:32:21 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf41aaa6052c785cba

--047d7b1635bf41aaa6052c785cba
Content-Type: text/plain; charset=UTF-8

On 23 February 2016 at 20:16, Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> All of a sudden, I'm getting massive patch failures in OE's Samba 4
> package. (Last night it was fine.) Looking at the main log, the
> samba-4.1.12-r0 recipe did a do_fetch, do_unpack and do_patch. This is a
> huge patch, a megabyte in size, applying to 525 files, and it now has 31
> failures, because the patch is from last September and wasn't updated.
>

If OE didn't change the recipe, and none of your other layers changed, then
what *did* change?  The tarball upstream can't have changed as the
checksums wouldn't have matched.

Try doing bitbake samba -cclean to wipe away the local build state and
rebuilding it, this will verify that it's not some local state causing
problems.  What can happen is that bitbake wants to do a rebuild so re-runs
steps and ends up attempting to patch generated files and the patch fails
to apply (in this case the patch is broken).

Probably worth posting to openembedded-devel@ too as samba is part of
meta-oe.

Ross

--047d7b1635bf41aaa6052c785cba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 February 2016 at 20:16, Paul D. DeRocco <span dir=3D"ltr">&lt;<a href=
=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":cof" c=
lass=3D"a3s" style=3D"overflow:hidden">All of a sudden, I&#39;m getting mas=
sive patch failures in OE&#39;s Samba 4<br>
package. (Last night it was fine.) Looking at the main log, the<br>
samba-4.1.12-r0 recipe did a do_fetch, do_unpack and do_patch. This is a<br=
>
huge patch, a megabyte in size, applying to 525 files, and it now has 31<br=
>
failures, because the patch is from last September and wasn&#39;t updated.<=
/div></blockquote></div><br>If OE didn&#39;t change the recipe, and none of=
 your other layers changed, then what *did* change?=C2=A0 The tarball upstr=
eam can&#39;t have changed as the checksums wouldn&#39;t have matched.=C2=
=A0</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Tr=
y doing bitbake samba -cclean to wipe away the local build state and rebuil=
ding it, this will verify that it&#39;s not some local state causing proble=
ms.=C2=A0 What can happen is that bitbake wants to do a rebuild so re-runs =
steps and ends up attempting to patch generated files and the patch fails t=
o apply (in this case the patch is broken).</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Probably worth posting to openembedde=
d-devel@ too as samba is part of meta-oe.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b1635bf41aaa6052c785cba--
