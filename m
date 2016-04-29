Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D8F8E0071E; Fri, 29 Apr 2016 08:37:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEDC3E00566
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:37:00 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id s8so22868084ign.0
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=M9w2JeXFtDpk9M0/SI/bGn3cnWGhTLHr4grOVd5wk1I=;
	b=CmyDiSyGgMrliomPuQO3jKU2Tp9trXwoFjum2u15Gm+WZ89qOqlSbTkkTUCS7aDT9H
	peca0fG4pt2vEVTcQLI5egEFinKGoZ9Y5eotAuZ+Yrn4ke2mLJCxwWs4Gr6l1uu3b/9u
	doIPaKepsdx07S7il5CPVntJA5EDqrPqIgMcSiCKWsoGxciUsC6MYDEjYcD9WV99yHSl
	Rtj5Fw6MhijmNSmKGBQRN0B1j1VGAN8TUSW/tdwQGfML5WTXEZ9KRjTs+pCgEiah4uTz
	ZaJ+eLo5FJg1c1TnyTj/VxfDFGLPMUrnVNF6rCOs7IM99nzQsJgL/f4pOib9QkPnkSng
	kGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=M9w2JeXFtDpk9M0/SI/bGn3cnWGhTLHr4grOVd5wk1I=;
	b=ECpCSeUt7IEme1lrYtvkfjv/WnUHS2Nt4ACMn0j8HgfPDg43IRV3tGbCGGvuH0qRJy
	SIb8AOQx+u/YwJIE/QIS3NVMw/os/ZDBJg0igZq7MmxLRIaKEzAiHR9ohqmAGvZYMcF0
	Pll3j7yMBeVVsuC2K0PWKRi6gWKclfzzI1UCWmr/ODXy317UxxCRLzJvigI4dxIWWDI4
	jWkPKKKTFCxqGQvCL2whlCMRvW5lPZWxXghxkZKZlwbdj9USuKZYTliUaqEF8GaV/Uck
	af8gFF8fuOTxcU8Cb5x8F0g3YfsAQIW06MINEemRAba0u7ERV+10hUAElWf1lfhVpkGa
	XAUA==
X-Gm-Message-State: AOPr4FVypb3cyPEMyNr0z6kjVj/yqGL9DA4sPR7YmNv1gwG9lo7IuKClf0JDAWKRDkEx2aAYhwWQ6DLlnR5BY+Xm
X-Received: by 10.50.18.111 with SMTP id v15mr5126036igd.64.1461944219871;
	Fri, 29 Apr 2016 08:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 08:36:40 -0700 (PDT)
In-Reply-To: <570f4f447c75829576e4c22cf3ce8ce676a80936.1461926785.git.jussi.kukkonen@intel.com>
References: <cover.1461926785.git.jussi.kukkonen@intel.com>
	<570f4f447c75829576e4c22cf3ce8ce676a80936.1461926785.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 16:36:40 +0100
Message-ID: <CAJTo0LZs7fBXjUwskfcjCwN6eWKxmPxxtFpmABG06dodyR736w@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-config-gtk][PATCH 1/1] Port to Gtk+3
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
X-List-Received-Date: Fri, 29 Apr 2016 15:37:02 -0000
Content-Type: multipart/alternative; boundary=089e014953cce86f160531a16903

--089e014953cce86f160531a16903
Content-Type: text/plain; charset=UTF-8

Hi,

