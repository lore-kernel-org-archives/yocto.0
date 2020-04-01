Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.315.1585776051992511438
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 14:20:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u8Pjg6Za;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id ng8so632868pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2020 14:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KOYZgeskcRHQgrmetZlYE/LV4hPyxkRb+sQ8DOlDt/U=;
        b=u8Pjg6ZaaHZU8S7tezw6vpy/6aE6U/FAh+bCv/D+nk9oaREYKEWoxEy/O5Tqe5fzTN
         kKkTEIUggg7MuhuXU/W7fDsIlLlCETmQqUauEhKOCL1skIxlRonpahiRwCeiyt8sy4wu
         +YHRce84EVNHcY5EX86vNYpN/PynBPrAXDGTyJnQkdweF1IjG0uSk+LE4DVnxjHJShC2
         ELJStQx4Q/2RRujRX2az1B5fC6g7hyWpuJhAflgP17406wp5yeRoJtcYgrmQnqoURO+i
         4CxoBTl3f0LghzgSmalGshrHtjHNQgStMNGYT0oquavo9rOU6ntqMH4M81PCyG2cFOc9
         s8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KOYZgeskcRHQgrmetZlYE/LV4hPyxkRb+sQ8DOlDt/U=;
        b=rUjeBLOKfne5Zf/qEF4NZU+5ykmD0WQHv8awVFEQ2pJBI+PApSAQXQTybtYt+6R94x
         jHzhM4VHgA/f4JAmQNGUQ5McFmoquuJmLLBK4+dSFPXLWxB9GCIa4a+rL1StRGzD+sKG
         wmpyYkwzfXJpF19tpRIJTobbHtF91dFpZ/VOYol2FQc6JVtO+o9lSyxercNl27LR6sTk
         7DQJ2fx/Tf6HkBc+YAoXdy/Y/cnM9rK/XzlcTDCwM77dySmosWXA1Bn3ySMbpck5gHlG
         ne1BldH4FqojnlBnB5gne2hovMcUU1fjy3Cn2Z4QLYx5SQbe29VONGJHoRQJ8n6DALzB
         GR3A==
X-Gm-Message-State: ANhLgQ2xcBgaKk0e+o1NCmkjdKM3fVB1DEDks2lCmshuBzK0bSeFdMI1
	6x7UPLnvDZjwygJ1eL+Ao0ssMo+or4sddOzsfPA=
X-Google-Smtp-Source: ADFU+vttSCiFGxS8mKY6Vn3XyhQeiRerU1HFcFuAtMjL21PAn7unc5QvqsV7vWxOSZzHzHfliwx1CHhP8dXk3bu+lZA=
X-Received: by 2002:a17:902:a9cc:: with SMTP id b12mr24058871plr.177.1585776051246;
 Wed, 01 Apr 2020 14:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org> <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com> <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB42861FD368535D839B1289FBA8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Wed, 1 Apr 2020 14:20:40 -0700
Message-ID: <CABKMkPKSHo91AqatLSwOn5x8+qQ2cikWEyn8+C2nBUp3YKEFOA@mail.gmail.com>
Subject: Re: [yocto] python argparse or alternate method
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003a5aaa05a24142f9"

--0000000000003a5aaa05a24142f9
Content-Type: text/plain; charset="UTF-8"

Hi Konrad,

Thanks, that helps a lot.  It works!  I used straight split() which
prevented the first value from being null.

Yes, I agree less pythonic :)  The only recipe I've seen building gn based
projects is OSSystem's meta-browser/chromium.  I followed it's pattern, as
the Flutter Engine is a derivative of Chrome.

The issue with these large gn based projects is that they're self contained
builds.  A build system within a build system.  I must admit though the
gclient DEPS download scheme is efficient.  I initially looked at parsing
out the DEPs file into a large SRC_URI list, but quickly hit Yocto
serializing them.  Perhaps OE could benefit from tighter integration with
gn.

I'm open to any other alternative approaches.


Cheers,
Joel

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

--0000000000003a5aaa05a24142f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Konrad,</div><div><br></div><div>Thanks, that help=
s a lot.=C2=A0 It works!=C2=A0 I used straight split() which prevented the =
first value from being null.<br></div><div><br></div><div>Yes, I agree less=
 pythonic :)=C2=A0 The only recipe I&#39;ve seen building gn based projects=
 is OSSystem&#39;s meta-browser/chromium.=C2=A0 I followed it&#39;s pattern=
, as the Flutter Engine is a derivative of Chrome.<br></div><div><br></div>=
<div>The issue with these large gn based projects is that they&#39;re self =
contained builds.=C2=A0 A build system within a build system.=C2=A0 I must =
admit though the gclient DEPS download scheme is efficient.=C2=A0 I initial=
ly looked at parsing out the DEPs file into a large SRC_URI list, but quick=
ly hit Yocto serializing them.=C2=A0 Perhaps OE could benefit from tighter =
integration with gn.<br></div><div></div><div></div><div><br></div><div>I&#=
39;m open to any other alternative approaches.</div><div><br></div><div><br=
></div><div>Cheers,</div><div>Joel<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 1, 2020 at 1:09 PM =
Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">kweihmann@outl=
ook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">

  
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
    <p>Best</p>
    <p>Konrad<br>
    </p>
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
  </div>

</blockquote></div>

--0000000000003a5aaa05a24142f9--
