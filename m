Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7206.1581605653858874097
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 06:54:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=osvVeICw;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: akuster@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50F04E0168E; Thu, 13 Feb 2020 06:54:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E8CE0160B
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 06:54:10 -0800 (PST)
Received: by mail-pg1-f174.google.com with SMTP id j4so3242943pgi.1
        for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 06:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Rem3BsgoOFgp8EgOv1y3Dbgkcj4OtsrjXasdFEZv9kA=;
        b=osvVeICwJMqXUk/+Hj4v5wN7jqCUXqcIYjBxnNO/aROf5UvSuR1C2si4qYezz4mjvi
         9KueCs1TatMjq1xh8e09rAX9b17ChowzhlgZ37L7aqKDe+j5myZCPPYwsfj9g1Pyd+0/
         uXqmIVKQM5q0+XJbnnziMhq/KIWBaNdGYNnTtBu2SRdJuKnICQ20isOiwBiAguSq2ETP
         cDMxEmNmf6Q6VZYPV7TBdPVrFazvuSYw+/mOoYq2/d+zbcXWogb1PnJ1WgSaronZ9O9F
         MaYLitGEclx6r5T+4rpUmI5rJCcojI/RwUMn51shjZtrZUcK/ubn0e8Ir6o/nzKmDVeI
         /Xkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=Rem3BsgoOFgp8EgOv1y3Dbgkcj4OtsrjXasdFEZv9kA=;
        b=A15BrS/t1nE3l1EuPQz/SfDsjY/lnNVSHQFpDkTclGo3KcdQ6F6/WpI4/1gUTN4s3H
         XwxZlSd6vTQLVUTr0pn1lu7DCrhWQWV1UdVv8UPrMLsdmHKcXkFyPP3kOyA7X6OErVRV
         YmfEahjJBrmRX8xAfujQP0GnujbhPYFIVYbM63hNTItgNdO84cn8lRSwaitGROZH2Q5R
         xez58cmcyfm1ltDEEZUkPuqWeTLxdYwefktCoQ/GxsHYkZPqnh/hjFrQVB2UE4RagzxX
         ktACTxKok7vDLz+gyOvyXbP22Mvd2e5VMNph81tKVe9Nha/8S0EiV42NGHuCUYxbuHmp
         567w==
X-Gm-Message-State: APjAAAXuYheKe/g0+GMY3y/zg2BIbm+HocFb/VCPUl+y45RpoQk9f2dN
	UkCA9cUh61DdLbQqtr40G7Jhvj+InTE=
X-Google-Smtp-Source: APXvYqxaFHJ1TuTaLSBSmxhYNwgCSdp/9SBKwLxBJqrhSiMCi/TQexLpNScgvBA2GzmbVZvdrzskMw==
X-Received: by 2002:a62:788a:: with SMTP id t132mr17662326pfc.134.1581605649560;
        Thu, 13 Feb 2020 06:54:09 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:edf5:bce7:433a:8afc? ([2601:202:4180:a5c0:edf5:bce7:433a:8afc])
        by smtp.gmail.com with ESMTPSA id a36sm3506859pga.32.2020.02.13.06.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 06:54:08 -0800 (PST)
Subject: Re: [yocto] [PATCH] overview-manual: minor editing, rendering, wording changes
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.2002130402440.1757620@localhost.localdomain>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <2f72a8f4-d5a0-ae4e-0f18-4447c1be48a5@mvista.com>
Date: Thu, 13 Feb 2020 06:54:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002130402440.1757620@localhost.localdomain>
Content-Type: multipart/alternative;
 boundary="------------87BA3331B7A9BC57A1849C84"
Content-Language: en-US

--------------87BA3331B7A9BC57A1849C84
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Robert,


On 2/13/20 1:04 AM, rpjday@crashcourse.ca wrote:
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Please send doc changes to the docs@lists.yoctoproject.org

