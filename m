Return-Path: <sudhangathan@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63C8BE01483
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 14:03:17 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id hq4so2601777wib.2
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 14:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+idL3SdvY26Jvq9DmAehiGJbbd6Pv3Mx37X2MoIbIIk=;
	b=qMl7/NRK6D/5wBdD6iFIdvLRgIRwGHv4mKXnR1Pf/Wrq6unRcV/b2QgRXxJ3RdfkUK
	n0D8SvRf+C3rK44VZaoeFewhdT8oo1INijKhzHf5/e9EY2ETpgHbvesZUSjjmmPUYe20
	rlb5KdW2T/3QpexD5M6GkY1cHzZv4PkdntKmCguBmwIaMuV0toV8gVKo8pDS72uVgyke
	hGw8KLWoaRMlBQ3vSgG3WpDQYtIJGad1lgqXbmspcnktC0UrNYvR3+M4jywJm8Q2JIGz
	U62a2mGa6n21hnaXQ+Y97OCK6OQ7RmJByjSOnnBRHW4hC8aiEEJuveDKSt16wgzisWup
	RFrQ==
X-Received: by 10.180.198.44 with SMTP id iz12mr5906816wic.44.1371502995920;
	Mon, 17 Jun 2013 14:03:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.119.135 with HTTP; Mon, 17 Jun 2013 14:02:55 -0700 (PDT)
In-Reply-To: <CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
	<CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Tue, 18 Jun 2013 02:32:55 +0530
Message-ID: <CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 17 Jun 2013 21:03:18 -0000
Content-Type: multipart/alternative; boundary=047d7b624dfee1617604df5fec10

--047d7b624dfee1617604df5fec10
Content-Type: text/plain; charset=ISO-8859-1

Can you please paste your command and it's output here..! If you don't
mind..!! Or explain with equivalent clarity. It
l will good if you can also put in your directory structure.

---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <varun292006@gmail.com>wrote:

> Actually the package which I am building is having some dependencies on
> some libraries. So I provided those libraries with the help of creating
> layers. I did not extract those from meta-openembedded, instead, I manually
> created two layers and added them in bblayer.conf file. Now, after
> configuring all this stuff I am again trying to recompile my code but still
> I am getting the same error saying that it is not able to find those
> libraries provided by me in the form of layers.
>
>
> On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>
>> On 2013-06-17 18:08, varun bhatnagar wrote:
>>
>>> Hi,
>>>
>>> I am trying to compile my code using yocto. For that I have created two
>>> layers: "meta-networking" and "meta-oe". I have added these dependencies in
>>> bblayer.conf too. But these are
>>> not getting build. Can anyone please tell me what should I do to make
>>> this work.
>>>
>>
>> More details are needed to be able to help.
>>
>> What do you mean "not getting built"?  Do you mean that if you
>> try to build recipe XYZ which is in one of those layers that it's
>> not being built?  Or perhaps you mean something else?
>>
>> What do you mean "created two layers: ..."?  Did you just extract
>> these from meta-openembedded?  or something else?
>>
>> --
>> ------------------------------**------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------**------------------------------
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b624dfee1617604df5fec10
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you please paste your command and it&#39;s output here=
..! If you don&#39;t mind..!! Or explain with equivalent clarity. It<div>l =
will good if you can also put in your directory structure.<br><div class=3D=
"gmail_extra">

<br clear=3D"all"><div>---------------------------------<br>Sudhangathan BS=
<br>Ph:(+91) 9731-905-205<br>---------------------------------</div>
<br><br><div class=3D"gmail_quote">On Mon, Jun 17, 2013 at 11:33 PM, varun =
bhatnagar <span dir=3D"ltr">&lt;<a href=3D"mailto:varun292006@gmail.com" ta=
rget=3D"_blank">varun292006@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">

<div dir=3D"ltr">Actually the package which I am building is having some de=
pendencies on some libraries. So I provided those libraries with the help o=
f creating layers. I did not extract those from meta-openembedded, instead,=
 I manually created two layers and added them in bblayer.conf file. Now, af=
ter configuring all this stuff I am again trying to recompile my code but s=
till I am getting the same error saying that it is not able to find those l=
ibraries provided by me in the form of layers.</div>

<div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Jun 1=
7, 2013 at 11:03 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:ga=
ry@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">


<div><div>On 2013-06-17 18:08, varun bhatnagar wrote:<br>
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
these from meta-openembedded? =A0or something else?<span><font color=3D"#88=
8888"><br>
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
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div></div>

--047d7b624dfee1617604df5fec10--
