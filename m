Return-Path: <challinan@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 536DAE006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 11:57:39 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so5603881vbj.35
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2012 11:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=inc1DUNwhBJ2Qi9jIHDcXneKqe/FrjkGUgTRGjUTt4M=;
	b=pAqvVIUI/sRcKPwbE/kSfGN4i23gWCUr4CxBsgVw8ptMiwkO7q+W/DJ1OX16dqxj2y
	zjj2gp+Y3J+Q68G/aJTwtbnZXQXg0etYZTztwnTgUeROmz0m1izlMfvya1W92przgn1k
	e7RhzfXCAryt/sguuUvHglWWfbRFbW/LCggzRxuUUfhHIAsxLvEMIS3SePX9inryfNcP
	xqfJXo5X9Suun5CDVhzlK0GApxp6ZSLMHvlcP/mhNMRgR5zuMLqfCyu/WwwYV8CnDlCL
	Jd4S+61qcNf5MhktfnIXp8DNwffAEw6zwwn49H22IUUmP8aBTRGQohwQmCUEiRc9jW85
	tHIQ==
MIME-Version: 1.0
Received: by 10.52.24.179 with SMTP id v19mr7406254vdf.127.1341341858523; Tue,
	03 Jul 2012 11:57:38 -0700 (PDT)
Received: by 10.52.70.241 with HTTP; Tue, 3 Jul 2012 11:57:38 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
Date: Tue, 3 Jul 2012 14:57:38 -0400
Message-ID: <CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Jul 2012 18:57:39 -0000
Content-Type: multipart/alternative; boundary=bcaec5015e7bffe89904c3f17ca4

--bcaec5015e7bffe89904c3f17ca4
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Jim,
>
> Do you have a list of what you had to install?  I can add this to the QS
> "Packages" section.
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of jfabernathy
> Sent: Sunday, June 24, 2012 9:06 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] prerequisite tools for making documentation
>
> I had a need to look at the bitbake manual in the
> poky/bitbake/doc/manual directory and tried to make pdf.  I had all the
> prerequisites listed in the QS guide.  However, I found the make failed
> due to a number of xml related tools being missing.  I installed those
> and got the pdf manual generated.
>
> Should we add those xml tools to the prerequisites?  BTW, I'm using
> denzil branch and referring to the QS guide 1.2.
>

I'd also be interested in knowing what host you built it on, as several of
us (including myself) have had difficulty building docs.

Thanks,

Chris

-- 
Life is like Linux - it never stands still.

--bcaec5015e7bffe89904c3f17ca4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 3, 2012 at 2:25 PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rife=
nbark@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
Jim,<br>
<br>
Do you have a list of what you had to install? =A0I can add this to the QS =
&quot;Packages&quot; section.<br>
<br>
Scott<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of jfabernathy<br>
Sent: Sunday, June 24, 2012 9:06 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] prerequisite tools for making documentation<br>
<br>
I had a need to look at the bitbake manual in the<br>
poky/bitbake/doc/manual directory and tried to make pdf. =A0I had all the<b=
r>
prerequisites listed in the QS guide. =A0However, I found the make failed<b=
r>
due to a number of xml related tools being missing. =A0I installed those<br=
>
and got the pdf manual generated.<br>
<br>
Should we add those xml tools to the prerequisites? =A0BTW, I&#39;m using<b=
r>
denzil branch and referring to the QS guide 1.2.<br></blockquote><div><br><=
/div><div>I&#39;d also be interested in knowing what host you built it on, =
as several of us (including myself) have had difficulty building docs.</div=
>
<div><br></div><div>Thanks,</div><div><br></div><div>Chris</div><div>=A0</d=
iv></div>-- <br>Life is like Linux - it never stands still.<br><br><br>

--bcaec5015e7bffe89904c3f17ca4--
