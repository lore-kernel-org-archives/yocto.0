Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web10.253.1585773559221253757
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 13:39:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjBvuFt7;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id x16so1335647ilp.12
        for <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2020 13:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BIfdzQmpN+nUTr0jiQ2pa61Y3odPQ/rSavW6U/KXAa0=;
        b=IjBvuFt7mVg5DbkW3wsjenE2/1oYjvR6mQNON2Z0vlcQ7wulcIQ5xd0Geyk+jdOUd+
         hD0yKQpvNZ5BH/87bk6Vo1wOV5d4eViOqj2kLKJlK+lsf+DOQopm0V2UyJdGSjsf7gZi
         CTHMIXYTDJCgLX7ZNsv+gTKVE4g2KIUAQWGpVkEFbzpn9eIt6cYxXmFdRetFvUVXgOzm
         z2dxjWU7hRDp1KjITS+iYen+SqQs+elu5FnebLYkN8Ex4HfN3A5RZfOjOJBkTDK9DeZ6
         yz4UokTjrSlOE3R8rIDjlyN846b5jyye4Bfg1R+jZ3VERRO9/vfX/W3HRyDDRdvGf/bD
         uw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BIfdzQmpN+nUTr0jiQ2pa61Y3odPQ/rSavW6U/KXAa0=;
        b=ETQy6Nd5OjlaewgYrpVU5aigsNFjWZee+JRn2y9HOdQw5IxHcxLSMiQGu21GoBcT9U
         t8vu64u9GTjKOS03V7xssni8sI4mcF/R1rMqTdTOZHSRf6vZ571M9vYKK1WGiFU3sDOY
         5OZvAC7QGOGC3lFxNDXUW286tJGb3fSnieeG16K1ZzJn7K7DOUHMb8+NRfe9bmGFwdzT
         +n09oVPxJI3A6iYqAOmInT47/D2Mg+xboehHtcupvtt51LCu83hpAwDbEA13tkn0Ohni
         h7G23A8aeTMFDJFjJ9URWMfKSHfdOvGWHFxVeCLyeG5v1wSa7B5i/vM9lttVbwBrlgZN
         vGCw==
X-Gm-Message-State: ANhLgQ1S4ehNWY924LOZBQCq135KWCf3Y9sffNBU2zFYAxzvrcGE38nh
	qJbXmljbnVuk8OSZmout/6wetAB/S5YOb/+7MiY=
X-Google-Smtp-Source: ADFU+vtfeqJhDab/C2rBt150oBzuZ/hN/3bDdFxOWuogAJpbYoz3fmqBA4mI+L6C/I0i/B+aCF9bOg9tpP4PP/YlAAg=
X-Received: by 2002:a92:d105:: with SMTP id a5mr23180305ilb.142.1585773558565;
 Wed, 01 Apr 2020 13:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org> <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com> <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 1 Apr 2020 13:39:07 -0700
Message-ID: <CANx9H-Dz5NumXNkoTND=_QWxStGawYbnNddQPJBijh3wib+pXg@mail.gmail.com>
Subject: Re: [yocto] python argparse or alternate method
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a711c205a240ad8d"

--000000000000a711c205a240ad8d
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 1, 2020 at 1:09 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> Hi Joel,
>
> okay, I see - although I have to admit the argparse idea looks very weird,
> the error is that according to
>
> https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.parse_args
> the pkgconfig_args variable should be a list not a single string.
>
> so doing pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS").split(" ")
> should fix the issue.
> But from a bitbake perspective you should really think about choosing a
> less pythonic version
>
>
You might also want to review the documentation on how PACKAGECONFIG is
intended to be used:

https://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.html#var-PACKAGECONFIG

In your recipe, each is a single command line flag, without the remaining
fields. Looks odd from a Yocto Project perspective.

> Best
>
> Konrad
> On 01.04.20 22:00, Joel Winarske wrote:
>
> Hi Konrad,
>
> I left out the details of the path encoding :)  Effectively I was
> attempting to duplicate get_out_dir() as found here:
> https://github.com/flutter/engine/blob/master/tools/gn
>
> My recipe is here:
> https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb
>
> Cheers,
> Joel
>
> On Wed, Apr 1, 2020 at 10:46 AM Konrad Weihmann <kweihmann@outlook.com>
> wrote:
>
>> There is a single tick missing, but I'm sure you get the point
>> On 01.04.20 19:37, Konrad Weihmann wrote:
>>
>> What about
>>
>> do_configure() {
>>
>>    cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose',
>> out/verbose', 'out', d)}
>>
>> }
>> On 01.04.20 18:55, Joel Winarske wrote:
>>
>> Hello,
>>
>> I'm trying the below in a recipe.  Bitbake gives me: ERROR: Unable to
>> parse ...: Exited with "2"
>>
>> inherit python3native
>>
>> require utils.inc
>>
>> do_configure() {
>>
>>     cd ${@get_out_dir(d)}
>> }
>>
>> (in utils.inc)
>> def get_out_dir(d):
>>     import os
>>     import argparse
>>     pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>>
>>     parser = argparse.ArgumentParser()
>>     parser.add_argument("--verbose", help="increase output verbosity",
>>                         action="store_true")
>>     args = parser.parse_args(pkgconfig_args)
>>     if args.verbose:
>>         return os.path.join('out', 'verbose')
>>
>>     return 'out'
>>
>>
>>
>> What am I doing wrong, or is there a better way?  Seems like it doesn't
>> like "args = parser.parse_args(pkgconfig_args)"
>>
>> The output directory is a combination of the arguments.
>>
>>
>> Thanks!
>> Joel
>>
>>
>>
>> 
>

