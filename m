Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web10.14758.1592744992964856643
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jun 2020 06:09:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m8E+lRpj;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: tomekthemessenger@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id g44so4715180uae.12
        for <yocto@lists.yoctoproject.org>; Sun, 21 Jun 2020 06:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IWsBX0EouG1BOPQwBbGgqyPZPg2e2tNGCFgh7BXOJ1k=;
        b=m8E+lRpj6q9A0RbTSg3notvQTbbrodTTvJvLwws0QcpHG+epPCr7MTy2wdTD+edDLm
         7azl8cgnf9tOfxwdCJBcFG7n5VNrgjdywlPr/2b29MjmIcfdMjHxho/PzyRWIez7wML7
         yTrSFlQjBjThGTqopvdUreJGD8SOQY9SurQKggGEXMRMqf3RB5xR8pTJ0cmBlj4bKgLH
         hsiXP3Bfr7RYfN11ohPTzHKd0ef2mt9AQWptqEqxdH0NZ0ybIA+Hdvq3hFrdvMHJt+i1
         x7vN0WFLkgPOQiVhmJo0MSHAzeH/7q/9tMVIRcggs7AMYVr6KbIgK5LHKTqAicF2tJab
         mHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IWsBX0EouG1BOPQwBbGgqyPZPg2e2tNGCFgh7BXOJ1k=;
        b=JdCaWQYabCUMln5dD7rm03VwebecN/iGPu1IuMfeIwIsrC0+jrRcugiDp43VwFWRuc
         I/w+0z5DQyIRLkguUmMgynyEyGnqZLjvn8sMkSvzLLlM+gZ/mxH9NYQCXsoVnFrtiJyy
         BcJK+8iJIiNLIZ2hAQCuDCUzqQ2CqKBkIaZ13u5xhOsFwJKf2gT+zJ6MJOoYsak8xBaV
         xMXL/wPuaCM8ymU34T0q9m9yKQ9/WYVBW2sUMKjjHf02kNcZUvwVFONMZA1FOW3H3/qt
         0ruK9uHonZLAvFJMs5cNR2P60YKMyoHA1fxZ41YDNh9F0xtFb/0zlBrzI7g8dCLxfqS+
         QHmw==
X-Gm-Message-State: AOAM5309MxWb7EfD313YcVb3WqFr0uwoDa2TRR6Hb7YysxkFHeiq8sax
	5Bz5ptApobySinMaooUtV+hYwV5evaBLvgBr36o=
X-Google-Smtp-Source: ABdhPJzbVZTJO5TOVZCl+RoMIMfaDeXOQQDSvEw5G44qUGhZniD/y46703jP5c/fme+YqAIKw/0kU2CLJ79+ntxxZ70=
X-Received: by 2002:ab0:5fca:: with SMTP id g10mr8507015uaj.138.1592744991973;
 Sun, 21 Jun 2020 06:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
 <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com>
 <CAA4NGyv2S1S009zeTezOt+DU42ggfOGt5priOVc49Toi9aCFPA@mail.gmail.com> <CAAx3WaA4cCVD8rz5SV13Ciku5+YP+bE92AmEea+Q+V6-1Ur=EA@mail.gmail.com>
In-Reply-To: <CAAx3WaA4cCVD8rz5SV13Ciku5+YP+bE92AmEea+Q+V6-1Ur=EA@mail.gmail.com>
From: "Tomek The Messenger" <tomekthemessenger@gmail.com>
Date: Sun, 21 Jun 2020 15:09:40 +0200
Message-ID: <CAA4NGyt+jmBTuumhQ1df-nOr0x9f0VnVfXH9VT3WctiuDkrVdw@mail.gmail.com>
Subject: Re: [yocto] MACHINE and inc files
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000076e39405a897d793"

--00000000000076e39405a897d793
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The problem which I have is that this one below doesn't work (*):
KERNEL_MODULE_AUTOLOAD_velismate +=3D "A"
KERNEL_MODULE_AUTOLOAD +=3D "B"

The two kernel modules are autoloaded during linux startup only if I have
in bb recipe this one:
KERNEL_MODULE_AUTOLOAD +=3D "A"
KERNEL_MODULE_AUTOLOAD +=3D "B"
or
KERNEL_MODULE_AUTOLOAD_velismate +=3D "A"
KERNEL_MODULE_AUTOLOAD_velismate +=3D "B"
If I have like here (*), so kind of some mix, then kernel-moduleB isn't
autoloaded.
On the other hand the below one works OK:
RPROVIDES_${PN}_velismate +=3D "kernel-module-A"
RPROVIDES_${PN} +=3D "kernel-module-B"
RPPROVIDES install in filesystem your kernel module and based on variable
AUTOLOAD some magic during building kernel image is done that after linux
startupu your module is loading.
So I try to pass the above by adding:
#include ${MACHINE}.inc and in *.inc file I will use KERNEL_MODULE_AUTOLOA=
D
without part "_something" as it is problematic when mixing.
so my temp.bb recipe will looks like:
  KERNEL_MODULE_AUTOLOAD +=3D "B"
  include ${MACHINE}.inc  #here for machine velismate kernel module B will
