Return-Path: <elliot.smith@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09496E00CF0; Mon,  4 Jul 2016 08:20:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4785CE00C31
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 08:20:02 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id l125so41845307ywb.2
	for <yocto@yoctoproject.org>; Mon, 04 Jul 2016 08:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8sC2KduXSKC3wdVcs+15QVanlgaO1srlAhmWcKBeQOA=;
	b=1wDMB8CPGUxwpTByt1GNoAARpMkZEXgkZyZmxLeCpZdV5QEAME50vXGQF64LgEpeSQ
	jFhZq/+QoFnGY7DH/pXVERvhUPJWKXkdQSwmNzHNPf0p5jE9zNQ0UZYRT+LU3mCzO0fy
	gb3fRAjZnuE2JA7KVRUBCZ8IfoUWdbtCY9tUae1vhOCdI1oFhPZ4oAiXnY69CZSTL1Ae
	wWz+wBs4Dkr7orM3nUPJcfYDhnqhAqIkh7dYOnPX1weA/Tk1RtM30Xqat8QZ9Hg2XLxW
	ML+EhA2iseknvDndSYIJ2Un8B4ey+fyIUQjT1laFD/us1pLv1QRy+21haJYpY3VK2Tq7
	tCTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8sC2KduXSKC3wdVcs+15QVanlgaO1srlAhmWcKBeQOA=;
	b=Jo13mj1wmVmuO6oepCl1p9WJwngxqDQOImWL0OtJqkE2+LDpDMtGOzBeuOkG2MyZiq
	6VJdYUGFq/cJgc7dBet+X1Rs0vsOu73wpBt5GjzFXkB//LC8QyM8vxxkxpj8SZnD2AtT
	QQ+b1k/gV8SM9LWOvdr97yetYIAUyMvjcmDhX0Eae6jLKiHCJ3iK5oPptS+loLfScW7q
	caGx0FEipk9Lj+pzFKPs5TgGhPh4prcfkPRTqXO1EBOYP7uNIxxEqAIoNqQyHm+SLCiB
	Ayd12nj+LGMTjJTpdfqeMfqQ9WKu33c7HhU+z/EQZLz+efQFyfKc6Bvdm9NUOF50dqyM
	SsFA==
X-Gm-Message-State: ALyK8tKvyS1cYTINTlAb00An8EMdqpPZHjlWdtzwO1hOjbMjG+l1wOoDxixnET/GQaIfcNYKowmlMeXKcdkD4M/3
X-Received: by 10.129.24.142 with SMTP id 136mr4180292ywy.240.1467645602113;
	Mon, 04 Jul 2016 08:20:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.198.193 with HTTP; Mon, 4 Jul 2016 08:20:01 -0700 (PDT)
In-Reply-To: <BN3PR1201MB09632782B810BA463C9BB091A5380@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB09632782B810BA463C9BB091A5380@BN3PR1201MB0963.namprd12.prod.outlook.com>
From: "Smith, Elliot" <elliot.smith@intel.com>
Date: Mon, 4 Jul 2016 16:20:01 +0100
Message-ID: <CA+1hgUi8dXYR9_4umtFVebhSF0tLi+mcRzYnoAoVfpbJvJfaFw@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toaster fail to luanch bitbake
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
X-List-Received-Date: Mon, 04 Jul 2016 15:20:07 -0000
Content-Type: multipart/alternative; boundary=001a11414674c55c9e0536d0de6b

--001a11414674c55c9e0536d0de6b
Content-Type: text/plain; charset=UTF-8

On 4 July 2016 at 01:29, Richard Zhang <richard.zhang@pica8.com> wrote
>
>     After setup toaster I can't finish build progress with bitbake.
>
> some ERROR log into :
>
>
>
> /opt/yocto/poky/build-toaster-4/toaster_ui.log
>
>
>
> ERROR: can't set event mask: None
>
>
>
>
>
> Is this ERROR come with Environment variant?
>

Hello.

Can you just clarify which version of Toaster you are using and which
instructions you are following, please?

Also could you provide the full toaster_ui.log as an attachment with your
reply, in case there is extra information in there?

And could you explain in more detail about what you mean by "Is this ERROR
come with Environment variant?" Are you doing anything special with
environment variables, or using some sort of unusual setup?

Thanks.
Elliot


>
>
>
>
> Thanks.
>
>
>
>
>
> Richard Zhang
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Elliot Smith
Software Engineer
Intel Open Source Technology Centre

--001a11414674c55c9e0536d0de6b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 4=
 July 2016 at 01:29, Richard Zhang <span dir=3D"ltr">&lt;<a href=3D"mailto:=
richard.zhang@pica8.com" target=3D"_blank">richard.zhang@pica8.com</a>&gt;<=
/span> wrote=C2=A0<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:=
rgb(204,204,204);padding-left:1ex"><div lang=3D"ZH-CN" link=3D"#0563C1" vli=
nk=3D"#954F72"><div>
<p><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 After setup toaster I can&#39;t =
finish build progress with bitbake.</span></p>
<p><span lang=3D"EN-US">some ERROR log into :<u></u><u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US">/opt/yocto/poky/build-toaster-4/toaster_ui.log=C2=
=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US">ERROR: can&#39;t set event mask: None<u></u><u></u>=
</span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US">Is this ERROR come with Environment variant?</span>=
</p></div></div></blockquote><div><br></div><div>Hello.</div><div><br></div=
><div>Can you just clarify which version of Toaster you are using and which=
 instructions you are following, please?</div><div><br></div><div>Also coul=
d you provide the full toaster_ui.log as an attachment with your reply, in =
case there is extra information in there?</div><div><br></div><div>And coul=
d you explain in more detail about what you mean by &quot;Is this ERROR com=
e with Environment variant?&quot; Are you doing anything special with envir=
onment variables, or using some sort of unusual setup?</div><div><br></div>=
<div>Thanks.</div><div>Elliot</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div l=
ang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72"><div><p><span lang=3D"EN-U=
S"><u></u><u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US">Thanks.<span class=3D""><font color=3D"#888888"><u>=
</u><u></u></font></span></span></p><span class=3D""><font color=3D"#888888=
">
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p><span lang=3D"EN-US">Richard Zhang<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</font></span></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div>Elliot Smith<br>Software Engineer<br>Intel Open Source Technology Cent=
re</div></div></div>
</div></div>

--001a11414674c55c9e0536d0de6b--
