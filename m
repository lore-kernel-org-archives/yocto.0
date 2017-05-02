Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6510EE00992; Tue,  2 May 2017 12:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68399E0095F
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 12:17:24 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id m36so120601113qtb.0
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 12:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bI+Dr6S66lAxEyb3zGd8wcLj5NcGfreHtNw2fdAU4mY=;
	b=zGGZVPr+T0gypzzBolQBMuB4miRBnQV1P0pC0Z3Y3YNWQsDKFezDa4vVxDTtVOj5Hi
	6mppmyjUKfTFkreHnlOoGWRHVmf4baWiQ3LuiHoP1foH1eKqcPoNE7BlsJhTAGgf52At
	EMoVslO2d6nMf5yA20H3y5LFczEPiTJ8OyijBsckD36OxwHTEi8VXpVkXjfk+3+yIRY3
	UlKv6NzDLCeuolXkr+vYw0N7FX/KxdQ/7MHf+MJpyjN1p4SQhIZ6n/Y0AonRc/F8+vTO
	cRV/Hr+YhF7krPXgbXG9F7OKkZKOY5w2EcX0k06EDU2n2WPrx6cPNmwt3SozIOLQfEPl
	aJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bI+Dr6S66lAxEyb3zGd8wcLj5NcGfreHtNw2fdAU4mY=;
	b=lzh4NvxoO8X1fSAMX7oU3SZeRNx1Lpu6WOndVskPRLx+X7q6LLiibqnzksXsKWa6jN
	tpLeFHrKaKBt+4laFlkNTwMjJss2wDXK1nKnCQaR5inFXkaj2H+36SXZ+xosH79NoZRK
	63FX56/duaGvp+cgv4pk+zhWJpj9r9spjDFP2L2Mo8YUQButc2rPekAXXbPmeHsTuC/n
	1ygbzwT0jeK6KqgHaNw/9E/etUugf/NcYZSAx49p09hP7kAu6s0P4Ncpx1gCED9w1TzZ
	sOyEegMnObxgwp39ZUZ+MGVafSXReP0jseDda09jpR2gN/endUb7Xwqx69vaNWaYjHij
	TbBg==
X-Gm-Message-State: AN3rC/5Ki7q62la2Fhe8H8W06+tFAtoyj9AcL7FGNhpoYFzpEXLDwn2J
	fW6+XqK5MoZNf1nU3f24FWYo5s5kCDBc
X-Received: by 10.200.34.162 with SMTP id f31mr30023778qta.65.1493752644220;
	Tue, 02 May 2017 12:17:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Tue, 2 May 2017 12:17:03 -0700 (PDT)
In-Reply-To: <854aeaee-8bc2-c329-9978-bb328fe8c254@pingnu.com>
References: <854aeaee-8bc2-c329-9978-bb328fe8c254@pingnu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 May 2017 20:17:03 +0100
Message-ID: <CAJTo0Lb3fm9RfXsWhdPHgMuBkspaVwpMUWDvzRTZ--6NDo4crg@mail.gmail.com>
To: carl.parsons@pingnu.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.2 - Denzil
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
X-List-Received-Date: Tue, 02 May 2017 19:17:27 -0000
Content-Type: multipart/alternative; boundary=001a114027ecbdd034054e8f636d

--001a114027ecbdd034054e8f636d
Content-Type: text/plain; charset=UTF-8

On 2 May 2017 at 19:44, Carl Parsons <carl.parsons@pingnu.com> wrote:

> I am trying to use Yocto Project 1.2 - Denzil to build for my old
> Pandaboard.
> But on a Ubuntu 14.04 64bit so far I replaced tar, is it practical or
> should I build on a supported Distro Ubuntu 12.04
> Or is it possible easy to upgrade the Pandaboard to a newer Yocto
>

1.2 is from 2012 so is five years old now, meta-ti supports most recent
versions and has a pandaboard machine so you can use that with a modern
release.

Ross

--001a114027ecbdd034054e8f636d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 May 2017 at 19:44, Carl Parsons <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:carl.parsons@pingnu.com" target=3D"_blank">carl.parsons@pingnu.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3y" class=3D"=
a3s aXjCH m15bca7c04a297078">I am trying to use Yocto Project 1.2 - Denzil =
to build for my old Pandaboard.<br>
But on a Ubuntu 14.04 64bit so far I replaced tar, is it practical or shoul=
d I build on a supported Distro Ubuntu 12.04<br>
Or is it possible easy to upgrade the Pandaboard to a newer Yocto</div></bl=
ockquote></div><br>1.2 is from 2012 so is five years old now, meta-ti suppo=
rts most recent versions and has a pandaboard machine so you can use that w=
ith a modern release.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a114027ecbdd034054e8f636d--
