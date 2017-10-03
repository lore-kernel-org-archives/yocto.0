Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF7C1E00CFF; Tue,  3 Oct 2017 08:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BD22E00CEC
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:40:49 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id c195so12360988itb.4
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 08:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MtnVv59HxeslEwTJHEq0v5AFgMG4q0vFCqhRpXj/SQw=;
	b=RsEwVlV3IDEmW1e+N0Fxtc90lSD0lU6ja2YoZuU1Ak2M/KtafrF4GKodM1RHP6X9tp
	aG14NgqU9dG3I2b14XDOtFNcaRc7U2HdFTrvGxor7EACeuakcQ2N2zCQjoh8AcRBBpdF
	ElRv5zjtoRfreSL+WbD6YYVW5BZ6VNr/l12zcV09J90UZOBQohM7L4c8dfM+0sqoTeyG
	rsoH3d/NsMD0uZQtLv4pneIY3ZbCQw9OcWPEpy5ZgIRoMc4XrIK/r1r+uCev1U87WUj5
	HYltoQqBFZWErWDkR8u6Oq/YLY0zvdGITUFs8yZ3scJZ1qUa68rHPD/Xq8Ya+07mgp+L
	FOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MtnVv59HxeslEwTJHEq0v5AFgMG4q0vFCqhRpXj/SQw=;
	b=CISHqRT0pMOV/NL6U2hS2q0jc9vwKWiUce+vpq2VpAPwR0PRPhEQRNP4Z9WQSYjNK8
	9xZr10lPFXBrTc7Yb5Ag0/arlJYS7OMWhPhA45Z5xh55jVVbFt5deMRzJp2uGdc/TsRt
	CeMSQlaU7RIg9DiTP1QN6QBCjeFnCOVvhr12Vp7HqilRrfMgjTrjkOea+s/zre2Lv+GD
	TQDbsGHcwKMVq6GbZEs2/oWNuc5U1AgRuaBTQuCdjVsYO9wfzgOONAxBla/LYAUawu3F
	L+VlgFxpcJoVLtqXOln5w1oQ91SDq+/4n3K2SOLUkVYQzpdOrGa8IQO7rst7sn9aeTY2
	NU+Q==
X-Gm-Message-State: AHPjjUh/3W2L//Nc9PgfZSn0LsD8IiFtmiaTEIKzm9JjxSPohXhmmG/8
	w9LffLETQaeoVWUckR228FXJSCSBy7ZOgMZr5ujqGQ==
X-Google-Smtp-Source: AOwi7QBU5NxnbbmnilVbY1cFIDWNvN1Jfa/XVmcsg9Qpdluu0PAwlWtYEzQMNPPDlRHGYujeD6VusRKQI0n/D+MbUGI=
X-Received: by 10.36.178.1 with SMTP id u1mr26608991ite.120.1507045249565;
	Tue, 03 Oct 2017 08:40:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.134 with HTTP; Tue, 3 Oct 2017 08:40:29 -0700 (PDT)
In-Reply-To: <CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
	<CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
	<CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Oct 2017 16:40:29 +0100
Message-ID: <CAJTo0La6bfnz28+LWCHnVixYiQ4muFOQ_BhvBxVghKkKB6N1sg@mail.gmail.com>
To: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Tue, 03 Oct 2017 15:40:50 -0000
Content-Type: multipart/alternative; boundary="f403045d9c0ec2d2ad055aa650a0"

--f403045d9c0ec2d2ad055aa650a0
Content-Type: text/plain; charset="UTF-8"

On 3 October 2017 at 16:36, eliya.mir@gmail.com <eliya.mir@gmail.com> wrote:

> Thanks Ross,
> That is the issue : default pkg-config does not search host paths - How to
> edit its search paths ?
>

"If you *really* want to link against host binaries and not building your
own native recipes for it then see qemu.inc for an example of how to steal
the host pkg-config path and use it at configure time."

Ross

--f403045d9c0ec2d2ad055aa650a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 October 2017 at 16:36, <a href=3D"mailto:eliya.mir@gm=
ail.com">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:el=
iya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wro=
te:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Thanks Ross,=C2=A0<br><div>That is the issue : default =
pkg-config does not search host paths - How to edit its search paths ?=C2=
=A0</div></div></blockquote><div><br></div><div>&quot;<span style=3D"font-s=
ize:12.800000190734863px">If you *really* want to link against host binarie=
s and not building your own native recipes for it then see qemu.inc for an =
example of how to steal the host pkg-config path and use it at configure ti=
me.&quot;</span></div><div><span style=3D"font-size:12.800000190734863px"><=
br></span></div><div><span style=3D"font-size:12.800000190734863px">Ross</s=
pan></div></div></div></div>

--f403045d9c0ec2d2ad055aa650a0--
