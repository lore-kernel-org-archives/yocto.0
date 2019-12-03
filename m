Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5340.1575377987024064853
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 04:59:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gzahTANT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEA6EE01081; Tue,  3 Dec 2019 04:59:46 -0800 (PST)
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
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EAB0E00E8D
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 04:59:44 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id c19so3646130lji.11
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 04:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QMYLq1XHcJ9ecybAPMgjPVD4UdoTBRlJ17PxHAktPiY=;
        b=gzahTANT/zw3B06abIQZQ2EZCljkMBc+5mvk1vBsxu+CWVl3sTIy4aKPm9ioNbKjsG
         imnRQzhutsB/yn3sPa653IA9AyXFP1b3cLnik6c2owN1fsQ04IXGVe2q9wxALcUNqqM4
         fa4dwHsfqNEEvAenlqEgy2sNShIODXZNvCY1NBv+BFoswuXGxph4MAqPj3Jm1UCGB1if
         GORx7QX3sPJmFmt5JX99eJq416y7RdxLwdNNpxzEjr4qxvjXfE28PLMw1k0EjTz0aYzw
         A/B5sYQb7QlVkMQW2b7UiISi57iVUhr3d/moKa2qzR8O0p/hhrNiCZ7cPt/Ue0Qj1han
         80Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QMYLq1XHcJ9ecybAPMgjPVD4UdoTBRlJ17PxHAktPiY=;
        b=RWkLzwVkfTG84hsrdkd91lCwImSWOIC1UYrbDXTDkXFxDV/5NKApZzYubJXJ8r+oNT
         4GBKJ5wedsdU8HGVdKrYHCAvjTiq7YmOpQEYyQ0ZpYAv4XHx3T2f/wIoGryFoJ9va/Lq
         JpsrI4sLY2zlvNiqNHb5CnTEh+Ri70WKEZpwhbDtwVlNpa+N5a286PzvLXCe+9qi7UWG
         vrb1ncQX1V6XwOfnFDKLWYfj0vWR80fHIXjQ8OA6L910Ortka23U4xMDIZTwWz3G3HFd
         qWYgmQ3XgqZbgTfyquTL3x6P5oEyCUAOp+Z/YzCt7gr7umcTjpbmxuNEadT1gYVNfOGU
         3U+A==
X-Gm-Message-State: APjAAAVTFD315W0PgOGGp4wHo9waojnJlAAGeMG/TUc/JsxWo4DwVYh/
	DKnVbt8MOEUHVrWbWOYj7cAnLsG/jRj2JvU0pNUw5reC
X-Google-Smtp-Source: APXvYqzaNLHIkWagaAmwq6IYDLOOlIojh4u2p+cSdiM+mxE/QLa83EhfGoToQuOoRiVwufrce07QK5/d/YjQ8xddITU=
X-Received: by 2002:a05:651c:1067:: with SMTP id y7mr2361040ljm.123.1575377983274;
 Tue, 03 Dec 2019 04:59:43 -0800 (PST)
MIME-Version: 1.0
References: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
 <CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=RoaW7MX7jrvg@mail.gmail.com> <ee49c8df-9035-d7ca-3f65-a911e7f938f0@faresoftware.it>
In-Reply-To: <ee49c8df-9035-d7ca-3f65-a911e7f938f0@faresoftware.it>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Tue, 3 Dec 2019 13:59:32 +0100
Message-ID: <CAAx3WaDfdnUBpVRZjhhB1X90LCYDPEYD3+_HA80HXGe7UuPQLg@mail.gmail.com>
Subject: Re: [yocto] Adding libstdc++-dev path?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000014832a0598cc450d"

--00000000000014832a0598cc450d
Content-Type: text/plain; charset="UTF-8"

Forget about the DEPENDS, I used that in another scenario.
I tried the following recipe:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI = "file://main.cpp"
do_compile() {
    # For example purpose use only
    ${CXX} ${CXXFLAGS} ${WORKDIR}/main.cpp -o ${B}/${PN}
}

With a simple main:

#include <iostream>
#include <cstdio>
int main(void) {
    printf("Hello from %s\n", __func__);
    return 0;
}

And it get built just fine (`bitbake libstdtest`)

Gabriele