be added

But the problem is that my MACHINE is:
'velismate-x11'
'velismate-x21'
not just 'velismate'
and how to ignore x11,x12 words and not do anything in temp.bb if in futur=
e
machine velismate-x31 will appear.
It must be something like
include ${takeOnlyFirstWordOfMachine(${MACHINE})}.inc
so I probably need to implement function takeOnlyFirstWordOfMachine but
how, I don't know.
In makefile it is easy, You have:
ifeq ($(findstring velismate, $(MACHINE)), velismate)
endif
but in bitbake I don't have idea how to done it in the most simplest way.

On Fri, Jun 19, 2020 at 5:00 PM Gabriele Zampieri <gabbla.malist@gmail.com=
>
wrote:

> You do not need to include anything. Maybe I did not understand you. Can
> you provide a file structure/use case?
>
> Gabriele
>
> NOTE: I won't be able to reply till Tuesday 23rd
>
> On Fri, Jun 19, 2020 at 3:36 PM Tomek The Messenger <
> tomekthemessenger@gmail.com> wrote:
>
>> And then do include ${MAGIC_NUMBER}. But this is not good idea. Each ti=
me
>> new x version appers I will have to extend temp.bb file about the line
>> you wrote but with another x version.
>>
>> pt., 19.06.2020, 15:26 u=C5=BCytkownik Gabriele Zampieri <
>> gabbla.malist@gmail.com> napisa=C5=82:
>>
>>> Hi Tomek,
>>>
>>> you can specify machine-specific variables/function with the following
>>> syntax:
>>>  <PROPERTY_NAME>_[MACHINE_NAME] =3D "value"
>>> ex:
>>>  MAGIC_NUMBER_velismate-x21 =3D "12345"
>>> inside your temp.bb
>>>
>>> Regards,
>>> Gabriele
>>>
>>> On Fri, Jun 19, 2020 at 3:21 PM Tomek The Messenger <
>>> tomekthemessenger@gmail.com> wrote:
>>>
>>>> Hi
>>>> I have various ${MACHINE} called:
>>>> uruguay-x11
>>>> uruguay-x21
>>>> supa-rte-x11
>>>> supa-rte-x13
>>>> supa-rte-x21
>>>> velismate-x11
>>>> velismate-x21
>>>>
>>>> I created some bb recipe:
>>>> temp.bb
>>>> where there are common things done for all machines.
>>>> Now I need to perform different things for  uruguay, supa-rte and
>>>> velismate.
>>>> How to do this? Should I create
>>>> uruguay-%.inc supa-%.inc and velismate-%.inc?
>>>> and in temp.bb write:
>>>> include ${MACHINE}.inc
>>>> but this won't work as bitbake will expect full name with x11 etc par=
t.
>>>> How to exclude part with x11, rte-x21 etc? Is any way?
>>>> Anybody can help?
>>>>
>>>> BR
>>>> Tomek
>>>>=20
>>>>
>>>

--00000000000076e39405a897d793
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The problem which I have is that this one below doesn&#39;=
t work (*):<div>KERNEL_MODULE_AUTOLOAD_velismate +=3D &quot;A&quot;<br>KERN=
EL_MODULE_AUTOLOAD +=3D &quot;B&quot;<br><br></div><div>The two kernel modu=
les are autoloaded during linux startup only if I have in bb recipe this on=
e:</div><div>KERNEL_MODULE_AUTOLOAD +=3D &quot;A&quot;<br>KERNEL_MODULE_AUT=
OLOAD +=3D &quot;B&quot;<br></div><div>or</div><div>KERNEL_MODULE_AUTOLOAD_=
velismate +=3D &quot;A&quot;<br>KERNEL_MODULE_AUTOLOAD_velismate +=3D &quot=
;B&quot;=C2=A0=C2=A0<br></div><div>If I have like here (*), so kind of some=
 mix, then kernel-moduleB isn&#39;t autoloaded.</div><div>On the other hand=
 the below one works OK:</div><div>RPROVIDES_${PN}_velismate +=3D &quot;ker=
