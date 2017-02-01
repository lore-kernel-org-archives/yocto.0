Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D965E0094C; Wed,  1 Feb 2017 06:00:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E6BBE00938
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 06:00:48 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id w20so195746185qtb.1
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 06:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=vBj+5IXibAxdJCnzTwjpOtTE4BrtrvTpes0bFe1LO+c=;
	b=NPXfM4UpNEtqaO8tcyyJDmjsBcE8zGQnua3RyO/hNk02uBjR3+xYyra18vAE+3zqsH
	TFq+eT2kbomDU13I9izQ5yIVpwhQlAYkVGWoih5jsmZ72H7arte7r/nc1gG+2F0jb3ee
	MkqOeGImSG63dtUKSNWNStrJ3FRFJ2R/1Tj+3ArPHLiH0pNGGfzqnE4q7QKPOvBWktsV
	hMeJIuvn9kbFsSWTL36NLu8ruSqb/n1PvSiEGEHxJTjPG0p1OG2vjoEjvzMurjtR4i/F
	L7N827a5F1nbxwtS4jKkKAPDtnZn25tWBfePokdFbWitwluFWVBtqcHECHG3wXzgizzq
	MpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=vBj+5IXibAxdJCnzTwjpOtTE4BrtrvTpes0bFe1LO+c=;
	b=iwPT3xBlRH/ejP7+JoQJU2Uy5XvtxxE7h2QXSRldBIXbkNnbGXpgu3dj/++cv5xb4I
	Q9jVnt5YLAgdEU93SaLPdMlQSOsoMRgqecmxl0jIw2MJxpUZTchyOw5lhd9e8KJOM1MB
	pG/rC4Yb74yqNbVzJr7VDkG6/eO3IJkGyPM/VoSjKIA+/d3IyrLQhHT6IqtkKmH7ld89
	Bva8gk8+rrQphZiTiLZawjVmM59zu5REEufXX9dsKYCwc1cPKOwT8guNce6s1ma1MDL/
	jW0Zl4e702HfpXRTXSi6IuNMC9ORl/9xCKL7esRH8ij9gPppM7gfxJhb3tTYZV9rOxN9
	yfKA==
X-Gm-Message-State: AIkVDXKyarBk1VWuzBEiEV+wCLq9BVUjs+dBLZd1U1G3izARsIifgqSuW6H+1zV3OhM07Yxjk56r4ok8XbWofQ==
X-Received: by 10.237.53.164 with SMTP id c33mr2966153qte.121.1485957645190;
	Wed, 01 Feb 2017 06:00:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Wed, 1 Feb 2017 06:00:44 -0800 (PST)
In-Reply-To: <CAF3SDA4A65EvdF8qCv4UqsR8++vREmrz02X=5-9b=eCvnt--kw@mail.gmail.com>
References: <CAF3SDA6VazzB3w8s6egf6qfjOqV9FuCe4rW5DgzAvwCGzLXegA@mail.gmail.com>
	<CAF3SDA4A65EvdF8qCv4UqsR8++vREmrz02X=5-9b=eCvnt--kw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 1 Feb 2017 12:00:44 -0200
Message-ID: <CAF3SDA4m3kmcL+AfRhGkHJs3kQkYYQ8b6Yk_=qHeO6Y9_9dCjg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Test packages and staging area conflicts
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
X-List-Received-Date: Wed, 01 Feb 2017 14:00:56 -0000
Content-Type: multipart/alternative; boundary=001a11c110fc97d7ba05477879be

--001a11c110fc97d7ba05477879be
Content-Type: text/plain; charset=UTF-8

2017-01-30 18:09 GMT-02:00 Daniel. <danielhilst@gmail.com>:

> I'm using this little hack:
>
> do_install[depends] = "${RCONFLICTS_${PN}}:do_cleansstate"
>
DON'T DO THAT: This will make conflicting packages depend on one each other
and don't fix the problem. For the moment I'm living with the warnings. Any
help is apreciated!

>
> But this seems not right...
>
> Regards,
>
> 2017-01-30 17:56 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>
>> I've been using testing packages so that they can be built from SCM
>> testing branches and quickdly deployed to package repository. This makes
>> new testing releases avaible to software developers and they can installs
>> it by using package manager. The testing packages are the same as
>> production packages except that they don't go to the image, they conflict
>> with production packages (so asking for installing removes the production
>> package as expected) and they have a -text suffix.
>>
>> The problem with this aproach is that the testing and production packages
>> conflict so I face this warnings at each compilation of any of both:
>>
>> WARNING: The recipe foo-test is trying to install files into a shared
>> area when those files already exist.
>>
>> And buil
>>
>> How to aproach that? Am I doing something stupid?
>>
>> Regards,
>>
>> --
>> *"Do or do not. There is no try"*
>>   *Yoda Master*
>>
>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11c110fc97d7ba05477879be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2017-01-30 18:09 GMT-02:00 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;<=
/span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>I=
&#39;m using this little hack:<br><br></div>do_install[depends] =3D &quot;$=
{RCONFLICTS_${PN}}:do_<wbr>cleansstate&quot;<br></div></div></div></blockqu=
ote><div>DON&#39;T DO THAT: This will make conflicting packages depend on o=
ne each other and don&#39;t fix the problem. For the moment I&#39;m living =
with the warnings. Any help is apreciated! <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr"><div><div><br></div>But this seems not right...<b=
r><br></div>Regards,<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-01-30 17:56 GMT-0=
2:00 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com"=
 target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div><div><div>I&#39;ve been using testing=
 packages so that they can be built from SCM testing branches and quickdly =
deployed to package repository. This makes new testing releases avaible to =
software developers and they can installs it by using package manager. The =
testing packages are the same as production packages except that they don&#=
39;t go to the image, they conflict with production packages (so asking for=
 installing removes the production package as expected) and they have a -te=
xt suffix.<br><br></div>The problem with this aproach is that the testing a=
nd production packages conflict so I face this warnings at each compilation=
 of any of both:<br><br>WARNING: The recipe foo-test is trying to install f=
iles into a shared area when those files already exist.<br><br></div><div>A=
nd buil<br></div><div><br></div>How to aproach that? Am I doing something s=
tupid?<br><br></div>Regards,<span class=3D"m_914130772943004394HOEnZb"><fon=
t color=3D"#888888"><br clear=3D"all"><div><div><div><div><br>-- <br><div c=
lass=3D"m_914130772943004394m_3378944400428340572gmail_signature"><div styl=
e=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br>=
<i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div></div></div></div></font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"m_9141307=
72943004394gmail_signature" data-smartmail=3D"gmail_signature"><div style=
=3D"text-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><=
i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div></div>

--001a11c110fc97d7ba05477879be--
