Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AB45E00B01; Tue, 28 Mar 2017 05:19:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B90AE00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 05:19:02 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id r142so34463021qke.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 05:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FpYk/NEV/h17jUOKj9Wug7HSHpqmBnAZuVOYPRo1zD8=;
	b=FtIUvRMDpVPpT4/fBwL7n5CamHzVg21uB/JeX8ajwc8Unr7YPCLuOTehO+bzsoeGtW
	3qJRaFR11URizCi3zbg70grfijwiMxsdYGCV585uY+9poTmf6gtEF2rIUjDZQtlFI+ea
	K2qjTQ4+PY4D9KXOTkaZVsJl1JNpDVvwYpW41NzNqGHv9zzBDRUgYmNthxnIjYWf1yhf
	86w1Vr/JVSaaYAfde1VzDibGYjqeXpuVvtGnlHUpoG7HjGCvSOXm31Pc6W+PvBT2W01U
	N2f+oJARldlrjusihLqTB0vifN1b6n/wnXmnHdx3xJJZgtfowi5kgldsM5bWoo6SJ3GI
	Rm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FpYk/NEV/h17jUOKj9Wug7HSHpqmBnAZuVOYPRo1zD8=;
	b=f1nmoS2KA23RPjnQ4aTY2vmo9ujRp7DG44wArjYxkAlI4ey6OozXQerN4E+PDuA7QH
	QqaUMHbLphTFP07lYLaCB9E/l3y3TiOwakBW2mitBA4VbCwj67wF/Ls3fRlm8imfYiZ2
	j7zkQT76tkUoRx/Op7gKzoaGo6f1ocV3PXkiHeyrIFkKefINicstBIpdTYCl81+SAGKR
	y60Qofb9C6/DQ9qvWOkOTLF6FJ6iwIsXluoO60oAiRNVID2e6pzROA93UjsI4M3t05aM
	1I4HSTaBvSW6bD/e5oS+XO4+cnzGEaBI3bWkldoIQivIL1n8GdhyTV4OMTJUEkZx3upi
	4cjQ==
X-Gm-Message-State: AFeK/H1vWFvzMJHYLK3tMlqVO1CQx+ONWs78a34IiSeg2rrRtq+7xpa0pvp+65zVXgH6/85jOdENcvQC/BRBrUsq
X-Received: by 10.55.162.203 with SMTP id l194mr23048943qke.221.1490703542406; 
	Tue, 28 Mar 2017 05:19:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 05:18:41 -0700 (PDT)
In-Reply-To: <58DA42CE.4040809@easyarm.com>
References: <58DA42CE.4040809@easyarm.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 13:18:41 +0100
Message-ID: <CAJTo0LaL0xkgTB=K6vaP3wvU1LvUJ7XS8y1WXYHzt2Kr=MzxtQ@mail.gmail.com>
To: Surya <surya.n@easyarm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Copying Static library to libdir of YOCTO
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
X-List-Received-Date: Tue, 28 Mar 2017 12:19:06 -0000
Content-Type: multipart/alternative; boundary=001a114d7fb01c7042054bc9774d

--001a114d7fb01c7042054bc9774d
Content-Type: text/plain; charset=UTF-8

On 28 March 2017 at 12:02, Surya <surya.n@easyarm.com> wrote:

> I can see those libraries in the  "usr/lib" directory of that particular
> package which is generated in "tmp/work" folder . But somehow these
> libraries are not copied to rootfs "/usr/lib" directory.
>

Static libraries are part of the ${PN}-staticdev package, so won't be
installed if you just install the ${PN}-dev package.

Ross

--001a114d7fb01c7042054bc9774d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2017 at 12:02, Surya <span dir=3D"ltr">&lt;<a href=3D"mailto:su=
rya.n@easyarm.com" target=3D"_blank">surya.n@easyarm.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":3mc" class=3D"a3s aXjCH m=
15b14d7f288b3630">I can see those libraries in the=C2=A0 &quot;usr/lib&quot=
; directory of that particular package which is generated in &quot;tmp/work=
&quot; folder . But somehow these libraries are not copied to rootfs &quot;=
/usr/lib&quot; directory.<br></div></blockquote></div><br>Static libraries =
are part of the ${PN}-staticdev package, so won&#39;t be installed if you j=
ust install the ${PN}-dev package.</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Ross</div></div>

--001a114d7fb01c7042054bc9774d--
