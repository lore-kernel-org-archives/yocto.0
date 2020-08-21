Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.128674.1597995822937426469
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 00:43:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uR/q16Sl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF8CE0205F; Fri, 21 Aug 2020 00:43:42 -0700 (PDT)
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
	*      (jeanmarie.lemetayer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A96E0205C
	for <yocto@yoctoproject.org>; Fri, 21 Aug 2020 00:43:39 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id x69so672330qkb.1
        for <yocto@yoctoproject.org>; Fri, 21 Aug 2020 00:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+oR8Lk9IAJF4aTWaMr1FMYFU5FxWU7pu5rpxP/X1dRs=;
        b=uR/q16SlwsgGrq4pxeHhr2uOcb2iFn6NicW+rVIv9ynskl7TkyBUJi8ibIrnteBs8y
         kQioB26fVQynFjVgWqmSFl9ALuvNYphx6Rj57T0kR8RSaZjRNLy3KrgDy7yFSaOB702u
         iUgRDVJDVoVw68sO1bJTOyeZbUK4Cw3Otx7wmr6Jg2ML5eeeX+OTtI6zReXjdtddDnNG
         3TCutTmQGDlsfGN61bC5hjTbcSeNqvx3VstBnp9y4TEI36FAY1MsIN39OfcRikZ/wRac
         qdk3oPUOoBOrXh1RFDE2g+hci+cR7Pa7fDxts/IBD0edl05ppPf1WAlYsqi9wIltnHdv
         eUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+oR8Lk9IAJF4aTWaMr1FMYFU5FxWU7pu5rpxP/X1dRs=;
        b=VoEIWfmz9wvrstklzET9L38tpIVeZA/wlJJYk9X/w3EgqyjiZU5qurm+vX4dZNbV8+
         17kiHawJEBv/y6dpZtIcow33PxdoWSnsZ2Bk7FGsS0OThrHwikhtLQlUVx77+WFGGWuW
         bym9duzXD9Jxx2SYDzcB5Wii4XY1//2/yBUTKmBb2yGQcSKB5JZgEXgWwy43FYf2fojy
         IZkplMWUelwxxt+R7dqN1S5mPmTHkKxUhr2v2t1MDupl+JN6ZZQFkqLUWhPWEgMioYeA
         ZHhhUhUuXE9MBZtcCkhNZ+u5pvCs/N3aBES0avMgv9gObQjN3VNs5LwdWFI5baJHWozw
         HRaQ==
X-Gm-Message-State: AOAM532m/qXd8bN37vNlA+59QdYKqUeuSjQTIf8eaBom6NZp/ZqfBQZD
	J0RJ4XF5/jIMOKuxVFcp4NFCAgJWyE2rkA3DYfM82DBBVBc=
X-Google-Smtp-Source: ABdhPJzTQzP7cce588NgepEwpOA/E/u1WwLaFzoMIrbDGHifmzPd0zRuSG1I96dhbSYUCoJ079MFi07F6mpFDn+vbt8=
X-Received: by 2002:a37:c15:: with SMTP id 21mr1634952qkm.422.1597995818565;
 Fri, 21 Aug 2020 00:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <PR2PR08MB4651751C97231D143FE488478B5A0@PR2PR08MB4651.eurprd08.prod.outlook.com>
 <4a62dd9e-2d87-1f32-05cd-292e89eb3e5b@windriver.com>
In-Reply-To: <4a62dd9e-2d87-1f32-05cd-292e89eb3e5b@windriver.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Fri, 21 Aug 2020 09:43:26 +0200
Message-ID: <CAAdc0hw=8z0_76_u_9G5+qWiRXR-7=hzdy_1C8pG+i1yjuD+fQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-builds] npmsw fetcher error : npm-shrinkwrap.json' has invalid parameters. Unsupported dependency: arr-flatten
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001e441405ad5e65fc"

--0000000000001e441405ad5e65fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jose and Randy,

Here is a quick and unverified response on my phone.

It seems that your shrinkwrap has no "resolved" fields nor "integrity"
fields. See https://docs.npmjs.com/files/package-lock.json

Try re-generate one manually.

Best regards,
Jean-Marie

Le jeu. 20 ao=C3=BBt 2020 22:53, Randy MacLeod <randy.macleod@windriver.co=
m> a
=C3=A9crit :