nel-module-A&quot;<br>RPROVIDES_${PN} +=3D &quot;kernel-module-B&quot;<br><=
/div><div>RPPROVIDES=C2=A0install in filesystem your kernel module and base=
d on variable AUTOLOAD some magic during building kernel image is done that=
 after linux startupu your module is loading.</div><div>So I try to pass th=
e above by adding:</div><div>#include ${MACHINE}.inc and in *.inc file I wi=
ll use KERNEL_MODULE_AUTOLOAD without part &quot;_something&quot; as it is =
problematic when mixing.</div><div>so my <a href=3D"http://temp.bb">temp.bb=
</a> recipe=C2=A0will looks like:</div><div>=C2=A0 KERNEL_MODULE_AUTOLOAD +=
=
=3D &quot;B&quot;</div><div>=C2=A0 include ${MACHINE}.inc=C2=A0 #here for =
machine velismate kernel module B will be added<br></div><div><br></div><di=
v>But the problem is that my MACHINE is:</div>&#39;velismate-x11&#39;<br><d=
iv>&#39;velismate-x21&#39;=C2=A0</div><div>not just &#39;velismate&#39;</di=
v><div>and how to ignore x11,x12 words and not do anything in <a href=3D"ht=
tp://temp.bb">temp.bb</a> if in future machine velismate-x31 will appear.</=
div><div>It must be something like</div><div>include ${takeOnlyFirstWordOfM=
achine(${MACHINE})}.inc</div><div>so I probably need=C2=A0to implement func=
tion takeOnlyFirstWordOfMachine but how, I don&#39;t know.</div><div>In mak=
efile it is easy, You have:</div><div>ifeq ($(findstring velismate, $(MACHI=
NE)), velismate)<br></div><div>endif</div><div>but in bitbake I don&#39;t h=
ave idea how to done it in the most simplest way.</div></div><br><div class=
=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 202=
0 at 5:00 PM Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.co=
m">gabbla.malist@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>You do not need to include =
anything. Maybe I did not understand you. Can you provide a file structure/=
use case?</div><div><br></div><div>Gabriele</div><div><br></div><div>NOTE: =
I won&#39;t be able to reply till Tuesday 23rd<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 202=
0 at 3:36 PM Tomek The Messenger &lt;<a href=3D"mailto:tomekthemessenger@gm=
ail.com" target=3D"_blank">tomekthemessenger@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">And=
 then do include ${MAGIC_NUMBER}. But this is not good idea. Each time new =
x version appers I will have to extend <a href=3D"http://temp.bb" target=3D=
"_blank">temp.bb</a> file about the line you wrote but with another x versi=
on.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">pt., 19.06.2020, 15:26 u=C5=BCytkownik Gabriele Zampieri &lt;<a href=3D"=
mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</=
a>&gt; napisa=C5=82:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hi Tomek,</div><div><br></div><div>you can speci=
fy machine-specific variables/function with the following syntax:</div><div=
>=C2=A0<span style=3D"font-family:monospace">&lt;PROPERTY_NAME&gt;_[MACHINE=
_NAME] =3D &quot;value&quot;</span></div><div>ex:</div><div>=C2=A0<span sty=
le=3D"font-family:monospace">MAGIC_NUMBER_velismate-x21 =3D &quot;12345&quo=
t;</span></div><div>inside your <a href=3D"http://temp.bb" rel=3D"noreferre=
r" target=3D"_blank">temp.bb</a></div><div><br></div><div>Regards,</div><di=
v>Gabriele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Jun 19, 2020 at 3:21 PM Tomek The Messenger &lt=
;<a href=3D"mailto:tomekthemessenger@gmail.com" rel=3D"noreferrer" target=
=3D"_blank">tomekthemessenger@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi<br>I have vario=
us ${MACHINE} called:<br>uruguay-x11<br>uruguay-x21<br>supa-rte-x11<br>supa=
-rte-x13<br>supa-rte-x21<br>velismate-x11<br>velismate-x21<br><br>I created=
 some bb recipe:<br><a href=3D"http://temp.bb" rel=3D"noreferrer" target=3D=
"_blank">temp.bb</a><br>where there are common things done for all machines=
.<br>Now I need to perform different things for =C2=A0uruguay, supa-rte and=
 velismate.<br>How to do this? Should I create <br>uruguay-%.inc supa-%.inc=
 and velismate-%.inc?<br>and in <a href=3D"http://temp.bb" rel=3D"noreferre=
r" target=3D"_blank">temp.bb</a> write:<br>include ${MACHINE}.inc<br>but th=
is won&#39;t work as bitbake will expect full name with x11 etc part. How t=
o exclude=C2=A0part=C2=A0with x11, rte-x21 etc? Is any way?<br>Anybody can =
help?<br><div><br></div><div>BR</div><div>Tomek</div></div>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000076e39405a897d793--
