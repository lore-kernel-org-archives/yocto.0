Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1442.1587787183247547476
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 20:59:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kGBD9gmy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1E5E01A6A; Fri, 24 Apr 2020 20:59:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AC04E01A65
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:59:40 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id c16so11313061ilr.3
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/GjGPc1IZQSjS8jX5t6WO6wsa07XX+B66Ss6nHb76Xs=;
        b=kGBD9gmy3kW14Rf9aNXdxhotJ35dgrvaV/BJv/0oP8B+DGzztVLHX5zGhYXbR08aUZ
         J1SrnI9RGJ3DHbunCQmEIGohCGHEdGSDSdsA7ilVX5oTQ+bF9LjajFR3sRlj+/VmUAEk
         By/kod3dOMVZYHVSEKU41k55PhzrhxCgt6kq2YOolGAGpgnIk937fyYZ9aSlTgJGY1LU
         yvNcDBbQeO4XdBBKuSGb2UYvfpLirUOM23ohlnjTTAlNhFkQImESf3U0gcK9P+K59JRG
         EhmeFs4HZalJzmXsyI4iERpIB3MKDVrjWFsppKYYp7pZzOuEUsysbD0QvOjOjzYqxMo/
         j3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/GjGPc1IZQSjS8jX5t6WO6wsa07XX+B66Ss6nHb76Xs=;
        b=RXkAhW8EdabYG3Mro3eFs+4iAFBdEkLDI0oWdZj4jnC5k8Vy1QkxgGJtSFLKkgIqls
         iegTVUDRDfwq0LxydeHQ5KC2/U1gOeF7DRWfxK6IDWwzdJ8egm2uxQ7apIc2u1kuByVl
         uEuyX2DWU9252xObghaVl5pj7q8Hmmj7D5oFMmUvplRfVbZ/BZrRokP4rkAABCgs16oO
         Mtikuw+uTCJYEmCVPjgtwVvbNK/jMxWS4j0j6viYHZUZH9iAg9Wkfz6Z82ovTTWDNFpB
         Pe3UuhLVN9WzzlfjUkpJvuD/QRKWcMutAXjpeuopmucLQdtAmjleEjYwz8nlVuPkYx04
         NxvA==
X-Gm-Message-State: AGi0Pua13YttA2Hz7sAKt7a11WkDl8xx4oixgDtuurAnxvq/Cf83hxhL
	00ACmStFpy4Xzho5Xvr7DOLi6tqovdUMlwyqYf0=
X-Google-Smtp-Source: APiQypKlsV5s7wOdl/3tJL1OFq8gLuNma6aNxyNv8Z4+kjq9YjhcAArPlfgiM20OaVzp1yvUh/PZ/boSrwHz2Fp58Ec=
X-Received: by 2002:a92:4152:: with SMTP id o79mr12210721ila.198.1587787180075;
 Fri, 24 Apr 2020 20:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-ARv6M5OaEf1mhNV4C1KOTqKM31zWz667=FAThj2SJxLA@mail.gmail.com>
 <BC40C0C9-9509-4A76-99B6-03036B6B50BF@gmail.com>
In-Reply-To: <BC40C0C9-9509-4A76-99B6-03036B6B50BF@gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Fri, 24 Apr 2020 20:59:28 -0700
Message-ID: <CANx9H-B-kzs2KQzUhwL3WYDdFB+GYjrVY_HzTFoZMQ7LwvNtbQ@mail.gmail.com>
Subject: Re: [yocto] Can't find pyconfig.h with python3
To: Emily Smith <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d8ee9305a41582a5"

--000000000000d8ee9305a41582a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 24, 2020 at 8:28 PM Emily Smith <easmith5555@gmail.com> wrote:

> Hi -
>
> Not a super compelling reason other than the momentum required to update=
!
> Does Zeus support having both python2 and python3? We have a couple thin=
gs
> that haven=E2=80=99t upgraded to python3 yet as well. It=E2=80=99s almos=
t certainly a good
> idea to move to Zeus, but everything is further complicated because we
> don=E2=80=99t have physical access to the board right now to update the =
OS and make
> sure things still work.
>
> Right. I remember a prior thread about you needing to update remotely. I
assume this board is stuffed deep in ATLAS somewhere. (In a prior life I
was a materials scientist)

Are you stuck with "rocko" on the deeply buried remote-only device or can
you use "sumo"?

Zeus still had python2 [1] and python3 [2]. But you can also get python2
support with meta-python2 [3], since the latest release "dunfell" [4].  Fo=
r
random development reasons, the zeus branch should also work [5]. Note tha=
t
meta-python2 will have limited support going forward (as in I might not
support it after this month, but others might). It was created so we could
drop python2 from the other layers, without breaking everything everywhere
for everyone.

