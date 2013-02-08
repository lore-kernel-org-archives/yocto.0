Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E0B9BE003BC
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:03:53 -0800 (PST)
Received: by mail-vb0-f43.google.com with SMTP id fs19so2293821vbb.16
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 05:03:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=7hmm23u0BO9oRJiCup58YyvvikX3+NesfCSG70s3GfQ=;
	b=nk/W41HzZnUz39Ekl/d1TqOb6ElKFh+Ts3IOFaqWu5cJSRqaCnzczRfhPYlhq1qRrp
	IV4+wVUBf7YuS2+LfktAMA32BJDl1yS/B5uk1BMn7o0Of9BpEs0T32MODsTNxgppaQ2/
	5HiNykR/YcmxfhvdXhhEAsECWGazRLxM6JMKhBcbi2caJO7MdttyB32M37plIaKg02CV
	H2gZ0lLB9pf4raWYJoTpyIwVc8g77Z94KH3mjay5sf1EA4y45D1Ui3J+vLdC0q7OYnOc
	IgzxWXcGgsigf9DJIz4faA24I0lg55fYUzoMSnDJmXVlOj6Q9LIGqCD03+FHYIGvw3N8
	CBfQ==
X-Received: by 10.52.175.37 with SMTP id bx5mr5653100vdc.67.1360328632475;
	Fri, 08 Feb 2013 05:03:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.229.195 with HTTP; Fri, 8 Feb 2013 05:03:32 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <5114D0CB.7090604@r-finger.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxF3TaptkgRnJfH6HRJaCPFOtD+TiiN7opTVevQt6zW7ew@mail.gmail.com>
	<5114D0CB.7090604@r-finger.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 8 Feb 2013 15:03:32 +0200
Message-ID: <CAK18fxGpb1R5VM9Pk8iz-1hnieNOsspsb5hXqtUB9Vuua-dKxw@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQlXHtOS2tdmJDDjnGNphT5c4BfomzHLk4Gtvb1ceVMHP5BuIa2HVXcFM1no01jsDouDNh3d
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Binary graphics library fixes
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
X-List-Received-Date: Fri, 08 Feb 2013 13:03:54 -0000
Content-Type: multipart/alternative; boundary=bcaec5196973ea9f0a04d53630ea

--bcaec5196973ea9f0a04d53630ea
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 8, 2013 at 12:17 PM, Tomas Frydrych <tf+lists.yocto@r-finger.com
> wrote:

> Hi Andrei,
>
> On 07/02/13 14:26, Andrei Gherzan wrote:
> > We are moving to userland repo. So we will build our libraries
>
> I tried to use the userland repo about a week ago and had to revert back
> to using the binary firmware; the userland tree seem to miss some bcm
> headers, so it was impossible to build apps against the libs whose
> includes require those.
>
>
I will push some patches this weekend. Would you give it a try?

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--bcaec5196973ea9f0a04d53630ea
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Feb 8, 2013 at 12:17 PM, Tomas Frydrych <span dir=3D"ltr">&=
lt;<a href=3D"mailto:tf+lists.yocto@r-finger.com" target=3D"_blank">tf+list=
s.yocto@r-finger.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hi Andrei,<br>
<div class=3D"im"><br>
On 07/02/13 14:26, Andrei Gherzan wrote:<br>
&gt; We are moving to userland repo. So we will build our libraries<br>
<br>
</div>I tried to use the userland repo about a week ago and had to revert b=
ack<br>
to using the binary firmware; the userland tree seem to miss some bcm<br>
headers, so it was impossible to build apps against the libs whose<br>
includes require those.<br>
<span class=3D""><font color=3D"#888888"><br></font></span></blockquote><di=
v><br></div><div>I will push some patches this weekend.=A0Would=A0you give =
it a try?<br></div><div><br></div></div>-- <br><div dir=3D"ltr"><div style=
=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--bcaec5196973ea9f0a04d53630ea--
