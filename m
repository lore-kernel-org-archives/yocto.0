Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15859.1581451861919115427
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 12:11:02 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=D9EYuSww;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6346BE01723; Tue, 11 Feb 2020 12:11:01 -0800 (PST)
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
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC718E016D6
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 12:10:59 -0800 (PST)
Received: by mail-pg1-f181.google.com with SMTP id 70so4186144pgf.8
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 12:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=ZeEQQbYg+5dQ6wW8ZHEA41GEq33S48dnrwp62U0NaZg=;
        b=D9EYuSwwLxVIJsiNQzR7cbu6eHisp9WqNkivYsaASxv5Y6nt3VSSWc66l3sdXz+5B0
         lwJo9PHDTEqCMXmm46ff9uHq11cAIJeOha7e2L671QQGxMpZxKuXoMIUc51BTKVo5RpD
         FY8n/gwkr7dH5cxAoyA0vXZJ4c3+OXLiaG6MPVqVqqTwanaaoGBAFSzIHOZ7YlHLoaM0
         mhSLXIwnEnT5pTDzzoApx1TiHPHl/guaCc68sf/UcmetXaNvs2M6GC6/7aVx5AsWDDAO
         VblIhZx7NtfTaNy77dbcD/CJg0Zd6j1x1IDDFt4c6E06vpUyFGDzfly6N6v8VqPRQtRQ
         5/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=ZeEQQbYg+5dQ6wW8ZHEA41GEq33S48dnrwp62U0NaZg=;
        b=cuvxttLW3U0QncqgqxIXe8VxfGAULbAeO4avOiv7q4LCQui/eMUBvXP/57QVcKH5V8
         E3qdlaZ4ODBESqqql4godzGa6vwa++cdyQkU+grXLkLa5qrGaw1MeF+pxyL6tpxlFrlg
         5+e65Dg2fifW+RBAi6uHMbhgj9Y1+ru5pOOx8ZQWM79dxTF00utpDtW5mJU6pOX2OJ1m
         9uQjfHSqUa9KkIVJS3XUNAvCty16NRW9YVwtjgLpLh1nTIXiRTJwznhLZdFmDbhoA02M
         mW3RmYkc3bBA8Tqr6/x2pBgZinq2Bjw5eoXkCbM3Pq7YGIymVcDqLMp/sl+ca9TIjp3w
         9XzQ==
X-Gm-Message-State: APjAAAXMiMRYI6yzRI/aqRx7doinHOhxsZy4TdaspYAjZX/n6Bm+36QA
	gMvoeF/Ivg3T6C3krSSVnDRZ0Sii
X-Google-Smtp-Source: APXvYqzVdd5pZIgRKzyyDV0FYubCOmzZ3T4W56MruuJNVICDtHuXbc/GQICVlNHVJ22GeAiqbNmrDw==
X-Received: by 2002:a63:6d01:: with SMTP id i1mr8395861pgc.55.1581451858862;
        Tue, 11 Feb 2020 12:10:58 -0800 (PST)
Received: from [10.20.245.11] ([45.19.219.178])
        by smtp.gmail.com with ESMTPSA id 70sm5065096pgd.28.2020.02.11.12.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:10:58 -0800 (PST)
Subject: Re: [yocto] [PATCH] overview-manual: chs 1-3, various minor tweaks/cleanups
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.2002111415130.53570@localhost.localdomain>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0b255455-ff99-7853-c43d-561ac6b02ebc@gmail.com>
Date: Tue, 11 Feb 2020 12:10:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002111415130.53570@localhost.localdomain>
Content-Type: multipart/alternative;
 boundary="------------F43CF962B5F472510C7E1B4F"
Content-Language: en-US

--------------F43CF962B5F472510C7E1B4F
Content-Type: text/plain; charset=iso-8859-7
Content-Transfer-Encoding: quoted-printable



On 2/11/20 11:16 AM, rpjday@crashcourse.ca wrote:
> Minor fixes:
>
>   - punctuation
>   - capitalization
>   - markup
>   - wording
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Wrong ML. We have a docs@lists.yoctoproject.org with patchwork support.

- armin
>
> ---
>
> diff --git a/documentation/overview-manual/overview-manual-development-e=
nvironment.xml b/documentation/overview-manual/overview-manual-development-=
environment.xml
> index 2f1bd1610..dd12814fc 100644
> --- a/documentation/overview-manual/overview-manual-development-environm=
ent.xml
> +++ b/documentation/overview-manual/overview-manual-development-environm=
ent.xml
> @@ -69,7 +69,7 @@
>      <title>The Development Host</title>
>
>      <para>
> -        A development host or
> +        A <firstterm>development host</firstterm> or
>          <ulink url=3D'&YOCTO_DOCS_REF_URL;#hardware-build-system-term'>=
build host</ulink>
>          is key to using the Yocto Project.
>          Because the goal of the Yocto Project is to develop images or
> @@ -389,7 +389,7 @@
>          In summary, a single point of entry
>          exists for changes into a "master" or development branch of the
>          Git repository, which is controlled by the project=A2s maintain=
er.
> -        And, a set of developers exist who independently develop, test,=
 and
