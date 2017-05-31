Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 930B0E00ADD; Wed, 31 May 2017 07:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2DBCE00726
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 07:25:52 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id b204so17311847oii.1
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 07:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z5yRVsOoDTT63MBIACo8gw50h2Zu9b2lLckCIz3y14c=;
	b=AJMclvi2Xwif5kgQ5oKBjFwa9XHiIuXfPN8IqSMS4fC6CMxik2RGDMNEMNB20SV5oL
	pPeWYh2tMAeQ8iNCvvK4TCJx2NApxM7sW6SpPG2deCugJERWt8Q20uWfJOfxmHq0Blg2
	an9jdqfLXnEuf+7zEwwhFpD1cLJkhqSWbVyTKRfwPB8WN28bQxIDyF7C69Ovz+kLMmeA
	i+NmwjEPXYhQDQudeFH1/ZSjJgEbW/lNBfmQGnxwa4h3GDJHyy6mMcdlGPQkzmP0gxQu
	vcAjKgu6sEwqibZmRWLUadKV/C6xtax/fw1u5RJqLYYLfu2lZWN0Jjq4/OFec9zd/xXv
	OezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z5yRVsOoDTT63MBIACo8gw50h2Zu9b2lLckCIz3y14c=;
	b=LvFz8Hk06jiy6Xr3MDQ47e8+T5445pWfdGWXLRFuNXHIoIUkdYm2Z1Fd/M1zDbwGq2
	bt214uLMxAFvS5XK3oexCTENAq+mey6a9tSOe3ZBCQuDtfF0GnKDhzsWReFUa/5S8q6K
	YzLWREECf5B7tSEFKO4Uqw1scpM6VnazMKgr193ImmHz7kL0dMjKuS6Ti9z1q1J8Typ2
	1145dDE4jX7NMTt0I/q6+My/AtorwppNCh9niifRGQc6TJfbvjj9MfaXa4It8/xLHBrQ
	aIrRRuBE95qo5cEN5EhnGRKK1j5N/toZdgR7N+Jogeyxiz78RrLYMVMh9RhlASetEk9O
	y4bw==
X-Gm-Message-State: AODbwcDn8dRZ88QaBpeNsn3lgBwTohq1uH9GQ2uwixcKMO0upshT4ZBF
	8MBvJUAiK4rgbQHRldla2IFmp1oYDLhF
X-Received: by 10.157.80.3 with SMTP id a3mr6842799oth.64.1496240751804; Wed,
	31 May 2017 07:25:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.5.71 with HTTP; Wed, 31 May 2017 07:25:51 -0700 (PDT)
In-Reply-To: <1416da32375ee235be7a29c5d575fab9@technux.se>
References: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
	<1496069912.26945.37.camel@linux.intel.com>
	<CAGnCEbsv_v=YuW2uiwRhJAkw8Yz9H81OELGAYvmOBdU=W-0ykQ@mail.gmail.com>
	<1416da32375ee235be7a29c5d575fab9@technux.se>
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Wed, 31 May 2017 21:25:51 +0700
Message-ID: <CAGnCEbtRUXc1ZGe+OXTDHP9Mtyco8EcpBwkbNis-Uc048r2VfA@mail.gmail.com>
To: petter@technux.se
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: How to install dbg package and not its dependencies?
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
X-List-Received-Date: Wed, 31 May 2017 14:25:55 -0000
Content-Type: multipart/alternative; boundary="f4030435ab4c82879b0550d2b232"

--f4030435ab4c82879b0550d2b232
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much, setting that flag helped!

Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
-so61pi

On Tue, May 30, 2017 at 8:34 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