mb-appearance.c: In function 'new_frame':
mb-appearance.c:352:3: warning: 'gtk_alignment_get_type' is deprecated
[-Wdeprecated-declarations]
   *align = g_object_new (GTK_TYPE_ALIGNMENT,
   ^
In file included from /usr/include/gtk-3.0/gtk/gtk.h:248:0,
                 from mb-appearance.c:28:
/usr/include/gtk-3.0/gtk/deprecated/gtkalignment.h:77:12: note: declared
here
 GType      gtk_alignment_get_type   (void) G_GNUC_CONST;
            ^
mb-appearance.c: In function 'main':
mb-appearance.c:385:41: warning: 'GtkStock' is deprecated
[-Wdeprecated-declarations]
                                         GTK_STOCK_CLOSE,
GTK_RESPONSE_CLOSE,
                                         ^

Should be simple to fix?

Ross

On 29 April 2016 at 11:51, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
> ---
>  appearance/mb-appearance.c | 4 ++--
>  configure.ac               | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/appearance/mb-appearance.c b/appearance/mb-appearance.c
> index 34640b4..6dfe98e 100644
> --- a/appearance/mb-appearance.c
> +++ b/appearance/mb-appearance.c
> @@ -381,14 +381,14 @@ main (int argc, char **argv) {
>    gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (theme_store),
> COL_NAME, GTK_SORT_ASCENDING);
>
>    dialog = gtk_dialog_new_with_buttons (_("Appearance"), NULL,
> -                                        GTK_DIALOG_NO_SEPARATOR,
> +                                        0,
>                                          GTK_STOCK_CLOSE,
> GTK_RESPONSE_CLOSE,
>                                          NULL);
>    g_signal_connect (dialog, "response", G_CALLBACK (gtk_main_quit), NULL);
>
>    gtk_window_set_resizable (GTK_WINDOW (dialog), FALSE);
>
> -  box = GTK_BOX (GTK_DIALOG (dialog)->vbox);
> +  box = GTK_BOX (gtk_dialog_get_content_area (GTK_DIALOG (dialog)));
>    gtk_box_set_spacing (box, 6);
>    gtk_container_set_border_width (GTK_CONTAINER (dialog), 6);
>
> diff --git a/configure.ac b/configure.ac
> index b6d6034..882e319 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -7,7 +7,7 @@ AC_ISC_POSIX
>  AC_PROG_CC
>  AC_STDC_HEADERS
>
> -PKG_CHECK_MODULES(GTK, gtk+-2.0)
> +PKG_CHECK_MODULES(GTK, gtk+-3.0)
>  PKG_CHECK_MODULES(GCONF, gconf-2.0)
>
>  CFLAGS="$CFLAGS -Wall"
> --
> 2.8.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e014953cce86f160531a16903
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>mb-appearance.c: In func=
tion &#39;new_frame&#39;:</div><div>mb-appearance.c:352:3: warning: &#39;gt=
k_alignment_get_type&#39; is deprecated [-Wdeprecated-declarations]</div><d=
iv>=C2=A0 =C2=A0*align =3D g_object_new (GTK_TYPE_ALIGNMENT,</div><div>=C2=
=A0 =C2=A0^</div><div>In file included from /usr/include/gtk-3.0/gtk/gtk.h:=
248:0,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from mb-appearance.c:28:</div><div>/usr/include/gtk-3.0/gtk/deprecate=
d/gtkalignment.h:77:12: note: declared here</div><div>=C2=A0GType =C2=A0 =
=C2=A0 =C2=A0gtk_alignment_get_type =C2=A0 (void) G_GNUC_CONST;</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>mb-appearance.c: In f=
unction &#39;main&#39;:</div><div>mb-appearance.c:385:41: warning: &#39;Gtk=
Stock&#39; is deprecated [-Wdeprecated-declarations]</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GTK_STOCK_CLO=
SE, GTK_RESPONSE_CLOSE,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div><br></div><div>Should be simple =
to fix?</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On 29 April 2016 at 11:51, Jussi Kukkonen <=
span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@intel.com" target=3D"=
_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Signed-off-by: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kuk=
konen@intel.com">jussi.kukkonen@intel.com</a>&gt;<br>
---<br>
=C2=A0appearance/mb-appearance.c | 4 ++--<br>
=C2=A0<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 =
+-<br>
=C2=A02 files changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/appearance/mb-appearance.c b/appearance/mb-appearance.c<br>
index 34640b4..6dfe98e 100644<br>
--- a/appearance/mb-appearance.c<br>
+++ b/appearance/mb-appearance.c<br>
@@ -381,14 +381,14 @@ main (int argc, char **argv) {<br>
=C2=A0 =C2=A0gtk_tree_sortable_set_sort_column_id (GTK_TREE_SORTABLE (theme=
_store), COL_NAME, GTK_SORT_ASCENDING);<br>
<br>
=C2=A0 =C2=A0dialog =3D gtk_dialog_new_with_buttons (_(&quot;Appearance&quo=
t;), NULL,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GTK_DIAL=
OG_NO_SEPARATOR,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GT=
K_STOCK_CLOSE, GTK_RESPONSE_CLOSE,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NU=
LL);<br>
=C2=A0 =C2=A0g_signal_connect (dialog, &quot;response&quot;, G_CALLBACK (gt=
k_main_quit), NULL);<br>
<br>
=C2=A0 =C2=A0gtk_window_set_resizable (GTK_WINDOW (dialog), FALSE);<br>
<br>
-=C2=A0 box =3D GTK_BOX (GTK_DIALOG (dialog)-&gt;vbox);<br>
+=C2=A0 box =3D GTK_BOX (gtk_dialog_get_content_area (GTK_DIALOG (dialog)))=
;<br>
=C2=A0 =C2=A0gtk_box_set_spacing (box, 6);<br>
=C2=A0 =C2=A0gtk_container_set_border_width (GTK_CONTAINER (dialog), 6);<br=
>
<br>
diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_=
blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"noreferrer=
" target=3D"_blank">configure.ac</a><br>
index b6d6034..882e319 100644<br>
--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
@@ -7,7 +7,7 @@ AC_ISC_POSIX<br>
=C2=A0AC_PROG_CC<br>
=C2=A0AC_STDC_HEADERS<br>
<br>
-PKG_CHECK_MODULES(GTK, gtk+-2.0)<br>
+PKG_CHECK_MODULES(GTK, gtk+-3.0)<br>
=C2=A0PKG_CHECK_MODULES(GCONF, gconf-2.0)<br>
<br>
=C2=A0CFLAGS=3D&quot;$CFLAGS -Wall&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.8.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e014953cce86f160531a16903--
