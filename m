Return-Path: <varun292006@gmail.com>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E7B0E01483
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 11:03:59 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj3so3114395pad.0
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 11:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=bbZ8WbzcvvhID+9D/1s42VJM3ShYF2Qyip8z4cyMuDs=;
	b=WTQiBRopvIdAVdUbONLa256b4I1reLgY9f7rOxAtxVFZEQWKk4SwdgObyza+mpAGeV
	9s6DXykGClfDDUAPeuZ8kAVo/LB4/a1BI8ux9Y4PUKqskrfO2mDAlo0wclZvF+UCSpft
	5QM/xNezresrTC0A8Js00UQhmMpRmF0J3eJhItk7mJx+IY4uak/2ATYJaCnAt+prWeDE
	gBBrBIME+Z7/E5EKhQbc8fMuBLDCJtAArr6qJsKnfpKCJU4Eq08hlz1pY3PjLX08NlSN
	rN+wUe+tVpfHSB5EXdgDOLFxKL0uaBR0BOQBDWF0h3TePOrh6czl6d/0yHG3AR/oTY4v
	sQdA==
MIME-Version: 1.0
X-Received: by 10.68.232.42 with SMTP id tl10mr13868920pbc.72.1371492239080;
	Mon, 17 Jun 2013 11:03:59 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Mon, 17 Jun 2013 11:03:59 -0700 (PDT)
In-Reply-To: <51BF484F.9070009@mlbassoc.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
Date: Mon, 17 Jun 2013 23:33:59 +0530
Message-ID: <CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Mon, 17 Jun 2013 18:04:05 -0000
Content-Type: multipart/alternative; boundary=047d7b15aaefb901d604df5d6b60

--047d7b15aaefb901d604df5d6b60
Content-Type: text/plain; charset=ISO-8859-1

Actually the package which I am building is having some dependencies on
some libraries. So I provided those libraries with the help of creating
layers. I did not extract those from meta-openembedded, instead, I manually
created two layers and added them in bblayer.conf file. Now, after
configuring all this stuff I am again trying to recompile my code but still
I am getting the same error saying that it is not able to find those
libraries provided by me in the form of layers.


On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-06-17 18:08, varun bhatnagar wrote:
>
>> Hi,
>>
>> I am trying to compile my code using yocto. For that I have created two
>> layers: "meta-networking" and "meta-oe". I have added these dependencies in
>> bblayer.conf too. But these are
>> not getting build. Can anyone please tell me what should I do to make
>> this work.
>>
>
> More details are needed to be able to help.
>
> What do you mean "not getting built"?  Do you mean that if you
> try to build recipe XYZ which is in one of those layers that it's
> not being built?  Or perhaps you mean something else?
>
> What do you mean "created two layers: ..."?  Did you just extract
> these from meta-openembedded?  or something else?
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--047d7b15aaefb901d604df5d6b60
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Actually the package which I am building is having some de=
pendencies on some libraries. So I provided those libraries with the help o=
f creating layers. I did not extract those from meta-openembedded, instead,=
 I manually created two layers and added them in bblayer.conf file. Now, af=
ter configuring all this stuff I am again trying to recompile my code but s=
till I am getting the same error saying that it is not able to find those l=
ibraries provided by me in the form of layers.</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Jun 1=
7, 2013 at 11:03 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:ga=
ry@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 2013-06-17 18:08, varun bhatnaga=
r wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I am trying to compile my code using yocto. For that I have created two lay=
ers: &quot;meta-networking&quot; and &quot;meta-oe&quot;. I have added thes=
e dependencies in bblayer.conf too. But these are<br>
not getting build. Can anyone please tell me what should I do to make this =
work.<br>
</blockquote>
<br></div></div>
More details are needed to be able to help.<br>
<br>
What do you mean &quot;not getting built&quot;? =A0Do you mean that if you<=
br>
try to build recipe XYZ which is in one of those layers that it&#39;s<br>
not being built? =A0Or perhaps you mean something else?<br>
<br>
What do you mean &quot;created two layers: ...&quot;? =A0Did you just extra=
ct<br>
these from meta-openembedded? =A0or something else?<span class=3D"HOEnZb"><=
font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b15aaefb901d604df5d6b60--
