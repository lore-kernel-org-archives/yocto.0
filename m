Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5664.1575379849129889508
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 05:30:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=WyO4IctE;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B93BFE01089; Tue,  3 Dec 2019 05:30:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC0CE0107F
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 05:30:45 -0800 (PST)
Received: from [10.0.3.99] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id ZRWj2101d1F741R01RWkFC; Tue, 03 Dec 2019 14:30:44 +0100
Subject: Re: [yocto] Adding libstdc++-dev path?
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
 <CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=RoaW7MX7jrvg@mail.gmail.com>
 <ee49c8df-9035-d7ca-3f65-a911e7f938f0@faresoftware.it>
 <CAAx3WaDfdnUBpVRZjhhB1X90LCYDPEYD3+_HA80HXGe7UuPQLg@mail.gmail.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <67f41959-42bc-07ac-172d-d76d6649d754@faresoftware.it>
Date: Tue, 3 Dec 2019 14:30:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAAx3WaDfdnUBpVRZjhhB1X90LCYDPEYD3+_HA80HXGe7UuPQLg@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1575379844; bh=qGinsEQJXI0R6f3Qo6O8mkZgeb1CeT+XU1j1FGntMxs=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=WyO4IctE0MNGNmnXyOOg+O0Xg9NBm2TkmUKhJf5TN4Su5bDCtkU0AfoIVzGxbjzo1
	 yb44dCLGze/0rZR5td8MosaaZn/5Cm2LiGrikjgAJQY3JVLhOHbifBo06Tk+Rgy5Jr
	 eQpvN/wzRrUe0ky7JG0xhwYLBq8IVBiwzdFbqRzTu6NHhZUtjoXOwRRdqpIkdcLXXP
	 Ht8tgRHw2NKmj/dNjxolvX2gxau3M2W+Vc2eNRXeH/hrz5iksZCbf01yu2lvKLWQtO
	 fLhbYxZoGkjpAbyynnpyGMxmX7GJOBfSWe7adFU/gm0z7q5X35uVdPWzGYqJRFoOIz
	 YdGGnjY1eDFQQ==
Content-Type: multipart/alternative;
 boundary="------------21F129E814B9722A6604C99B"
Content-Language: it

--------------21F129E814B9722A6604C99B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Sorry. I sleep over the keyboard.

The solution is adding manually the location of /usr/include/c++/5.3.0=20
/usr/include/c++/5.3.0/arm-poky-linux-gnueabi where library foldes.


Your recipe is usefull to test my problem


Thans.

M

