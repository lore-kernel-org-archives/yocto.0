Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1729.1587789332172612066
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 21:35:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ze3nd4XT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: easmith5555@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6594AE01A6A; Fri, 24 Apr 2020 21:35:31 -0700 (PDT)
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
	*      [209.85.160.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBDADE01A65
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 21:35:29 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id v26so4207419qto.0
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 21:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=+nXo7hdZeM02iBmrLZA1P4iq65UY/V0fHs1CD5iKr/8=;
        b=Ze3nd4XTk45nWoHeffqKss1vqKfrJPtc0SF4++GNDnxfIlSeS/mAnZJcHEW2kWEiy8
         zs1enMKZ6n/nKd/IkjNdWmpPTUjDeyCZ4UJPYLqFj8cKdBSphys1xAIo0eeQCh1NG/aJ
         Wl8ohUXUfOF/nyRUFF1tMoiK8BZyUheOr8PbeSHu8t/kOnD7zK/ehu3zkoWMc1jQgWc8
         8Jjzd58kOtKeTicZDwu5Tdul1z7l1J5vZ9vngkFQt9kIJD5udPBUS8pXB9eHqgw1ywcY
         /LyNWJqwflL9lRc5No3ybSx1KRyC9M4D/xRkopFR9V58F7wI8YXl0tsxBR84X39OPCGV
         ed+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=+nXo7hdZeM02iBmrLZA1P4iq65UY/V0fHs1CD5iKr/8=;
        b=aXTk0INPh+N3haM3ANHv0DQLyOukItpb+rnZZepBCoueoOwbpqoBNQ37Njsc2pKdPQ
         qry/L1pullEMJK8l5JP5AEf9NuiRrdIl4VDkhbuz0tzoOw/WsMychu8aZ1Q4Lsk60yYt
         pSSDCvEGMZokXxVj3ANhuKSgFlM4wFHw/oWqgo1lQ96wjhPADHrmoOOIDjtoH0Lra6xV
         u9mbkLH/lXXNMCXgIhriX9pN6C6Z9+F6hWYSKWPq5q9rm+8J4pyt5bbeCnve6D5o4IrM
         XRMqmarogTslM7W5heBHfgUChQEW7N5m4XqlaS2coO/ZmLIP960rt7lPsuEt7LKC90qo
         BPPQ==
X-Gm-Message-State: AGi0PubfkbvRDg9Zc4+MzOpOJPNT53qzQBiZpqaDHE55slarI/yX3edL
	AqFklm4BUnwNDp+NvOpJBKkp9Nqi
X-Google-Smtp-Source: APiQypKUVsx+4lOuU/DVrWXyrKkpFUL73XKKAqFOx+trzP5E/s1IgSZu82FjKSJIgL9n5Jsqitiayw==
X-Received: by 2002:ac8:1885:: with SMTP id s5mr12745290qtj.253.1587789328626;
        Fri, 24 Apr 2020 21:35:28 -0700 (PDT)
Received: from ?IPv6:2001:5b0:44cd:91f8:dcdf:9e00:9aae:aa46? ([2001:5b0:44cd:91f8:dcdf:9e00:9aae:aa46])
        by smtp.gmail.com with ESMTPSA id b68sm5236123qkc.132.2020.04.24.21.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 21:35:28 -0700 (PDT)
From: "Emily" <easmith5555@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Can't find pyconfig.h with python3
Date: Fri, 24 Apr 2020 23:35:18 -0500
Message-Id: <196453FF-A600-4A9D-8745-A6DEA08C5D7E@gmail.com>
References: <CANx9H-B-kzs2KQzUhwL3WYDdFB+GYjrVY_HzTFoZMQ7LwvNtbQ@mail.gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
In-Reply-To: <CANx9H-B-kzs2KQzUhwL3WYDdFB+GYjrVY_HzTFoZMQ7LwvNtbQ@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>
X-Mailer: iPhone Mail (17C54)
Content-Type: multipart/alternative; boundary=Apple-Mail-9795D6CE-8F54-4344-9B90-9F2AD2339673
Content-Transfer-Encoding: 7bit

--Apple-Mail-9795D6CE-8F54-4344-9B90-9F2AD2339673
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi -

The board isn=E2=80=99t buried *too* deeply yet, but lab restrictions are =
the main barrier at the moment. Hopefully I can figure out how to remotely =
update at some point, but I should be able to test with Zeus before we actu=
ally bury it underground. Right now it has rocko, and I=E2=80=99ve been upd=
ating things piecemeal as I go.=20

Ah I see, so perhaps Zeus is ideal for me until we can drop python2 entire=
ly. Thanks for the info and links!=20

Best,
Emily

> On Apr 24, 2020, at 10:59 PM, Tim Orling <ticotimo@gmail.com> wrote:
>=20
> =EF=BB=BF
>=20
>=20
>> On Fri, Apr 24, 2020 at 8:28 PM Emily Smith <easmith5555@gmail.com> wro=
te:
>> Hi -
>>=20
>> Not a super compelling reason other than the momentum required to updat=
e! Does Zeus support having both python2 and python3? We have a couple thin=
gs that haven=E2=80=99t upgraded to python3 yet as well. It=E2=80=99s almos=
t certainly a good idea to move to Zeus, but everything is further complica=
ted because we don=E2=80=99t have physical access to the board right now to=
 update the OS and make sure things still work.=20
>>=20
> Right. I remember a prior thread about you needing to update remotely. I=
 assume this board is stuffed deep in ATLAS somewhere. (In a prior life I w=
as a materials scientist)
>=20
> Are you stuck with "rocko" on the deeply buried remote-only device or ca=
n you use "sumo"?
>=20
> Zeus still had python2 [1] and python3 [2]. But you can also get python2=
 support with meta-python2 [3], since the latest release "dunfell" [4].  Fo=
r random development reasons, the zeus branch should also work [5]. Note th=
at meta-python2 will have limited support going forward (as in I might not =
support it after this month, but others might). It was created so we could =
drop python2 from the other layers, without breaking everything everywhere =
for everyone.
>=20
> [1] https://git.openembedded.org/openembedded-core/tree/meta/recipes-dev=
tools/python/python_2.7.17.bb?h=3Dzeus
> [2] https://git.openembedded.org/openembedded-core/tree/meta/recipes-dev=
tools/python/python3_3.7.7.bb?h=3Dzeus
> [3] https://git.openembedded.org/meta-python2
> [4] https://git.openembedded.org/meta-python2/log/?h=3Ddunfell
> [5] https://git.openembedded.org/meta-python2/log/?h=3Dzeus
>=20
>> Sorry about the internal repos, but thanks for the start!=20
>>=20
>> Best,
>> Emily=20
>>=20
>>=20
>>>> On Apr 24, 2020, at 10:01 PM, Tim Orling <ticotimo@gmail.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> I meant to say "zeus" was released in October 2019. I'm sure xilinx su=
pport was after that.
>>>=20
>>>> On Fri, Apr 24, 2020 at 8:00 PM Tim Orling <ticotimo@gmail.com> wrote=
:
>>>>=20
>>>> I see you are building for "rocko" and that your layer supports "sumo=
" and "rocko". Do you have a strong compelling reason to stay on these EOL =
releases? meta-xilinx has a zeus branch which was released in October 2019 =
and has newer components and will be easier for you and us to support. (We'=
ve had "thud" and "warrior" releases in-between, so that's at least a year =
and a half ahead of your code base).
>>>>=20
>>>> I started trying to build your layer (on "zeus" release), but unfortu=
nately you have recipes fetching from internal CERN git repos that are not =
accessible to the rest of us.
>>>>=20
>>>> Here's what I have so far:
>>>> https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer
>>>>=20
>>>> Again, I can't go much further because I can't fetch from your intern=
al repos.
>>>>=20
>>>>> On Fri, Apr 24, 2020 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>>>=20
>>>>>=20
>>>>> On 4/24/20 4:17 PM, Emily wrote:
>>>>> > Hi all -=20
>>>>> >=20
>>>>> > I'm trying to build an OS with a custom recipe
>>>>> > (https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-=
core/opc-ua/opc-ua-server-gfex_git.bb).
>>>>> > I can build it as-is in the link above, but when actually trying t=
o use
>>>>> > the output of the recipe (Poverty.so) I get the below error in pyt=
hon3:=20
>>>>> >=20
>>>>> >>>> import Poverty Traceback (most recent call last): File "<stdin>=
", line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol: =
_ZN5boost6python6detail11init_moduleEPKcPFvvE
>>>>> >=20
>>>>> >=20
>>>>> > I think that's because I built against python2 in some places. So =
I
>>>>> > replaced essentially all of the python dependencies with their
>>>>> > corresponding python3 dependencies, but that gives a build error i=
n
>>>>> > bitbake like:  
>>>>> >=20
>>>>> > | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-pok=
y-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/=
include/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h:=
 No such file or directory
>>>>> > |  # include <pyconfig.h>
>>>>> > |            ^~~~~~~~~~~~
>>>>> > | compilation terminated.
>>>>> >=20
>>>>> >=20
>>>>> > However, I checked and the offending file pyconfig.h is actually p=
resent
>>>>> > at |
>>>>> > /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-=
linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/in=
clude/python3.5m/.
>>>>> > When I build with python2 dependencies the file is in the same loc=
ation,
>>>>> > just /python2.7/.
>>>>> >=20
>>>>> > I can't quite tell if this is a yocto problem, or a problem with m=
y
>>>>> > recipe and/or build files for that recipe. If anyone has suggestio=
ns
>>>>> > they would be much appreciated!=20
>>>>>=20
>>>>> this seems to be that it is needing python2, so yes it can perhaps b=
e
>>>>> ported to py3 but you might have to check if it needs some code chan=
ges
>>>>>=20
>>>>> Looking at the recipe it is ineheriting py2 class here [1]
>>>>>=20
>>>>> perhaps you should change that to python3native
>>>>>=20
>>>>> [1]
>>>>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-cor=
e/opc-ua/opc-ua-server-gfex_git.bb#L15
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> >=20
>>>>> > Thanks!
>>>>> > Emily Smith
>>>>> >=20
>>>>> >=20
>>>>> >=20
>>>>> >=20
>>>>>=20
>>>>>=20

--Apple-Mail-9795D6CE-8F54-4344-9B90-9F2AD2339673
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body dir=3D"auto"><div dir=3D"ltr">Hi -</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">The board isn=E2=80=99t buried *too* deepl=
y yet, but lab restrictions are the main barrier at the moment. Hopefully I=
 can figure out how to remotely update at some point, but I should be able =
to test with Zeus before we actually bury it underground. Right now it has =
rocko, and I=E2=80=99ve been updating things piecemeal as I go.&nbsp;</div>=
<div dir=3D"ltr"><br></div><div dir=3D"ltr">Ah I see, so perhaps Zeus is id=
eal for me until we can drop python2 entirely. Thanks for the info and link=
s!&nbsp;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Best,</div><div d=
ir=3D"ltr">Emily</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr=
 24, 2020, at 10:59 PM, Tim Orling &lt;ticotimo@gmail.com&gt; wrote:<br><br=
></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<di=
v dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:28 PM Emily Sm=
ith &lt;<a href=3D"mailto:easmith5555@gmail.com" target=3D"_blank">easmith5=
555@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr">Hi -</div>=
<div dir=3D"ltr"><br></div><div dir=3D"ltr">Not a super compelling reason o=
ther than the momentum required to update! Does Zeus support having both py=
thon2 and python3? We have a couple things that haven=E2=80=99t upgraded to=
 python3 yet as well. It=E2=80=99s almost certainly a good idea to move to =
Zeus, but everything is further complicated because we don=E2=80=99t have p=
hysical access to the board right now to update the OS and make sure things=
 still work.&nbsp;</div><div dir=3D"ltr"><br></div></div></div></blockquote=
><div>Right. I remember a&nbsp;prior thread about you needing to&nbsp;updat=
e remotely. I assume this board is stuffed deep in ATLAS somewhere. (In a p=
rior life I was a materials scientist)</div><div><br></div><div>Are you stu=
ck with "rocko" on the deeply buried remote-only device or can you use "sum=
o"?</div><div><br></div><div>Zeus still had python2 [1] and python3 [2]. Bu=
t you can also get python2 support with meta-python2 [3], since the latest =
release "dunfell" [4].&nbsp; For random development reasons, the zeus branc=
h should also work [5]. Note that meta-python2 will have limited support go=
ing forward (as in I might not support it after this month, but others migh=
t). It was created so we could drop python2 from the other layers, without =
breaking everything everywhere for everyone.</div><div><br></div><div>[1]&n=
bsp;<a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/rec=
ipes-devtools/python/python_2.7.17.bb?h=3Dzeus">https://git.openembedded.or=
g/openembedded-core/tree/meta/recipes-devtools/python/python_2.7.17.bb?h=3D=
zeus</a></div><div>[2]&nbsp;<a href=3D"https://git.openembedded.org/openemb=
edded-core/tree/meta/recipes-devtools/python/python3_3.7.7.bb?h=3Dzeus">htt=
ps://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/pyth=
on/python3_3.7.7.bb?h=3Dzeus</a></div><div>[3] <a href=3D"https://git.opene=
mbedded.org/meta-python2">https://git.openembedded.org/meta-python2</a></di=
v><div>[4]&nbsp;<a href=3D"https://git.openembedded.org/meta-python2/log/?h=
=
=3Ddunfell">https://git.openembedded.org/meta-python2/log/?h=3Ddunfell</a>=
</div><div>[5]&nbsp;<a href=3D"https://git.openembedded.org/meta-python2/lo=
g/?h=3Dzeus">https://git.openembedded.org/meta-python2/log/?h=3Dzeus</a></d=
iv><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"></div><div dir=3D"ltr">Sorry a=
bout the internal repos, but thanks for the start!&nbsp;</div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">Best,</div><div dir=3D"ltr">Emily&nbsp;</div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br><blockquote type=3D"cite">=
On Apr 24, 2020, at 10:01 PM, Tim Orling &lt;<a href=3D"mailto:ticotimo@gma=
il.com" target=3D"_blank">ticotimo@gmail.com</a>&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"=
ltr">I meant to say "zeus" was released in October 2019. I'm sure xilinx su=
pport was after that.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:00 PM Tim Orling &lt;<a href=
=
=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr"><br></div>I see you are building for "rocko" and=
 that your layer supports "sumo" and "rocko". Do you have a strong compelli=
ng reason to stay on these EOL releases? meta-xilinx has a zeus branch whic=
h was released in October 2019 and has newer components and will be easier =
for you and us to support. (We've had "thud" and "warrior" releases in-betw=
een, so that's at least a year and a half ahead of your code base).<div><br=
></div><div>I started trying to build your layer (on "zeus" release), but u=
nfortunately you have recipes fetching from internal CERN git repos that ar=
e not accessible to the rest of us.</div><div><br></div><div>Here's what I =
have so far:</div><div><a href=3D"https://github.com/moto-timo/meta-l1calo/=
tree/timo/zeus/add/opcServer" target=3D"_blank">https://github.com/moto-tim=
o/meta-l1calo/tree/timo/zeus/add/opcServer</a></div><div><br></div><div>Aga=
in, I can't go much further because I can't fetch from your internal repos.=
</div><div><br></div><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Fri, Apr 24, 2020 at 6:38 PM Khem Raj &lt;<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
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
</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></body></html>

--Apple-Mail-9795D6CE-8F54-4344-9B90-9F2AD2339673--