[1]
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/=
python/python_2.7.17.bb?h=3Dzeus
[2]
https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/=
python/python3_3.7.7.bb?h=3Dzeus
[3] https://git.openembedded.org/meta-python2
[4] https://git.openembedded.org/meta-python2/log/?h=3Ddunfell
[5] https://git.openembedded.org/meta-python2/log/?h=3Dzeus

Sorry about the internal repos, but thanks for the start!
>
> Best,
> Emily
>
>
> On Apr 24, 2020, at 10:01 PM, Tim Orling <ticotimo@gmail.com> wrote:
>
> =EF=BB=BF
> I meant to say "zeus" was released in October 2019. I'm sure xilinx
> support was after that.
>
> On Fri, Apr 24, 2020 at 8:00 PM Tim Orling <ticotimo@gmail.com> wrote:
>
>>
>> I see you are building for "rocko" and that your layer supports "sumo"
>> and "rocko". Do you have a strong compelling reason to stay on these EO=
L
>> releases? meta-xilinx has a zeus branch which was released in October 2=
019
>> and has newer components and will be easier for you and us to support.
>> (We've had "thud" and "warrior" releases in-between, so that's at least=
 a
>> year and a half ahead of your code base).
>>
>> I started trying to build your layer (on "zeus" release), but
>> unfortunately you have recipes fetching from internal CERN git repos th=
at
>> are not accessible to the rest of us.
>>
>> Here's what I have so far:
>> https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer
>>
>> Again, I can't go much further because I can't fetch from your internal
>> repos.
>>
>> On Fri, Apr 24, 2020 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>>
>>>
>>> On 4/24/20 4:17 PM, Emily wrote:
>>> > Hi all -
>>> >
>>> > I'm trying to build an OS with a custom recipe
>>> > (
>>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/=
opc-ua/opc-ua-server-gfex_git.bb
>>> ).
>>> > I can build it as-is in the link above, but when actually trying to =
use
>>> > the output of the recipe (Poverty.so) I get the below error in
>>> python3:
>>> >
>>> >>>> import Poverty Traceback (most recent call last): File "<stdin>",
>>> line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol=
:
>>> _ZN5boost6python6detail11init_moduleEPKcPFvvE
>>> >
>>> >
>>> > I think that's because I built against python2 in some places. So I
>>> > replaced essentially all of the python dependencies with their
>>> > corresponding python3 dependencies, but that gives a build error in
>>> > bitbake like:
>>> >
>>> > |
>>> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/includ=
e/boost/python/detail/wrap_python.hpp:50:11:
>>> fatal error: pyconfig.h: No such file or directory
>>> > |  # include <pyconfig.h>
>>> > |            ^~~~~~~~~~~~
>>> > | compilation terminated.
>>> >
>>> >
>>> > However, I checked and the offending file pyconfig.h is actually
>>> present
>>> > at |
>>> >
>>> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/includ=
e/python3.5m/.
>>> > When I build with python2 dependencies the file is in the same
>>> location,
>>> > just /python2.7/.
>>> >
>>> > I can't quite tell if this is a yocto problem, or a problem with my
>>> > recipe and/or build files for that recipe. If anyone has suggestions
>>> > they would be much appreciated!
>>>
>>> this seems to be that it is needing python2, so yes it can perhaps be
>>> ported to py3 but you might have to check if it needs some code change=
s
>>>
>>> Looking at the recipe it is ineheriting py2 class here [1]
>>>
>>> perhaps you should change that to python3native
>>>
>>> [1]
>>>
>>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/=
opc-ua/opc-ua-server-gfex_git.bb#L15
>>>
>>>
>>>
>>> >
>>> > Thanks!
>>> > Emily Smith
>>> >
>>> >
>>> >
>>> >
>>>
>>>=20
>>>
>>

--000000000000d8ee9305a41582a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:28 PM Emily=
 Smith &lt;<a href=3D"mailto:easmith5555@gmail.com" target=3D"_blank">easmi=
th5555@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr">Hi -</d=
iv><div dir=3D"ltr"><br></div><div dir=3D"ltr">Not a super compelling reaso=
n other than the momentum required to update! Does Zeus support having both=
 python2 and python3? We have a couple things that haven=E2=80=99t upgraded=
 to python3 yet as well. It=E2=80=99s almost certainly a good idea to move =
to Zeus, but everything is further complicated because we don=E2=80=99t hav=
e physical access to the board right now to update the OS and make sure thi=
ngs still work.=C2=A0</div><div dir=3D"ltr"><br></div></div></div></blockqu=
ote><div>Right. I remember a=C2=A0prior thread about you needing to=C2=A0up=
date remotely. I assume this board is stuffed deep in ATLAS somewhere. (In =
a prior life I was a materials scientist)</div><div><br></div><div>Are you =
stuck with &quot;rocko&quot; on the deeply buried remote-only device or can=
 you use &quot;sumo&quot;?</div><div><br></div><div>Zeus still had python2 =
