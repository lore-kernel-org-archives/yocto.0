Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4306.1575372225780074688
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 03:23:46 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=fn7Pzc5K;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E50CE01088; Tue,  3 Dec 2019 03:23:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E5DCE00E28
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 03:23:42 -0800 (PST)
Received: from [10.0.3.99] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id ZPPh2100F1F741R01PPhMt; Tue, 03 Dec 2019 12:23:41 +0100
Subject: Re: [yocto] Adding libstdc++-dev path?
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
 <CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=RoaW7MX7jrvg@mail.gmail.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <ee49c8df-9035-d7ca-3f65-a911e7f938f0@faresoftware.it>
Date: Tue, 3 Dec 2019 12:23:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=RoaW7MX7jrvg@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1575372221; bh=5lyr9bCk/cTWd+kIbn1PrydyvSvsU4Tf0Pqola49GZA=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=fn7Pzc5KpJTn5kQcSZ99/pVAU0H3fUs9W5O7dSaYl2I8BAqUkdX6EB22cPe9D2hrp
	 FcOq37/CxPkU4b9A69JClgEGAcfOTvDHZAOsVToqVVAgOMZMEmNR8NcXPBYqPFtGOf
	 NkGOvE4hpmTtbfvUdzxhfY/A66H0OSzQJwmoFk+uJtFcd5XPpvMEPbTLUJ1Tg2lz04
	 ZocGcQNTJaks2OuvaUWntvKCMxfKB3KxuuJFciles+nvui49EFKX8cDz7GK7ccw+xO
	 +OBSaC5ise5uFJv3uR67zLzCq1Lp+kSiAzOgzKErqOC5rxfuiiZc/cTxIS5HryirKg
	 APnH7HZAOUwEQ==
Content-Type: multipart/alternative;
 boundary="------------BB6F1AEC412E9C3E93432B8F"
Content-Language: it

--------------BB6F1AEC412E9C3E93432B8F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I try,

But libstdc++-dev is procudes by gcc-runtime recipe.

I try to put gcc-runtime in DEPENDS e RDEPENDS_${PN} but this doesn't.

Finally I put manually the -I${STAGING_INCDIR}/c++/5.3.0 
-I${STAGING_INCDIR}/c++/5.3.0/${CC_PREFIX} in the Makefile.

CC_PREFIX=arm-poky-linux-gnueabi

Il 03/12/19 11:55, Gabriele Zampieri ha scritto:
> Hi,
>
> have you tried adding libstdc++-dev to the recipe dependencies?
>
> DEPENDS += " libstdc++-dev"
>
> This will bring libstdc++ package into recipe sysroot and no extra 
> actions will be needed on compilation flags.
>
> Regards,
> Gabriele
>
> On Tue, Dec 3, 2019 at 11:44 AM Mauro Ziliani <mauro@faresoftware.it 
> <mailto:mauro@faresoftware.it>> wrote:
>
>     Hi all
>
>     I'm trying to compile a library which need cstdio.
>
>     The file is in ${STAGING_INCDIR}/c++/5.3.0 and in
>     ${STAGING_INCDIR}/c++/5.3.0/tr1
>
>     I think I need to "include" in my recipe all libstdc++dev package
>
>     Looking on ${CXX} -v I get
>     --with-gxx-include-dir=/not/exist/usr/include/c++/5.3.0
>
>
>     How can I use stdc by recipe?
>
>
>     Mauro
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>
>     View/Reply Online (#47516):
>     https://lists.yoctoproject.org/g/yocto/message/47516
>     Mute This Topic: https://lists.yoctoproject.org/mt/65707284/3618237
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [gabbla.malist@gmail.com <mailto:gabbla.malist@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
>

--------------BB6F1AEC412E9C3E93432B8F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">I try,</font></p>
    <p><font size=3D"-1">But libstdc++-dev is procudes by gcc-runtime
        recipe.</font></p>
    <p><font size=3D"-1">I try to put gcc-runtime in DEPENDS e
        RDEPENDS_${PN} but this doesn't.</font></p>
    <p><font size=3D"-1">Finally I put manually the
        -I${STAGING_INCDIR}/c++/5.3.0 </font><font size=3D"-1">-I${STAGIN=
G_INCDIR}/c++/5.3.0/${CC_PREFIX}
        in the Makefile.</font></p>
    <p><font size=3D"-1">CC_PREFIX=3Darm-poky-linux-gnueabi<br>
      </font></p>
    <div class=3D"moz-cite-prefix">Il 03/12/19 11:55, Gabriele Zampieri h=
a
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=3DRoaW7MX7jrvg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019 at 11:4=
4
          AM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it"
            moz-do-not-send=3D"true">mauro@faresoftware.it</a>&gt; wrote:=
<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <p><font size=3D"-1">Hi all</font></p>
            <p><font size=3D"-1">I'm trying to compile a library which
                need cstdio.</font></p>
            <p><font size=3D"-1">The file is in
                ${STAGING_INCDIR}/c++/5.3.0 and in=C2=A0 </font><font
                size=3D"-1"> ${STAGING_INCDIR}/c++/5.3.0/tr1</font></p>
            <p><font size=3D"-1">I think I need to "include" in my recipe
                all libstdc++dev package</font></p>
            <p><font size=3D"-1">Looking on ${CXX} -v I get
                --with-gxx-include-dir=3D/not/exist/usr/include/c++/5.3.0=
</font></p>
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
          View/Reply Online (#47516): <a
            href=3D"https://lists.yoctoproject.org/g/yocto/message/47516"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/message/47516</a><br>
          Mute This Topic: <a
            href=3D"https://lists.yoctoproject.org/mt/65707284/3618237"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/mt/65707284/3618237</a><br>
          Group Owner: <a
            href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"
            target=3D"_blank" moz-do-not-send=3D"true">yocto+owner@lists.=
yoctoproject.org</a><br>
          Unsubscribe: <a
            href=3D"https://lists.yoctoproject.org/g/yocto/unsub"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/unsub</a>=C2=A0
          [<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true">gabbla.malist@gmail.com</a>]<br>
          -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------BB6F1AEC412E9C3E93432B8F--
