Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05C71E00A38; Wed, 23 May 2018 10:37:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D1DDE009C8
	for <yocto@yoctoproject.org>; Wed, 23 May 2018 10:37:18 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id 70-v6so5364518ity.2
	for <yocto@yoctoproject.org>; Wed, 23 May 2018 10:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=CqWEKweakvyvbvGSRzXDzHpVUKyyskw4nX2ASW+uTgw=;
	b=JmuYtgxnI8+cNqj1YseXT8HO1VRrU2SjaGh8gme9B3w+uTFrgK4Qb+9Hylw9i95kzX
	mxwh2rDxqiGW0s2P7X8q/ncYYfOlG/d4a+YGQhfCR3c5VydcffE8ddUP3u/x+wLarm5L
	lbJnXTfvO1u9mXEZeiNPr42ArkxbgqksxM31Naalrgl8L1Y69vRIsS8OmKVLd4qMl/dK
	xCl7nAI3YnbTqXBzyjAAKFlysYce4T7SAG2GxgYXDjqUUvhaSroSH7Al919At4sdgUVp
	qYOrOTPP2KchZNOTRPf2sMUw2JUb9QEjoBn01YE0lNEugF1UOivbXQuzi69rjNDWsEVM
	vHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=CqWEKweakvyvbvGSRzXDzHpVUKyyskw4nX2ASW+uTgw=;
	b=idzL0zlQrHjlhN8cU7ihJTG+/w0Cn3gFEeN9oQkxnOahvtyDJv1rMp3L42dWVmkN9R
	Tok4GtD0rTyxllJ44firJIn+i8oelhgGUo4EHg9X15ssPopOWfxMMaCRqeFCmpUsVjun
	b4p+TpIxqcUMI5DBdUx9/XhfsiPmhFaVhUFe6Izx11jk+DH5gT0eSKLnswCk6Zbi7huC
	EMcTiB5cx3AHkXuzhDl/n7gG+gXcEa0hgWABJZuFpAA2oQyTmPN0N1lsQOJo+JtX9M0D
	z5uKK9fwbhk4HkVPXmqB/MG38dbZypLNi3eOd4UYDV/CeEVFqU7abOYo7gbRWEBynIJf
	BiPw==
X-Gm-Message-State: ALKqPwdn5+Kb+lSgIcWKBdOeZ66xXB+oTpYutCVDElSf8guSMcyjuL5s
	zC3wiCHmHu0cIdNpjCyQ4sFe/gXH3Vr+xSlaziY=
X-Google-Smtp-Source: AB8JxZq/hlWvAg0NkAMCktJmXY/cCp52jMS3Tj+WpCyN+zhwgHUYWuw4aDQzZPU/NNifriISQH0XF7KhY0AQtqjH6Js=
X-Received: by 2002:a24:c887:: with SMTP id
	w129-v6mr5763334itf.122.1527097037581; 
	Wed, 23 May 2018 10:37:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:8bd3:0:0:0:0:0 with HTTP; Wed, 23 May 2018 10:37:17
	-0700 (PDT)
In-Reply-To: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
References: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 23 May 2018 13:37:17 -0400
Message-ID: <CAKmWj-3-=praP1s0047GE_P4D=fSA57TpJe77ZXHSZLZCuy4uw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Patch for custom imager plugin in wic.
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
X-List-Received-Date: Wed, 23 May 2018 17:37:19 -0000
Content-Type: multipart/alternative; boundary="000000000000767418056ce2fc59"

--000000000000767418056ce2fc59
Content-Type: text/plain; charset="UTF-8"

Can this change be merged into master?