[1] and python3 [2]. But you can also get python2 support with meta-python2=
 [3], since the latest release &quot;dunfell&quot; [4].=C2=A0 For random de=
velopment reasons, the zeus branch should also work [5]. Note that meta-pyt=
hon2 will have limited support going forward (as in I might not support it =
after this month, but others might). It was created so we could drop python=
2 from the other layers, without breaking everything everywhere for everyon=
e.</div><div><br></div><div>[1]=C2=A0<a href=3D"https://git.openembedded.or=
g/openembedded-core/tree/meta/recipes-devtools/python/python_2.7.17.bb?h=3D=
zeus">https://git.openembedded.org/openembedded-core/tree/meta/recipes-devt=
ools/python/python_2.7.17.bb?h=3Dzeus</a></div><div>[2]=C2=A0<a href=3D"htt=
ps://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/pyth=
on/python3_3.7.7.bb?h=3Dzeus">https://git.openembedded.org/openembedded-cor=
e/tree/meta/recipes-devtools/python/python3_3.7.7.bb?h=3Dzeus</a></div><div=
>[3] <a href=3D"https://git.openembedded.org/meta-python2">https://git.open=
embedded.org/meta-python2</a></div><div>[4]=C2=A0<a href=3D"https://git.ope=
nembedded.org/meta-python2/log/?h=3Ddunfell">https://git.openembedded.org/m=
eta-python2/log/?h=3Ddunfell</a></div><div>[5]=C2=A0<a href=3D"https://git.=
openembedded.org/meta-python2/log/?h=3Dzeus">https://git.openembedded.org/m=
eta-python2/log/?h=3Dzeus</a></div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr=
"></div><div dir=3D"ltr">Sorry about the internal repos, but thanks for the=
 start!=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best,</div><=
div dir=3D"ltr">Emily=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Apr 24, 2020, at 10:01 PM, Tim Orling &l=
t;<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.co=
m</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">I meant to say &quot;zeus&quot; was re=
leased in October 2019. I&#39;m sure xilinx support was after that.</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, =
Apr 24, 2020 at 8:00 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com=
" target=3D"_blank">ticotimo@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br=
></div>I see you are building for &quot;rocko&quot; and that your layer sup=
ports &quot;sumo&quot; and &quot;rocko&quot;. Do you have a strong compelli=
ng reason to stay on these EOL releases? meta-xilinx has a zeus branch whic=
h was released in October 2019 and has newer components and will be easier =
for you and us to support. (We&#39;ve had &quot;thud&quot; and &quot;warrio=
r&quot; releases in-between, so that&#39;s at least a year and a half ahead=
 of your code base).<div><br></div><div>I started trying to build your laye=
r (on &quot;zeus&quot; release), but unfortunately you have recipes fetchin=
g from internal CERN git repos that are not accessible to the rest of us.</=
div><div><br></div><div>Here&#39;s what I have so far:</div><div><a href=3D=
"https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer" tar=
get=3D"_blank">https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/=
opcServer</a></div><div><br></div><div>Again, I can&#39;t go much further b=
ecause I can&#39;t fetch from your internal repos.</div><div><br></div><div=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, A=
pr 24, 2020 at 6:38 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><br>
<br>
On 4/24/20 4:17 PM, Emily wrote:<br>
&gt; Hi all -=C2=A0<br>
&gt; <br>
&gt; I&#39;m trying to build an OS with a custom recipe<br>
&gt; (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/add/opcServer/=
recipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-c=
ore/opc-ua/opc-ua-server-gfex_git.bb</a>).<br>
&gt; I can build it as-is in the link above, but when actually trying to u=
se<br>
&gt; the output of the recipe (Poverty.so) I get the below error in python=
3:=C2=A0<br>
&gt; <br>
&gt;&gt;&gt;&gt; import Poverty Traceback (most recent call last): File &q=
uot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt; ImportError: /usr/bin/Po=
verty.so: undefined symbol: _ZN5boost6python6detail11init_moduleEPKcPFvvE<b=
r>
&gt; <br>
&gt; <br>
&gt; I think that&#39;s because I built against python2 in some places. So=
 I<br>
&gt; replaced essentially all of the python dependencies=C2=A0with their<b=
r>
&gt; corresponding python3 dependencies, but that gives a build error in<b=
r>
&gt; bitbake like:=C2=A0=C2=A0<br>
&gt; <br>
&gt; | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-l=
inux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/inc=
lude/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h: No=
 such file or directory<br>
&gt; | =C2=A0# include &lt;pyconfig.h&gt;<br>
&gt; | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~<br>
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
&gt; I can&#39;t quite tell if this is a yocto problem, or a problem with =
my<br>
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
</div></blockquote></div></div></blockquote></div></div>

--000000000000d8ee9305a41582a5--
