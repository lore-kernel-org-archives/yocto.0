Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E11E00A30
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 00:43:25 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id a1so801427wgh.15
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 00:43:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LSEtdLVNSMUdku65KhNL+toF/RCAQw/rGf2bPRnwRW0=;
	b=hC8YEhop4rCJlxqM1Po0MhXE4SVtce/loLk4YzGA7QmaCdxQIlZzeYlIIBvWZHEm7W
	vAYLYgxseittsvLv6/RZLKkDRBthWSj2rMaZyFhN1JNN6X7TDZMNRUf7sSORpLMhwddM
	tguutQlB+KiFmP9soT01qMulxyiFfmxl+Rcf4n+4s+I8rNpxul3MYpD9Ak4mrpUzQY6g
	c+vAj1JsgfLtR3ZxkYGwwg3ZDIYGTt4JuxYaffSujOsu4SYVQpUPAHPbOOa85mzcpN6t
	BkhjMfGFO7g1hemDfivjYzd/FoU8UCxS5ixDPGdZeM0CQMohgye+2XoMrxkizrfUpROd
	48JQ==
X-Gm-Message-State: ALoCoQk/UQV/ZEKYJ42M4mI+oKRoXAqyxnmAmwp60/LYhtClgfiCzwrsGewReYxDeM/2b/fNj3H1
X-Received: by 10.194.174.197 with SMTP id bu5mr6144429wjc.71.1394009004153;
	Wed, 05 Mar 2014 00:43:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 5 Mar 2014 00:43:04 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CABgO3_PFcLvj_X0o71rsQ+zZj-Seu1YcBVj0ZmJQzDc9yLwGQw@mail.gmail.com>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
	<CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
	<CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
	<CABgO3_PFcLvj_X0o71rsQ+zZj-Seu1YcBVj0ZmJQzDc9yLwGQw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 5 Mar 2014 10:43:04 +0200
Message-ID: <CAK18fxHWeH_oZ3XBKvvDispFFswWHSdNj_MnLqN6-XABTe6KHQ@mail.gmail.com>
To: Sebastien MENNETRIER <s.mennetrier@innotis.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Wed, 05 Mar 2014 08:43:26 -0000
Content-Type: multipart/alternative; boundary=089e013d1a6081b30a04f3d80394

--089e013d1a6081b30a04f3d80394
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 5, 2014 at 10:31 AM, Sebastien MENNETRIER <
s.mennetrier@innotis.org> wrote:

>
>
> 2014-03-04 23:51 GMT+01:00 Andrei Gherzan <andrei@gherzan.ro>:
>
>
>>
>>
>> On Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER
>>> <s.mennetrier@innotis.org> wrote:
>>> >>  do_install() {
>>> >>         oe_runmake dist
>>> >> +       mkdir -p ${D}/usr/share/fonts/truetype/freefont/
>>> >> +       install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
>>> >>  }
>>> >>
>>> >>  FILES_${PN} = "${bindir}/omxplayer* \
>>> >> -               ${libdir}/omxplayer/lib*${SOLIBS}"
>>> >> +               ${libdir}/omxplayer/lib*${SOLIBS} \
>>> >> +               /usr/share/fonts"
>>> >>
>>> >
>>>
>>> send the patch to OE-Core ml
>>
>>
>> Why exactly? meta-rpi is using yocto mailinglist.
>>
>>
>>> and dont hardcode /usr/share but use
>>> ${datadir} instead
>>>
>>
>> That's a good catch.
>>
>
> I followed a part of modification done in master branch. (Commit
> eff5ec9b75f2df6f06645fcc673bce7ca35fdc51).
> But I am agree with you. I will send a new patch.
>
>  Sebastien, one more thing, could you please adjust the subject to
>> include "omxplayer:" prefix?
>>
> No problem.
>
>
Thanks Sebastien.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e013d1a6081b30a04f3d80394
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Mar 5, 2014 at 10:31 AM, Sebastien MENNETRIER <span dir=3D"=
ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.me=
nnetrier@innotis.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">

2014-03-04 23:51 GMT+01:00 Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"=
mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span=
>:<div class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">

<div>On Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);p=
adding-left:1ex"><div>On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER=
<br>





&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.mennetr=
ier@innotis.org</a>&gt; wrote:<br>
&gt;&gt; =A0do_install() {<br>
&gt;&gt; =A0 =A0 =A0 =A0 oe_runmake dist<br>
&gt;&gt; + =A0 =A0 =A0 mkdir -p ${D}/usr/share/fonts/truetype/freefont/<br>
&gt;&gt; + =A0 =A0 =A0 install ${S}/fonts/* ${D}/usr/share/fonts/truetype/f=
reefont/<br>
&gt;&gt; =A0}<br>
&gt;&gt;<br>
&gt;&gt; =A0FILES_${PN} =3D &quot;${bindir}/omxplayer* \<br>
&gt;&gt; - =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS}&qu=
ot;<br>
&gt;&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS} \<=
br>
&gt;&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /usr/share/fonts&quot;<br>
&gt;&gt;<br>
&gt;<br>
<br>
</div>send the patch to OE-Core ml </blockquote><div><br></div></div><div>W=
hy exactly? meta-rpi is using yocto mailinglist.</div><div><div>=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);pad=
ding-left:1ex">





and dont hardcode /usr/share but use<br>
${datadir} instead<br></blockquote><div><br></div></div><div>That&#39;s a g=
ood catch.</div></div></div></div></blockquote><div><br></div></div><div>I =
followed a part of modification done in master branch. (Commit eff5ec9b75f2=
df6f06645fcc673bce7ca35fdc51).<br>


</div><div>But I am agree with you. I will send a new patch.<br></div><div =
class=3D""><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-lef=
t-color:rgb(204,204,204);padding-left:1ex">

<div dir=3D"ltr">
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Sebastien, one m=
ore thing, could you please adjust the subject to include &quot;omxplayer:&=
quot; prefix?</div></div></div></div></blockquote></div><div>No problem. <b=
r>

<div>
<br></div></div></div></div></div></blockquote><div><br></div><div>Thanks S=
ebastien.</div><div><br></div></div>-- <br><div dir=3D"ltr"><div style=3D"t=
ext-align:center"></div><div style=3D"text-align:center"><div align=3D"left=
" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--089e013d1a6081b30a04f3d80394--
