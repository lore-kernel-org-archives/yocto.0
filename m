Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EB84E00A26; Fri,  3 Mar 2017 05:41:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F8EE009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 05:41:24 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id h9so21202106qke.2
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 05:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZDHkhoPui2YqsZqTs7+VBpKURnOin6DqpMGfpSR5KSs=;
	b=k2/fhhWCoItH/Flgk/ZOI+UfowNRMUhKW9YVc9rZqM1/cfAQPZsuf2cNg8hPklxHpO
	v7pAALN+6EzPuH2hG0Iu3ZI3Y2QCpOPnxvKccunlZJbjsb4Dlv2E8U1cYjGYXR7FYC8w
	FJhZGWtiONcvGqg7mByfRoxuPquHW6Dkte/g6+N2KXM8qNkTVE47amfb4EgiPJ6CDBpO
	UH9tjHF8ImsQWChPgjkbiIegXjPxlcP5F1jEGFd3a7GmdHhtgahMgqLZwJq8H+Q51DVY
	aSNfVZeMSfBCfStlzudbp6Fub8kkj3laWXNLHkytCkQoaaDDKulAYAmsh4/g8JLv56+v
	qrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZDHkhoPui2YqsZqTs7+VBpKURnOin6DqpMGfpSR5KSs=;
	b=IiuS3v4jlvBnF2eaS6okWEyZW1nIOWLBaLC1Lp7aeEfqdED+ZveShowltQhWvmLjRE
	rUvJ3Iy4MUFK1Xwa4mYV6tXkixGjsMWgt+9X1ifwKr4wrDE0lKBPjHiZgxoLzjT1xcD7
	fUJFOGq5B5YF8LpHdpBlHWkeUMY4PY2O9IUPRgpjQpMLrP3rd6RRt2j7c0Di25a9OGcm
	m6drFPP7eu/5+7WmcM/SkOdqQ/oDt1S8snUPoL0hHndZw/Fnfu2QxfBMo7cQcWW2drl6
	c+rZVv+HJYLOg4hvSSw1aPz2mAJsFliJ7GliD2oQYoH522N4Cf6M4Ai8+uRMt1ngkboh
	6oWA==
X-Gm-Message-State: AMke39kfRzULJt0jPhVd9Hfd+iZPHNdUfhxIcU3x5dOoKhdw70uhzRkQhL1frxX3jPsz3kkt+/I6prHpkgi8zGeZ
X-Received: by 10.55.221.1 with SMTP id n1mr2473697qki.221.1488548483510; Fri,
	03 Mar 2017 05:41:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 3 Mar 2017 05:41:03 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Mar 2017 13:41:03 +0000
Message-ID: <CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Fri, 03 Mar 2017 13:41:28 -0000
Content-Type: multipart/alternative; boundary=001a1149d7dc9789e50549d3b3ea

--001a1149d7dc9789e50549d3b3ea
Content-Type: text/plain; charset=UTF-8

On 3 March 2017 at 13:24, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   it seems of limited value for YP to have a powerpc reference board,
> mpc8315e-rdb, that is essentially impossible to procure. is there any
> effort being made to look around for a newer powerpc reference board
> that people could actually buy?
>

Do you have any suggestions?

Ross

--001a1149d7dc9789e50549d3b3ea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 March 2017 at 13:24, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D=
"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2gi" class=
=3D"a3s aXjCH m15a9459db5bfcd3c">=C2=A0 it seems of limited value for YP to=
 have a powerpc reference board,<br>
mpc8315e-rdb, that is essentially impossible to procure. is there any<br>
effort being made to look around for a newer powerpc reference board<br>
that people could actually buy?</div></blockquote></div><br>Do you have any=
 suggestions?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--001a1149d7dc9789e50549d3b3ea--
