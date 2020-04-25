Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1174.1587785320109952972
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 20:28:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AzdJELRU;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: easmith5555@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8290E01A6A; Fri, 24 Apr 2020 20:28:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18262E01A65
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:28:35 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id x8so9713104qtp.13
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=Cl1IJ1mX5lMOOOLCvL4SUZ7Hvs72zaP6HLXfrQdwBRM=;
        b=AzdJELRUiaRW9uyFLSQMCEi5BzyUi+sgXRUbSF2CGlm2C1U1A/zG/FcrJFtqEnwoTv
         lMgV0GZPKBkka23+VXAJxlbAo/w5l0blilPAdVS9L/uGzIpUiWkSOFU1QumCqBWcR/Ph
         pFU/gY5xmf/K/OG0Gs+eDuWXOk9ks4FWNbF+/tajf0VAsdrlZ2cR2NN3oUKpldI1j+hO
         ci2BYD6ZRfPl8N8kPV0TCORrA9gLwtufgUGjvFR1KsCldpT08H6slC03E0k8/J2+zZ5v
         EbasPS17f3p1xIUqyqpRa8RIVqTts4Rg8kAQZ1pvk0zt0JUGYBqhy2BTQvOQ5oYLD3d3
         vNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=Cl1IJ1mX5lMOOOLCvL4SUZ7Hvs72zaP6HLXfrQdwBRM=;
        b=M9afEjCT1szGXR1PLH0HrnCEtrvVGrpOcXkIWcGOYnHf4iv94vO6qlz0dkdNCeTt4n
         0HUjztH1JCHWWdvlsv75h2tRaOPUKUPzrwCr6ILeCivLMkRkYFGrC+r2gbAd+ek5Vql5
         KKaUbE/wPYDnE0QdxI8XXlJ0CrLcWTLpfi4ncgAYcGDyQMB9Rx2YeJZMw/6QdKSUbVAI
         AbFl2LNMFv19LemwXrbJGva71fDrcjjYFzEud+DSRSlvKy5mu9iFl9N0ai9Q8gk/qqli
         kinEq3Jv87hWWVAd/ZIKwq9OvJCGgXDMwJI7lJaBJbLmcHPK2ozsKUslU2KonadXEYe9
         ++pg==
X-Gm-Message-State: AGi0Pubse7d/+T0RhYhqi6nqbxfV2s482gZiVf9GVIpBrZ6E/ySWQrd1
	KLbxX/rvAu5VJGyf9F6c2bE=
X-Google-Smtp-Source: APiQypJMSsyx8SgBvPoJvmo1JtJbvTK24FfB28zKxARRI16pruS8gSGKcZnlAjOT9fM97LbqmWbcWQ==
X-Received: by 2002:ac8:6f03:: with SMTP id g3mr12329304qtv.10.1587785313739;
        Fri, 24 Apr 2020 20:28:33 -0700 (PDT)
Received: from ?IPv6:2001:5b0:44cd:91f8:d486:23f5:55cb:6711? ([2001:5b0:44cd:91f8:d486:23f5:55cb:6711])
        by smtp.gmail.com with ESMTPSA id o6sm5006563qkj.126.2020.04.24.20.28.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 20:28:33 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Can't find pyconfig.h with python3
From: "Emily" <easmith5555@gmail.com>
In-Reply-To: <CANx9H-ARv6M5OaEf1mhNV4C1KOTqKM31zWz667=FAThj2SJxLA@mail.gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Date: Fri, 24 Apr 2020 22:28:23 -0500
Message-Id: <BC40C0C9-9509-4A76-99B6-03036B6B50BF@gmail.com>
References: <CANx9H-ARv6M5OaEf1mhNV4C1KOTqKM31zWz667=FAThj2SJxLA@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>
X-Mailer: iPhone Mail (17C54)
Content-Type: multipart/alternative; boundary=Apple-Mail-E2B5571B-A269-4A23-878D-581CAADF94E1
Content-Transfer-Encoding: 7bit

--Apple-Mail-E2B5571B-A269-4A23-878D-581CAADF94E1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi -

