Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5C76E00CD4; Wed, 27 Sep 2017 15:43:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7573E00CA2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 15:43:06 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id g32so65644ioj.2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 15:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UG/EKTqnWrH9kbH06odie63OlIk4l3Ce8ahFqAYE4a8=;
	b=t2vqUK0MFXrBVVpaVI8+6jIb9x0qdH8AFfxpMbcIUMdAv79o+e4/p7Lsgis92inwX9
	Kgee7Nktq6QxnIVWgUIuLgCUJ3EQ673FvUJ3Qeny7sEaxrNB+cfAtX7up041OAJNL8vY
	9TAE2ijDLfkeXPlaKttuAOr7ybCvlca0ZAh8CYkFM5BMKbKk+Bpc7yq4SH0uKqcpNhw9
	k5BfUKwGPxjOY6oiQXIJP/e5hsWA/Xf3w/qZV/UpHP1e+lwxKT572s9I2gnlnO5pfppG
	wfSEu7gZ6s2k1eSpaAVhz6SC16py7qTJBBuzDP/DIu5kp5Asa1yv9/RcBzkTwMvAzSeZ
	xKXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UG/EKTqnWrH9kbH06odie63OlIk4l3Ce8ahFqAYE4a8=;
	b=f6jyN6t/Xf9aSp5MWZYSPr9/2EDSbzfOYYIGu7Jabv/Qe/I5khlbCUQ4DIdPHpvXSI
	G063XYPJQ98ohrXNe6yF6UEF39CovKYxhh+FPygKEIHl2Twa1fppwcvCIMeGEusZ4ayL
	reJG4l1d5pW1/w+MkFh1VxUeX9eiOaJ1nvxsARkaZxpXyZK/QEod7yIwlPZN5HtoHv8r
	j54dI26GJWUA9Z/MOrYYdNOBDoNktytH4ikrjnPxe13e8kXlA9dqz29SHm/r0yhps2sF
	jVEz6tX7AdvBM9irFJ2OPRt2fte96BHA5JZ71BZBbrXkGi1T67607I9G3W0J2XrAVGrX
	tHiA==
X-Gm-Message-State: AHPjjUiU+0zmSor72UAgIdYXq8SthPdtPtMx0vxyWBAJEHIkpQREzaCK
	7R9wYS94AKbkQsQugVXR0qOF+iu9/rrZcM88aZciTg==
X-Google-Smtp-Source: AOwi7QCcF8tklFShxeKQzF8t61zEHtwNAniBe/vZdDkaCBPwAM5jS1t9fFSC3yCO6NJpi9+kWh2N1fG9yR0lvIGfsj8=
X-Received: by 10.107.135.72 with SMTP id j69mr4569090iod.210.1506552185919;
	Wed, 27 Sep 2017 15:43:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Wed, 27 Sep 2017 15:42:45 -0700 (PDT)
In-Reply-To: <DM5PR05MB2954EF4777E6EB3AE7C36815BB780@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
	<DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LZ3+prEXi4eJH-0qcg_mp7CShyVzGg2=nY3c3s585CQ9A@mail.gmail.com>
	<DM5PR05MB2954E471F11F1ADF08E544CABB780@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LavAJr8D+kuQ_6FkjA-D-XotT7BcrCA3W7bv_HL2EpuxA@mail.gmail.com>
	<DM5PR05MB2954EF4777E6EB3AE7C36815BB780@DM5PR05MB2954.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Sep 2017 23:42:45 +0100
Message-ID: <CAJTo0LaoXqf700W4wHMwfCJAK3B5xOTuFm-7ug3DWscFpcF=sg@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Wed, 27 Sep 2017 22:43:07 -0000
Content-Type: multipart/alternative; boundary="001a113f8e70e0c80f055a338337"

--001a113f8e70e0c80f055a338337
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 27 September 2017 at 21:59, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

>
> I think I found the problem.  I started looking at more file properties
> for the files that worked and the ones that didn=E2=80=99t, and I noticed=
 that all
> the ones that failed show a link count of 1024.  The Windows filesystem h=
as
> a link limit of 1023 links per file (at least as reported here:
> https://msdn.microsoft.com/en-us/library/windows/desktop/
> aa363860(v=3Dvs.85).aspx), so I think the hard link is failing due to the
> Windows link limit.  If that is the case, then I don=E2=80=99t think it=
=E2=80=99ll be a
> quick fix to get a working solution under WSL.
>

That link count doesn't seem feasible though...  we hardlink frequently
during a recipe build, but I'd expect to see 10 links, not over a
thousand.  You've definitely found the problem, just need to figure out
what is causing such excessive linking,

Ross

--001a113f8e70e0c80f055a338337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 27 September 2017 at 21:59, Bryan Evenson <span dir=3D"=
ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">beven=
son@melinkcorp.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_5915444226458075742WordSection1">
<p class=3D"MsoNormal"><br></p><div><span class=3D"">
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif">I think I found the problem.=C2=A0 I started=
 looking at more file properties for the files that worked and the ones tha=
t didn=E2=80=99t, and I noticed that all the ones that failed show
 a link count of 1024.=C2=A0 The Windows filesystem has a link limit of 102=
3 links per file (at least as reported here:
<a href=3D"https://msdn.microsoft.com/en-us/library/windows/desktop/aa36386=
0(v=3Dvs.85).aspx)" target=3D"_blank">
https://msdn.microsoft.com/en-<wbr>us/library/windows/desktop/<wbr>aa363860=
(v=3Dvs.85).aspx)</a>, so I think the hard link is failing due to the Windo=
ws link limit.=C2=A0 If that is the case, then I don=E2=80=99t think it=E2=
=80=99ll be a quick fix to get a working solution under WSL.</span></p></di=
v></div></div></blockquote><div><br></div><div>That link count doesn&#39;t =
seem feasible though... =C2=A0we hardlink frequently during a recipe build,=
 but I&#39;d expect to see 10 links, not over a thousand.=C2=A0 You&#39;ve =
definitely found the problem, just need to figure out what is causing such =
excessive linking,</div><div><br></div><div>Ross</div></div></div></div>

--001a113f8e70e0c80f055a338337--