On Mon, May 21, 2018 at 5:00 PM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep 17 00:00:00 2001
> From: Paul Knopf <pauldotknopf@gmail.com>
> Date: Mon, 21 May 2018 16:56:51 -0400
> Subject: [PATCH] Support for changing the imager used in wic.
>
> ---
>  scripts/lib/wic/engine.py | 2 +-
>  scripts/wic               | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engine.py
> index edcfab3..d7c5c11 100644
> --- a/scripts/lib/wic/engine.py
> +++ b/scripts/lib/wic/engine.py
> @@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_dir,
> kernel_dir,
>      if not os.path.exists(options.outdir):
>          os.makedirs(options.outdir)
>
> -    pname = 'direct'
> +    pname = options.imager
>      plugin_class = PluginMgr.get_plugins('imager').get(pname)
>      if not plugin_class:
>          raise WicError('Unknown plugin: %s' % pname)
> diff --git a/scripts/wic b/scripts/wic
> index 7392bc4..255e524 100755
> --- a/scripts/wic
> +++ b/scripts/wic
> @@ -360,6 +360,7 @@ def wic_init_parser_create(subparser):
>      subparser.add_argument("-v", "--vars", dest='vars_dir',
>                        help="directory with <image>.env files that store "
>                             "bitbake variables")
> +    subparser.add_argument("-i", "--imager", dest="imager",
> default="direct", help="the wic imager plugin")
>      subparser.add_argument("-D", "--debug", dest="debug",
> action="store_true",
>                        default=False, help="output debug information")
>      return
> --
> 2.7.4
>
>

--000000000000767418056ce2fc59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can this change be merged into master?</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Mon, May 21, 2018 at 5:00 PM=
, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:pauldotknopf@gmail.com=
" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div>From 136d6214b6fc2c1118dac5b7=
f3e029<wbr>ed006fab8a Mon Sep 17 00:00:00 2001</div><div>From: Paul Knopf &=
lt;<a href=3D"mailto:pauldotknopf@gmail.com" target=3D"_blank">pauldotknopf=
@gmail.com</a>&gt;</div><div>Date: Mon, 21 May 2018 16:56:51 -0400</div><di=
v>Subject: [PATCH] Support for changing the imager used in wic.</div><div><=
br></div><div>---</div><div>=C2=A0scripts/lib/wic/engine.py | 2 +-</div><di=
v>=C2=A0scripts/wic =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 1 +<=
/div><div>=C2=A02 files changed, 2 insertions(+), 1 deletion(-)</div><div><=
br></div><div>diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engi=
ne.py</div><div>index edcfab3..d7c5c11 100644</div><div>--- a/scripts/lib/w=
ic/engine.py</div><div>+++ b/scripts/lib/wic/engine.py</div><div>@@ -191,7 =
+191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_dir, kernel_dir,</di=
v><div>=C2=A0 =C2=A0 =C2=A0if not os.path.exists(options.outdir)<wbr>:</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.makedirs(options.outdir)</div><d=
iv>=C2=A0</div><div>- =C2=A0 =C2=A0pname =3D &#39;direct&#39;</div><div>+ =
=C2=A0 =C2=A0pname =3D options.imager</div><div>=C2=A0 =C2=A0 =C2=A0plugin_=
class =3D PluginMgr.get_plugins(&#39;imager&#39;<wbr>).get(pname)</div><div=
>=C2=A0 =C2=A0 =C2=A0if not plugin_class:</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0raise WicError(&#39;Unknown plugin: %s&#39; % pname)</div><div=
>diff --git a/scripts/wic b/scripts/wic</div><div>index 7392bc4..255e524 10=
0755</div><div>--- a/scripts/wic</div><div>+++ b/scripts/wic</div><div>@@ -=
360,6 +360,7 @@ def wic_init_parser_create(<wbr>subparser):</div><div>=C2=
=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-v&quot;, &quot;--vars&quot;,=
 dest=3D&#39;vars_dir&#39;,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&quot;directory with=
 &lt;image&gt;.env files that store &quot;</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;bitbake variables&quot;)</div><div>+ =C2=A0 =C2=A0subparser.add_a=
rgument(&quot;-i&quot;, &quot;--imager&quot;, dest=3D&quot;imager&quot;, de=
fault=3D&quot;direct&quot;, help=3D&quot;the wic imager plugin&quot;)</div>=
<div>=C2=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-D&quot;, &quot;--deb=
ug&quot;, dest=3D&quot;debug&quot;, action=3D&quot;store_true&quot;,</div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0default=3DFalse, help=3D&quot;output debug information&quot;)<=
/div><div>=C2=A0 =C2=A0 =C2=A0return</div><span class=3D"HOEnZb"><font colo=
r=3D"#888888"><div>--=C2=A0</div><div>2.7.4</div><div><br></div></font></sp=
an></div>
</blockquote></div><br></div>

--000000000000767418056ce2fc59--