> +        In addition, a set of developers exist who independently develo=
p, test, and
>          submit changes to "contrib" areas for the maintainer to examine=
.
>          The maintainer then chooses which changes are going to become a
>          permanent part of the project.
> diff --git a/documentation/overview-manual/overview-manual-yp-intro.xml =
b/documentation/overview-manual/overview-manual-yp-intro.xml
> index dbf62cc16..87b7e40b3 100644
> --- a/documentation/overview-manual/overview-manual-yp-intro.xml
> +++ b/documentation/overview-manual/overview-manual-yp-intro.xml
> @@ -89,7 +89,7 @@
>                          Additionally, if you have used the Yocto Projec=
t to
>                          create an image or application and you find you=
rself
>                          not able to support it, commercial Linux vendor=
s such
> -                        as Wind River, Mentor Graphics, Timesys, and EN=
EA could
> +                        as Wind River, Mentor Graphics, Timesys, and En=
ea could
>                          take it and provide ongoing support.
>                          These vendors have offerings that are built usi=
ng
>                          the Yocto Project.
> @@ -127,7 +127,7 @@
>                          not part of a standard toolchain, you can easil=
y
>                          customize that toolchain through specification =
of
>                          platform-specific tuning parameters.
> -                        And, should you need to use a third-party toolc=
hain,
> +                        In addition, should you need to use a third-par=
ty toolchain,
>                          mechanisms built into the Yocto Project allow f=
or that.
>                          </para></listitem>
>                      <listitem><para>
> @@ -273,7 +273,7 @@
>                          <emphasis>Initial Build Times Can be Significan=
t:</emphasis>
>                          Long initial build times are unfortunately unav=
oidable
>                          due to the large number of packages initially b=
uilt
> -                        from scratch for a fully functioning Linux syst=
em.
> +                        from scratch for a fully-functioning Linux syst=
em.
>                          Once that initial build is completed, however, =
the
>                          shared-state (sstate) cache mechanism Yocto Pro=
ject
>                          uses keeps the system from rebuilding packages =
that
> @@ -358,7 +358,7 @@
>              To illustrate how layers are used to keep things modular, c=
onsider
>              machine customizations.
>              These types of customizations typically reside in a special=
 layer,
> -            rather than a general layer, called a BSP Layer.
> +            rather than a general layer, called a <firstterm>BSP layer<=
/firstterm>.
>              Furthermore, the machine customizations should be isolated =
from
>              recipes and Metadata that support a new GUI environment,
>              for example.
> @@ -852,9 +852,9 @@
>          </para>
>
>          <para>
> -            This section provides an introduction to the choices or
> +            This section provides an introduction to the choices of
>              development methods you have when setting up your Build Hos=
t.
> -            Depending on the your particular workflow preference and th=
e
> +            Depending on your particular workflow preference and the
>              type of operating system your Build Host runs, several choi=
ces
>              exist that allow you to use the Yocto Project.
>              <note>
> @@ -1013,7 +1013,7 @@
>          </para>
>
>          <para>
> -            Poky has a regular, well established, six-month release cyc=
le
> +            Poky has a regular, well-established, six-month release cyc=
le
>              under its own version.
>              Major releases occur at the same time major releases (point
>              releases) occur for the Yocto Project, which are typically =
in the
> @@ -1104,7 +1104,7 @@
>                      select (DEB, RPM, or IPK) is used to roll up the so=
ftware.
>                      </para></listitem>
>                  <listitem><para>
> -                    Different QA and sanity checks run throughout entir=
e
> +                    Different QA and sanity checks run throughout the e=
ntire
>                      build process.
>                      </para></listitem>
>                  <listitem><para>
> @@ -1145,7 +1145,7 @@
>                      user-defined variables, and hardware configuration
>                      information.
>                      These files tell the
> -                    <ulink url=3D'&YOCTO_DOCS_REF_URL;#build-system-ter=
m'>Open-Embedded build system</ulink>
> +                    <ulink url=3D'&YOCTO_DOCS_REF_URL;#build-system-ter=
m'>OpenEmbedded build system</ulink>
>                      what to build and what to put into the image to sup=
port a
>                      particular platform.
>                      </para></listitem>
> @@ -1177,7 +1177,7 @@
>                      <para>For more detailed information on layers, see =
the
>                      "<ulink url=3D'&YOCTO_DOCS_DEV_URL;#understanding-a=
nd-creating-layers'>Understanding and Creating Layers</ulink>"
>                      section in the Yocto Project Development Tasks Manu=
al.
> -                    For a discussion specifically on BSP Layers, see th=
e
> +                    For a discussion specifically on BSP layers, see th=
e
>                      "<ulink url=3D'&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP=
 Layers</ulink>"
