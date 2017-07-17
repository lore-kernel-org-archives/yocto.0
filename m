Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9B98E00C30; Mon, 17 Jul 2017 07:30:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77AF3E00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:30:38 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id h134so44154322iof.2
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3usJFr19AlKrveEeOMXpYsztWAElU/JFjy8aUe68Pp0=;
	b=ZZ4bzoHv4qTf+lJUI4sFgVQEkzScXkoV8pmJdIKafWpLMCq429P9/a+6rNRuSU2yQk
	NcB+Czhx1FP+05fKzVmliZTk7JgHpJLcVtDyx+PwuANqR0sGVEa6gSze1tPO/Hh7D703
	X48nMuwtYNWfauj0sI1JsxEKr3Fd5Q9x6gd7Od0acsBT4zFkxz1O+cbU11vob0K6slml
	gxb2NPqXqnwlWIeUSlHcZtbu5ujHTmv15ravUnZuqmZgzdBB8e91Fs/C4EIdWa8J2+8l
	sXiN9cUDT+TbO4jodJhENAcoI+bl9/tU/nU/xu9tyimCk6q27/uNdAGsao+x/WBOjyIa
	i2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3usJFr19AlKrveEeOMXpYsztWAElU/JFjy8aUe68Pp0=;
	b=q8UbGwcciallOLlZyMf8l5eMy4TQoeS6XK3EWtWyitmE4Wdp2/KA4fCa1tBMXBLSSc
	MEq/a98yRRNoAvFHKae+1JURuj8BO4hVG9bZmkSt1vLJfQtLJr4ifes1UspwJb7EbB3a
	tNSe3mEL46gG+XoIRFgWjXBHym0KEpNokwcGj4TjH3SDnwCZRq0iR/oo4JzPlTKk0xWy
	fMfTAQesmCYn/J2P59aGyLfxEExS+nplTxUjXfE+s/WUI5JoxX/2/TtAyYLaciBosFJj
	U2kHK1r0+OdeeOd3GL69C3LrxCzJwiqkZbQTh7cnEVzqsaty//rx/gGfhdZMKKvfq9I9
	3nBw==
X-Gm-Message-State: AIVw112EEvZHv54MNbOmMNf45tOZWBR2qzUwUKJtJPakg+BdDdQ+lQuI
	RNDMKs0mAVPT05Evgbyql/MdHcbUuoUM
X-Received: by 10.107.169.80 with SMTP id s77mr19520036ioe.219.1500301837675; 
	Mon, 17 Jul 2017 07:30:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.161 with HTTP; Mon, 17 Jul 2017 07:30:17 -0700 (PDT)
In-Reply-To: <1500300247.5349.105.camel@linux.intel.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<1500300247.5349.105.camel@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Jul 2017 15:30:17 +0100
Message-ID: <CAJTo0LYvGfA-QxNt42AQrT71ExA5Raf=VP6mxTOwPua8TCViZA@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 14:30:40 -0000
Content-Type: multipart/alternative; boundary="001a1141006c17738e0554843eb0"

--001a1141006c17738e0554843eb0
Content-Type: text/plain; charset="UTF-8"

On 17 July 2017 at 15:04, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> master has the second line (LDFLAGS) but not the first one (CPPFLAGS and
> CFLAGS) so the problem may also be present on master. Would you mind
> checking this and sent patches to the poky mailing list?
>

The GNU_HASH warning is triggered by ignoring LDFLAGS.

Ross

--001a1141006c17738e0554843eb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 July 2017 at 15:04, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=
=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">le=
onardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div id=3D":2ff" class=3D"a3s aXjCH m15d50d4b0fa7eed9=
">master has the second line (LDFLAGS) but not the first one (CPPFLAGS and<=
br>
CFLAGS) so the problem may also be present on master. Would you mind<br>
checking this and sent patches to the poky mailing list?<br></div></blockqu=
ote></div><br>The GNU_HASH warning is triggered by ignoring LDFLAGS.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a1141006c17738e0554843eb0--
