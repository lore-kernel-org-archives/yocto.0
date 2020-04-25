Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.931.1587783716832360366
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 20:01:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=li5Mk5MR;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF628E01A6A; Fri, 24 Apr 2020 20:01:56 -0700 (PDT)
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
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7A9E01A65
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:01:55 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id c16so11238680ilr.3
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 20:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C8A3c8XT9eA0COztENxNyOiBJCZBZOM+o11j5+oGQl4=;
        b=li5Mk5MRrPaX3GS2b+WOByKx1HWPOe9dw+E1wHE9ZvE0axwL2WgvILvY2szn+tM6YZ
         2e6kgaDuMBZEkllcK8hxoIDYBnS3y+YLpWnU0DFR+Lr+irGiemQ7ULUdjvDUEUpWXQ5j
         ai5eemRmeff09T0MLE8uhtD91g89oJbSf4JEeKy9hul21MeJbxQyDdNCIOwDRb4VNXcy
         8kS5JGPz3vJ7MxgqVuVlpAgv5pLsiCR7+Ef+5Gym+yW5SLJc2zvBEkMClDWQwTShcZTa
         esGezLR8BpNYNaPtr5esorDKIpgM1D+SPcjPME99y3UpIsoMeIQMF44G+NMKVKr7+j2o
         q3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C8A3c8XT9eA0COztENxNyOiBJCZBZOM+o11j5+oGQl4=;
        b=KNZ4FOJhTW14cFa9plQwUj3Ghqdb5oqATriC0SGfGykrQw54YyKKRskx7UqqQvKvgi
         m3/NS9zf6ryf003jJiRLoeQ7dOFYpfjvH7WCCaCkT1X/xg8+n1AkBh0zxf6uSoZ45Y1u
         cJA7ssJ9csS7nvSdsAIC8gO4af4YWRyhX6+uVdAdHeTfNd7KCUOyDx+xLL8JTlB1goZk
         MgIBVQATjBVQA8LS/YUD5Vr9j9S82tgEl1DTA8C1BQmeBiWtlM24SVED4qqmOy29cbz0
         eAKiu8tHL+YI53zu30QhXx6U4dg1PI0U1TvJNrrTVPBmPOJ4w42IcZsqhTuK8pheE6DN
         jrtw==
X-Gm-Message-State: AGi0PuYEJSCUi7yXmh1VLidGkHALp00cxHbU3415FDGAyvYuYKSZO+ob
	YifNlOB/eoQqXoHjXRLh0OaJW0Pmf4kYyM/AG//lCe3L
X-Google-Smtp-Source: APiQypKx9bEZhfTKXjyubZbA1JIXTWKV+JnHFifo5N3GqNYZMgeoxRYTSZa/iGy8flWtqoO0K3q9q8+qtc8mpzTDJdg=
X-Received: by 2002:a92:1b91:: with SMTP id f17mr11618481ill.142.1587783714842;
 Fri, 24 Apr 2020 20:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
 <096aae34-df17-0aa0-8e3b-e9f740e9a54d@gmail.com> <CANx9H-DzXcfup5JwTF1AwqGt86jJU6DewJ7a7NHKDFe6Ve2Hkw@mail.gmail.com>
In-Reply-To: <CANx9H-DzXcfup5JwTF1AwqGt86jJU6DewJ7a7NHKDFe6Ve2Hkw@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Fri, 24 Apr 2020 20:01:43 -0700
Message-ID: <CANx9H-ARv6M5OaEf1mhNV4C1KOTqKM31zWz667=FAThj2SJxLA@mail.gmail.com>
Subject: Re: [yocto] Can't find pyconfig.h with python3
To: Emily <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004daae005a414b476"

--0000000000004daae005a414b476
Content-Type: text/plain; charset="UTF-8"

I meant to say "zeus" was released in October 2019. I'm sure xilinx support
was after that.

On Fri, Apr 24, 2020 at 8:00 PM Tim Orling <ticotimo@gmail.com> wrote:

