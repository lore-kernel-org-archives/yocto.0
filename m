Return-Path: <wmat@alphatroop.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A341E004D1
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2012 08:00:27 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id e13so14345133iej.4
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2012 08:00:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=ZkdlMYN3zPn/yfCU1f4C9AaxxK/dfIBFw+mu8phbDs0=;
	b=fxPwgG6zXluigcKqpOwpGF/IagwOO+TYgCAppRppeji2zQOGZj8CwliAbqURQAS7dg
	MvDx1/JT0VRdR931pJuJoNVtn77mxFfOmcZNfNMdZDIeZXqGT4fRgdkTZTFcH0+5TFEs
	dboTrIBFu5O/Lk5WZpnIdaV5oxzVRmGCnFkauqL8Id3Q6yPFkp4YlRgnvfkkJ3FoR8A2
	RMweaQM9bdjvikUDc53A85Jl/FGR71UjjjetC+GEPuWc49cyCZWO43qxIFLeksQx+cEM
	GewHLRWF3Yo0uvuJhU2qKS18aLLWztYqa/HRjsa+Uyx/fchkvEwcvZH2Zq5BNYcoITOu
	HmNA==
Received: by 10.50.91.195 with SMTP id cg3mr33802033igb.57.1356883226597; Sun,
	30 Dec 2012 08:00:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Sun, 30 Dec 2012 08:00:06 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <alpine.DEB.2.02.1212300427410.11574@oneiric>
References: <alpine.DEB.2.02.1212300427410.11574@oneiric>
From: Bill Traynor <wmat@alphatroop.com>
Date: Sun, 30 Dec 2012 11:00:06 -0500
Message-ID: <CAGfZjq5hbEs3LVkN0JYbUzGXrJGyTTtoqvSLx7a24nWj5mft9w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkvkT6wPMy5ABjIeAzNZdRXVXYSBa+iX4JlihL8Agao3URxE2yN9L8R2B24IO+35q4jrteq
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual is confusing as to whether a layer *must* be named "meta-..."
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
X-List-Received-Date: Sun, 30 Dec 2012 16:00:27 -0000
Content-Type: multipart/alternative; boundary=e89a8f235329b9195a04d213fec1

--e89a8f235329b9195a04d213fec1
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 30, 2012 at 4:29 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   section 5.1.1 of dev manual:
>
> "Folders that are layers begin with the string meta."
>
>   section 5.1.2, immediately afterwards:
>
> "Traditionally, prepend the name of the folder with the string meta."
>
>   those two statements are somewhat contradictory.
>

The first statement is in a paragraph describing the identification of a
layer within the Source directory, i.e. its name begins with "meta".

The second statement is describing the naming of the folder that will
contain a new layer, i.e. pre-pend the name with "meta".

I'm not sure I see the contradiction here.  Can you explain?


> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--e89a8f235329b9195a04d213fec1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Dec 30, 2012 at 4:29 AM, Robert P. J. Day <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cras=
hcourse.ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0 section 5.1.1 of dev manual:<br>
<br>
&quot;Folders that are layers begin with the string meta.&quot;<br>
<br>
=A0 section 5.1.2, immediately afterwards:<br>
<br>
&quot;Traditionally, prepend the name of the folder with the string meta.&q=
uot;<br>
<br>
=A0 those two statements are somewhat contradictory.<br></blockquote><div><=
br></div><div style>The first statement is in a paragraph describing the id=
entification of a layer within the Source directory, i.e. its name begins w=
ith &quot;meta&quot;.</div>

<div style><br></div><div style>The second statement is describing the nami=
ng of the folder that will contain a new layer, i.e. pre-pend the name with=
 &quot;meta&quot;.</div><div style><br></div><div style>I&#39;m not sure I =
see the contradiction here. =A0Can you explain?</div>

<div style><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div>

--e89a8f235329b9195a04d213fec1--
