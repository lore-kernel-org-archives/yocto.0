Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF6E2E013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 22:08:31 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id 10so7286191lbf.36
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 22:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7QOMfRzDfNUrCdFfys59cDQDTiuE7Ze9sqq8G9FChUM=;
	b=vFi2eQU3v0qnw9vMxWMSFu9WKaW0lFz1GE5O3aap/z3cAjXnPFo2/lHzJZR9rob3fW
	K7GUNCsp4vxxqzex1mP3FM8/jzYkN+7pzUI5RzU6N/thbEq62yTAWG4fhHDbhVAUbP9Q
	EqhkZhr3+TY1tiXr8LFs1IHtcuEig74G0lnQsDAToiuN9Q6fxypKRX/ZmBu10wVtE7xY
	AYt9PGas9pMxeBZk0AXTBXQXPDVBmDlP2w9yrr/WmE36X8wOaeXvgOkKFcvfZAses+kb
	q11/X1crE3BrG/sqajyBVKPjJJOv0Zfjt1dXziN+ok/qUI4zcf4LqxU1nUMDVuKdtKH5
	NwwQ==
MIME-Version: 1.0
X-Received: by 10.152.26.132 with SMTP id l4mr3662771lag.58.1373605709908;
	Thu, 11 Jul 2013 22:08:29 -0700 (PDT)
Received: by 10.114.174.144 with HTTP; Thu, 11 Jul 2013 22:08:29 -0700 (PDT)
In-Reply-To: <CAJTo0LYN-oUXK7-YRa-AMFcPR78bFB1tgHg98OPvrcxXDEeikQ@mail.gmail.com>
References: <CAMS2kBH7E6T6-yFtf+kPZ5=o+Wub=g1qjeZ6A_TBAO_4cHNYqQ@mail.gmail.com>
	<CAJTo0LYN-oUXK7-YRa-AMFcPR78bFB1tgHg98OPvrcxXDEeikQ@mail.gmail.com>
Date: Fri, 12 Jul 2013 10:38:29 +0530
Message-ID: <CAE_REAtNfFJ7gSm5GQ0P=TrbOpig7+Gz7h8GYH4jSN43EM-FPg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Glenn Schmottlach <gschmottlach@gmail.com>
Subject: Re: Is there still a Yocto dependency on bash (versus dash)?
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
X-List-Received-Date: Fri, 12 Jul 2013 05:08:33 -0000
Content-Type: multipart/alternative; boundary=089e0158cc32668f4004e14980cc

--089e0158cc32668f4004e14980cc
Content-Type: text/plain; charset=ISO-8859-1

dash will obviously work but not all the properties of bash (like wild card
characters). somewhere you need to change the logic to run with dash...

but if you really like bash, then you can do
# dpkg-reconfigure dash
and select "NO" on the prompt

//Gaurang Shastri



On Fri, Jul 12, 2013 at 12:32 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 11 July 2013 19:39, Glenn Schmottlach <gschmottlach@gmail.com> wrote:
> > I recall a while back that OE/poky had issues with Ubuntu's dash shell
> > (Ubuntu's replacement for bash) which required the the shell to be
> linked to
> > bash rather than dash. Is this (bash) still a requirement for Yocto/Poky
> or
> > does it work with dash now.
>
> It should work with dash, I know several key developers who use ubuntu
> with dash.  If you find any problems file a bug and we'll get them
> sorted.
>
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0158cc32668f4004e14980cc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>dash will obviously work but not all the propert=
ies of bash (like wild card characters). somewhere you need to change the l=
ogic to run with dash...<br><br></div>but if you really like bash, then you=
 can do<br>
# dpkg-reconfigure <span class=3D"">dash</span> <br>and select &quot;NO&quo=
t; on the prompt<br><br></div>//Gaurang Shastri<br><div><div><br></div></di=
v></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fr=
i, Jul 12, 2013 at 12:32 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
1 July 2013 19:39, Glenn Schmottlach &lt;<a href=3D"mailto:gschmottlach@gma=
il.com">gschmottlach@gmail.com</a>&gt; wrote:<br>

&gt; I recall a while back that OE/poky had issues with Ubuntu&#39;s dash s=
hell<br>
&gt; (Ubuntu&#39;s replacement for bash) which required the the shell to be=
 linked to<br>
&gt; bash rather than dash. Is this (bash) still a requirement for Yocto/Po=
ky or<br>
&gt; does it work with dash now.<br>
<br>
</div></div>It should work with dash, I know several key developers who use=
 ubuntu<br>
with dash. =A0If you find any problems file a bug and we&#39;ll get them<br=
>
sorted.<br>
<br>
Ross<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--089e0158cc32668f4004e14980cc--
