Return-Path: <wmat@alphatroop.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6099CE00498
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 06:16:12 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id e13so23666254iej.32
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2013 06:16:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=cEjOTLxn0fS96quxen7Xd2L6CwxtbEwveWRdy5o//ok=;
	b=VkrYSnJnfnegwHv4Cnblesi1XSkMDSQpYJG4m70DSmc6+qxdzCL7IKg6SmmvsjyRII
	u9CCH5QWE609sGlWkfV9kvHLv+FaMOajdUmhTR+BpfIQIPPV8XsGaoyN5OaD5qcTMp4G
	2yIICVRKvzEG+4RF8CIs4Crd1A4JO5kECLnj3S2kTBfRCn3HQ8UMkzL+XzxEOiB/ptMU
	oGb230E4Ioz9A+ryMi4FpVrszMFRni/NmefoQm8rJCo+espTJRLtERvCsnesMTA3S+ft
	swotPMCRTY8uaPwUj18XdlXyGh9PqpnFPABUk0rjmw0fEWK4Js+s61h5BfDdV8NAwUpY
	LlMA==
Received: by 10.50.108.161 with SMTP id hl1mr5550234igb.101.1357568171853;
	Mon, 07 Jan 2013 06:16:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Mon, 7 Jan 2013 06:15:51 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <CABvo1H9DsXTvrgyDXj2snCH+p+SFwz=WG5iWikfPjz3JqD4XcQ@mail.gmail.com>
References: <CABvo1H9DsXTvrgyDXj2snCH+p+SFwz=WG5iWikfPjz3JqD4XcQ@mail.gmail.com>
From: Bill Traynor <wmat@alphatroop.com>
Date: Mon, 7 Jan 2013 09:15:51 -0500
Message-ID: <CAGfZjq4xW=XU5MVtJNxm9fme33ij334g15FMqhHpJwJU9yiO2w@mail.gmail.com>
To: Ian Graham <ian@thecodefactory.ca>
X-Gm-Message-State: ALoCoQn/540Pmf+i7e/YWnyxZKiqQ01SW0P2/Q3rBJGYJdNFE0Pd4X09B+LNJ4GFRsAoKf1w67MK
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Starting point ... Help?
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
X-List-Received-Date: Mon, 07 Jan 2013 14:16:12 -0000
Content-Type: multipart/alternative; boundary=f46d0402a9afa448b704d2b37855

--f46d0402a9afa448b704d2b37855
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Jan 5, 2013 at 12:26 PM, Ian Graham <ian@thecodefactory.ca> wrote:

> Hello,
>
> Apologies in advance if this is not the appropriate resource for this
> request. Someone recommended this email list as a potential resource.
>

This is indeed a useful list.


>
> Where is the best place to go to get help on Yocto project if you are
> brand new to this type of embedded development? ... I have basic hardware,
> embedded, computer and software skills but no specific knowledge of linux,
> yocto or build environment?
>
> What I am looking to do is to setup a very simple development environment
> to learn by doing with Raspberry Pi as the BSP and yocto as the SDK. Then
> do some fun little projects to get familiar with the build environment and
> start doing more advanced projects.
>
> I am totally new to yocto, linux and this type of embedded development.
> However, I have been playing with Yocto over the past few weeks trying to
> get a development environment setup up, reading the Yoctoproject.org site,
> googling various resources and trying to learn as much as I can. Setup
> VMware player and build appliance as per the
> https://www.yoctoproject.org/documentation/build-appliance-manual but
> dead ended because of some networking issues. Next tried mysysGit but,
> encountered some errors (attached) when setting up the project.
>

It would seem to me that you're already hitting the most useful resources.
There are also some good introductory videos on Youtube.  Just search for
Yocto.

However, to obtain help here (or anywhere else) you'll need to describe
your "networking issues" in as much detail as possible.  Your msysgit
errors are likely due to a your environment setup, such as your version of
Python.


> Any assistance greatly appreciated.
>
> Ian Graham
>
> --
>
> *Making Start-ups Happen!*
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f46d0402a9afa448b704d2b37855
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sat, Jan 5, 2013 at 12:26 PM, Ian Graham <span dir=3D"ltr">&lt;<=
a href=3D"mailto:ian@thecodefactory.ca" target=3D"_blank">ian@thecodefactor=
y.ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello,<div><br></div><div>Apologies in advan=
ce if this is not the appropriate resource for this request. Someone=A0reco=
mmended=A0this email list as a potential resource.</div>

</blockquote><div><br></div><div>This is indeed a useful list.<br>=A0<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div><br></div><div>Where is the be=
st place to go to get help on Yocto project if you are brand new to this ty=
pe of embedded development? ... I have basic hardware, embedded, computer a=
nd software skills but no specific knowledge of linux, yocto or build envir=
onment?</div>


<div><br></div><div>What I am looking to do is to setup a very simple devel=
opment environment to learn by doing with=A0Raspberry=A0Pi as the BSP and y=
octo as the SDK. Then do some fun little projects to get familiar with the =
build=A0environment=A0and start doing more advanced projects.</div>


<div><br></div><div>I am totally new to yocto, linux and this type of embed=
ded development. However, I have been playing with Yocto over the past few =
weeks trying to get a=A0development=A0environment setup up, reading the Yoc=
toproject.org site, googling various resources and trying to learn as much =
as I can. Setup VMware player and build=A0appliance as per the <a href=3D"h=
ttps://www.yoctoproject.org/documentation/build-appliance-manual" target=3D=
"_blank">https://www.yoctoproject.org/documentation/build-appliance-manual<=
/a> but dead ended because of some networking issues. Next tried mysysGit b=
ut, encountered some errors (attached) when setting up the project.=A0</div=
>

</div></blockquote><div><br></div><div>It would seem to me that you&#39;re =
already hitting the most useful resources.=A0 There are also some good intr=
oductory videos on Youtube.=A0 Just search for Yocto.<br><br></div><div>How=
ever, to obtain help here (or anywhere else) you&#39;ll need to describe yo=
ur &quot;networking issues&quot; in as much detail as possible.=A0 Your msy=
sgit errors are likely due to a your environment setup, such as your versio=
n of Python.<br>

<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>
<div><br></div><div>Any assistance greatly appreciated.</div><span class=3D=
"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ian Graham<br clear=3D=
"all"><div><br></div>-- <br><img src=3D"http://media01.linkedin.com/media/p=
/1/000/021/1af/1a176ad.png" height=3D"48" width=3D"96"><br>


<div><b><font size=3D"1">Making Start-ups Happen!</font></b></div>
</div></font></span></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--f46d0402a9afa448b704d2b37855--
