Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E835E0155E
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:28:30 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rr13so4077822pbb.34
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=FvO1Q5A7oPwB29sf7acB3chBa91Tt+kpO3whl4lvGuQ=;
	b=LNcrzv8iM22NR32mmVv+DhsVrX0LZak/iW2kiL5VZ6QBShXBT8/g9OVnTB2j9WhlGh
	jfjeEaN+HoidiRRBUw9S+HuDQaZdPUIXq9r/ITQXZkxlredZVX42bTcBb1nYzOlnFfhv
	aXRrAsswHYMdipJrqBlQsqzWsSxmWFmtVU9W0OiI5o8umnulJrDOW1N46e5q8UaU7ghS
	DRSTrP555hNLSZlo3rovnjo3n6KvB3EH9u2iKAl9zbtAAzL5ZKKJkarkyTCQNIaPDHu5
	Y8e1a1o9KuVY7xOZGISXYO3Vmq9RxsoKICjvsoVrJ7TCS9y0VAPTrFMtFgswFZJ8H9z/
	sqqA==
MIME-Version: 1.0
X-Received: by 10.68.189.233 with SMTP id gl9mr13713769pbc.213.1371572910426; 
	Tue, 18 Jun 2013 09:28:30 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Tue, 18 Jun 2013 09:28:30 -0700 (PDT)
In-Reply-To: <CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
	<CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
	<CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
Date: Tue, 18 Jun 2013 21:58:30 +0530
Message-ID: <CAGxOggFiUojWMpYUd7J0BfpRhPnwbu+pH89p9CEkjdDjRs6BgQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Jun 2013 16:28:31 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cb2c1c0fa104df7034ed

--e89a8ff1cb2c1c0fa104df7034ed
Content-Type: text/plain; charset=ISO-8859-1

I am building one of my application using yocto by giving bitbake -k
core-image-minimal command but I am facing some errors as this application
requires two libraries
*1) net-snmp*
*2) fuse*
*
*
I have one link where in they are asking to add these two libraries in the
form of layers and then execute bitbake -k core-image-minimal command.

I am pasting one screenshot below:

As you can I have added two layers meta-networking (contains net-snmp) and
meta-oe(contains fuse). After this I added these layers in *
build/conf/bblayer.conf.*
*
*
*
*
After this I again executed bitbake -k core-image-minimal command but I
faced the same error as before... :(
Is there anyway that these layers get recognized? Do I need to execute some
other command?


//
Varun




On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S <sudhangathan@gmail.com>wrote:

> Can you please paste your command and it's output here..! If you don't
> mind..!! Or explain with equivalent clarity. It
> l will good if you can also put in your directory structure.
>
> ---------------------------------
> Sudhangathan BS
> Ph:(+91) 9731-905-205
> ---------------------------------
>
>
> On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <varun292006@gmail.com>wrote:
>
>> Actually the package which I am building is having some dependencies on
>> some libraries. So I provided those libraries with the help of creating
>> layers. I did not extract those from meta-openembedded, instead, I manually
>> created two layers and added them in bblayer.conf file. Now, after
>> configuring all this stuff I am again trying to recompile my code but still
>> I am getting the same error saying that it is not able to find those
>> libraries provided by me in the form of layers.
>>
>>
>> On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>>> On 2013-06-17 18:08, varun bhatnagar wrote:
>>>
>>>> Hi,
>>>>
>>>> I am trying to compile my code using yocto. For that I have created two
>>>> layers: "meta-networking" and "meta-oe". I have added these dependencies in
>>>> bblayer.conf too. But these are
>>>> not getting build. Can anyone please tell me what should I do to make
>>>> this work.
>>>>
>>>
>>> More details are needed to be able to help.
>>>
>>> What do you mean "not getting built"?  Do you mean that if you
>>> try to build recipe XYZ which is in one of those layers that it's
>>> not being built?  Or perhaps you mean something else?
>>>
>>> What do you mean "created two layers: ..."?  Did you just extract
>>> these from meta-openembedded?  or something else?
>>>
>>> --
>>> ------------------------------**------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------**------------------------------
>>> ______________________________**_________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--e89a8ff1cb2c1c0fa104df7034ed
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am building one of my application using yocto by giving =
bitbake -k core-image-minimal command but I am facing some errors as this a=
pplication requires two libraries<div><div style><b>1) net-snmp</b></div><d=
iv style>
<b>2) fuse</b></div><div style><b><br></b></div><div style>I have one link =
where in they are asking to add these two libraries in the form of layers a=
nd then execute bitbake -k core-image-minimal command.</div></div><div styl=
e>
<br></div><div style>I am pasting one screenshot below:</div><div style><im=
g src=3D"https://inhydm03.tcs.com/mail/mail2/381897.nsf/4490c896b844c5b0852=
56521006913f9/00ce494b4b1a5a9f65257b8e00493186/Body/0.84?OpenElement&amp;Fi=
eldElemFormat=3Dgif"><br>
</div><div style>As you can I have added two layers meta-networking (contai=
ns net-snmp) and meta-oe(contains fuse). After this I added these layers in=
 <b>build/conf/bblayer.conf.</b></div><div style><b><br></b></div><div styl=
e>
<img src=3D"https://inhydm03.tcs.com/mail/mail2/381897.nsf/4490c896b844c5b0=
85256521006913f9/00ce494b4b1a5a9f65257b8e00493186/Body/0.34E8?OpenElement&a=
mp;FieldElemFormat=3Dgif"><b><br></b></div><div style>After this I again ex=
ecuted bitbake -k core-image-minimal command but I faced the same error as =
before... :(</div>
<div style>Is there anyway that these layers get recognized? Do I need to e=
xecute some other command?</div><div style><br></div><div style><br></div><=
div style>//</div><div style>Varun</div><div style><br></div><div style>
<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:sudhangathan@gmail.com" target=3D"_blank">sudhangathan@gmail.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">Can you please paste your command and it&=
#39;s output here..! If you don&#39;t mind..!! Or explain with equivalent c=
larity. It<div>
l will good if you can also put in your directory structure.<br><div class=
=3D"gmail_extra">

<br clear=3D"all"><div>---------------------------------<br>Sudhangathan BS=
<br>Ph:(+91) 9731-905-205<br>---------------------------------</div><div><d=
iv class=3D"h5">
<br><br><div class=3D"gmail_quote">On Mon, Jun 17, 2013 at 11:33 PM, varun =
bhatnagar <span dir=3D"ltr">&lt;<a href=3D"mailto:varun292006@gmail.com" ta=
rget=3D"_blank">varun292006@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex">


<div dir=3D"ltr">Actually the package which I am building is having some de=
pendencies on some libraries. So I provided those libraries with the help o=
f creating layers. I did not extract those from meta-openembedded, instead,=
 I manually created two layers and added them in bblayer.conf file. Now, af=
ter configuring all this stuff I am again trying to recompile my code but s=
till I am getting the same error saying that it is not able to find those l=
ibraries provided by me in the form of layers.</div>


<div><div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Jun 1=
7, 2013 at 11:03 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:ga=
ry@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:soli=
d;padding-left:1ex">



<div><div>On 2013-06-17 18:08, varun bhatnagar wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
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
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div></div></div></div>
</blockquote></div><br></div></div>

--e89a8ff1cb2c1c0fa104df7034ed--