On Tue, Dec 3, 2019 at 12:23 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> I try,
>
> But libstdc++-dev is procudes by gcc-runtime recipe.
>
> I try to put gcc-runtime in DEPENDS e RDEPENDS_${PN} but this doesn't.
>
> Finally I put manually the -I${STAGING_INCDIR}/c++/5.3.0 -I${STAGING_INCDIR}/c++/5.3.0/${CC_PREFIX}
> in the Makefile.
>
> CC_PREFIX=arm-poky-linux-gnueabi
> Il 03/12/19 11:55, Gabriele Zampieri ha scritto:
>
> Hi,
>
> have you tried adding libstdc++-dev to the recipe dependencies?
>
> DEPENDS += " libstdc++-dev"
>
> This will bring libstdc++ package into recipe sysroot and no extra actions
> will be needed on compilation flags.
>
> Regards,
> Gabriele
>
> On Tue, Dec 3, 2019 at 11:44 AM Mauro Ziliani <mauro@faresoftware.it>
> wrote:
>
>> Hi all
>>
>> I'm trying to compile a library which need cstdio.
>>
>> The file is in ${STAGING_INCDIR}/c++/5.3.0 and in
>> ${STAGING_INCDIR}/c++/5.3.0/tr1
>>
>> I think I need to "include" in my recipe all libstdc++dev package
>>
>> Looking on ${CXX} -v I get
>> --with-gxx-include-dir=/not/exist/usr/include/c++/5.3.0
>>
>>
>> How can I use stdc by recipe?
>>
>>
>> Mauro
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47516):
>> https://lists.yoctoproject.org/g/yocto/message/47516
>> Mute This Topic: https://lists.yoctoproject.org/mt/65707284/3618237
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
>> gabbla.malist@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>

--00000000000014832a0598cc450d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Forget about the DEPENDS, I used that in another scen=
ario.</div><div>I tried the following recipe:</div><div style=3D"margin-lef=
t:40px"><br></div><div style=3D"margin-left:40px">FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/files:&quot;<br>SRC_URI =3D &quot;file://main.cpp&quot=
;<br>do_compile() {</div><div style=3D"margin-left:40px">=C2=A0=C2=A0=C2=A0=
 # For example purpose use only<br></div><div style=3D"margin-left:40px">=
=C2=A0 =C2=A0 ${CXX} ${CXXFLAGS} ${WORKDIR}/main.cpp -o ${B}/${PN}<br>}</di=
v><div><br></div><div>With a simple main:</div><div><br></div><div style=3D=
"margin-left:40px">#include &lt;iostream&gt;<br>#include &lt;cstdio&gt;<br>=
int main(void) {<br>=C2=A0 =C2=A0 printf(&quot;Hello from %s\n&quot;, __fun=
c__);<br>=C2=A0 =C2=A0 return 0;<br>}</div><div style=3D"margin-left:40px">=
<br></div><div>And it get built just fine (`bitbake libstdtest`)</div><div>=
<br></div><div>Gabriele<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019 at 12:23 PM Mauro Zili=
ani &lt;<a href=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">I try,</font></p>
    <p><font size=3D"-1">But libstdc++-dev is procudes by gcc-runtime
        recipe.</font></p>
    <p><font size=3D"-1">I try to put gcc-runtime in DEPENDS e
        RDEPENDS_${PN} but this doesn&#39;t.</font></p>
    <p><font size=3D"-1">Finally I put manually the
        -I${STAGING_INCDIR}/c++/5.3.0 </font><font size=3D"-1">-I${STAGING_=
INCDIR}/c++/5.3.0/${CC_PREFIX}
        in the Makefile.</font></p>
    <p><font size=3D"-1">CC_PREFIX=3Darm-poky-linux-gnueabi<br>
      </font></p>
    <div>Il 03/12/19 11:55, Gabriele Zampieri ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi, <br>
        </div>
        <div><br>
        </div>
        <div>have you tried adding libstdc++-dev to the recipe
          dependencies?</div>
        <div><br>
        </div>
        <div>DEPENDS +=3D &quot; libstdc++-dev&quot;</div>
        <div><br>
        </div>
        <div>This will bring libstdc++ package into recipe sysroot and
          no extra actions will be needed on compilation flags.<br>
        </div>
        <div><br>
        </div>
        <div>Regards, <br>
        </div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019 at 11:44
          AM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it" tar=
get=3D"_blank">mauro@faresoftware.it</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p><font size=3D"-1">Hi all</font></p>
            <p><font size=3D"-1">I&#39;m trying to compile a library which
                need cstdio.</font></p>
            <p><font size=3D"-1">The file is in
                ${STAGING_INCDIR}/c++/5.3.0 and in=C2=A0 </font><font size=
=3D"-1"> ${STAGING_INCDIR}/c++/5.3.0/tr1</font></p>
            <p><font size=3D"-1">I think I need to &quot;include&quot; in m=
y recipe
                all libstdc++dev package</font></p>
            <p><font size=3D"-1">Looking on ${CXX} -v I get
                --with-gxx-include-dir=3D/not/exist/usr/include/c++/5.3.0</=
font></p>
            <p><font size=3D"-1"><br>
              </font></p>
            <p><font size=3D"-1">How can I use stdc by recipe?</font></p>
            <p><font size=3D"-1"><br>
              </font></p>
            <p><font size=3D"-1">Mauro<br>
              </font></p>
          </div>
          -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
          Links: You receive all messages sent to this group.<br>
          <br>
          View/Reply Online (#47516): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/47516" rel=3D"noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/message/47516</a><br>
          Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/657=
07284/3618237" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/65707284/3618237</a><br>
          Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
          Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a>=C2=A0
          [<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gab=
bla.malist@gmail.com</a>]<br>
          -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>

--00000000000014832a0598cc450d--
