Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83AB4E0127D
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 22:36:34 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id fk20so1369714lab.33
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 22:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=9ZgcxYrs7szfWfxpXsnp1YeF4ER+cAtSv5LiLaFckJU=;
	b=CdkN6PKha1bRhfpSDg8AsbwZVhG6ElYjwmwcNQ19bRk7FfPufkAHiajbWzxArtYp9J
	/Nnx44rWHpn3NrGIDM+CIk0zzXDCks604B06xUPV2zErroe2qCBY8/JY4KbhtZbBEHaD
	9LE+AEWilcYu3miAki1CwC49tjyY9+BRqXLI8PQIZDBgwLnbbj9ntpZQI+5EC1Th+MnP
	sgj7xXUk0uMX3Nba3HQX+t0mbtVZM3aw1cQ20lprUVnNkHSf4Hbhch0igDFN0K0qsklg
	ahY2TMjYpnetpcK88dcekTQKoeU6lSMTEhlormvmoXVXkx2fAGU940/izrXM0wSgJAbc
	/rRw==
MIME-Version: 1.0
X-Received: by 10.112.139.4 with SMTP id qu4mr2375425lbb.37.1367991392782;
	Tue, 07 May 2013 22:36:32 -0700 (PDT)
Received: by 10.114.1.46 with HTTP; Tue, 7 May 2013 22:36:32 -0700 (PDT)
In-Reply-To: <CAGxOggFg1+oKE=HFNKxL5wGhAQUh5e-84YnXpAZM-b8ea5+3FQ@mail.gmail.com>
References: <CAGxOggFg1+oKE=HFNKxL5wGhAQUh5e-84YnXpAZM-b8ea5+3FQ@mail.gmail.com>
Date: Wed, 8 May 2013 11:06:32 +0530
Message-ID: <CAE_REAsJO2+dz0ym6_x9n6cKUM3Mc-wLATO-rdPjLOfMKKS=iA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to install own package using yocto
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
X-List-Received-Date: Wed, 08 May 2013 05:36:34 -0000
Content-Type: multipart/alternative; boundary=089e0112bf7205ced804dc2e5151

--089e0112bf7205ced804dc2e5151
Content-Type: text/plain; charset=ISO-8859-1

Hi Varun,

Can you go and check the available good amount of documents.....for you i
can suggest,
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-addpkg

//Gaurang Shastri


On Tue, May 7, 2013 at 10:48 PM, varun bhatnagar <varun292006@gmail.com>wrote:

> Hi,
>
> I am new to Yocto.
> I have a tar package and I want to install this package in my image
> created by Yocto. I want to perform three steps to install the package:
>
> 1) Build directory named "build" (*mkdir build*)
> 2) Change the directory to "build" (*cd build*)
> 3) Execute cmake command (*cmake ..*)
>
> Can anyone tell me how can I write the above steps in a bitbake recipe
> file so that the above three steps should get executed. I have generated
> checksum using *md5sum <pkgname>*
>
> Any help will be appreciated.
>
> Thanks in advance.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0112bf7205ced804dc2e5151
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Varun,<br><br>Can you go and check the available g=
ood amount of documents.....for you i can suggest,<br><a href=3D"http://www=
.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-=
addpkg">http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html=
#usingpoky-extend-addpkg</a><br>
<br></div>//Gaurang Shastri<br></div><div class=3D"gmail_extra"><br><br><di=
v class=3D"gmail_quote">On Tue, May 7, 2013 at 10:48 PM, varun bhatnagar <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:varun292006@gmail.com" target=3D"_bla=
nk">varun292006@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></di=
v><div>I am new to Yocto.</div><div>I have a tar package and I want to inst=
all this package in my image created by Yocto. I want to perform three step=
s to install the package:</div>

<div><br></div><div>1) Build directory named &quot;build&quot; (<b>mkdir bu=
ild</b>)</div><div>2) Change the directory to &quot;build&quot; (<b>cd buil=
d</b>)</div><div>3) Execute cmake command (<b>cmake ..</b>)</div><div>
<br>
</div><div>Can anyone tell me how can I write the above steps in a bitbake =
recipe file so that the above three steps should get executed. I have gener=
ated checksum using <b>md5sum &lt;pkgname&gt;</b></div><div><br></div>
<div>
Any help will be appreciated.</div><div><br></div><div>Thanks in advance.</=
div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e0112bf7205ced804dc2e5151--
