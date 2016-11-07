Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35C0E00B45; Mon,  7 Nov 2016 01:09:43 -0800 (PST)
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
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 713D5E00571
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 01:09:39 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id w33so83063366qtc.3
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 01:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3OZsVWn6SRtZ0G9lvhfBNaxSRLiNSeLxaBUZ6whhvK4=;
	b=VcqG5+rm3dKf+9f4z1GwpG8yAq+RlBZn7A2p6YA8F4LJlZGpixly5KeXUNCfxtwBLK
	KWv3sQI1reURewaTqtDPa+wAIoZUBV6Q5lnBPQurIEUxQdEIl0oMtVzNRP+H6BXpsfoR
	6+JLNlkFszhjxtjQjn+0+alD7Sw1Hw9DTd7uS/lYluy5hxw6F/+Ayiu8cuqGc6e4QYHn
	0K6lYeLysm1+73tHvkX1KHSzzyjoOTnQaUMHoyHtaM6bcJaqWlsy6keyq4cn8r5TAueh
	tXjPaaM+PPXUSgMEwNnDYUIo0fPAaIXT7BV8lv1RZ+BN+71og2xv1mA73r9XC4ZZ4ZEl
	1J2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3OZsVWn6SRtZ0G9lvhfBNaxSRLiNSeLxaBUZ6whhvK4=;
	b=CDGoVzvtIj6YpNeZ/RmcdnXgxSDMXaYMAgPt2OdMGb+MFin59ImP+d1bFeiD6TemaK
	ifi6XDdKyIVH++nk4fvuVZ7dXXGhf+LAwyCcMp/nyo866g50tUZWuL2v9/7xWIBo7YwU
	zIVpljxxxkUCSS5qEhbXqpkUJL9FsYPZb2cACdX7EQngAM244NebboLzZ+sTsd8UhrOZ
	MvgKtvesCwxu5eteyLkFxZuKL8bjqKU7wwXGEtj0yTKiUubDnyZ9zAgEmKbT6tpcTjLY
	m/Sy9zKiVDRbmEnJEtSr+QolHPPGLy7qm9NcykW5GNyxo1W5ZM3J8Cm4kpdFFq8qc9OZ
	FJ3Q==
X-Gm-Message-State: ABUngvdjuhivP3AOlX6+lfOm03hEqsxgi9gKJ4GCvvnUUm75inve5lExKJuoqDphPxO2tIo/ILIO9HuXrZTGcXBa
X-Received: by 10.200.40.101 with SMTP id 34mr5845292qtr.38.1478509779305;
	Mon, 07 Nov 2016 01:09:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Mon, 7 Nov 2016 01:09:18 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Nov 2016 09:09:18 +0000
Message-ID: <CAJTo0LYx6P5z8qxwv9LQwWRL=xMSseggaQsq4GwLJx+L2JjfhQ@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto "Long Term Support"
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
X-List-Received-Date: Mon, 07 Nov 2016 09:09:43 -0000
Content-Type: multipart/alternative; boundary=001a1140451c31770c0540b26204

--001a1140451c31770c0540b26204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6 November 2016 at 15:33, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> Has there ever been any discussion of making select releases
>
> =E2=80=9CLong Term Support=E2=80=9D releases, i.e., committing to support=
 them
>
> for a number of years?
>
>
>
> Presumably that would entail having the resources to commit
>
> a maintainer to that release for the LTS interval.
>

Currently the Yocto Project commits to supporting the previous two releases
with security fixes.  If you want a longer life-cycle than that then it is
recommended to approach one of the many OSVs who support Yocto Project
derived build systems, such as Wind River / Mentor Graphics / ENEA / more.
These will have longer support cycles, at least one has the option of ten
years for security and critical bug fixes.

Out of curiosity, how much effort is required (on average) to
>
> maintain a non-current release with at least CVEs and maybe
>
> critical bug fixes from upstream?
>

Just CVEs requires a part-time person.  Tracking all upstreams for
non-security but critical bug fixes would be far more effort.

Ross

--001a1140451c31770c0540b26204
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 November 2016 at 15:33, Vuille, Martin (Martin) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
"><span lang=3D"EN-US">Has there ever been any discussion of making select =
releases<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=E2=80=9CLong Term Support=E2=
=80=9D releases, i.e., committing to support them<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">for a number of years?<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Presumably that would entail ha=
ving the resources to commit<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">a maintainer to that release fo=
r the LTS interval.</span></p></blockquote><div><br></div><div>Currently th=
e Yocto Project commits to supporting the previous two releases with securi=
ty fixes.=C2=A0 If you want a longer life-cycle than that then it is recomm=
ended to approach one of the many OSVs who support Yocto Project derived bu=
ild systems, such as Wind River / Mentor Graphics / ENEA / more.=C2=A0 Thes=
e will have longer support cycles, at least one has the option of ten years=
 for security and critical bug fixes.</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Out of curiosity, how much effo=
rt is required (on average) to<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maintain a non-current release =
with at least CVEs and maybe<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">critical bug fixes from upstrea=
m?</span></p></blockquote></div><br>Just CVEs requires a part-time person.=
=C2=A0 Tracking all upstreams for non-security but critical bug fixes would=
 be far more effort.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a1140451c31770c0540b26204--
