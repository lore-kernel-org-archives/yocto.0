Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73045E00935; Mon, 13 Mar 2017 07:21:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E06E00867
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 07:21:43 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id x35so32453124qtc.2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 07:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YzbF2s7oZNDqSX6czGeT68NNDH9xb4rGBb0AvcGjepQ=;
	b=I9048hF1Q7hwDSlLEocPpPz3TtkQ708YDfkhgl69+I6tYjM3tQta35qetxLj0XCb+E
	jl0KQVrBPElWe5XHC7MZps8dfdYn0oHVEcL9X9HtFVlduLaoaPmt6y8zbuVfbrJIXP8f
	unwb5gDdbtw/o0eNfff1SsT0jxaUvlmY35mSwHiPT5SDMTdqSpr+wohOJ1VOk9UcwtRR
	cH/95xubKBvaptRJbehRNLb56k4RSqAvam6evVFTmBcFAsWMNwaSqk9uIO/lqpaOVwtJ
	8xhAp/qQWZ97S7yIPdUe18kZYC0ISoHWAAOB2aUIiUQya+Ymv6L5L2EGxXuw0QcwMmyW
	JdBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YzbF2s7oZNDqSX6czGeT68NNDH9xb4rGBb0AvcGjepQ=;
	b=dAULVoijkd9WzwWLFmrZmLfpydbpQtBwdua8JdxE6Iy68wWyupd+sy+cqF9w3ongO3
	2So8seOw6/PZ/efPD0SOtOaM7+CIuzVma0tkAbpB4cgc9XNP/alNlX6CBZS5Dx8ZD1oT
	7oXOVSVVwd/bAtUS0XW9EwBIsJ8Ymda0CRzsrPLKe7lb/3KG7qrcONlocuDxKm+2mV51
	TnVTRsDjvt8BH4TUvna3m+O9vzEDQeh/CqFRF6ULD1BTUOP9RxeBPbb0TwheuXJdAlht
	0Qbx3rY77Kdd++PYNBpAaGLgn6X40Tmed3BSUnzyhsmYDCsNibX5WB1GFmwJPInF4KWL
	QkuQ==
X-Gm-Message-State: AMke39kRTFbRKPro2b9i7rqY65lE5pYy/+bJWPftiE0F4Kk6Sf9HqecNAd2ctxtn9fkOZVJFoUqcf4PHxHJ8PYh4
X-Received: by 10.200.2.150 with SMTP id p22mr34939866qtg.197.1489414902461;
	Mon, 13 Mar 2017 07:21:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 13 Mar 2017 07:21:22 -0700 (PDT)
In-Reply-To: <CALDHXtezhuV9dEp0a9VQQF8P3c9fDOL3M+g0tiz3xPcN-2krEA@mail.gmail.com>
References: <CALDHXtezhuV9dEp0a9VQQF8P3c9fDOL3M+g0tiz3xPcN-2krEA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Mar 2017 14:21:22 +0000
Message-ID: <CAJTo0LbuMZ91LgC7NEmrOQ=_PC9_aV1-uBHqjk8dyMZgA7OJhw@mail.gmail.com>
To: ravikiran j <ravikiran.j@mistralsolutions.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure to build the xfce UI for ODROID XU3 board
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
X-List-Received-Date: Mon, 13 Mar 2017 14:21:51 -0000
Content-Type: multipart/alternative; boundary=f4030435c2342f8c2c054a9d6e7c

--f4030435c2342f8c2c054a9d6e7c
Content-Type: text/plain; charset=UTF-8

On 13 March 2017 at 13:54, ravikiran j <ravikiran.j@mistralsolutions.com>
wrote:

> What is the procedure to build the xfce  UI for ODROID XU3 board.
>

Add meta-xfce to bblayers.conf, then build an image that contains xfce
(either add it to your image, or build the sample image
core-image-minimal-xfce).

Ross

--f4030435c2342f8c2c054a9d6e7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 March 2017 at 13:54, ravikiran j <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ravikiran.j@mistralsolutions.com" target=3D"_blank">ravikiran.j@mistral=
solutions.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"ltr">What is the procedure to build the xfce=C2=A0 UI for ODROID XU3=
 board.<br></div>
</blockquote></div><br>Add meta-xfce to bblayers.conf, then build an image =
that contains xfce (either add it to your image, or build the sample image =
core-image-minimal-xfce).</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--f4030435c2342f8c2c054a9d6e7c--