>
> I see you are building for "rocko" and that your layer supports "sumo" and
> "rocko". Do you have a strong compelling reason to stay on these EOL
> releases? meta-xilinx has a zeus branch which was released in October 2019
> and has newer components and will be easier for you and us to support.
> (We've had "thud" and "warrior" releases in-between, so that's at least a
> year and a half ahead of your code base).
>
> I started trying to build your layer (on "zeus" release), but
> unfortunately you have recipes fetching from internal CERN git repos that
> are not accessible to the rest of us.
>
> Here's what I have so far:
> https://github.com/moto-timo/meta-l1calo/tree/timo/zeus/add/opcServer
>
> Again, I can't go much further because I can't fetch from your internal
> repos.
>
> On Fri, Apr 24, 2020 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>>
>> On 4/24/20 4:17 PM, Emily wrote:
>> > Hi all -
>> >
>> > I'm trying to build an OS with a custom recipe
>> > (
>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb
>> ).
>> > I can build it as-is in the link above, but when actually trying to use
>> > the output of the recipe (Poverty.so) I get the below error in python3:
>> >
>> >>>> import Poverty Traceback (most recent call last): File "<stdin>",
>> line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol:
>> _ZN5boost6python6detail11init_moduleEPKcPFvvE
>> >
>> >
>> > I think that's because I built against python2 in some places. So I
>> > replaced essentially all of the python dependencies with their
>> > corresponding python3 dependencies, but that gives a build error in
>> > bitbake like:
>> >
>> > |
>> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/boost/python/detail/wrap_python.hpp:50:11:
>> fatal error: pyconfig.h: No such file or directory
>> > |  # include <pyconfig.h>
>> > |            ^~~~~~~~~~~~
>> > | compilation terminated.
>> >
>> >
>> > However, I checked and the offending file pyconfig.h is actually present
>> > at |
>> >
>> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python3.5m/.
>> > When I build with python2 dependencies the file is in the same location,
>> > just /python2.7/.
>> >
>> > I can't quite tell if this is a yocto problem, or a problem with my
>> > recipe and/or build files for that recipe. If anyone has suggestions
>> > they would be much appreciated!
>>
>> this seems to be that it is needing python2, so yes it can perhaps be
>> ported to py3 but you might have to check if it needs some code changes
>>
>> Looking at the recipe it is ineheriting py2 class here [1]
>>
>> perhaps you should change that to python3native
>>
>> [1]
>>
>> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb#L15
>>
>>
>>
>> >
>> > Thanks!
>> > Emily Smith
>> >
>> >
>> >
>> >
>>
>> 
>>
>

--0000000000004daae005a414b476
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I meant to say &quot;zeus&quot; was released in October 20=
19. I&#39;m sure xilinx support was after that.</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 8:00=
 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr"><br></div>I see you are building for &quo=
t;rocko&quot; and that your layer supports &quot;sumo&quot; and &quot;rocko=
&quot;. Do you have a strong compelling reason to stay on these EOL release=
s? meta-xilinx has a zeus branch which was released in October 2019 and has=
 newer components and will be easier for you and us to support. (We&#39;ve =
had &quot;thud&quot; and &quot;warrior&quot; releases in-between, so that&#=
39;s at least a year and a half ahead of your code base).<div><br></div><di=
v>I started trying to build your layer (on &quot;zeus&quot; release), but u=
nfortunately you have recipes fetching from internal CERN git repos that ar=
e not accessible to the rest of us.</div><div><br></div><div>Here&#39;s wha=
t I have so far:</div><div><a href=3D"https://github.com/moto-timo/meta-l1c=
alo/tree/timo/zeus/add/opcServer" target=3D"_blank">https://github.com/moto=
-timo/meta-l1calo/tree/timo/zeus/add/opcServer</a></div><div><br></div><div=
>Again, I can&#39;t go much further because I can&#39;t fetch from your int=
ernal repos.</div><div><br></div><div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020 at 6:38 PM Khem Raj &lt=
;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
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

--0000000000004daae005a414b476--