> Hi,
>
> If the problem is the footprint, then you can add below line in the
> libexample recipe:
>
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> This will prevent the build system from adding any debug info in the
> libexample-dbg package.
>
> BR Petter
>
> [1] - http://www.yoctoproject.org/docs/current/ref-manual/ref-
> manual.html#var-INHIBIT_PACKAGE_DEBUG_SPLIT
>
>
>
> Petter Mab=C3=A4cker
>
> Technux <petter@technux.se>www.technux.se
>
> 2017-05-30 04:17 skrev Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:
>
> I have both app-example*-dbg* & app-example in IMAGE_INSTALL and the
> result is app-example-dbg & app-example & libexample-dbg & libexample are
> included in the final image.
>
> Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
> -so61pi
>
> On Mon, May 29, 2017 at 9:58 PM, Leonardo Sandoval <
> leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>
>> On Sun, 2017-05-28 at 17:23 +0700, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:
>> > Hi everyone,
>> >
>> >
>> > Let's say I have app-example package which depends on libexample.
>> >
>> > When I add app-example-dbg to IMAGE_INSTALL, libexample-dbg package is
>> > automatically included in the final image which makes the image size
>> > become bigger.
>> >
>> what about installing the non-dbg ones?
>> >
>> > In this case, is there a way to prevent libexample-dbg from being
>> > installed?
>> >
>> >
>> > Thanks,
>> >
>> > Thi Huynh
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>

--f4030435ab4c82879b0550d2b232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much, setting that flag helped!<br></div><d=
iv class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Hu=E1=BB=B3nh Ng=E1=
=BB=8Dc Thi<br><div>-so61pi<br></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, May 30, 2017 at 8:34 PM, Petter Mab=
=C3=A4cker <span dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.se" targe=
t=3D"_blank">petter@technux.se</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><u></u>
<div style=3D"font-family:Helvetica,Arial,sans-serif">
<p>Hi,</p>
<p>If the problem is the footprint, then you can add below line in the libe=
xample recipe:</p>
<p>INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;</p>
<p>This will prevent the build system from adding any debug info in the lib=
example-dbg package.</p>
<p>BR Petter</p>
<p>[1] - <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref=
-manual.html#var-INHIBIT_PACKAGE_DEBUG_SPLIT" target=3D"_blank">http://www.=
yoctoproject.org/<wbr>docs/current/ref-manual/ref-<wbr>manual.html#var-INHI=
BIT_<wbr>PACKAGE_DEBUG_SPLIT</a></p>
<p>=C2=A0</p>
<pre>Petter Mab=C3=A4cker

Technux &lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">petter@t=
echnux.se</a>&gt;
<a href=3D"http://www.technux.se" target=3D"_blank">www.technux.se</a><br><=
br></pre><div><div class=3D"h5">
<p>2017-05-30 04:17 skrev Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">
<div dir=3D"ltr">I have both app-example<strong>-dbg</strong> &amp; app-exa=
mple in IMAGE_INSTALL and the result is app-example-dbg &amp; app-example &=
amp; libexample-dbg &amp; libexample are included in the final image.</div>
<div class=3D"gmail_extra"><br clear=3D"all">
<div>
<div class=3D"m_-2218147754835064279gmail_signature">
<div dir=3D"ltr">Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi<br>
<div>-so61pi</div>
</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">On Mon, May 29, 2017 at 9:58 PM, Leonardo Sandov=
al <span>&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" =
target=3D"_blank">leonardo.sandoval.gonzalez@<wbr>linux.intel.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span>On Sun, 2017-05-28 at 17:23 +0700, Ng=
=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:<br> &gt; Hi everyone,<br> &gt;<br> &gt;=
<br> &gt; Let&#39;s say I have app-example package which depends on libexam=
ple.<br> &gt;<br> &gt; When I add app-example-dbg to IMAGE_INSTALL, libexam=
ple-dbg package is<br> &gt; automatically included in the final image which=
 makes the image size<br> &gt; become bigger.<br> &gt;<br></span>what about=
 installing the non-dbg ones?<br>
<div class=3D"m_-2218147754835064279HOEnZb">
<div class=3D"m_-2218147754835064279h5">&gt;<br> &gt; In this case, is ther=
e a way to prevent libexample-dbg from being<br> &gt; installed?<br> &gt;<b=
r> &gt;<br> &gt; Thanks,<br> &gt;<br> &gt; Thi Huynh<br> &gt;</div>
</div>
<span class=3D"m_-2218147754835064279HOEnZb"><span style=3D"color:#888888">=
&gt; --<br> &gt; ______________________________<wbr>_________________<br> &=
gt; yocto mailing list<br> &gt; <a href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank">yocto@yoctoproject.org</a><br> &gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.<wbr>org/listinfo/yocto</a><br><br><br></span></span></blockquote>
</div>
</div>
</blockquote>
</div></div></div>
</blockquote></div><br></div>

--f4030435ab4c82879b0550d2b232--