- armin
>
> ---
>
> diff --git a/documentation/overview-manual/overview-manual-concepts.xml b/documentation/overview-manual/overview-manual-concepts.xml
> index f085dd710..6ab783ce7 100644
> --- a/documentation/overview-manual/overview-manual-concepts.xml
> +++ b/documentation/overview-manual/overview-manual-concepts.xml
> @@ -144,11 +144,11 @@
>
>              <para>
>                  Files that have the <filename>.bb</filename> suffix are
> -                "recipes" files.
> +                "recipe" files.
>                  In general, a recipe contains information about a single piece
> -                of software.
> -                This information includes the location from which to download
> -                the unaltered source, any source patches to be applied to that
> +                of software,
> +                including the location from which to download
> +                the pristine source, any (local) source patches to be applied to that
>                  source (if needed), which special configuration options to
>                  apply, how to compile the source files, and how to package the
>                  compiled output.
> @@ -189,9 +189,9 @@
>                  various configuration variables that govern the OpenEmbedded
>                  build process.
>                  These files fall into several areas that define machine
> -                configuration options, distribution configuration options,
> -                compiler tuning options, general common configuration options,
> -                and user configuration options in
> +                configuration, distribution configuration,
> +                compiler tuning, general common configuration,
> +                and user configuration in
>                  <filename>conf/local.conf</filename>, which is found in the
>                  <ulink url='&YOCTO_DOCS_REF_URL;#build-directory'>Build Directory</ulink>.
>              </para>
> @@ -336,7 +336,7 @@
>                  complete a build.
>                  These files are <filename>*.conf</filename> files.
>                  The minimally necessary ones reside as example files in the
> -                <filename>build/conf</filename> directory of the
> +                <filename>meta/conf</filename> directory of the
>                  <ulink url='&YOCTO_DOCS_REF_URL;#source-directory'>Source Directory</ulink>.
>                  For simplicity, this section refers to the Source Directory as
>                  the "Poky Directory."
> @@ -555,7 +555,7 @@
>                  reads the configuration files in a specific order:
>                  <filename>site.conf</filename>, <filename>auto.conf</filename>,
>                  and <filename>local.conf</filename>.
> -                And, the build system applies the normal assignment statement
> +                In addition, the build system applies the normal assignment statement
>                  rules as described in the
>                  "<ulink url='&YOCTO_DOCS_BB_URL;#bitbake-user-manual-metadata'>Syntax and Operators</ulink>"
>                  chapter of the BitBake User Manual.
> @@ -584,7 +584,7 @@
>              </para>
>
>              <para>
> -                In general, three types of layer input exists.
> +                In general, three types of layer input exist.
>                  You can see them below the "User Configuration" box in the
>                  <link linkend='general-workflow-figure'>general workflow figure</link>:
>                  <itemizedlist>
> @@ -613,6 +613,9 @@
>                          is the
>                          <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-yocto-bsp'><filename>meta-yocto-bsp</filename></ulink>
>                          layer.
> +                        Individual hardware manufacturers, such as Intel,
> +                        Xilinx, Altera, NXP and so on will typically provide
> +                        BSP layers for their own products as well.
>                          </para></listitem>
>                      <listitem><para>
>                          <emphasis>Policy Configuration:</emphasis>
> @@ -620,14 +623,14 @@
>                          following figure) providing top-level or general
>                          policies for the images or SDKs being built for a
>                          particular distribution.
> -                        For example, in the Poky Reference Distribution the
> +                        For example, in the Poky Reference Distribution, the
>                          distro layer is the
>                          <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky'><filename>meta-poky</filename></ulink>
>                          layer.
>                          Within the distro layer is a
>                          <filename>conf/distro</filename> directory that
>                          contains distro configuration files (e.g.
> -                        <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'><filename>poky.conf</filename></ulink>
> +                        <ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'><filename>poky.conf</filename></ulink>)
>                          that contain many policy configurations for the
>                          Poky distribution.
>                          </para></listitem>
> @@ -748,7 +751,7 @@
>                  <title>BSP Layer</title>
>
>                  <para>
> -                    The BSP Layer provides machine configurations that
> +                    The BSP layer provides machine configurations that
>                      target specific hardware.
>                      Everything in this layer is specific to the machine for
>                      which you are building the image or the SDK.
> @@ -763,8 +766,8 @@
>                  </para>
>
>                  <para>
> -                    The BSP Layer's configuration directory contains
> -                    configuration files for the machine
> +                    A BSP layer's configuration directory contains
> +                    configuration files for the corresponding machines
>                      (<filename>conf/machine/<replaceable>machine</replaceable>.conf</filename>)
>                      and, of course, the layer
>                      (<filename>conf/layer.conf</filename>).
> @@ -798,8 +801,8 @@
>                  </para>
>
>                  <para>
> -                    This layer contains any recipes, append files, and
> -                    patches, that your project needs.
> +                    This layer contains any recipes, append files and
> +                    patches that your project needs.
>                  </para>
>              </section>
>          </section>
> @@ -913,7 +916,7 @@
>                      project is to use the
>                      <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-externalsrc'><filename>externalsrc</filename></ulink>
>                      class to include that local project.
> -                    You use either the <filename>local.conf</filename> or a
> +                    You use either the <filename>local.conf</filename> file or a
>                      recipe's append file to override or set the
>                      recipe to point to the local directory on your disk to pull
>                      in the whole source tree.
> @@ -1739,7 +1742,7 @@
>                  <para>
>                      The <filename>do_populate_sdk_ext</filename> task helps
>                      create the extensible SDK and handles host and target parts
> -                    differently than its counter part does for the standard SDK.
> +                    differently than its counterpart does for the standard SDK.
>                      For the extensible SDK, the task encapsulates the build
>                      system, which includes everything needed (host and target)
>                      for the SDK.
> @@ -2449,7 +2452,7 @@
>              parts are built fresh and no possibility of stale data exists that
>              can cause problems.
>              When developers hit problems, they typically default back to
> -            building from scratch so they have a know state from the
> +            building from scratch so they have a known state from the
>              start.
>          </para>
>
> @@ -2665,9 +2668,9 @@
>                  Thus far, this section has limited discussion to the direct
>                  inputs into a task.
>                  Information based on direct inputs is referred to as the
> -                "basehash" in the code.
> +                <firstterm>basehash</firstterm> in the code.
>                  However, the question of a task's indirect inputs still
> -                exits - items already built and present in the
> +                exists - items already built and present in the
>                  <ulink url='&YOCTO_DOCS_REF_URL;#build-directory'>Build Directory</ulink>.
>                  The checksum (or signature) for a particular task needs to add
>                  the hashes of all the tasks on which the particular task
>
> rday
>
>
> 


--------------87BA3331B7A9BC57A1849C84
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    Robert,<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/13/20 1:04 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.2002130402440.1757620@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
Signed-off-by: Robert P. J. Day <a class="moz-txt-link-rfc2396E" href="mailto:rpjday@crashcourse.ca">&lt;rpjday@crashcourse.ca&gt;</a></pre>
    </blockquote>
    <br>
    Please send doc changes to the <a class="moz-txt-link-abbreviated" href="mailto:docs@lists.yoctoproject.org">docs@lists.yoctoproject.org</a><br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.2002130402440.1757620@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">

---

diff --git a/documentation/overview-manual/overview-manual-concepts.xml b/documentation/overview-manual/overview-manual-concepts.xml
index f085dd710..6ab783ce7 100644
--- a/documentation/overview-manual/overview-manual-concepts.xml
+++ b/documentation/overview-manual/overview-manual-concepts.xml
@@ -144,11 +144,11 @@

             &lt;para&gt;
                 Files that have the &lt;filename&gt;.bb&lt;/filename&gt; suffix are
-                "recipes" files.
+                "recipe" files.
                 In general, a recipe contains information about a single piece
-                of software.
-                This information includes the location from which to download
-                the unaltered source, any source patches to be applied to that
+                of software,
+                including the location from which to download
+                the pristine source, any (local) source patches to be applied to that
                 source (if needed), which special configuration options to
                 apply, how to compile the source files, and how to package the
                 compiled output.
@@ -189,9 +189,9 @@
                 various configuration variables that govern the OpenEmbedded
                 build process.
                 These files fall into several areas that define machine
-                configuration options, distribution configuration options,
-                compiler tuning options, general common configuration options,
-                and user configuration options in
+                configuration, distribution configuration,
+                compiler tuning, general common configuration,
+                and user configuration in
                 &lt;filename&gt;conf/local.conf&lt;/filename&gt;, which is found in the
                 &lt;ulink url='&amp;YOCTO_DOCS_REF_URL;#build-directory'&gt;Build Directory&lt;/ulink&gt;.
             &lt;/para&gt;
@@ -336,7 +336,7 @@
                 complete a build.
                 These files are &lt;filename&gt;*.conf&lt;/filename&gt; files.
                 The minimally necessary ones reside as example files in the
-                &lt;filename&gt;build/conf&lt;/filename&gt; directory of the
+                &lt;filename&gt;meta/conf&lt;/filename&gt; directory of the
                 &lt;ulink url='&amp;YOCTO_DOCS_REF_URL;#source-directory'&gt;Source Directory&lt;/ulink&gt;.
                 For simplicity, this section refers to the Source Directory as
                 the "Poky Directory."
@@ -555,7 +555,7 @@
                 reads the configuration files in a specific order:
                 &lt;filename&gt;site.conf&lt;/filename&gt;, &lt;filename&gt;auto.conf&lt;/filename&gt;,
                 and &lt;filename&gt;local.conf&lt;/filename&gt;.
-                And, the build system applies the normal assignment statement
+                In addition, the build system applies the normal assignment statement
                 rules as described in the
                 "&lt;ulink url='&amp;YOCTO_DOCS_BB_URL;#bitbake-user-manual-metadata'&gt;Syntax and Operators&lt;/ulink&gt;"
                 chapter of the BitBake User Manual.
@@ -584,7 +584,7 @@
             &lt;/para&gt;

             &lt;para&gt;
-                In general, three types of layer input exists.
+                In general, three types of layer input exist.
                 You can see them below the "User Configuration" box in the
                 &lt;link linkend='general-workflow-figure'&gt;general workflow figure&lt;/link&gt;:
                 &lt;itemizedlist&gt;
@@ -613,6 +613,9 @@
                         is the
                         &lt;ulink url='&amp;YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-yocto-bsp'&gt;&lt;filename&gt;meta-yocto-bsp&lt;/filename&gt;&lt;/ulink&gt;
                         layer.
+                        Individual hardware manufacturers, such as Intel,
+                        Xilinx, Altera, NXP and so on will typically provide
+                        BSP layers for their own products as well.
                         &lt;/para&gt;&lt;/listitem&gt;
                     &lt;listitem&gt;&lt;para&gt;
                         &lt;emphasis&gt;Policy Configuration:&lt;/emphasis&gt;
@@ -620,14 +623,14 @@
                         following figure) providing top-level or general
                         policies for the images or SDKs being built for a
                         particular distribution.
