Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E04AE00D11; Tue, 20 Aug 2019 08:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01216E00CAA
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 08:42:14 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id q16so3838678vsm.2
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 08:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MR9DJypL3cOeRDZlWbXPQmYrrnmn34QK6NuiQwIFGoM=;
	b=VUUaYvshjpLWq2eg/i8PmLU+mSen6OiXNEBS8syHg9w3jHQUCq+vVacsPtY+SsG7iW
	ViwMSjrNIvXCQ4cPUQa6ljPrVApVME+Oe68j0tLl4hWrU2An95YZY2UHXeFAJrh8mIOY
	V3/HzwvDS27FXCP8COcbcoBoDi9VhqJ5skpFYS4MVZLlQsmAs22N2x5sDzHTAE8J3H88
	O1g+dOlEdsHQHxYZtOiqrYwcM/Ioh6w1TY7X8hFo78xcu2YRrG3rJDynYXdoIub4MzpK
	piqxf2+dbJFPqJBV+Nl3WZzT0ddH6e2hc2/ygd8xIUsd+wY6elVFGu+EF2N3vCRv9Ljg
	oDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MR9DJypL3cOeRDZlWbXPQmYrrnmn34QK6NuiQwIFGoM=;
	b=b65wBU1+o2RviMf9tGR58Du+ZQHJm9L+gEuj+3anyEglAtPtGilC+Ff8fJtECMag7M
	Ji2UvTXXm4iNHgY1A7hisdYYqO55BIBETUSkUMkkTfrik+QUABeCPaXrUaNdcuZ1xvQ+
	6BW1ig0H8tdiwm8dmRa1VSy9d5mckqnrugzV4qtZOmdcwREl9K+oEWohtfL6A7f7QDrK
	X08aeL8awxWngtK0Bcm+QXTIVIapYJIEzfni6uSjixYfSXJMaad+We289wCsLPyiu6Se
	Pmn+LdqrFwjf9XQjMaaNYokT08cNRGslxWoQucxKTOvPhpVgVO62KS7difD4XRALKRKn
	PB0w==
X-Gm-Message-State: APjAAAU8BzzchF8dWrmtEdn0DBRacmvNnWWcR7k5lzQmmEB1f8q41pW/
	4BNuxg8jl4TVaQ2B6brlGglKwDzjy3qvWTpQNve5spdK
X-Google-Smtp-Source: APXvYqwr8RhwfrBL5sJ+o9yXuYVKOMwWelxl9/Ost8N3p1FxYD1vjx97W7w21lKa6M60dz76SktMeTbkFcN8D7vgJgM=
X-Received: by 2002:a67:fd66:: with SMTP id h6mr18585626vsa.83.1566315730342; 
	Tue, 20 Aug 2019 08:42:10 -0700 (PDT)
MIME-Version: 1.0
References: <cb03605c9f0d423eaae6bb2d7d60ca00@systec.de>
In-Reply-To: <cb03605c9f0d423eaae6bb2d7d60ca00@systec.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 Aug 2019 17:41:59 +0200
Message-ID: <CANNYZj9MnarpiyDPR0nk8xWKNXgPJVAEZ+g1v9+r0O0rjf8w9g@mail.gmail.com>
To: =?UTF-8?Q?Bert_B=C3=B6hne?= <bert.boehne@systec.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.7 SDK Eclipse
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
X-List-Received-Date: Tue, 20 Aug 2019 15:42:15 -0000
Content-Type: multipart/alternative; boundary="000000000000b697f005908e4c21"

--000000000000b697f005908e4c21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 20 Aug 2019 at 17:34, Bert B=C3=B6hne <bert.boehne@systec.de> wrote=
:

> I am using Yocto 2.7 and I want to use the SDK to build applications(or
> give the SDK to my colleagues to let them build applications). I have rea=
d
> in the documentation that there are plugins for Eclipse. But for Yocto
> 2.7(or maybe earlier) the support for this plugin was removed. So if we
> want to use Eclipse (and CMake), is this still possible? I am a little
> confused about this.
>
>
>
> If anybody could give me a hint, I would appreciate it very much.
>

It is possible, but you have to maintain it. The project couldn't find
anyone to take care of the plugins, and so the only remaining option was to
disable them.

Alex

--000000000000b697f005908e4c21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 20 Aug 2019 at 17:34, Bert B=C3=
=B6hne &lt;<a href=3D"mailto:bert.boehne@systec.de">bert.boehne@systec.de</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_7427788261902913292WordSection1"><span lang=3D"EN-US"=
>I am using Yocto 2.7 and I want to use the SDK to build applications(or gi=
ve the SDK to my colleagues to let them build applications). I have read in=
 the documentation that there are plugins for Eclipse. But for Yocto
 2.7(or maybe earlier) the support for this plugin was removed. So if we wa=
nt to use Eclipse (and CMake), is this still possible? I am a little confus=
ed about this.
</span>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If anybody could give me a hint=
, I would appreciate it very much.<u></u><u></u></span></p>
</div></div></blockquote><div><br></div><div>It is possible, but you have t=
o maintain it. The project couldn&#39;t find anyone to take care of the plu=
gins, and so the only remaining option was to disable them.</div><div><br><=
/div><div>Alex<br></div></div></div>

--000000000000b697f005908e4c21--