>                      section in the Yocto Project Board Support Packages=
 (BSP)
>                      Developer's Guide.
> @@ -1234,7 +1234,7 @@
>                      developed by the OpenEmbedded community that has be=
en
>                      pared down into a smaller, core set of continuously
>                      validated recipes.
> -                    The result is a tightly controlled and quality-assu=
red
> +                    The result is a tightly-controlled and quality-assu=
red
>                      core set of recipes.</para>
>
>                      <para>You can see the Metadata in the
> @@ -1303,7 +1303,7 @@
>                      patches to apply.
>                      Recipes describe dependencies for libraries or for =
other
>                      recipes as well as configuration and compilation op=
tions.
> -                    Related recipes are consolidated into a layer.
> +                    Related recipes are typically consolidated into a l=
ayer.
>                      </para></listitem>
>              </itemizedlist>
>          </para>
>
>
>=20


--------------F43CF962B5F472510C7E1B4F
Content-Type: text/html; charset=iso-8859-7
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3DISO-8859-7">
  </head>
  <body>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 2/11/20 11:16 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rpjday@crashcou=
rse.ca">rpjday@crashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:alpine.LFD.2.21.2002111415130.53570@localhost.localdomai=
n">
      <pre class=3D"moz-quote-pre" wrap=3D"">
Minor fixes:

  - punctuation
  - capitalization
  - markup
  - wording

Signed-off-by: Robert P. J. Day <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:rpjday@crashcourse.ca">&lt;rpjday@crashcourse.ca&gt;</a></pre>
    </blockquote>
    <br>
    Wrong ML. We have a <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:docs@lists.yoctoproject.org">docs@lists.yoctoproject.org</a> with patchw=
ork
    support.<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite"
      cite=3D"mid:alpine.LFD.2.21.2002111415130.53570@localhost.localdomai=
n">
      <pre class=3D"moz-quote-pre" wrap=3D"">

---

diff --git a/documentation/overview-manual/overview-manual-development-env=
ironment.xml b/documentation/overview-manual/overview-manual-development-en=
vironment.xml
index 2f1bd1610..dd12814fc 100644
--- a/documentation/overview-manual/overview-manual-development-environmen=
t.xml
+++ b/documentation/overview-manual/overview-manual-development-environmen=
t.xml
@@ -69,7 +69,7 @@
     &lt;title&gt;The Development Host&lt;/title&gt;

     &lt;para&gt;
-        A development host or
+        A &lt;firstterm&gt;development host&lt;/firstterm&gt; or
         &lt;ulink url=3D'&amp;YOCTO_DOCS_REF_URL;#hardware-build-system-t=
erm'&gt;build host&lt;/ulink&gt;
         is key to using the Yocto Project.
         Because the goal of the Yocto Project is to develop images or
@@ -389,7 +389,7 @@
         In summary, a single point of entry
         exists for changes into a "master" or development branch of the
         Git repository, which is controlled by the project=A2s maintainer=
.
-        And, a set of developers exist who independently develop, test, a=
nd
+        In addition, a set of developers exist who independently develop,=
 test, and
         submit changes to "contrib" areas for the maintainer to examine.
         The maintainer then chooses which changes are going to become a
         permanent part of the project.
diff --git a/documentation/overview-manual/overview-manual-yp-intro.xml b/=
documentation/overview-manual/overview-manual-yp-intro.xml
index dbf62cc16..87b7e40b3 100644
--- a/documentation/overview-manual/overview-manual-yp-intro.xml
+++ b/documentation/overview-manual/overview-manual-yp-intro.xml
@@ -89,7 +89,7 @@
                         Additionally, if you have used the Yocto Project =
to
                         create an image or application and you find yours=
elf
                         not able to support it, commercial Linux vendors =
such
-                        as Wind River, Mentor Graphics, Timesys, and ENEA=
 could
+                        as Wind River, Mentor Graphics, Timesys, and Enea=
 could
                         take it and provide ongoing support.
                         These vendors have offerings that are built using
                         the Yocto Project.
@@ -127,7 +127,7 @@
                         not part of a standard toolchain, you can easily
                         customize that toolchain through specification of
                         platform-specific tuning parameters.
