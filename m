Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77BBEE00D6D; Fri,  2 Dec 2016 01:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE084E00A64
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 01:53:56 -0800 (PST)
Received: by mail-qt0-f175.google.com with SMTP id p16so246220393qta.0
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 01:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9PK9hRSrZ1geqz7hTbD+vFzfncxqo2UoDMij4Z/S/Ws=;
	b=jVsrA9xjtLsn8CHQjbxb5cOBrOsIAD0D3R59YlH6TQLKD5OJc92kse6yJS9viWOKLZ
	V7A2aP9K4ZjIDHkgwzJvL+NEl72C/Qvz1XAab7DEMCIVPi5tpcfdkMMwOHBZFDR91gtf
	nIL01jseoL73BfYDmW4CIWAI1WsTb/nTJDKokvPwkcz8fplYgKy+bJgCnM4E0in0bcBQ
	51wrNNl2B9agSdqAvp6RY5zN5Chm6BQtU9Ub7Un/puz86GkQkLw0czSXXAUvxMz/Ehz/
	TD80KGk5yW5I133SeSnCGtYv9V9KWD7V1tiqZGs1CvNHXzvE5cos/yIq6WLxa0JmPdBJ
	99GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9PK9hRSrZ1geqz7hTbD+vFzfncxqo2UoDMij4Z/S/Ws=;
	b=a7TmDfwjwTn/mgC0Yi4+NMMdxkR+KgoRPSNurxQVXtx1QcGZ5iB2SIEjgKy8knoKeH
	uFwx5ZBeMmF21AluItlAHFk7PoSYFrajnLQw6G8u9Dz64mYRGaKia8pTCPa+GhXQLYgx
	CZbk+ZBPQpzaN3+2cu2xbAln288yQaTuu8n3z8VcEFJGEAMpNT/2zRfkg16EzFxSMl2b
	D+HKpy8vmRaepK0GWggsoC2IDMmNEklK8CFo/Fh8m0Y8T7l3xHp1wBHqBxAlT19KjpE3
	aqN/qoEuy+Tyk7VmWgVid6rime+xR7qiTwgG6C1vIPdc5QhzXHYFumgkeE8x6uh1Qazh
	HC1g==
X-Gm-Message-State: AKaTC0236XlrEq2hoLEBIG2SiDtXWZB0BTtjV+vOGHAAnMYAnFc4cl1J/Fvc7eC5n4Jf4IiAPGdkjea7yq/Ww/YY
X-Received: by 10.237.34.46 with SMTP id n43mr40907478qtc.105.1480672435891;
	Fri, 02 Dec 2016 01:53:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 2 Dec 2016 01:53:35 -0800 (PST)
In-Reply-To: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Dec 2016 09:53:35 +0000
Message-ID: <CAJTo0LZPF8kzexk0vhptQtKZVbP71EDKjVpRMT76XY3HhcVfrw@mail.gmail.com>
To: Kun Yi <kunyi@google.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 09:53:59 -0000
Content-Type: multipart/alternative; boundary=001a11377e189205720542a9ea8e

--001a11377e189205720542a9ea8e
Content-Type: text/plain; charset=UTF-8

On 2 December 2016 at 08:36, Kun Yi <kunyi@google.com> wrote:

> Reading Yocto 2.1 reference it seems that I should be able to
> cross-compile binaries for arm inside the SDK shell and run the
>

You can't run cross-compiled binaries inside the SDK unless you use qemu.

Ross

--001a11377e189205720542a9ea8e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 December 2016 at 08:36, Kun Yi <span dir=3D"ltr">&lt;<a href=3D"mailto=
:kunyi@google.com" target=3D"_blank">kunyi@google.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div id=3D":45b" class=3D"a3s aXjCH m158=
beaef70e1354f">Reading Yocto 2.1 reference it seems that I should be able t=
o<br>
cross-compile binaries for arm inside the SDK shell and run the<br></div></=
blockquote></div><br>You can&#39;t run cross-compiled binaries inside the S=
DK unless you use qemu.</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a11377e189205720542a9ea8e--
