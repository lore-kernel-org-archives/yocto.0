Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3D3CE00AC5; Mon, 24 Sep 2018 08:17:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FB9E00566
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 08:17:41 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id f38-v6so16620185edd.8
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 08:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=h/p2QbEb9fMt6ytRwDqKR4W1qTPOW1iEJwadnRdyqHk=;
	b=osjJ0Ko6LBvd5LUsw9niSafGfA+LNBP9egrLJOX25H8IrDcPglxKmlLodNr/IrbRRG
	4Y43IqxMcjIBuCP31by8EjKo1smRHtl600YLDNcGJYYDIprp1p6/PNIyilChqQfO5h2l
	mLbqq0PuLksnn9lTEk6Jz2j1bd6wv3Jb/Vge8hmProAYHv3HyIhrUqr9WcfH8PbOhp7a
	YvpBVv85oXyQpi7KO4LzxWDDdyCkPr+enLRNMuGU4QOjIl+ZQR4Rt/nt3S3mjVPNWYON
	SWd0ttMV4xUILgybLDSS8wfxzHTEs+kL4dFLmyl5z6nUSLFOJ8APjSJz9rp3iuGDfplO
	LSBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=h/p2QbEb9fMt6ytRwDqKR4W1qTPOW1iEJwadnRdyqHk=;
	b=AVjwGPCcgvLybDUEhoZc7BUYMYfwUX+DsPloGGtE/KOBhZ3bk6PQSxqanT4WHYacGN
	WQuvRb84PNAp6nZ7h7M8E1ra4lhMCc3Q/bwjDUfGbidxsXuyI9W2A43Cy4r07YjMJq3l
	hb8j9FG9Basu9Yv6Zau4VZ1pB3Wp6UFpc5TE8T3s3xatB1H2Ursozkl7Dvjttz5Lgs9G
	Nj80H4GOth4Q0nBLsDpc3JJPdKrL+qYkg0jWqPeQGln78Io/lv8lJlq9whJCgpmEyRVr
	y1xNXBHsrTgXNEkau4hwitZsy5/XnvtAwfIBQKLorxp+wRQToF1DXniPOGb0X96Kut3S
	0uOA==
X-Gm-Message-State: ABuFfog9PgvM+LnPWws30Ba/gsPQ3V/cTEjfERYSt1ewXocOcCUTlswJ
	mYZiXV8ii2J6GwLpLmNPDqo/Pgj4mi9u9sb3LXM=
X-Google-Smtp-Source: ACcGV61QyA2nJUww1/yMR4AfCpEcNA5zYciBvnd+SHrRskqatZubmH+iGJfgVSpPyBSZSNc3tRrt8fzBAmfUEF8V/PY=
X-Received: by 2002:a50:a3cb:: with SMTP id
	t11-v6mr18864631edb.238.1537802260935; 
	Mon, 24 Sep 2018 08:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20180924032421.9679-1-JPEWhacker@gmail.com>
In-Reply-To: <20180924032421.9679-1-JPEWhacker@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 24 Sep 2018 08:17:28 -0700
Message-ID: <CAFNP8OuvyGYDeUG63p0BbjKPfkR69Oq3DWC5qb7Pud27oR8QzQ@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	juan.m.cruz.alcaraz@linux.intel.com
Subject: Re: [yocto-docs][PATCH] documentation: Document debug-with-srcpkg
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
X-List-Received-Date: Mon, 24 Sep 2018 15:17:42 -0000
Content-Type: multipart/alternative; boundary="0000000000007f7b3505769f7d0f"

--0000000000007f7b3505769f7d0f
Content-Type: text/plain; charset="UTF-8"

Joshua,

Thanks for the patch.  I have appliied it.  You can see it at
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-PACKAGE_DEBUG_SPLIT_STYLE
.

Scott

On Sun, Sep 23, 2018 at 8:24 PM Joshua Watt <jpewhacker@gmail.com> wrote:

> Adds documentation for the "debug-with-srcpkg" option for the
> PACKAGE_DEBUG_SPLIT_STYLE variable
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 05487cf83f6..1bc6e2b77d5 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -9646,6 +9646,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                              ".debug" previously described with the
> exception
>                              that no source files are installed.
>                              </para></listitem>.
> +                        <listitem><para>
> +                            "debug-with-srcpkg": The same behavior as
> +                            ".debug" previously described with the
> exception
> +                            that all source files are placed in a separate
> +                            <filename>*-src</filename> pkg.
> +                            </para></listitem>
>                      </itemizedlist>
>                  </para>
>
> --
> 2.17.1
>
>

--0000000000007f7b3505769f7d0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Joshua, <br></div><div><br></div><di=
v>Thanks for the patch.=C2=A0 I have appliied it.=C2=A0 You can see it at <=
a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-=
PACKAGE_DEBUG_SPLIT_STYLE">https://yoctoproject.org/docs/2.6/ref-manual/ref=
-manual.html#var-PACKAGE_DEBUG_SPLIT_STYLE</a>.</div><div><br></div><div>Sc=
ott<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On=
 Sun, Sep 23, 2018 at 8:24 PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@=
gmail.com">jpewhacker@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Adds documentation for the &quot;debug-with-srcpkg&quot; opti=
on for the<br>
PACKAGE_DEBUG_SPLIT_STYLE variable<br>
<br>
Signed-off-by: Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" targ=
et=3D"_blank">JPEWhacker@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 6 ++++++<br>
=C2=A01 file changed, 6 insertions(+)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index 05487cf83f6..1bc6e2b77d5 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -9646,6 +9646,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;.debug&quot; previously described with=
 the exception<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0that no source files are installed.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;listitem&gt;&lt;para&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;debug-with-srcpkg&quot;: The same behavior a=
s<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;.debug&quot; previously described with the e=
xception<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 that all source files are placed in a separate<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;filename&gt;*-src&lt;/filename&gt; pkg.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/itemizedlist&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--0000000000007f7b3505769f7d0f--