-                        For example, in the Poky Reference Distribution the
+                        For example, in the Poky Reference Distribution, the
                         distro layer is the
                         &lt;ulink url='&amp;YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky'&gt;&lt;filename&gt;meta-poky&lt;/filename&gt;&lt;/ulink&gt;
                         layer.
                         Within the distro layer is a
                         &lt;filename&gt;conf/distro&lt;/filename&gt; directory that
                         contains distro configuration files (e.g.
-                        &lt;ulink url='&amp;YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'&gt;&lt;filename&gt;poky.conf&lt;/filename&gt;&lt;/ulink&gt;
+                        &lt;ulink url='&amp;YOCTO_GIT_URL;/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf'&gt;&lt;filename&gt;poky.conf&lt;/filename&gt;&lt;/ulink&gt;)
                         that contain many policy configurations for the
                         Poky distribution.
                         &lt;/para&gt;&lt;/listitem&gt;
@@ -748,7 +751,7 @@
                 &lt;title&gt;BSP Layer&lt;/title&gt;

                 &lt;para&gt;
-                    The BSP Layer provides machine configurations that
+                    The BSP layer provides machine configurations that
                     target specific hardware.
                     Everything in this layer is specific to the machine for
                     which you are building the image or the SDK.
@@ -763,8 +766,8 @@
                 &lt;/para&gt;

                 &lt;para&gt;
