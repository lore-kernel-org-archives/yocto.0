Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D22E00DA9; Fri, 26 Jan 2018 06:09:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13068E00CF1
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 06:09:41 -0800 (PST)
Received: by mail-lf0-f66.google.com with SMTP id a204so853590lfa.2
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 06:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d4UxG2a56N55nszm2ioDASDlOpwOt43orZW7ITBmQk4=;
	b=piqHmQNAIzk7ufzjms2Yf73svzPCMbTgqdIrYW9C/dqETDP17SP4E1cpZBaoKUL+V9
	VG4ml023+XY+l/QWdrn7jddlYm7rkkjBaxiEnU8WGxy9/soB4NMh/+8gZoeXoEaLpqC/
	nh5dE08Ov9U/wu31N4ycy53WkCHC6yQVjPLUiIdJtQfM1shX7qJmKMCW28OAaUSIhVg7
	RvOR8lklXARmPaEEIcxFizzhDfqWu/bI3AzUAfvFq7hJRe5FgTQz43VcRmQUU76L7AIo
	fLkZg3LgOP7VD95BJIUQc1tGSq7vcVsZD/xYaGND+tnO9XUlDYwKAzjCNW+BWAqGy1xy
	6i+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d4UxG2a56N55nszm2ioDASDlOpwOt43orZW7ITBmQk4=;
	b=uDIGd1gOG/Bi70QFB+aZEyBJOXSM1HI22CQtT1/npCWPkO97zIEF/L75J4qv+d2VRN
	XoGzBDVduhH1uBi2EordqOOKWdnpv4KmiJrCLPXYIox29X4y27n2ZAkGC6kmVIYWDx1c
	ZcrZAnEclFL21z+iQnqiLZpvy5QM2+jimKGVMikjbGr+JW2PER4l81BDlRqZGpT+YkM/
	Nzl20F/ZdIlbKkiZwnPqthnRRznQ4Nfa8wSgX83fL5r6bh2gudMGTbjsd3jfgVodhqlJ
	45r48E+hXMqrflJDfXEqDtZOGJOf4z4IK6Y3QMnS1u+x/35CoQbNi4SCrCt5zY0HbEm4
	TtSA==
X-Gm-Message-State: AKwxytcogssCfziYUsldbzG5O8L7NqfluUIlWUQLYVOQOmz9IE+TvbWJ
	L0oZFlypd3xrrK/YMCVN1eJxfku3HPAd1iDHnQc=
X-Google-Smtp-Source: AH8x226UG87bXlBYf4vmt7sGDC+M4quq/79ogX46AcuNx8ZVlXOhawq88TsYiq1GKPGp5yjNZ4tcN89W5STHOazyfz0=
X-Received: by 10.46.124.11 with SMTP id x11mr8710213ljc.99.1516975780908;
	Fri, 26 Jan 2018 06:09:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.217.21 with HTTP; Fri, 26 Jan 2018 06:09:40 -0800 (PST)
In-Reply-To: <b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
	<e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
	<b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 26 Jan 2018 09:09:40 -0500
Message-ID: <CAHUNapRYzSZpzzJghmWDG5o2MDJVC=dDO8Gf=M1U52EX0DU4Xw@mail.gmail.com>
To: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin.hundeboll@prevas.dk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 26 Jan 2018 14:09:42 -0000
Content-Type: multipart/alternative; boundary="f4f5e8072a808dd24c0563ae7256"

--f4f5e8072a808dd24c0563ae7256
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2018 at 3:43 AM, Martin Hundeb=C3=B8ll <
martin.hundeboll@prevas.dk> wrote:

>
>
> On 2018-01-26 04:51, Khem Raj wrote:
>
>>
>> Secondly, I wonder how good is upstream mainline kernel for rpi now a
>> days, we could always have a mainline recipe as an option and use it as
>> base for things like rt.
>>
>
> Apart from runtime device tree overlay support for RPi hats/extension
> boards, mainline linux fully supports each RPi revision.
>
> I guess linux-yocto-rt would be just fine...
>
>
Does anyone know if the FIQ bug has been fixed upstream? The last time I
looked into PREEMPT_RT on the RPi, the only way to make it work/stable was
to patch the FIQ issue, or disable FIQ altogether (not ideal). This patch
was outside both the kernel and the PREEMPT_RT patch.

--f4f5e8072a808dd24c0563ae7256
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jan 26, 2018 at 3:43 AM, Martin Hundeb=C3=B8ll <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:martin.hundeboll@prevas.dk" target=3D"_blank">martin.hundeb=
oll@prevas.dk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D""><br>
<br>
On 2018-01-26 04:51, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Secondly, I wonder how good is upstream mainline kernel for rpi now a days,=
 we could always have a mainline recipe as an option and use it as base for=
 things like rt.<br>
</blockquote>
<br></span>
Apart from runtime device tree overlay support for RPi hats/extension board=
s, mainline linux fully supports each RPi revision.<br>
<br>
I guess linux-yocto-rt would be just fine...<span class=3D"HOEnZb"><font co=
lor=3D"#888888"><br>
<br></font></span></blockquote></div><br></div><div class=3D"gmail_extra">D=
oes anyone know if the FIQ bug has been fixed upstream? The last time I loo=
ked into PREEMPT_RT on the RPi, the only way to make it work/stable was to =
patch the FIQ issue, or disable FIQ altogether (not ideal). This patch was =
outside both the kernel and the PREEMPT_RT patch.<br></div></div>

--f4f5e8072a808dd24c0563ae7256--