Il 03/12/19 13:59, Gabriele Zampieri ha scritto:
> Forget about the DEPENDS, I used that in another scenario.
> I tried the following recipe:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI =3D "file://main.cpp"
> do_compile() {
> =C2=A0=C2=A0=C2=A0 # For example purpose use only
> =C2=A0 =C2=A0 ${CXX} ${CXXFLAGS} ${WORKDIR}/main.cpp -o ${B}/${PN}
> }
>
> With a simple main:
>
> #include <iostream>
> #include <cstdio>
> int main(void) {
> =C2=A0 =C2=A0 printf("Hello from %s\n", __func__);
> =C2=A0 =C2=A0 return 0;
> }
>
> And it get built just fine (`bitbake libstdtest`)
>
> Gabriele
>
> On Tue, Dec 3, 2019 at 12:23 PM Mauro Ziliani <mauro@faresoftware.it=20
> <mailto:mauro@faresoftware.it>> wrote:
>
>     I try,
>
>     But libstdc++-dev is procudes by gcc-runtime recipe.
>
>     I try to put gcc-runtime in DEPENDS e RDEPENDS_${PN} but this doesn=
't.
>
>     Finally I put manually the -I${STAGING_INCDIR}/c++/5.3.0
>     -I${STAGING_INCDIR}/c++/5.3.0/${CC_PREFIX} in the Makefile.
>
>     CC_PREFIX=3Darm-poky-linux-gnueabi
>
>     Il 03/12/19 11:55, Gabriele Zampieri ha scritto:
>>     Hi,
>>
>>     have you tried adding libstdc++-dev to the recipe dependencies?
>>
>>     DEPENDS +=3D " libstdc++-dev"
>>
>>     This will bring libstdc++ package into recipe sysroot and no
>>     extra actions will be needed on compilation flags.
>>
>>     Regards,
>>     Gabriele
>>
>>     On Tue, Dec 3, 2019 at 11:44 AM Mauro Ziliani
>>     <mauro@faresoftware.it <mailto:mauro@faresoftware.it>> wrote:
>>
>>         Hi all
>>
>>         I'm trying to compile a library which need cstdio.
>>
>>         The file is in ${STAGING_INCDIR}/c++/5.3.0 and in
>>         ${STAGING_INCDIR}/c++/5.3.0/tr1
>>
>>         I think I need to "include" in my recipe all libstdc++dev pack=
age
>>
>>         Looking on ${CXX} -v I get
>>         --with-gxx-include-dir=3D/not/exist/usr/include/c++/5.3.0
>>
>>
>>         How can I use stdc by recipe?
>>
>>
>>         Mauro
>>
>>         -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>         Links: You receive all messages sent to this group.
>>
>>         View/Reply Online (#47516):
>>         https://lists.yoctoproject.org/g/yocto/message/47516
>>         Mute This Topic:
>>         https://lists.yoctoproject.org/mt/65707284/3618237
>>         Group Owner: yocto+owner@lists.yoctoproject.org
>>         <mailto:yocto%2Bowner@lists.yoctoproject.org>
>>         Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>>         [gabbla.malist@gmail.com <mailto:gabbla.malist@gmail.com>]
>>         -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

--------------21F129E814B9722A6604C99B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">Sorry. I sleep over the keyboard.</font></p>
    <p><font size=3D"-1">The solution is adding manually the location of
        /usr/include/c++/5.3.0
        /usr/include/c++/5.3.0/arm-poky-linux-gnueabi where library
        foldes.</font></p>
    <p><br>
    </p>
    <p><font size=3D"-1">Your recipe is usefull to test my problem</font>=
</p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">Thans.</font></p>
    <p><font size=3D"-1">M</font><br>
    </p>
    <div class=3D"moz-cite-prefix">Il 03/12/19 13:59, Gabriele Zampieri h=
a
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAx3WaDfdnUBpVRZjhhB1X90LCYDPEYD3+_HA80HXGe7UuPQLg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Forget about the DEPENDS, I used that in another scenario.</=
div>
        <div>I tried the following recipe:</div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div style=3D"margin-left:40px">FILESEXTRAPATHS_prepend :=3D
          "${THISDIR}/files:"<br>
          SRC_URI =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://m=
ain.cpp">"file://main.cpp"</a><br>
          do_compile() {</div>
        <div style=3D"margin-left:40px">=C2=A0=C2=A0=C2=A0 # For example =
purpose use only<br>
        </div>
        <div style=3D"margin-left:40px">=C2=A0 =C2=A0 ${CXX} ${CXXFLAGS}
          ${WORKDIR}/main.cpp -o ${B}/${PN}<br>
          }</div>
        <div><br>
        </div>
        <div>With a simple main:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">#include &lt;iostream&gt;<br>
          #include &lt;cstdio&gt;<br>
          int main(void) {<br>
          =C2=A0 =C2=A0 printf("Hello from %s\n", __func__);<br>
          =C2=A0 =C2=A0 return 0;<br>
          }</div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div>And it get built just fine (`bitbake libstdtest`)</div>
        <div><br>
        </div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019 at 12:2=
3
          PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it"
            moz-do-not-send=3D"true">mauro@faresoftware.it</a>&gt; wrote:=
<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p><font size=3D"-1">I try,</font></p>
            <p><font size=3D"-1">But libstdc++-dev is procudes by
                gcc-runtime recipe.</font></p>
            <p><font size=3D"-1">I try to put gcc-runtime in DEPENDS e
                RDEPENDS_${PN} but this doesn't.</font></p>
            <p><font size=3D"-1">Finally I put manually the
                -I${STAGING_INCDIR}/c++/5.3.0 </font><font size=3D"-1">-I=
${STAGING_INCDIR}/c++/5.3.0/${CC_PREFIX}
                in the Makefile.</font></p>
            <p><font size=3D"-1">CC_PREFIX=3Darm-poky-linux-gnueabi<br>
              </font></p>
            <div>Il 03/12/19 11:55, Gabriele Zampieri ha scritto:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi, <br>
                </div>
                <div><br>
                </div>
                <div>have you tried adding libstdc++-dev to the recipe
                  dependencies?</div>
                <div><br>
                </div>
                <div>DEPENDS +=3D " libstdc++-dev"</div>
                <div><br>
                </div>
                <div>This will bring libstdc++ package into recipe
                  sysroot and no extra actions will be needed on
                  compilation flags.<br>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019=
 at
                  11:44 AM Mauro Ziliani &lt;<a
                    href=3D"mailto:mauro@faresoftware.it" target=3D"_blan=
k"
                    moz-do-not-send=3D"true">mauro@faresoftware.it</a>&gt=
;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <p><font size=3D"-1">Hi all</font></p>
                    <p><font size=3D"-1">I'm trying to compile a library
                        which need cstdio.</font></p>
                    <p><font size=3D"-1">The file is in
                        ${STAGING_INCDIR}/c++/5.3.0 and in=C2=A0 </font><=
font
                        size=3D"-1"> ${STAGING_INCDIR}/c++/5.3.0/tr1</fon=
t></p>
                    <p><font size=3D"-1">I think I need to "include" in m=
y
                        recipe all libstdc++dev package</font></p>
                    <p><font size=3D"-1">Looking on ${CXX} -v I get
                        --with-gxx-include-dir=3D/not/exist/usr/include/c=
++/5.3.0</font></p>
                    <p><font size=3D"-1"><br>
                      </font></p>
                    <p><font size=3D"-1">How can I use stdc by recipe?</f=
ont></p>
                    <p><font size=3D"-1"><br>
                      </font></p>
                    <p><font size=3D"-1">Mauro<br>
                      </font></p>
                  </div>
                  -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
                  Links: You receive all messages sent to this group.<br>
                  <br>
                  View/Reply Online (#47516): <a
                    href=3D"https://lists.yoctoproject.org/g/yocto/messag=
e/47516"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true">https://lists.yoctoproject.o=
rg/g/yocto/message/47516</a><br>
                  Mute This Topic: <a
                    href=3D"https://lists.yoctoproject.org/mt/65707284/36=
18237"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true">https://lists.yoctoproject.o=
rg/mt/65707284/3618237</a><br>
                  Group Owner: <a
                    href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"
                    target=3D"_blank" moz-do-not-send=3D"true">yocto+owne=
r@lists.yoctoproject.org</a><br>
                  Unsubscribe: <a
                    href=3D"https://lists.yoctoproject.org/g/yocto/unsub"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true">https://lists.yoctoproject.o=
rg/g/yocto/unsub</a>=C2=A0
                  [<a href=3D"mailto:gabbla.malist@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">gabbla.mal=
ist@gmail.com</a>]<br>
                  -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------21F129E814B9722A6604C99B--
