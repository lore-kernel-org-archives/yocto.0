Return-Path: <somkadam76@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65B3EE00B18; Tue, 15 May 2018 00:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (somkadam76[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 575F0E00948
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 00:31:11 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id 144-v6so16756126iti.5
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 00:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=sQC1Z2WGaOJ16nMAMDZaxbihSnhEMqtlJ5J1kWpxnY4=;
	b=UPvDf/SpBxo1LRe/wkqzCNATyi48N8Cw2DuXZoG2W65pgYKopJSjvBuPj8wYpas6kV
	GXgtZhbRLtMe21jG7zGojy8etCsgsOG4W2W3/o/m+/GW8qzVTwMpTnT5altLdpIqRkWg
	T8DPdbHvB2IuUg7Vm67kSrMk+S5IL5ERkd1mfm3mWWta+a+ZcLN+rChnyXNfB2pSs3J1
	R4Gu48kl0BTT1MmXcCEN6xVH5U+91ppT78Yb1KmLmaM1CvMbNZvq7t+lQ+QVpgK9Wm8T
	+lwrq/vJ6r/Ac3Lm3PW5CM70h9poh505YO1/sJ2pe74vDgU1Yt2aVKps17o1ObyhFdRc
	Tovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=sQC1Z2WGaOJ16nMAMDZaxbihSnhEMqtlJ5J1kWpxnY4=;
	b=HoLuT+7tuxrajIfNeWYhMDRaYc7tgLKPKW7FuYWn7vdVJ6fiStd8WQgXaGr9BnolBo
	VyyZ7jOTYH8COERDGYvbapd34NzF5LTu1BWdPDiWvXyqGja6D8YZOGqfjpy8cowe6AUz
	WU+sByuATBy+oIIkPymOUt4IDHP7WLHkbITLit3EZXbAm6V3xawyLX9lTytLzM7sPFMz
	+ij3EkGVC5dyfR+tEyX2GNONgpLDI+G0e5QCC6/cooQwtstR2GxGj4IAOSLwd1VaiQ2i
	9UgFjnmiX6n92iv16Uf3oulNE3Dkup0TH3xTlZAKrdtVYcsw+wsFUh3BBHEDNPWukfmy
	Lpnw==
X-Gm-Message-State: ALKqPwfGv4+QlrOvuaHMkx94PiNNVUmvMFDjJJZAfvlqQFwmDc5k+Afv
	1olmXhh+Io5EWjdafInBLTwZQmfPdRtFERfBXik=
X-Google-Smtp-Source: AB8JxZoRfw9t+HQzEQyVuE7yz00T4wO8g0TAxbKZpWQx3MpOT/quRovXfknwrB3VKEdAebBjcJVeYMqzkDU7SbRYeqI=
X-Received: by 2002:a24:d6c3:: with SMTP id
	o186-v6mr13105838itg.146.1526369471039; 
	Tue, 15 May 2018 00:31:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:6606:0:0:0:0:0 with HTTP; Tue, 15 May 2018 00:31:10
	-0700 (PDT)
In-Reply-To: <CALbGK-pZz0-MR5Dv8asoOc_eKQ4o2LwLZ+ZjBwTD6wmGkBVB5w@mail.gmail.com>
References: <CALbGK-pZz0-MR5Dv8asoOc_eKQ4o2LwLZ+ZjBwTD6wmGkBVB5w@mail.gmail.com>
From: Somshekar C Kadam <somkadam76@gmail.com>
Date: Tue, 15 May 2018 13:01:10 +0530
Message-ID: <CALbGK-qPCfOVVADzut6iCH+ReuFgxTGSkCRARp+AZrVDZOfjvQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Ptest log
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
X-List-Received-Date: Tue, 15 May 2018 07:31:13 -0000
Content-Type: multipart/alternative; boundary="0000000000001e10d3056c399622"

--0000000000001e10d3056c399622
Content-Type: text/plain; charset="UTF-8"

Hi All,

Any pointer will help, please let me know

regards
Somshekar

Regards
Somshekar C Kadam
9036660538

On Wed, May 9, 2018 at 12:54 PM, Somshekar C Kadam <somkadam76@gmail.com>
wrote:

> Hi All,
> I am newbie to the ptest.
> I have run ptest on ARM and Intel target board.
> Now I want to have the output format as given in link below
> https://wiki.yoctoproject.org/wiki/Ptest_f49ee61422c867516db252054e993d
> f29f775136
>
>
>
>
> I use the parser to generate wiki page output provided in qa tools, next I
> need to copy the content  to wiki page which I have no access to get the
> same output format.
>
> Please suggest what is that I need to do if I need to get the same output
> format, as I see it contains excel/xml  format.
>
> or if there is an other alternative method  to get list of PASS and FAIL
> numbers of each package ptest results.
>
>
>
> Thanks in advance
>
>
> Regards
> Somshekar C Kadam
> 9036660538
>

--0000000000001e10d3056c399622
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,=C2=A0<div><br></div><div>Any pointer will help, pl=
ease let me know=C2=A0</div><div><br></div><div>regards</div><div>Somshekar=
</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Regar=
ds<div>Somshekar C Kadam</div><div>9036660538</div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, May 9, 2018 at 12:54 PM, Somshekar C=
 Kadam <span dir=3D"ltr">&lt;<a href=3D"mailto:somkadam76@gmail.com" target=
=3D"_blank">somkadam76@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">Hi All,=C2=A0<div>I am newbie to the ptest.=
=C2=A0</div><div>I have run ptest on ARM and Intel target board.=C2=A0</div=
><div>Now I want to have the output format as given in link below=C2=A0</di=
v><div><a href=3D"https://wiki.yoctoproject.org/wiki/Ptest_f49ee61422c86751=
6db252054e993df29f775136" target=3D"_blank">https://wiki.yoctoproject.org/<=
wbr>wiki/Ptest_<wbr>f49ee61422c867516db252054e993d<wbr>f29f775136</a></div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div>I use the =
parser to generate wiki page output provided in qa tools, next I need to co=
py the content=C2=A0 to wiki page which I have no access to get the same ou=
tput format.=C2=A0</div><div><br></div><div>Please suggest what is that I n=
eed to do if I need to get the same output format, as I see it contains exc=
el/xml=C2=A0 format.=C2=A0</div><div><br></div><div>or if there is an other=
 alternative method=C2=A0 to get list of PASS and FAIL numbers of each pack=
age ptest results.=C2=A0</div><div><br></div><div><br></div><div><br></div>=
<div>Thanks in advance</div><div><br></div><div><br clear=3D"all"><div><div=
 class=3D"m_-8383098951300464226gmail_signature"><div dir=3D"ltr">Regards<s=
pan class=3D"HOEnZb"><font color=3D"#888888"><div>Somshekar C Kadam</div><d=
iv>9036660538</div></font></span></div></div></div>
</div></div>
</blockquote></div><br></div>

--0000000000001e10d3056c399622--