--000000000000a711c205a240ad8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Apr 1, 2020 at 1:09 PM Konrad Weihmann &lt;<a href=
=
=3D"mailto:kweihmann@outlook.com">kweihmann@outlook.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">

  
  <div>
    <p>Hi Joel,</p>
    <p>okay, I see - although I have to admit the argparse idea looks
      very weird, the error is that according to<br>
<a href=3D"https://docs.python.org/3/library/argparse.html#argparse.Argume=
ntParser.parse_args" target=3D"_blank">https://docs.python.org/3/library/ar=
gparse.html#argparse.ArgumentParser.parse_args</a><br>
      the pkgconfig_args variable should be a list not a single string.<br=
>
      <br>
      so doing pkgconfig_args =3D
      d.getVar(&quot;PACKAGECONFIG_CONFARGS&quot;).split(&quot; &quot;) sh=
ould fix the
      issue.<br>
      But from a bitbake perspective you should really think about
      choosing a less pythonic version</p>
    <p></p></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto=
">You might also want to review the documentation on how PACKAGECONFIG is i=
ntended to be used:</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div=
><a href=3D"https://www.yoctoproject.org/docs/3.0/ref-manual/ref-manual.htm=
l#var-PACKAGECONFIG">https://www.yoctoproject.org/docs/3.0/ref-manual/ref-m=
anual.html#var-PACKAGECONFIG</a></div></div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">In your recipe, each is a single command line flag, without =
the remaining fields. Looks odd from a Yocto Project perspective.</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><p>Best</p>
    <p>Konrad<br>
    </p></div><div>
    <div>On 01.04.20 22:00, Joel Winarske wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">Hi Konrad,
        <div><br>
        </div>
        <div>I left out the details of the path encoding :)=C2=A0 Effectiv=
ely
          I was attempting to duplicate get_out_dir() as found here:</div>
        <div><a href=3D"https://github.com/flutter/engine/blob/master/tool=
s/gn" target=3D"_blank">https://github.com/flutter/engine/blob/master/tools=
/gn</a><br>
        </div>
        <div><br>
        </div>
        <div>My recipe is here:=C2=A0=C2=A0<a href=3D"https://github.com/j=
winarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-eng=
ine_git.bb" target=3D"_blank">https://github.com/jwinarske/meta-flutter/blo=
b/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb</a></div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Joel</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 1, 2020 at 10:46
          AM Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" =
target=3D"_blank">kweihmann@outlook.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>There is a single tick missing, but I&#39;m sure you get th=
e
              point<br>
            </p>
            <div>On 01.04.20 19:37, Konrad Weihmann wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>What about</p>
              <p>do_configure() {</p>
              <p>=C2=A0=C2=A0 cd ${@bb.utils.contains(&#39;PACKAGECONFIG_C=
ONFARGS&#39;,
                &#39;--verbose&#39;, out/verbose&#39;, &#39;out&#39;, d)}<=
br>
              </p>
              <p>}<br>
              </p>
              <div>On 01.04.20 18:55, Joel Winarske wrote:<br>
              </div>
              <blockquote type=3D"cite"> Hello,<br>
                <br>
                I&#39;m trying the below in a recipe.=C2=A0 Bitbake gives =
me:
                ERROR: Unable to parse ...: Exited with &quot;2&quot;<br>
                <br>
                inherit python3native<br>
                <br>
                require utils.inc<br>
                <br>
                do_configure() {<br>
                <br>
                =C2=A0=C2=A0=C2=A0 cd ${@get_out_dir(d)}<br>
                }<br>
                <br>
                (in utils.inc)<br>
                def get_out_dir(d):<br>
                =C2=A0=C2=A0=C2=A0 import os<br>
                =C2=A0=C2=A0=C2=A0 import argparse<br>
                =C2=A0=C2=A0=C2=A0 pkgconfig_args =3D d.getVar(&quot;PACKA=
GECONFIG_CONFARGS&quot;)<br>
                <br>
                =C2=A0=C2=A0=C2=A0 parser =3D argparse.ArgumentParser()<br=
>
                =C2=A0=C2=A0=C2=A0 parser.add_argument(&quot;--verbose&quo=
t;, help=3D&quot;increase
                output verbosity&quot;,<br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 action=3D&quot;store_true&quot;)<br>
                =C2=A0=C2=A0=C2=A0 args =3D parser.parse_args(pkgconfig_ar=
gs)<br>
                =C2=A0=C2=A0=C2=A0 if args.verbose:<br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return os.path.=
join(&#39;out&#39;, &#39;verbose&#39;)<br>
                <br>
                =C2=A0=C2=A0=C2=A0 return &#39;out&#39;<br>
                <br>
                <br>
                <br>
                What am I doing wrong, or is there a better way?=C2=A0 See=
ms
                like it doesn&#39;t like &quot;args =3D
                parser.parse_args(pkgconfig_args)&quot;<br>
                <br>
                The output directory is a combination of the arguments.<br=
>
                <br>
                <br>
                Thanks!<br>
                Joel<br>
                <br>
                <fieldset></fieldset>
              </blockquote>
              <br>
              <fieldset></fieldset>
            </blockquote>
          </div>
          <br>
        </blockquote>
      </div>
    </blockquote>
  </div><div></div>

<br>
</blockquote></div></div>

--000000000000a711c205a240ad8d--