> Hi Jose,
>
> On 2020-08-20 5:33 a.m., Cardenas Jose Antonio (JCARDENA) wrote:
>
> Hi all,
>
>
>
> I=E2=80=99m trying to fech packages and dependencies from a nmp-shrinkwr=
ap.json
> file but I get next error:
>
>
>
>                 *npm-shrinkwrap.json' has invalid parameters. Unsupporte=
d
> dependency: arr-flatten*
>
> I don't know but you'll get more people on the main yocto list so I've
> replied there.
>
> People often mistakenly use yocto-builds so we're going to drop that lis=
t
> at some point.
>
> ../Randy
>
>
>
>
> The fragment of shrinkwrap file is
>
>
>
>
>
> {
>
>   "name": "Gateway_node_webserver",
>
>   "version": "2.5.0",
>
>   "lockfileVersion": 1,
>
>   "requires": true,
>
>   "dependencies": {
>
>     "chokidar": {
>
>       "version": "1.0.6",
>
>       "requires": {
>
>         "anymatch": "1.3.2",
>
>         "arrify": "1.0.1",
>
>         "async-each": "0.1.6",
>
>         "glob-parent": "1.3.0",
>
>         "is-binary-path": "1.0.1",
>
>         "is-glob": "1.1.3",
>
>         "path-is-absolute": "1.0.1",
>
>         "readdirp": "1.4.0"
>
>       },
>
>       "dependencies": {
>
>         "anymatch": {
>
>           "version": "1.3.2",
>
>           "requires": {
>
>             "micromatch": "2.3.11",
>
>             "normalize-path": "2.1.1"
>
>           },
>
>           "dependencies": {
>
>             "micromatch": {
>
>               "version": "2.3.11",
>
>               "requires": {
>
>                 "arr-diff": "2.0.0",
>
>                 "array-unique": "0.2.1",
>
>                 "braces": "1.8.5",
>
>                 "expand-brackets": "0.1.5",
>
>                 "extglob": "0.3.2",
>
>                 "filename-regex": "2.0.1",
>
>                 "is-extglob": "1.0.0",
>
>                 "is-glob": "2.0.1",
>
>                 "kind-of": "3.2.2",
>
>                 "normalize-path": "2.1.1",
>
>                 "object.omit": "2.0.1",
>
>                 "parse-glob": "3.0.4",
>
>                 "regex-cache": "0.4.4"
>
>               },
>
>               "dependencies": {
>
>                 "arr-diff": {
>
>                   "version": "2.0.0",
>
>                   "requires": {
>
>                     "arr-flatten": "1.1.0"
>
>                   },
>
>                   "dependencies": {
>
>                     "arr-flatten": {
>
>                       "version": "1.1.0"
>
>                     }
>
>                   }
>
>                 },
>
>                 "array-unique": {
>
>                   "version": "0.2.1"
>
>                 },
>
>
>
>
>
> The recipe SRC_URI is :
>
>
>
> SRC_URI =3D " \
>
>            npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \
>
>            "
>
>
>
> Any idea why is failing the fetch?
>
>
>
> Regards.
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>
>=20
>

--0000000000001e441405ad5e65fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Jose and Randy,<div dir=3D"auto"><br></div><div dir=3D=
"auto">Here is a quick and unverified response on my phone.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">It seems that your shrinkwrap has no=
 &quot;resolved&quot; fields nor &quot;integrity&quot; fields. See=C2=A0<a =
href=3D"https://docs.npmjs.com/files/package-lock.json">https://docs.npmjs.=
com/files/package-lock.json</a></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Try re-generate one manually.</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Best regards,</div><div dir=3D"auto">Jean-Marie</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le je=
u. 20 ao=C3=BBt 2020 22:53, Randy MacLeod &lt;<a href=3D"mailto:randy.macle=
od@windriver.com">randy.macleod@windriver.com</a>&gt; a =C3=A9crit=C2=A0:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
  
    
  
  <div>
    <div>Hi Jose,</div>
    <div><br>
    </div>
    <div>On 2020-08-20 5:33 a.m., Cardenas Jose
      Antonio (JCARDENA) wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      
      
      <div>
        <p class=3D"MsoNormal">Hi all, <u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m trying to =
fech
            packages and dependencies from a nmp-shrinkwrap.json file
            but I get next error:
            <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b>n=
pm-shrinkwrap.json&#39;
              has invalid parameters. Unsupported dependency:
              arr-flatten</b></span></p>
      </div>
    </blockquote>
    I don&#39;t know but you&#39;ll get more people on the main yocto list=
 so
    I&#39;ve replied there.
    <p>People often mistakenly use yocto-builds so we&#39;re going to drop
      that list at some point.</p>
    <p>../Randy</p>
    <p><b><br>
      </b></p>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><b><u></u><u></u></b><=
/span></p>
        <p class=3D"MsoNormal"><b><span lang=3D"EN-US"><u></u>=C2=A0<u></u=
></span></b></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The fragment of
            shrinkwrap file is <u></u><u></u></span></p>
        <div style=3D"border:none;border-bottom:solid windowtext 1.0pt;pad=
ding:0cm 0cm 1.0pt 0cm">
          <p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span l=
ang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">{<u></u><u></u></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 &quot;name&quot=
;:
            &quot;Gateway_node_webserver&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 &quot;version&q=
uot;: &quot;2.5.0&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 &quot;lockfileV=
ersion&quot;: 1,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 &quot;requires&=
quot;: true,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 &quot;dependenc=
ies&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 &qu=
ot;chokidar&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;version&quot;:
            &quot;1.0.6&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;requires&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;anymatch&quot;:
            &quot;1.3.2&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;arrify&quot;:
            &quot;1.0.1&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;async-each&quot;:
            &quot;0.1.6&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;glob-parent&quot;:
            &quot;1.3.0&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
            &quot;is-binary-path&quot;: &quot;1.0.1&quot;,<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;is-glob&quot;:
            &quot;1.1.3&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
            &quot;path-is-absolute&quot;: &quot;1.0.1&quot;,<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;readdirp&quot;:
            &quot;1.4.0&quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 },<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;dependencies&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0&quot;anymatch&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;version&quot;:
            &quot;1.3.2&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;requires&quot;: {<u></u><u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;micromatch&quot;: &quot;2.3.11&quot;,<u></u><u></u></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;normalize-path&quot;: &quot;2.1.1&quot;<u></u><u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;dependencies&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;micromatch&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;version&qu=
ot;:
            &quot;2.3.11&quot;,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;requires&quot;=
: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;arr-diff&quot;: &quot;2.0.0&quot;,<u></u><u></u></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;array-unique&quot;: &quot;0.2.1&quot;,<u></u><u></u></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;braces&quot;: &quot;1.8.5&quot;,<u></u><u></u></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;expand-brackets&quot;: &quot;0.1.5&quot;,<u></u><u></u><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;extglob&quot;: &quot;0.3.2&quot;,<u></u><u></u></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;filename-regex&quot;: &quot;2.0.1&quot;,<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;is-extglob&quot;: &quot;1.0.0&quot;,<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;is-glob&quot;: &quot;2.0.1&quot;,<u></u><u></u></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;kind-of&quot;: &quot;3.2.2&quot;,<u></u><u></u></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;normalize-path&quot;: &quot;2.1.1&quot;,<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;object.omit&quot;: &quot;2.0.1&quot;,<u></u><u></u></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;parse-glob&quot;: &quot;3.0.4&quot;,<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;regex-cache&quot;: &quot;0.4.4&quot;<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;dependencies&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;arr-diff&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
            &quot;version&quot;: &quot;2.0.0&quot;,<u></u><u></u></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
            &quot;requires&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
            &quot;arr-flatten&quot;: &quot;1.1.0&quot;<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0},<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
            &quot;dependencies&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
            &quot;arr-flatten&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;version&quot;: &quot;1.1.0&quot;<u></u><u></u></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 }<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 }<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },<u=
></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            &quot;array-unique&quot;: {<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
            &quot;version&quot;: &quot;0.2.1&quot;<u></u><u></u></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },<u=
></u><u></u></span></p>
        <div style=3D"border:none;border-bottom:solid windowtext 1.0pt;pad=
ding:0cm 0cm 1.0pt 0cm">
          <p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span l=
ang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The recipe SRC_URI is =
:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">SRC_URI =3D &quot; \<u=
></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            npmsw://${THISDIR}/${PN}/npm-shrinkwrap.json \<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Any idea why is failin=
g
            the fetch? <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards. <u></u><u></u=
></span></p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </div>

<br>
</blockquote></div>

--0000000000001e441405ad5e65fc--
