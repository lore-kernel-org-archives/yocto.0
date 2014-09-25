Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31A57E00868; Wed, 24 Sep 2014 22:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15570E00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 22:50:08 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id m8so7702720obr.33
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 22:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=df1PwTvgcxv4q/vxScxnz8HRvpEKVlSfcbyUrLrWWqY=;
	b=R0mzBCCG5IEbBrbFY76T1jDM7MTHNj8ZouQoywDIi0uiZLvP8zVdwAF9IWLBFIRA4Q
	Vu+40UiIuZCMgs5xuoTOdsfARbuvnnfw7s8z6yLo64EoB6HO/JB3FLFAbw1usp0/+ULX
	/f4TFfqSkmFtXwEeezlhC6oVZNXt3Hz027lyU6ReiI09+6Le2wviLSI+Lbs8NYVGLFEm
	t51nYsi9kM91QG8wxC2RbfREr/qpaO09quz2Li7iAXhm0jodcnIYC/vw/d3oG2V2hONj
	31pfTrGc10e5XeZzI6hODtozr6NgaUBAEu27HkgOBwUMfRm/oeRSTJi2XsunUCwyW6/0
	BDqg==
X-Received: by 10.182.191.39 with SMTP id gv7mr11253700obc.14.1411624207474;
	Wed, 24 Sep 2014 22:50:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.3.231 with HTTP; Wed, 24 Sep 2014 22:49:47 -0700 (PDT)
In-Reply-To: <D0486757.1A59A%pourya.shirazian@daimler.com>
References: <D0486757.1A59A%pourya.shirazian@daimler.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Thu, 25 Sep 2014 11:19:47 +0530
Message-ID: <CAAA4K6+Y=ygBnyh54QzVfjf7ycXCeRALboeKQ9YXstybg1aLfA@mail.gmail.com>
To: pourya.shirazian@daimler.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to suppress error: canonicalization unexpectedly shrank by one character
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
X-List-Received-Date: Thu, 25 Sep 2014 05:50:15 -0000
Content-Type: multipart/alternative; boundary=089e0158ac7e7166c50503dd5fa9

--089e0158ac7e7166c50503dd5fa9
Content-Type: text/plain; charset=UTF-8

Hi,

This should help I guess,

http://lists.openembedded.org/pipermail/openembedded-core/2013-April/077607.html

Also just a thought, can you please check in your package that you are
building, whether there is instances of double forward slash which may
cause split_and_strip_files to fail in do_package??

-JC



On Thu, Sep 25, 2014 at 12:49 AM, <pourya.shirazian@daimler.com> wrote:

>  Hi Guys,
>
>  I keep getting an error at do_package stage regarding the debug edit
> function:
>
>  ERROR: canonicalization unexpectedly shrank by one character
>
>  I removed the rpaths inclusion in my libs but the error is still there.
> Is there a way to suppress this check?
>
>  Thanks
>
> If you are not the addressee, please inform us immediately that you have
> received this e-mail by mistake, and delete it. We thank you for your
> support.
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
JCP

--089e0158ac7e7166c50503dd5fa9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"f=
ont-family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">This shou=
ld help I guess,</div><div class=3D"gmail_default" style=3D"font-family:&#3=
9;trebuchet ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" styl=
e><font face=3D"trebuchet ms, sans-serif"><a href=3D"http://lists.openembed=
ded.org/pipermail/openembedded-core/2013-April/077607.html">http://lists.op=
enembedded.org/pipermail/openembedded-core/2013-April/077607.html</a></font=
><br></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms, s=
ans-serif"><br></font></div><div class=3D"gmail_default" style><font face=
=3D"trebuchet ms, sans-serif">Also just a thought, can you please check in =
your package that you are building, whether there is instances of double fo=
rward slash which may cause=C2=A0split_and_strip_files to fail in do_packag=
e??</font></div><div class=3D"gmail_default" style><font face=3D"trebuchet =
ms, sans-serif"><br></font></div><div class=3D"gmail_default" style><font f=
ace=3D"trebuchet ms, sans-serif">-JC</font></div><div class=3D"gmail_defaul=
t" style><font face=3D"trebuchet ms, sans-serif"><br></font></div><div clas=
s=3D"gmail_default" style><font face=3D"trebuchet ms, sans-serif"><br></fon=
t></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Thu, Sep 25, 2014 at 12:49 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:pou=
rya.shirazian@daimler.com" target=3D"_blank">pourya.shirazian@daimler.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div style=3D"word-wrap:break-word">
<div style=3D"font-family:Calibri,sans-serif;font-size:14px;color:rgb(0,0,0=
)">Hi Guys,</div>
<div style=3D"font-family:Calibri,sans-serif;font-size:14px;color:rgb(0,0,0=
)"><br>
</div>
<div style=3D"font-family:Calibri,sans-serif;font-size:14px;color:rgb(0,0,0=
)">I keep getting an error at do_package stage regarding the debug edit fun=
ction:</div>
<div style=3D"font-family:Calibri,sans-serif;font-size:14px;color:rgb(0,0,0=
)"><br>
</div>
<div style=3D"font-family:Calibri,sans-serif;font-size:14px"><font color=3D=
"#ff0000">ERROR: canonicalization unexpectedly shrank by one character</fon=
t></div>
<div style=3D"font-family:Calibri,sans-serif;font-size:14px"><font color=3D=
"#ff0000"><br>
</font></div>
<div>I removed the rpaths inclusion in my libs but the error is still there=
. Is there a way to suppress this check?</div>
<div><br>
</div>
<div>Thanks</div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody><tr><td><font face=3D"sans-serif, Arial, Helvetica" size=3D"-1" colo=
r=3D"#808080"><br>
If you are not the addressee, please inform us immediately that you have re=
ceived this e-mail by mistake, and delete it. We thank you for your support=
.<br>
<br>
</font>
</td></tr></tbody></table>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--089e0158ac7e7166c50503dd5fa9--