Not a super compelling reason other than the momentum required to update! =
Does Zeus support having both python2 and python3? We have a couple things =
that haven=E2=80=99t upgraded to python3 yet as well. It=E2=80=99s almost c=
ertainly a good idea to move to Zeus, but everything is further complicated=
 because we don=E2=80=99t have physical access to the board right now to up=
date the OS and make sure things still work.=20

Sorry about the internal repos, but thanks for the start!=20

Best,
Emily=20


>> On Apr 24, 2020, at 10:01 PM, Tim Orling <ticotimo@gmail.com> wrote:
> =EF=BB=BF
> I meant to say "zeus" was released in October 2019. I'm sure xilinx supp=
ort was after that.
>=20
>> On Fri, Apr 24, 2020 at 8:00 PM Tim Orling <ticotimo@gmail.com> wrote:
>>=20
>> I see you are building for "rocko" and that your layer supports "sumo" =
and "rocko". Do you have a strong compelling reason to stay on these EOL re=
leases? meta-xilinx has a zeus branch which was released in October 2019 an=
d has newer components and will be easier for you and us to support. (We've=
 had "thud" and "warrior" releases in-between, so that's at least a year an=
d a half ahead of your code base).
>>=20
>> I started trying to build your layer (on "zeus" release), but unfortuna=
tely you have recipes fetching from internal CERN git repos that are not ac=
cessible to the rest of us.
>>=20
>> Here's what I have so far:
>> https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer
>>=20
>> Again, I can't go much further because I can't fetch from your internal=
 repos.
>>=20
>>> On Fri, Apr 24, 2020 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>=20
>>>=20
>>> On 4/24/20 4:17 PM, Emily wrote:
>>> > Hi all -=20
>>> >=20
>>> > I'm trying to build an OS with a custom recipe
>>> > (https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-co=
re/opc-ua/opc-ua-server-gfex_git.bb).
>>> > I can build it as-is in the link above, but when actually trying to =
use
>>> > the output of the recipe (Poverty.so) I get the below error in pytho=
n3:=20
>>> >=20
>>> >>>> import Poverty Traceback (most recent call last): File "<stdin>",=
 line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol: _Z=
N5boost6python6detail11init_moduleEPKcPFvvE
>>> >=20
>>> >=20
>>> > I think that's because I built against python2 in some places. So I
>>> > replaced essentially all of the python dependencies with their
>>> > corresponding python3 dependencies, but that gives a build error in
>>> > bitbake like:  
>>> >=20
>>> > | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-=
linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/in=
clude/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h: N=
o such file or directory
>>> > |  # include <pyconfig.h>
>>> > |            ^~~~~~~~~~~~
>>> > | compilation terminated.
>>> >=20
>>> >=20
>>> > However, I checked and the offending file pyconfig.h is actually pre=
sent
>>> > at |
>>> > /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-li=
nux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/incl=
ude/python3.5m/.
>>> > When I build with python2 dependencies the file is in the same locat=
ion,
>>> > just /python2.7/.
>>> >=20
>>> > I can't quite tell if this is a yocto problem, or a problem with my
>>> > recipe and/or build files for that recipe. If anyone has suggestions
>>> > they would be much appreciated!=20
>>>=20
>>> this seems to be that it is needing python2, so yes it can perhaps be
>>> ported to py3 but you might have to check if it needs some code change=
s
>>>=20
>>> Looking at the recipe it is ineheriting py2 class here [1]
>>>=20
>>> perhaps you should change that to python3native
>>>=20
>>> [1]
>>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/=
opc-ua/opc-ua-server-gfex_git.bb#L15
>>>=20
>>>=20
>>>=20
>>> >=20
>>> > Thanks!
>>> > Emily Smith
>>> >=20
>>> >=20
>>> >=20
>>> >=20
>>>=20
>>>=20

--Apple-Mail-E2B5571B-A269-4A23-878D-581CAADF94E1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"c=
ontent-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr">Hi -</=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Not a super compelling reas=
on other than the momentum required to update! Does Zeus support having bot=
h python2 and python3? We have a couple things that haven=E2=80=99t upgrade=
d to python3 yet as well. It=E2=80=99s almost certainly a good idea to move=
 to Zeus, but everything is further complicated because we don=E2=80=99t ha=
