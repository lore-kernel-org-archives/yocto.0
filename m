Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5AB2E004D8; Fri,  3 Feb 2017 07:37:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CCC3E003E1
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 07:37:10 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id 11so1501407qkl.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 07:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pT9yTr1jd8SldkpNsfGu6VZbUtottqpmBsaVbefz4QE=;
	b=bGIE5UJtFBAXgSxKIbzvDTSFnb3CvEp4FtxswltekiWrfToUAD8UyW2ze4NyLWf/uO
	f+jX+o2y3IfWfWFKY39gJnS/nuv8Hteq5tLXi3yBe2Qx/YN9/DZ5CVJyfmodAUAnRQug
	b89pKij1HKOyS2NeGL6sCc/5k/ykd7jZkv4B6nL36LneVDwnUzFM97QqYx8OaMfXlIQR
	f3hDRQt1RSzEYrlmueZF1UmnxKESlpZzhJvZw6ZmpyRyDHmG1xh+c2eFl2J9/kSpEzer
	W3m4lLY5iuUWLih0h7j9yNqeSLQRQXugCAHUlmRtJx02OwJka/aWo9HEIApJ/gZHBHlO
	tr7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pT9yTr1jd8SldkpNsfGu6VZbUtottqpmBsaVbefz4QE=;
	b=A1ZkLIsWE29P2Y6XubVogjaDRaXSOlI/kidxxq1HApRtQUTlan04hLcxjeGMT1QUAB
	360SuRJWNWA4nJRZhz1bGC2ILOohZ05JpACzY/IiOw7EtnvRb4EPjp3hiVUrClTh6ESC
	Eu6Q17WI7ylwnbwFt+ONBVEEVmTfp5NT1gfMfI331X7mWfw+hN2spH5KzT1LlD52XsU1
	JQ1QUfrM4na0Sa2DoHlCjK/xBHPzCE8oZCJ+FFlJ2n4Fe0aiYlIiLtC3H+FxEP1VODir
	auy80cluw41iRgB+z9VnkuAWxR1yQnc8lund20Zkys60FJsTdWXRinnFSVfaNEQ3fheZ
	BrVQ==
X-Gm-Message-State: AMke39kwlNRUQka2VsapPZrSg0q2Ek8glsckDQwnE7ZLIP0djbj8v0wssWE9X356NJXKdoXkwJ6Twu5K/Xczzw==
X-Received: by 10.55.70.79 with SMTP id t76mr14407962qka.271.1486136229525;
	Fri, 03 Feb 2017 07:37:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Fri, 3 Feb 2017 07:37:09 -0800 (PST)
In-Reply-To: <CAF3SDA5nQFbFYED7cA09WHm-OFHTwrrdtJvmxMb4AuHtwc=njQ@mail.gmail.com>
References: <CAF3SDA56bgLyrmSKxm=ObR-rrj2RVXojXnbeErkys2uJfdXU9w@mail.gmail.com>
	<8960F08D-AEDC-4474-A6D6-219BC5764252@bmw-carit.de>
	<CAF3SDA5nQFbFYED7cA09WHm-OFHTwrrdtJvmxMb4AuHtwc=njQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 3 Feb 2017 13:37:09 -0200
Message-ID: <CAF3SDA56XbjtxyO11H1jaM1z_bGhXhZp814yZqOU09xmztsJ4g@mail.gmail.com>
To: Clemens Lang <Clemens.Lang@bmw-carit.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repeteability in image compilation. How to achieve it? How to measure it?
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
X-List-Received-Date: Fri, 03 Feb 2017 15:37:12 -0000
Content-Type: multipart/alternative; boundary=001a114ac10a0c82860547a20ea4

--001a114ac10a0c82860547a20ea4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

much*

2017-02-03 13:36 GMT-02:00 Daniel. <danielhilst@gmail.com>:

