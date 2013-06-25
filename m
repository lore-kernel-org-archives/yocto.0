Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51F9BE013E8
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 00:11:43 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id v19so11634330obq.21
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 00:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=rwpIam2BzOHMQvVJSe22yCbS1jDf+qS0q9rFQEgRbhQ=;
	b=isRAtqx2yOOzCaMWWULZBBEDxm/TXQ+d+26xV6ogtp6Cg2pqKshyhNBM7CscyqO0Sb
	H/R3TjtOz8S0XbNPFuMOI4aty5Q/jPpcMO+TIZTbNp0V7tPaLLEzBgnTUu6rwiRgtwQU
	cVWpXpOXkvlKispGExAGFCerzMuI/Iw4x0eIe1goOIMlaZzVo2kewzk2+qJXt8VJX8es
	gFBQWEszZ0E5eStDDOBtRfbQ4pB2dR5b0y3U6nnnrhgC5+DX8Dd5wqT8sP8DAQyj0KHD
	laIXUMa5HjJkrGc/Ay/OSTYZNmgXZiqSZNiy45P8wboFsz048PP33HZIiBt5GN1TGL6X
	x7Hg==
MIME-Version: 1.0
X-Received: by 10.182.92.225 with SMTP id cp1mr9443088obb.97.1372144302901;
	Tue, 25 Jun 2013 00:11:42 -0700 (PDT)
Received: by 10.76.1.79 with HTTP; Tue, 25 Jun 2013 00:11:42 -0700 (PDT)
In-Reply-To: <20130625065811.GA10042@ad.chargestorm.se>
References: <CAFMfyzLGoJ0iys=Cd3vzJRPCXOO11y=hMnyayB7u-jNwkzE+Mw@mail.gmail.com>
	<20130625065811.GA10042@ad.chargestorm.se>
Date: Tue, 25 Jun 2013 09:11:42 +0200
Message-ID: <CAFMfyzJADnu-hysRYaA+ay+SYukFdDAokRsuRmscV2HqUfHEsA@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding users and their rights
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
X-List-Received-Date: Tue, 25 Jun 2013 07:11:44 -0000
Content-Type: multipart/alternative; boundary=001a11c20b06c14d9f04dff53d19

--001a11c20b06c14d9f04dff53d19
Content-Type: text/plain; charset=ISO-8859-1

Thank you Nicolas and Anders... This is what Iam actually looking for...

Cheers,
Satya


On Tue, Jun 25, 2013 at 8:58 AM, Anders Darander <anders@chargestorm.se>wrote:

> ,
>
> * DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com> [130625 08:39]:
> > I would like to know if its possible to add users and theri rights at
> > the build
> > itself... I know tinylogin provides the adduser to the target but how
> > can I do
> > it at the build is the issue here..
>
> Sure, it's quite easy to do using the useradd class. See
>
> http://cgit.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
> for more info
>
> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c20b06c14d9f04dff53d19
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Nicolas and Anders... This is what Iam actually =
looking for...<div><br></div><div>Cheers,</div><div>Satya</div></div><div c=
lass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jun 25, 201=
3 at 8:58 AM, Anders Darander <span dir=3D"ltr">&lt;<a href=3D"mailto:ander=
s@chargestorm.se" target=3D"_blank">anders@chargestorm.se</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">,<br>
<br>
* DAMARLA Satya Swaroop &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.co=
m">satyaswaroop.damarla@gmail.com</a>&gt; [130625 08:39]:<br>
<div class=3D"im">&gt; I would like to know if its possible to add users an=
d theri rights at<br>
&gt; the build<br>
&gt; itself... I know tinylogin provides the adduser to the target but how<=
br>
&gt; can I do<br>
&gt; it at the build is the issue here..<br>
<br>
</div>Sure, it&#39;s quite easy to do using the useradd class. See<br>
<a href=3D"http://cgit.openembedded.org/openembedded-core/tree/meta-skeleto=
n/recipes-skeleton/useradd/useradd-example.bb" target=3D"_blank">http://cgi=
t.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/us=
eradd/useradd-example.bb</a><br>

for more info<br>
<br>
Cheers,<br>
Anders<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Anders Darander<br>
ChargeStorm AB / eStorm AB<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c20b06c14d9f04dff53d19--
