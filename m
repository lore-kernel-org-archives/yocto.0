Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE08FE00C1E; Mon, 10 Dec 2018 08:34:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.45 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
	[209.85.217.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C69EE00B92
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 08:34:17 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id n10so6999058vso.13
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 08:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DDBfK8319FS/F0fbDq44wxqJlWqRnCNskUL5r1EZIVE=;
	b=H84EKnrU0uLXPV59ysycLWAdwpFdi2MFP+NiXe6zMGaLWXbgjWY9nzElXwQhtfhvUp
	DTwn6oT/vAzvbd9OznU5tNVOam6HDG5jw9lKcdQ909/fetYID/5pe8eJhtPsYmAO5/pH
	J4peDXtp2sv+OaFFGS1IatQtLbvT9i1l1DdSe6k8xVGI7bwUgA2F12EKpeGcAOapTXZ3
	aTJE9pnmZX2RCzV1m5pC7uodiX9YeGTanhxZZmPYOMTuF9MTlsxrQMY3iZsyij7DUogF
	/EJe7ccBX2qOqf4DgY1Ie/Os/a5CtOq/v3wsyji/NMYy/nakHo55goXY6EdT3AE+KVZS
	4nMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DDBfK8319FS/F0fbDq44wxqJlWqRnCNskUL5r1EZIVE=;
	b=IQCM5aO/Yy7R0JUegCLYtOSqUoz7e0SZavu7MrSWkRuk4pw2CSvOl35SS2zwoc5j83
	G0zEpRg/xl2qPyi004qf+BLPb3WYxzC1kZt0rETIcAxjSCVQ77C93KQitQjoaJeo2HHI
	jrvlM0zCPpOWWu0NFJQhqmQvCK/g/zYA3xyTred0cHzqTUMgd2vW7R08XSHZ7NRQZDlz
	24/alCRY1N1nw79DZeZ4E0Ea2tBATENge0cpc3v81j8C5tW7yC1+5S4yNja9r4B4KNmu
	O5AIHFZI8SHTL1R8MI33DqRgJwoJzVi/PLzpB7/eLint7qZ65tuvCS2BZjA5I5bbyr3l
	zjcw==
X-Gm-Message-State: AA+aEWYSIXsE28kBenHPsbkU47g67E6zBXVYGeALY3BnDLuJ/1QikNTb
	KGK149zmIHZZq/kZdqOlmhBZQYQbLGbq9hzTR3c=
X-Google-Smtp-Source: AFSGD/XcuL22lugvI6HzB57ElMDA1BPVCsQxe6M+XnRNyMqH3yZODzsOSQU7dYuK2aHwRIGpqi9LgA4urpqOSkxfzoQ=
X-Received: by 2002:a67:c795:: with SMTP id t21mr4909096vsk.94.1544459656715; 
	Mon, 10 Dec 2018 08:34:16 -0800 (PST)
MIME-Version: 1.0
References: <a14a8e30-2417-c600-5efc-56fc168560f4@cisco.com>
In-Reply-To: <a14a8e30-2417-c600-5efc-56fc168560f4@cisco.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Mon, 10 Dec 2018 08:34:05 -0800
Message-ID: <CANx9H-B3gW0WoWjCqFW6EPH66kM0qMq+PJgkW2OcWa9a+Z=chw@mail.gmail.com>
To: Oleksii Konoplitskyi <okonopli@cisco.com>
Cc: yocto@yoctoproject.org, aborduno@cisco.com, xe-linux-external@cisco.com
Subject: Re: [PATCH] ref-manual: add EXCLUDE_PACKAGES_FROM_SHLIBS description
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2018 16:34:19 -0000
Content-Type: multipart/alternative; boundary="000000000000356389057cad89a1"

--000000000000356389057cad89a1
Content-Type: text/plain; charset="UTF-8"

Variable documentation is pulled in from:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/documentation.conf

Notably, EXCLUDE_PACKAGES_FROM_SHLIBS is not defined there, which is why it
is not in the generated docs.
On Mon, Dec 10, 2018 at 4:53 AM Oleksii Konoplitskyi <okonopli@cisco.com>
wrote:

> Some packages containing shared libraries might be registered as shlib
> providers when they shouldn't (for example, the lib is for their private
> use
> and must not generate any dependency).
>
> EXCLUDE_FROM_SHLIBS is targeted at that, but it could be set for entire
> recipe
> only.
>
> Variable EXCLUDE_PACKAGES_FROM_SHLIBS allows to set list of packages
> that are
> not candidates for shlib providers.
>
> Signed-off-by: Oleksii Konoplitskyi <okonopli@cisco.com>
> <okonopli@cisco.com>
> ---
>   documentation/ref-manual/ref-variables.xml | 28
> ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 595f2db..98d3f86 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -4289,6 +4289,34 @@
>               </glossdef>
>           </glossentry>
>
> +        <glossentry
>
> id='var-EXCLUDE_PACKAGES_FROM_SHLIBS'><glossterm>EXCLUDE_PACKAGES_FROM_SHLIBS</glossterm>
> +            <info>
> +                EXCLUDE_PACKAGES_FROM_SHLIBS[doc] = "Causes the
> OpenEmbedded build system's shared libraries resolver to exclude
> packages when scanning for shared libraries."
> +            </info>
> +            <glossdef>
> +                <para role="glossdeffirst">
> +<!--                <para role="glossdeffirst"><imagedata
> fileref="figures/define-generic.png" /> -->
> +                    Triggers the OpenEmbedded build system's shared
> libraries
> +                    resolver to exclude packages when scanning for
> +                    shared libraries.
> +                    The
> <filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable is
> +                    similar to the
> +                    <link
>
> linkend='var-EXCLUDE_FROM_SHLIBS'><filename>EXCLUDE_FROM_SHLIBS</filename></link>
> +                    variable, which excludes all the packages provided
> by recipe
> +                    and not excludes particular package.
> +                </para>
> +
> +                <para>
> +                    Use the
> + <filename>EXCLUDE_PACKAGES_FROM_SHLIBS</filename> variable as a list
> of packages that
> +                    are not candidates for shared libraries providers:
> +                    <literallayout class='monospaced'>
> +     EXCLUDE_PACKAGES_FROM_SHLIBS += "glibc-ptest glibc-dev"
> +                    </literallayout>
> +                </para>
> +            </glossdef>
> +        </glossentry>
> +
>           <glossentry
> id='var-EXCLUDE_FROM_WORLD'><glossterm>EXCLUDE_FROM_WORLD</glossterm>
>               <info>
>                   EXCLUDE_FROM_WORLD[doc] = "Directs BitBake to exclude
> a recipe from world builds (i.e. bitbake world)."
>
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000356389057cad89a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Variable documentation is pulled in from:<br><a href=3D"http://git.yoctopro=
ject.org/cgit/cgit.cgi/poky/tree/meta/conf/documentation.conf">http://git.y=
octoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/documentation.conf</a><br=
><br>Notably, EXCLUDE_PACKAGES_FROM_SHLIBS is not defined there, which is w=
hy it is not in the generated docs.<br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Mon, Dec 10, 2018 at 4:53 AM Oleksii Konoplitskyi &lt;<a href=
=3D"mailto:okonopli@cisco.com">okonopli@cisco.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><span>Some packages
        containing shared libraries might be registered as shlib</span><br>
      <span>providers
        when they shouldn&#39;t (for example, the lib is for their private
        use</span><br>
      <span>and must not
        generate any dependency).</span><br style=3D"color:rgb(33,33,33);fo=