> Thank you so mutch Clemens!!!! I'll take a look!!
>
> Regards,
>
> 2017-02-03 11:31 GMT-02:00 Clemens Lang <Clemens.Lang@bmw-carit.de>:
>
>> Hi,
>>
>> > On 3 Feb 2017, at 14:11, Daniel. <danielhilst@gmail.com> wrote:
>> >
>> > Hi everybody,
>> >
>> > How can I be sure that the same image built by distinct building hosts
>> > are trully identical?? Is it possible to measure that?
>>
>> I can recommend tooling offered by the reproducible builds project.
>> Especially diffoscope can be very helpful in this. See
>> https://reproducible-builds.org/tools/. You may want to start comparing
>> individual packages first, before you tackle image creation, though.
>>
>> HTH,
>> Clemens
>> --
>> Clemens Lang =E2=80=A2 Development Specialist
>> BMW Car IT GmbH =E2=80=A2 Lise-Meitner-Str. 14 =E2=80=A2 89081 Ulm =E2=
=80=A2 http://bmw-carit.com
>> ------------------------------------------------------------------------=
-
>> BMW Car IT GmbH
>> Gesch=C3=A4ftsf=C3=BChrer: Michael W=C3=BCrtenberger und Alexis Trolin
>> Sitz und Registergericht: M=C3=BCnchen HRB 134810
>> ------------------------------------------------------------------------=
-
>>
>>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114ac10a0c82860547a20ea4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">much*<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2017-02-03 13:36 GMT-02:00 Daniel. <span dir=3D"ltr">&lt;<=
a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail=
.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><di=
v>Thank you so mutch Clemens!!!! I&#39;ll take a look!!<br><br></div>Regard=
s,<br></div><div class=3D"gmail_extra"><div><div class=3D"h5"><br><div clas=
s=3D"gmail_quote">2017-02-03 11:31 GMT-02:00 Clemens Lang <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:Clemens.Lang@bmw-carit.de" target=3D"_blank">Clemens=
.Lang@bmw-carit.de</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br=
>
<span><br>
&gt; On 3 Feb 2017, at 14:11, Daniel. &lt;<a href=3D"mailto:danielhilst@gma=
il.com" target=3D"_blank">danielhilst@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi everybody,<br>
&gt;<br>
&gt; How can I be sure that the same image built by distinct building hosts=
<br>
&gt; are trully identical?? Is it possible to measure that?<br>
<br>
</span>I can recommend tooling offered by the reproducible builds project. =
Especially diffoscope can be very helpful in this. See <a href=3D"https://r=
eproducible-builds.org/tools/" rel=3D"noreferrer" target=3D"_blank">https:/=
/reproducible-builds.or<wbr>g/tools/</a>. You may want to start comparing i=
ndividual packages first, before you tackle image creation, though.<br>
<br>
HTH,<br>
Clemens<br>
<span class=3D"m_3919083179544913361HOEnZb"><font color=3D"#888888">--<br>
Clemens Lang =E2=80=A2 Development Specialist<br>
BMW Car IT GmbH =E2=80=A2 Lise-Meitner-Str. 14 =E2=80=A2 89081 Ulm =E2=80=
=A2 <a href=3D"http://bmw-carit.com" rel=3D"noreferrer" target=3D"_blank">h=
ttp://bmw-carit.com</a><br>
------------------------------<wbr>------------------------------<wbr>-----=
--------<br>
BMW Car IT GmbH<br>
Gesch=C3=A4ftsf=C3=BChrer: Michael W=C3=BCrtenberger und Alexis Trolin<br>
Sitz und Registergericht: M=C3=BCnchen HRB 134810<br>
------------------------------<wbr>------------------------------<wbr>-----=
--------<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br></div></div><spa=
n class=3D"">-- <br><div class=3D"m_3919083179544913361gmail_signature" dat=
a-smartmail=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do=
 or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b=
></i><br></div></div>
</span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:right">=
<i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yod=
a Master</b></i><br></div></div>
</div>

--001a114ac10a0c82860547a20ea4--
