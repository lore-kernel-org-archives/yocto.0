Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C92DE00B58; Fri, 16 Jun 2017 03:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47975E009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:19:10 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id u19so56739900qta.3
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sLZzgohU4dGYLgiOTDwGOIy/Me7kwmhsX1ip6ahyves=;
	b=0PT29XnsM4/pphIGTIOhjtFYzj0oNDlkDZ3p8eu2GmBu26YXnhic/Qz3nRSaXwLpKg
	geJPnFb0rwv65BuLcbjgKRVKA86Nxz6MvjJYrY4XUrbwyoPbFTcFHJ3Ae/TIJS2FEvWy
	o9VFDfs5a53DntIigNAw0YxDCojSVzjFwZ7he7Ul4xKq90ZzQBZTXoC7lwKLZOezmA4i
	jtkQvx31uemLN2VpSccd7JLQlqRe1Vj8jD0TfI6hVIMmZDc1U/TBVgtkmZ75kfKjZRGS
	RT2bOV+ep9z6HfR3pSWx5rLfwpfVwT0MYlJbfqoroYyui5R3VyfVPCkPlMqoMoaJLdOI
	IkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sLZzgohU4dGYLgiOTDwGOIy/Me7kwmhsX1ip6ahyves=;
	b=k7vIMBbh+Jj7QQQbG91bQTdPXL81WkJ+xeNJGYhpRc45Hv+XlhWvsFVBYhH8OFqM40
	CCARP+H66AXyqA33nHWW0S6eM/43jYguD5KBSr5ZUHAyKnxK+UpukD5lWYgE7N/6kcMm
	x+udHndAREvF91t6gtoYO9MhY9onlVg/ovKzjEmIWB1QKlJnUxVtrA1zvw8sqtfL1WNc
	2eqNpJzoJFoo657vhkT6+bOp4JzqP9z9BWkZc4UNeslta9YFw6+CVrz0/yHnc+LGMahW
	Sg2oGHxkG1mad7vkBXZ0uV9iWrG9guWqzryOnLXrxGEitiisY1lqnN7FLkqt3gjJ+Am7
	EEmQ==
X-Gm-Message-State: AKS2vOwdX0+PGyKks7UXQvYqO/TFxvQj6ifluE4UCIv6/GB/jn34f69+
	52xE9JOI5zyrKcmqsNeKgvjUmANIgc9X
X-Received: by 10.55.102.214 with SMTP id a205mr11511285qkc.154.1497608350261; 
	Fri, 16 Jun 2017 03:19:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Fri, 16 Jun 2017 03:18:49 -0700 (PDT)
In-Reply-To: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
References: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Jun 2017 11:18:49 +0100
Message-ID: <CAJTo0LYAK3yiAgfWOF3q9y2rNeBs1EXaf3sRZ0bCoXqj50zSuw@mail.gmail.com>
To: "Pawar, Alok" <Alok.Pawar3@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto VLC compilation
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
X-List-Received-Date: Fri, 16 Jun 2017 10:19:12 -0000
Content-Type: multipart/alternative; boundary="94eb2c0580a8bafa200552111d31"

--94eb2c0580a8bafa200552111d31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Without knowing the error message it's hard to help, but you're probably
hitting the commercial license flags.

Once you've read the relevant licensing terms and have agreed to them,
adding something like this to your local/distro configuration will allow
the build to continue:

LICENSE_FLAGS_WHITELIST +=3D "commercial_vlc"

(where commercial is the license flag that the recipe used, and vlc is the
recipe name that sets the flag)

Ross

On 16 June 2017 at 10:47, Pawar, Alok <Alok.Pawar3@harman.com> wrote:

> Hi,
>
>
>
> I am using yocto 2.1.2 krogoth version.
>
> I tried compiling VLC in it, but I fialed. It is giving other dependency
> package name which contains =E2=80=9Crestricted licence=E2=80=9D.
>
>
>
> Please help me out, how I can compile and test VLC using yocto for ARM.
>
>
>
> Best Regards
>
> *Alok Pawar*
>
> Sr. Engineer Product Development
>
> Harman Connected Services
>
>
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

--94eb2c0580a8bafa200552111d31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Without knowing the error message it&#39;s hard to help, b=
ut you&#39;re probably hitting the commercial license flags.<div><br></div>=
<div>Once you&#39;ve read the relevant licensing terms and have agreed to t=
hem, adding something like this to your local/distro configuration will all=
ow the build to continue:</div><div><br></div>LICENSE_FLAGS_WHITELIST +=3D =
&quot;commercial_vlc&quot; <div><br></div><div>(where commercial is the lic=
ense flag that the recipe used, and vlc is the recipe name that sets the fl=
ag)</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On 16 June 2017 at 10:47, Pawar, Alok <span dir=
=3D"ltr">&lt;<a href=3D"mailto:Alok.Pawar3@harman.com" target=3D"_blank">Al=
ok.Pawar3@harman.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_5184538743172974506WordSection1">
<p class=3D"MsoNormal">Hi, <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am using yocto 2.1.2 krogoth version.<u></u><u></u=
></p>
<p class=3D"MsoNormal">I tried compiling VLC in it, but I fialed. It is giv=
ing other dependency package name which contains =E2=80=9Crestricted licenc=
e=E2=80=9D.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Please help me out, how I can compile and test VLC u=
sing yocto for ARM.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Best Regards<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Gill Sans MT&quot;,sans-serif">Alok Pawar<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Sr. Engineer Product Development<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Harman Connected Services<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0580a8bafa200552111d31--