-                    The BSP Layer's configuration directory contains
-                    configuration files for the machine
+                    A BSP layer's configuration directory contains
+                    configuration files for the corresponding machines
                     (&lt;filename&gt;conf/machine/&lt;replaceable&gt;machine&lt;/replaceable&gt;.conf&lt;/filename&gt;)
                     and, of course, the layer
                     (&lt;filename&gt;conf/layer.conf&lt;/filename&gt;).
@@ -798,8 +801,8 @@
                 &lt;/para&gt;

                 &lt;para&gt;
-                    This layer contains any recipes, append files, and
-                    patches, that your project needs.
+                    This layer contains any recipes, append files and
+                    patches that your project needs.
                 &lt;/para&gt;
             &lt;/section&gt;
         &lt;/section&gt;
@@ -913,7 +916,7 @@
                     project is to use the
                     &lt;ulink url='&amp;YOCTO_DOCS_REF_URL;#ref-classes-externalsrc'&gt;&lt;filename&gt;externalsrc&lt;/filename&gt;&lt;/ulink&gt;
                     class to include that local project.
-                    You use either the &lt;filename&gt;local.conf&lt;/filename&gt; or a
+                    You use either the &lt;filename&gt;local.conf&lt;/filename&gt; file or a
                     recipe's append file to override or set the
                     recipe to point to the local directory on your disk to pull
                     in the whole source tree.
@@ -1739,7 +1742,7 @@
                 &lt;para&gt;
                     The &lt;filename&gt;do_populate_sdk_ext&lt;/filename&gt; task helps
                     create the extensible SDK and handles host and target parts
-                    differently than its counter part does for the standard SDK.
+                    differently than its counterpart does for the standard SDK.
                     For the extensible SDK, the task encapsulates the build
                     system, which includes everything needed (host and target)
                     for the SDK.
@@ -2449,7 +2452,7 @@
             parts are built fresh and no possibility of stale data exists that
             can cause problems.
             When developers hit problems, they typically default back to
-            building from scratch so they have a know state from the
+            building from scratch so they have a known state from the
             start.
         &lt;/para&gt;

@@ -2665,9 +2668,9 @@
                 Thus far, this section has limited discussion to the direct
                 inputs into a task.
                 Information based on direct inputs is referred to as the
-                "basehash" in the code.
+                &lt;firstterm&gt;basehash&lt;/firstterm&gt; in the code.
                 However, the question of a task's indirect inputs still
-                exits - items already built and present in the
+                exists - items already built and present in the
                 &lt;ulink url='&amp;YOCTO_DOCS_REF_URL;#build-directory'&gt;Build Directory&lt;/ulink&gt;.
                 The checksum (or signature) for a particular task needs to add
                 the hashes of all the tasks on which the particular task

rday

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------87BA3331B7A9BC57A1849C84--