nt-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot=
;,Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial">
      <br>
      <span>EXCLUDE_FROM_SHLIBS
        is targeted at that, but it could be set for entire<span>=C2=A0</sp=
an></span><br>
      <span>recipe</span><br>
      <span>only.</span><br>
      <br>
      <span>Variable
        EXCLUDE_PACKAGES_FROM_SHLIBS allows to set list of packages<span>=
=C2=A0</span></span><br>
      <span>that are</span><br>
      <span>not
        candidates for shlib providers.</span><br>
      <br>
      <span>Signed-off-by:<span>=C2=A0</span></span><span class=3D"m_175361=
7417299558869highlight" id=3D"m_17536174172995588690.35499705656760927" nam=
e=3D"searchHitInReadingPane">Oleksii</span><span><span>=C2=A0</span></span>=
<span class=3D"m_1753617417299558869highlight" id=3D"m_17536174172995588690=
.38659650562062264" name=3D"searchHitInReadingPane">Konoplitskyi</span><spa=
n><span>=C2=A0</span><a class=3D"m_1753617417299558869moz-txt-link-rfc2396E=
" href=3D"mailto:okonopli@cisco.com" target=3D"_blank">&lt;okonopli@cisco.c=
om&gt;</a></span><br>
      <span>---</span><br>
      <span>=C2=A0=C2=A0documentation/ref-manual/ref-variables.xml
        | 28<span>=C2=A0</span></span><br style=3D"color:rgb(33,33,33);font=
-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,=
Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial">
      <span>++++++++++++++++++++++++++++</span><br>
      <span>=C2=A0=C2=A01 file
        changed, 28 insertions(+)</span><br style=3D"color:rgb(33,33,33);fo=
nt-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot=
;,Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial">
      <br>
      <span>diff --git
        a/documentation/ref-manual/ref-variables.xml<span>=C2=A0</span></sp=
an><br>
      <span>b/documentation/ref-manual/ref-variables.xml</span><br>
      <span>index
        595f2db..98d3f86 100644</span><br style=3D"color:rgb(33,33,33);font=
-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,=
Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial">
      <span>---
        a/documentation/ref-manual/ref-variables.xml</span><br>
      <span>+++
        b/documentation/ref-manual/ref-variables.xml</span><br>
      <span>@@ -4289,6
        +4289,34 @@</span><br style=3D"color:rgb(33,33,33);font-family:&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Arial=