-                        And, should you need to use a third-party toolcha=
in,
+                        In addition, should you need to use a third-party=
 toolchain,
                         mechanisms built into the Yocto Project allow for=
 that.
                         &lt;/para&gt;&lt;/listitem&gt;
                     &lt;listitem&gt;&lt;para&gt;
@@ -273,7 +273,7 @@
                         &lt;emphasis&gt;Initial Build Times Can be Signif=
icant:&lt;/emphasis&gt;
                         Long initial build times are unfortunately unavoi=
dable
                         due to the large number of packages initially bui=
lt
-                        from scratch for a fully functioning Linux system=
.
+                        from scratch for a fully-functioning Linux system=
.
                         Once that initial build is completed, however, th=
e
                         shared-state (sstate) cache mechanism Yocto Proje=
ct
                         uses keeps the system from rebuilding packages th=
at
@@ -358,7 +358,7 @@
             To illustrate how layers are used to keep things modular, con=
sider
             machine customizations.
             These types of customizations typically reside in a special l=
ayer,
-            rather than a general layer, called a BSP Layer.
+            rather than a general layer, called a &lt;firstterm&gt;BSP la=
yer&lt;/firstterm&gt;.
             Furthermore, the machine customizations should be isolated fr=
om
             recipes and Metadata that support a new GUI environment,
             for example.
@@ -852,9 +852,9 @@
         &lt;/para&gt;

         &lt;para&gt;
-            This section provides an introduction to the choices or
+            This section provides an introduction to the choices of
             development methods you have when setting up your Build Host.
-            Depending on the your particular workflow preference and the
+            Depending on your particular workflow preference and the
             type of operating system your Build Host runs, several choice=
s
             exist that allow you to use the Yocto Project.
             &lt;note&gt;
@@ -1013,7 +1013,7 @@
         &lt;/para&gt;

         &lt;para&gt;
-            Poky has a regular, well established, six-month release cycle
+            Poky has a regular, well-established, six-month release cycle
             under its own version.
             Major releases occur at the same time major releases (point
             releases) occur for the Yocto Project, which are typically in=
 the
@@ -1104,7 +1104,7 @@
                     select (DEB, RPM, or IPK) is used to roll up the soft=
ware.
                     &lt;/para&gt;&lt;/listitem&gt;
                 &lt;listitem&gt;&lt;para&gt;
-                    Different QA and sanity checks run throughout entire
+                    Different QA and sanity checks run throughout the ent=
ire
                     build process.
                     &lt;/para&gt;&lt;/listitem&gt;
                 &lt;listitem&gt;&lt;para&gt;
@@ -1145,7 +1145,7 @@
                     user-defined variables, and hardware configuration
                     information.
                     These files tell the
-                    &lt;ulink url=3D'&amp;YOCTO_DOCS_REF_URL;#build-syste=
m-term'&gt;Open-Embedded build system&lt;/ulink&gt;
+                    &lt;ulink url=3D'&amp;YOCTO_DOCS_REF_URL;#build-syste=
m-term'&gt;OpenEmbedded build system&lt;/ulink&gt;
                     what to build and what to put into the image to suppo=
rt a
                     particular platform.
                     &lt;/para&gt;&lt;/listitem&gt;
@@ -1177,7 +1177,7 @@
                     &lt;para&gt;For more detailed information on layers, =
see the
                     "&lt;ulink url=3D'&amp;YOCTO_DOCS_DEV_URL;#understand=
ing-and-creating-layers'&gt;Understanding and Creating Layers&lt;/ulink&gt;=
"
                     section in the Yocto Project Development Tasks Manual=
.
-                    For a discussion specifically on BSP Layers, see the
+                    For a discussion specifically on BSP layers, see the
                     "&lt;ulink url=3D'&amp;YOCTO_DOCS_BSP_URL;#bsp-layers=
'&gt;BSP Layers&lt;/ulink&gt;"
                     section in the Yocto Project Board Support Packages (=
BSP)
                     Developer's Guide.
@@ -1234,7 +1234,7 @@
                     developed by the OpenEmbedded community that has been
                     pared down into a smaller, core set of continuously
                     validated recipes.
-                    The result is a tightly controlled and quality-assure=
d
+                    The result is a tightly-controlled and quality-assure=
d
                     core set of recipes.&lt;/para&gt;

                     &lt;para&gt;You can see the Metadata in the
@@ -1303,7 +1303,7 @@
                     patches to apply.
                     Recipes describe dependencies for libraries or for ot=
her
                     recipes as well as configuration and compilation opti=
ons.
-                    Related recipes are consolidated into a layer.
+                    Related recipes are typically consolidated into a lay=
er.
                     &lt;/para&gt;&lt;/listitem&gt;
             &lt;/itemizedlist&gt;
         &lt;/para&gt;

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F43CF962B5F472510C7E1B4F--
