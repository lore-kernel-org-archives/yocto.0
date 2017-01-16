Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60436E0082A; Mon, 16 Jan 2017 11:42:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83661E007CE
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 11:42:15 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id m124so71418537oif.1
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 11:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lOwBY1Ao96rqHRVxH/9HqG8d5ethECVlRrP6T0vtfUU=;
	b=DD9f+AQLXn8CuDSE4AblRE1IopkGN+t1BkFvLXPoMR1MaDiH7NW3LMngHXArd/mGst
	2RisLjcWKTtY45XwifY7+itIFCTOytQc101q5CqpVwV3Mx8tD31wYOIYonipOT6jpUlv
	zEGCfRhcvytDjJ9g/HMq3EgBe4fq/SR3bbc4ILx5uNS2N+xtczDcQx6OUrIYrNhjPSVC
	+JkCCv2P2vmMUr6NCRH8ZL8L2dPuSBrarV+mgQj/hctvlH4mhuYg6CZPAIB9DLH/oVk6
	/vkxKNmWjnPPGsi1Y+M4O8ESLMSuynq5JNpBFyQVA6pblSEweJVGX2yyU3eNZwQalFxP
	XPvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lOwBY1Ao96rqHRVxH/9HqG8d5ethECVlRrP6T0vtfUU=;
	b=jRNu1t3hR4fymOkJFWz03XOhtcoUN0VhuGZpejgvQ/rL8RkrTk4eCnu/L+t3vQiX1t
	RZPh9lLXTS/1PI4mqmvMqkwApmoXmItRcpQv7SMxsu0WhIfIiHOIpe+BqP3AyEplB5z5
	QeJ9rP3oD1PB6OjqWg/Jfix+edkW6+2i4aBgwWCSjlu4Xp7jBE+4c3WGSij7u6tOSYYI
	HDHin8s++CP6CCX30nCDJpDtsBnR0yPMtamUOX+oZegbmtgneJVpkFerS2DaIRmSlD+f
	5LgijqIKz1BMQtwH2e341j1gjzPVYjl2w2NfD3DHVH9DltqJTCzxDiEJfKejtoLvShID
	ysGA==
X-Gm-Message-State: AIkVDXJSET0U5R+6f3ot/dt3wrj8UbBq1sxi6n+4WV1cP+jSrzN8A7K/uOURh1ZuXpJN4UPtnC8GD0TmG3iWdQ==
X-Received: by 10.202.190.136 with SMTP id o130mr2870184oif.14.1484595735457; 
	Mon, 16 Jan 2017 11:42:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Mon, 16 Jan 2017 11:42:14 -0800 (PST)
In-Reply-To: <CAJTo0LaSMudTXAh5AzsqTb+rU2Cyc66UoE0jY48SJaW24hCdmQ@mail.gmail.com>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
	<MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAJTo0LaSMudTXAh5AzsqTb+rU2Cyc66UoE0jY48SJaW24hCdmQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Mon, 16 Jan 2017 20:42:14 +0100
Message-ID: <CAMjhiJjBJUFEXpoQFG=OTKyU8ogKJCbjKWz72S2FUkpL1Z9c4g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 19:42:18 -0000
Content-Type: multipart/alternative; boundary=001a113db60072860905463b6114

--001a113db60072860905463b6114
Content-Type: text/plain; charset=UTF-8

+Khem

On Mon, Jan 16, 2017 at 4:40 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 16 January 2017 at 14:47, Chris Trobridge <christrobridge@hotmail.com>
> wrote:
>
>> Managed to get the actual compiler lines and the initial args are "-m32
>> -march=i586" but there is "-march=native" appended to the end of the
>> line.
>>
>> Looks like asterisk itself is adding -march=native, so you'll need to dig
> through it's makefiles and work out how to disable it (or just delete them).
>
> Ross
>

That makes me wonder what are the exact rules of processing the command
line options by GCC.

I thought the precedence is:  TUNE >= CPU >= ARCH.

But apparently, multi -march= definitions, is not well defined, or is it?

There is an unanswered similar question here:
https://lists.debian.org/debian-gcc/2015/12/msg00153.html

Regards,

Leon.

--001a113db60072860905463b6114
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">+Khem<br><br></div><div class=
=3D"gmail_extra"><div class=3D"gmail_quote">On Mon, Jan 16, 2017 at 4:40 PM=
, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.co=
m" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_extra"><span class=3D"gmail-"><br><div class=3D"gmail_quote">On 16 Jan=
uary 2017 at 14:47, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"mailto=
:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Managed to get the actual compiler lines and the initial args are &quot;<=
span>-m32 -march=3Di586&quot; but</span>=C2=A0there is &quot;<span>-march=
=3Dnative&quot; appended to the end of the line.</span></p>
<p></p></blockquote></div></span>Looks like asterisk itself is adding -marc=
h=3Dnative, so you&#39;ll need to dig through it&#39;s makefiles and work o=
ut how to disable it (or just delete them).</div><span class=3D"gmail-HOEnZ=
b"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div><div class=3D"gmail_extra">That makes me wonde=
r what are the exact rules of processing the command line options by GCC.<b=
r><br></div><div class=3D"gmail_extra">I thought the precedence is:=C2=A0 T=
UNE &gt;=3D CPU &gt;=3D ARCH.<br><br></div><div class=3D"gmail_extra">But a=
pparently, multi -march=3D definitions, is not well defined, or is it?<br><=
br></div><div class=3D"gmail_extra">There is an unanswered similar question=
 here: <a href=3D"https://lists.debian.org/debian-gcc/2015/12/msg00153.html=
">https://lists.debian.org/debian-gcc/2015/12/msg00153.html</a><br></div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Regards,<br><=
br></div><div class=3D"gmail_extra">Leon.<br></div><div class=3D"gmail_extr=
a"><br></div></div>

--001a113db60072860905463b6114--
