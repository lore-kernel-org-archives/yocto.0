Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03361E00CCE; Mon, 11 Feb 2019 21:10:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F27AE00A1A
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 21:10:06 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id a48so1596380qtb.4
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 21:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xrQnz/USjUnUuWc6gGThBhP/8hITvDElFY2CEkmGRUE=;
	b=JNAuC+IqtH43Sa1bd2D+ZnxIdBvktkQIKjnNJNr1O4gY7Mr6GcTRF7YkwG8BhVCDPn
	oEZf03mCIF5c6CTp4cZK1ejKYQFp0mkgleDg5XdA6T1ZOux9IUN+Vs/WtHpjmpFAu1ab
	uegQJIDU95ACXfCTJzmCse2lE3M5bG+UQTkX6ItkTfNbVFP/MtPNC/1COAkqgGRgdH/n
	du1lPF1RTnnY21hz+bpAdC5v6NFerOt6gu1Kf9chF40fcbzzOPiwMBbxqbAefdp/Wbdk
	L+wP4HUbhBcH28KxjJcUsg5oG35xFpKwb5caKR3LW0bQuAUtoukQyqFaajzXDDQaqr0A
	vIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xrQnz/USjUnUuWc6gGThBhP/8hITvDElFY2CEkmGRUE=;
	b=QHw7XNcBEz7L8ILuPB3EUPaber/p3eUx+xWwgLZu/O8tJI/2i6wLkD5N1lu3JdHhev
	e88NSWtLWQTocX03qQDc49/lLqnX0oiPqFK00bxqT+xjSIanQBG2XPSxnDZplIAzh9ZZ
	vKY+SpnJShCOtXf8tiM+Oot1qANGLmPzyg1aRtPTX2N/KZYGucUgJty+Qumu65/nFzRp
	0ugtLROFLK/S3+gv6BjbFBHFrRB2BONu8o3pW9WPIfHJbxExr3Jh5H7I3pU+A0lvIxyF
	RI7FWFFyv+xqLx5FtByEuYZJqa9gakBR04I87VA3LVYNYo9JLS8Z/Ew3/9wu8Q8XU3YO
	fDjg==
X-Gm-Message-State: AHQUAubMkY0hXXuqCXFPXVHnNC9ZF7P8QVcXzAthg+0KJZunmY3VaT3y
	VszZ/4EOoPc/YcWetxIykWzWad6BAiBgpuhfhfNY6g==
X-Google-Smtp-Source: AHgI3IZt5Mxx6PKkLbmPt9tohEmbVTStAmxYszWDUrgfl9KLGtdpPJJdajq5k+cBLwp2+f2zuBFSvt3c3LIOpq1brTA=
X-Received: by 2002:ac8:300a:: with SMTP id f10mr1383844qte.236.1549948205366; 
	Mon, 11 Feb 2019 21:10:05 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1902112301020.22458@godzilla.spiteful.org>
In-Reply-To: <alpine.LFD.2.21.1902112301020.22458@godzilla.spiteful.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Feb 2019 21:09:53 -0800
Message-ID: <CAMKF1spgSu-uENzE0OnS9U=qHCP0bsKpBk_NxETuJJNtUjWOhA@mail.gmail.com>
To: Scott Murray <scott.murray@konsulko.com>
Cc: yocto@yoctoproject.org
Subject: Re: gitsm fetcher fixes in thud?
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
X-List-Received-Date: Tue, 12 Feb 2019 05:10:07 -0000
Content-Type: multipart/alternative; boundary="0000000000003383df0581ab70f2"

--0000000000003383df0581ab70f2
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 11, 2019 at 8:11 PM Scott Murray <scott.murray@konsulko.com>
wrote:

> Hi,
>
> I'm working on upgrading Automotive Grade Linux (AGL) from rocko to thud,
> and there's substantial git submodule breakage with the fetcher as it
> stands in thud ATM.  I've been doing tests with the current gitsm.py from
> master with Mark's recent fixes, and it works fine.  I'm wondering what
> the feasibility of getting those fixes into thud is?  I am willing to do
> the cherry-picking and testing if someone can point me at the mechanism
> for it (poky-contrib?).
>
> Thanks,


I think it should be backported to thud as well but
Given we did get some regressions and subsequently fixes for them I am not
sure if there will be similar issued in thud elsewhere but eventually a
maintainers call

>
>
> Scott
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003383df0581ab70f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 11, 2019 at 8:11 PM Scott Murray &lt;<a href=3D=
"mailto:scott.murray@konsulko.com">scott.murray@konsulko.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;m working on upgrading Automotive Grade Linux (AGL) from rocko to thu=
d,<br>
and there&#39;s substantial git submodule breakage with the fetcher as it<b=
r>
stands in thud ATM.=C2=A0 I&#39;ve been doing tests with the current gitsm.=
py from<br>
master with Mark&#39;s recent fixes, and it works fine.=C2=A0 I&#39;m wonde=
ring what<br>
the feasibility of getting those fixes into thud is?=C2=A0 I am willing to =
do<br>
the cherry-picking and testing if someone can point me at the mechanism<br>
for it (poky-contrib?).<br>
<br>
Thanks,</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">I think i=
t should be backported to thud as well but</div><div dir=3D"auto">Given we =
did get some regressions and subsequently fixes for them I am not sure if t=
here will be similar issued in thud elsewhere but eventually a maintainers =
call=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
Scott<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000003383df0581ab70f2--