,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial">
      <span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
        &lt;/glossdef&gt;</span><br style=3D"color:rgb(33,33,33);font-famil=
y:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma=
,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial">
      <span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;/glossentry&gt;</span><br style=3D"color:rgb(33,33,33);font-fam=
ily:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Taho=
ma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial">
      <br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;glossentry<span>=C2=A0</span></span><br style=3D"color:rgb(33,3=
3,33);font-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI =
WPC&quot;,Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial">
      <span>id=3D&#39;var-EXCLUDE_PACKAGES_FROM_SHLIBS&#39;&gt;&lt;glosster=
m&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/glossterm&gt;</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
        &lt;info&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Aria=
l,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        EXCLUDE_PACKAGES_FROM_SHLIBS[doc] =3D &quot;Causes the<span>=C2=A0<=
/span></span><br>
      <span>OpenEmbedded
        build system&#39;s shared libraries resolver to exclude<span>=C2=A0=
</span></span><br>
      <span>packages when
        scanning for shared libraries.&quot;</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
        &lt;/info&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Ari=
al,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
        &lt;glossdef&gt;</span><br style=3D"color:rgb(33,33,33);font-family=
:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,=
Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;para role=3D&quot;glossdeffirst&quot;&gt;</span><br>
      <span>+&lt;!--=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;para role=3D&quot;glossdeffirst&quot;&gt;&lt;imagedata<span>=C2=
=A0</span></span><br>
      <span>fileref=3D&quot;figures/define-generic.png&quot;
        /&gt; --&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Aria=
l,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        Triggers the OpenEmbedded build system&#39;s shared<span>=C2=A0</sp=
an></span><br>
      <span>libraries</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        resolver to exclude packages when scanning for</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        shared libraries.</span><br style=3D"color:rgb(33,33,33);font-famil=
y:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma=
,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        The<span>=C2=A0</span></span><br style=3D"color:rgb(33,33,33);font-=
family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,T=
ahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial">
      <span>&lt;filename&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/filename&gt;
        variable is</span><br style=3D"color:rgb(33,33,33);font-family:&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Arial=
,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        similar to the</span><br style=3D"color:rgb(33,33,33);font-family:&=
quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Ar=
ial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;link<span>=C2=A0</span></span><br style=3D"color:rgb(33,33,33);=
font-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&qu=
ot;,Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial">
      <span>linkend=3D&#39;var-EXCLUDE_FROM_SHLIBS&#39;&gt;&lt;filename&gt;=
EXCLUDE_FROM_SHLIBS&lt;/filename&gt;&lt;/link&gt;</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        variable, which excludes all the packages provided<span>=C2=A0</spa=
n></span><br>
      <span>by recipe</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        and not excludes particular package.</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;/para&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Ari=
al,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">
      <span>+</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;para&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Aria=
l,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        Use the</span><br>
      <span>+
        &lt;filename&gt;EXCLUDE_PACKAGES_FROM_SHLIBS&lt;/filename&gt;
        variable as a list<span>=C2=A0</span></span><br>
      <span>of packages
        that</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        are not candidates for shared libraries providers:</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;literallayout class=3D&#39;monospaced&#39;&gt;</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0
        EXCLUDE_PACKAGES_FROM_SHLIBS +=3D &quot;glibc-ptest glibc-dev&quot;=
</span><br>
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;/literallayout&gt;</span><br style=3D"color:rgb(33,33,33);font-=
family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,T=
ahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;/para&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Ari=
al,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
        &lt;/glossdef&gt;</span><br style=3D"color:rgb(33,33,33);font-famil=
y:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma=
,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial">
      <span>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;/glossentry&gt;</span><br style=3D"color:rgb(33,33,33);font-fam=
ily:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Taho=
ma,Arial,sans-serif;font-size:13.3333px;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial">
      <span>+</span><br>
      <span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        &lt;glossentry<span>=C2=A0</span></span><br style=3D"color:rgb(33,3=
3,33);font-family:&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI =
WPC&quot;,Tahoma,Arial,sans-serif;font-size:13.3333px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial">
      <span>id=3D&#39;var-EXCLUDE_FROM_WORLD&#39;&gt;&lt;glossterm&gt;EXCLU=
DE_FROM_WORLD&lt;/glossterm&gt;</span><br>
      <span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
        &lt;info&gt;</span><br style=3D"color:rgb(33,33,33);font-family:&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Aria=
l,sans-serif;font-size:13.3333px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial">
      <span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        EXCLUDE_FROM_WORLD[doc] =3D &quot;Directs BitBake to exclude<span>=
=C2=A0</span></span><br>
      <span>a recipe from
        world builds (i.e. bitbake world).&quot;</span></p></div><div text=
=3D"#000000" bgcolor=3D"#FFFFFF"><p><br>
      <span>--<span>=C2=A0</span></span><br>
      <span>2.7.4</span><br>
      <span><span><br>
        </span></span></p>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000356389057cad89a1--