ve physical access to the board right now to update the OS and make sure th=
ings still work.&nbsp;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Sor=
ry about the internal repos, but thanks for the start!&nbsp;</div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Best,</div><div dir=3D"ltr">Emily&nbsp=
;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Apr 24, 2020, at 10:01 PM, Tim Orling &lt;ticotimo@gmail.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=
=EF=BB=BF<div dir=3D"ltr">I meant to say "zeus" was released in October 20=
19. I'm sure xilinx support was after that.</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:00 PM =
Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr"><br></div>I see you are building for "rocko" =
and that your layer supports "sumo" and "rocko". Do you have a strong compe=
lling reason to stay on these EOL releases? meta-xilinx has a zeus branch w=
hich was released in October 2019 and has newer components and will be easi=
er for you and us to support. (We've had "thud" and "warrior" releases in-b=
etween, so that's at least a year and a half ahead of your code base).<div>=
<br></div><div>I started trying to build your layer (on "zeus" release), bu=
t unfortunately you have recipes fetching from internal CERN git repos that=
 are not accessible to the rest of us.</div><div><br></div><div>Here's what=
 I have so far:</div><div><a href=3D"https://github.com/moto-timo/meta-l1ca=
lo/tree/timo/zeus/add/opcServer" target=3D"_blank">https://github.com/moto-=
timo/meta-l1calo/tree/timo/zeus/add/opcServer</a></div><div><br></div><div>=
Again, I can't go much further because I can't fetch from your internal rep=
os.</div><div><br></div><div><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Apr 24, 2020 at 6:38 PM Khem Raj &lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 4/24/20 4:17 PM, Emily wrote:<br>
&gt; Hi all -&nbsp;<br>
&gt; <br>
&gt; I'm trying to build an OS with a custom recipe<br>
&gt; (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/=
recipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-c=
ore/opc-ua/opc-ua-server-gfex_git.bb</a>).<br>
&gt; I can build it as-is in the link above, but when actually trying to u=
se<br>
&gt; the output of the recipe (Poverty.so) I get the below error in python=
3:&nbsp;<br>
&gt; <br>
&gt;&gt;&gt;&gt; import Poverty Traceback (most recent call last): File "&=
lt;stdin&gt;", line 1, in &lt;module&gt; ImportError: /usr/bin/Poverty.so: =
undefined symbol: _ZN5boost6python6detail11init_moduleEPKcPFvvE<br>
&gt; <br>
&gt; <br>
&gt; I think that's because I built against python2 in some places. So I<b=
r>
&gt; replaced essentially all of the python dependencies&nbsp;with their<b=
r>
&gt; corresponding python3 dependencies, but that gives a build error in<b=
r>
&gt; bitbake like:&nbsp;&nbsp;<br>
&gt; <br>
&gt; | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-l=
inux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/inc=
lude/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h: No=
 such file or directory<br>
&gt; | &nbsp;# include &lt;pyconfig.h&gt;<br>
&gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~<br>
&gt; | compilation terminated.<br>
&gt; <br>
&gt; <br>
&gt; However, I checked and the offending file pyconfig.h is actually pres=
ent<br>
&gt; at |<br>
&gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-lin=
ux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/inclu=
de/python3.5m/.<br>
&gt; When I build with python2 dependencies the file is in the same locati=
on,<br>
&gt; just /python2.7/.<br>
&gt; <br>
&gt; I can't quite tell if this is a yocto problem, or a problem with my<b=
r>
&gt; recipe and/or build files for that recipe. If anyone has suggestions<=
br>
&gt; they would be much appreciated! <br>
<br>
this seems to be that it is needing python2, so yes it can perhaps be<br>
ported to py3 but you might have to check if it needs some code changes<br=
>
<br>
Looking at the recipe it is ineheriting py2 class here [1]<br>
<br>
perhaps you should change that to python3native<br>
<br>
[1]<br>
<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipe=
s-core/opc-ua/opc-ua-server-gfex_git.bb#L15" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-cor=
e/opc-ua/opc-ua-server-gfex_git.bb#L15</a><br>
<br>
<br>
<br>
&gt; <br>
&gt; Thanks!<br>
&gt; Emily Smith<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
</blockquote></div></div></div>
</blockquote></div>
</div></blockquote></div></body></html>

--Apple-Mail-E2B5571B-A269-4A23-878D-581CAADF94E1--
