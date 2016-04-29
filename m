Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A67DE00791; Fri, 29 Apr 2016 08:23:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64AB9E00566
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:23:56 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id 190so105241641iow.1
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 08:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qQX71oAIXEDDAOiPnHkJ+teKPtSj/hDdbRqsnhTUul0=;
	b=SxzLRejmmfNHcp52CHLnFidnFh0WfIFTAhJHx8D7GewWq+UTHSzgptpc0iuL1/2JHi
	jnDAjtsJSrtFQnyT7UTs4fKfdaq+zdHK+8dOtCik5p/saXB9FUgpKAAePl5cWWgzzKu+
	puDoi0NROmNbnXRCsXvNmo/NBGcRj/6s6z9DdrMqoog+sfMyUFiWTs4C10bYDfCboSZH
	6Dg0LhYdiUmBJHDnAY8U/TyZkRGEfAZybsoSTtkAzKtmRwavMrJkbXOUtSTagYtM0avn
	u069jIOHVqGCAN6FB8MYGGuCccAaXowisK/a67X9vdx93EaiqS+cKtJEvE9EhCl+w/NK
	w4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qQX71oAIXEDDAOiPnHkJ+teKPtSj/hDdbRqsnhTUul0=;
	b=R/Vqe3Z/hDPasPtiqzFDFbnjtjoXHGqAjM/t0NkKpPDBbf59mXYi9aB46J61Ug5vJD
	gqt3yHQKPOgNnQVLiTBjzYSDa1sAuiEditZkQ3hL8a+TDDlykDY+dhZPUPkigDnQFCoz
	eSbUH3Zy7KEmhlfpMLj8DMfibiZWsWFXASYlDWHNk1ui6t2jCXT4WNEvAnogCe7temaX
	Ud9uvM3CRA57msZfvMSdvESH4hBcFGJH18ojFKV3ZzCmN9CtNFD7W1oJ2BncAxALrMJ0
	/BX83QxAbuFkdgiZXE3rKZ6IISTw6SoPhcCVnGy5hce/n72bjCEw8DXjSy5Glqd2c8GF
	QVPg==
X-Gm-Message-State: AOPr4FVb+92DaZsKyQRUDf8bMZUGp7YQkVyXQ3lP8eAmHU+3TlXJXOEyvJJjJP71w365eCLysgSNpY32SlwwR3/2
X-Received: by 10.107.135.211 with SMTP id r80mr26891216ioi.133.1461943436357; 
	Fri, 29 Apr 2016 08:23:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 08:23:37 -0700 (PDT)
In-Reply-To: <d18ab41e50dee480aa2d9f6216bef6005499327c.1461925753.git.jussi.kukkonen@intel.com>
References: <cover.1461925753.git.jussi.kukkonen@intel.com>
	<d18ab41e50dee480aa2d9f6216bef6005499327c.1461925753.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 16:23:37 +0100
Message-ID: <CAJTo0LZRYKTx97hzJVMWh-8P1iuJ1cLYUoabB+aNfgdub-My+A@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-terminal][PATCH 1/1] Upgrade to current Vte and Gtk+ versions
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
X-List-Received-Date: Fri, 29 Apr 2016 15:23:59 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a34df410531a13bc0

--001a113ed20a34df410531a13bc0
Content-Type: text/plain; charset=UTF-8

Merged and pushed, thanks Jussi.  I've started tagging the last GTK+ 2
commit with 'GTK+2'.

Ross

On 29 April 2016 at 11:41, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
> ---
>  Makefile.am  |  4 ++--
>  configure.ac |  2 +-
>  main.c       | 49 +++++++++++++++++++++++++++++++++++++++----------
>  3 files changed, 42 insertions(+), 13 deletions(-)
>
> diff --git a/Makefile.am b/Makefile.am
> index 480fbc0..ef2125c 100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -1,6 +1,6 @@
> -AM_CPPFLAGS = $(VTE_CFLAGS)
> +AM_CPPFLAGS = $(MBTERM_CFLAGS)
>  AM_CFLAGS = -Wall
> -LDADD = $(VTE_LIBS)
> +LDADD = $(MBTERM_LIBS)
>
>  bin_PROGRAMS = matchbox-terminal
>  matchbox_terminal_SOURCES = main.c
> diff --git a/configure.ac b/configure.ac
> index d46da3d..0257274 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -7,7 +7,7 @@ AM_CONFIG_HEADER(config.h)
>  AC_PROG_CPP
>  AC_PROG_CC
>
> -PKG_CHECK_MODULES(VTE, vte)
> +PKG_CHECK_MODULES(MBTERM, glib-2.0 gtk+-3.0 vte-2.91)
>
>  AC_OUTPUT([
>  Makefile
> diff --git a/main.c b/main.c
> index bda26d1..0d4597c 100644
> --- a/main.c
> +++ b/main.c
> @@ -18,13 +18,15 @@
>
>  #include <gtk/gtk.h>
>  #include <vte/vte.h>
> +#include <glib.h>
>
>  static void
>  on_window_title_changed (VteTerminal *terminal, GtkWindow *window)
>  {
>    char *title;
>
> -  title = g_strdup_printf ("%s - Terminal", terminal->window_title);
> +  title = g_strdup_printf ("%s - Terminal",
> +                           vte_terminal_get_window_title (terminal));
>    gtk_window_set_title (window, title);
>    g_free (title);
>  }
> @@ -38,16 +40,22 @@ on_eof (VteTerminal *terminal, gpointer user_data)
>  int
>  main (int argc, char **argv)
>  {
> -  GtkWidget *window, *box, *terminal, *scrollbar;
> -
> +  GtkWidget *window, *terminal, *scrolled_win;
> +  GError *err = NULL;
> +  char *cmd;
> +  char **cmd_argv = NULL;
> +  int cmd_argc;
> +
>    gtk_init (&argc, &argv);
>
>    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
>    g_signal_connect (window, "destroy", gtk_main_quit, NULL);
>    gtk_window_set_title (GTK_WINDOW (window), "Terminal");
>
> -  box = gtk_hbox_new (FALSE, 0);
> -  gtk_container_add (GTK_CONTAINER (window), box);
> +  scrolled_win = gtk_scrolled_window_new (NULL, NULL);
> +  gtk_scrolled_window_set_policy (GTK_SCROLLED_WINDOW(scrolled_win),
> +                                  GTK_POLICY_NEVER, GTK_POLICY_ALWAYS);
> +  gtk_container_add (GTK_CONTAINER (window), scrolled_win);
>
>    terminal = g_object_connect
>      (vte_terminal_new (),
> @@ -57,17 +65,38 @@ main (int argc, char **argv)
>       /* Child is trying to control the terminal */
>       "signal::window-title-changed", on_window_title_changed, window,
>       NULL);
> -  gtk_box_pack_start (GTK_BOX (box), terminal, TRUE, TRUE, 0);
> +  gtk_container_add (GTK_CONTAINER (scrolled_win), terminal);
> +
> +  cmd = vte_get_user_shell ();
> +  if (!cmd)
> +    cmd = g_strdup (g_getenv ("SHELL"));
> +  if (!cmd)
> +    cmd = g_strdup ("/bin/sh");
> +
> +  if (!g_shell_parse_argv(cmd, &cmd_argc, &cmd_argv, &err)) {
> +    g_printerr ("Failed to parse shell command line '%s'\n", cmd);
> +  } else if (!vte_terminal_spawn_sync (VTE_TERMINAL (terminal),
> +                                       VTE_PTY_DEFAULT,
> +                                       NULL,
> +                                       cmd_argv,
> +                                       NULL,
> +                                       G_SPAWN_SEARCH_PATH,
> +                                       NULL,
> +                                       NULL,
> +                                       NULL,
> +                                       NULL,
> +                                       &err)) {
> +    g_printerr ("Failed to spawn shell: %s\n", err->message);
> +    g_error_free (err);
> +  }
>
> -  scrollbar = gtk_vscrollbar_new (VTE_TERMINAL (terminal)->adjustment);
> -  gtk_box_pack_start (GTK_BOX (box), scrollbar, FALSE, FALSE, 0);
>
> -  vte_terminal_fork_command (VTE_TERMINAL (terminal),
> -                             NULL, NULL, NULL, NULL, TRUE, TRUE, TRUE);
> +  gtk_window_set_default_size (GTK_WINDOW (window), 640, 480);
>
>    gtk_widget_show_all (window);
>
>    gtk_main ();
>
> +  g_free (cmd);
>    return 0;
>  }
> --
> 2.8.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113ed20a34df410531a13bc0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged and pushed, thanks Jussi.=C2=A0 I&#39;ve started ta=
gging the last GTK+ 2 commit with &#39;GTK+2&#39;.<div><br></div><div>Ross<=
/div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 29 =
April 2016 at 11:41, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto=
:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">Signed-off-by: Jussi Kuk=
konen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.kukkonen@intel.=
com</a>&gt;<br>
---<br>
=C2=A0Makefile.am=C2=A0 |=C2=A0 4 ++--<br>
=C2=A0<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a> |=C2=A0 2 +-<br>
=C2=A0main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 49 +++++++++++++++++++++++++++++++=
++++++++----------<br>
=C2=A03 files changed, 42 insertions(+), 13 deletions(-)<br>
<br>
diff --git a/Makefile.am b/Makefile.am<br>
index 480fbc0..ef2125c 100644<br>
--- a/Makefile.am<br>
+++ b/Makefile.am<br>
@@ -1,6 +1,6 @@<br>
-AM_CPPFLAGS =3D $(VTE_CFLAGS)<br>
+AM_CPPFLAGS =3D $(MBTERM_CFLAGS)<br>
=C2=A0AM_CFLAGS =3D -Wall<br>
-LDADD =3D $(VTE_LIBS)<br>
+LDADD =3D $(MBTERM_LIBS)<br>
<br>
=C2=A0bin_PROGRAMS =3D matchbox-terminal<br>
=C2=A0matchbox_terminal_SOURCES =3D main.c<br>
diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_=
blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"noreferrer=
" target=3D"_blank">configure.ac</a><br>
index d46da3d..0257274 100644<br>
--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
@@ -7,7 +7,7 @@ AM_CONFIG_HEADER(config.h)<br>
=C2=A0AC_PROG_CPP<br>
=C2=A0AC_PROG_CC<br>
<br>
-PKG_CHECK_MODULES(VTE, vte)<br>
+PKG_CHECK_MODULES(MBTERM, glib-2.0 gtk+-3.0 vte-2.91)<br>
<br>
=C2=A0AC_OUTPUT([<br>
=C2=A0Makefile<br>
diff --git a/main.c b/main.c<br>
index bda26d1..0d4597c 100644<br>
--- a/main.c<br>
+++ b/main.c<br>
@@ -18,13 +18,15 @@<br>
<br>
=C2=A0#include &lt;gtk/gtk.h&gt;<br>
=C2=A0#include &lt;vte/vte.h&gt;<br>
+#include &lt;glib.h&gt;<br>
<br>
=C2=A0static void<br>
=C2=A0on_window_title_changed (VteTerminal *terminal, GtkWindow *window)<br=
>
=C2=A0{<br>
=C2=A0 =C2=A0char *title;<br>
<br>
-=C2=A0 title =3D g_strdup_printf (&quot;%s - Terminal&quot;, terminal-&gt;=
window_title);<br>
+=C2=A0 title =3D g_strdup_printf (&quot;%s - Terminal&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0vte_terminal_get_window_title (terminal));<br>
=C2=A0 =C2=A0gtk_window_set_title (window, title);<br>
=C2=A0 =C2=A0g_free (title);<br>
=C2=A0}<br>
@@ -38,16 +40,22 @@ on_eof (VteTerminal *terminal, gpointer user_data)<br>
=C2=A0int<br>
=C2=A0main (int argc, char **argv)<br>
=C2=A0{<br>
-=C2=A0 GtkWidget *window, *box, *terminal, *scrollbar;<br>
-<br>
+=C2=A0 GtkWidget *window, *terminal, *scrolled_win;<br>
+=C2=A0 GError *err =3D NULL;<br>
+=C2=A0 char *cmd;<br>
+=C2=A0 char **cmd_argv =3D NULL;<br>
+=C2=A0 int cmd_argc;<br>
+<br>
=C2=A0 =C2=A0gtk_init (&amp;argc, &amp;argv);<br>
<br>
=C2=A0 =C2=A0window =3D gtk_window_new (GTK_WINDOW_TOPLEVEL);<br>
=C2=A0 =C2=A0g_signal_connect (window, &quot;destroy&quot;, gtk_main_quit, =
NULL);<br>
=C2=A0 =C2=A0gtk_window_set_title (GTK_WINDOW (window), &quot;Terminal&quot=
;);<br>
<br>
-=C2=A0 box =3D gtk_hbox_new (FALSE, 0);<br>
-=C2=A0 gtk_container_add (GTK_CONTAINER (window), box);<br>
+=C2=A0 scrolled_win =3D gtk_scrolled_window_new (NULL, NULL);<br>
+=C2=A0 gtk_scrolled_window_set_policy (GTK_SCROLLED_WINDOW(scrolled_win),<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GTK_POLICY_NEVER, GTK_POLICY_=
ALWAYS);<br>
+=C2=A0 gtk_container_add (GTK_CONTAINER (window), scrolled_win);<br>
<br>
=C2=A0 =C2=A0terminal =3D g_object_connect<br>
=C2=A0 =C2=A0 =C2=A0(vte_terminal_new (),<br>
@@ -57,17 +65,38 @@ main (int argc, char **argv)<br>
=C2=A0 =C2=A0 =C2=A0 /* Child is trying to control the terminal */<br>
=C2=A0 =C2=A0 =C2=A0 &quot;signal::window-title-changed&quot;, on_window_ti=
tle_changed, window,<br>
=C2=A0 =C2=A0 =C2=A0 NULL);<br>
-=C2=A0 gtk_box_pack_start (GTK_BOX (box), terminal, TRUE, TRUE, 0);<br>
+=C2=A0 gtk_container_add (GTK_CONTAINER (scrolled_win), terminal);<br>
+<br>
+=C2=A0 cmd =3D vte_get_user_shell ();<br>
+=C2=A0 if (!cmd)<br>
+=C2=A0 =C2=A0 cmd =3D g_strdup (g_getenv (&quot;SHELL&quot;));<br>
+=C2=A0 if (!cmd)<br>
+=C2=A0 =C2=A0 cmd =3D g_strdup (&quot;/bin/sh&quot;);<br>
+<br>
+=C2=A0 if (!g_shell_parse_argv(cmd, &amp;cmd_argc, &amp;cmd_argv, &amp;err=
)) {<br>
+=C2=A0 =C2=A0 g_printerr (&quot;Failed to parse shell command line &#39;%s=
&#39;\n&quot;, cmd);<br>
+=C2=A0 } else if (!vte_terminal_spawn_sync (VTE_TERMINAL (terminal),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VTE_PTY_D=
EFAULT,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cmd_argv,=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0G_SPAWN_S=
EARCH_PATH,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;err)=
) {<br>
+=C2=A0 =C2=A0 g_printerr (&quot;Failed to spawn shell: %s\n&quot;, err-&gt=
;message);<br>
+=C2=A0 =C2=A0 g_error_free (err);<br>
+=C2=A0 }<br>
<br>
-=C2=A0 scrollbar =3D gtk_vscrollbar_new (VTE_TERMINAL (terminal)-&gt;adjus=
tment);<br>
-=C2=A0 gtk_box_pack_start (GTK_BOX (box), scrollbar, FALSE, FALSE, 0);<br>
<br>
-=C2=A0 vte_terminal_fork_command (VTE_TERMINAL (terminal),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NULL, NULL, NULL, NULL, TRUE, TRUE, TRUE);<b=
r>
+=C2=A0 gtk_window_set_default_size (GTK_WINDOW (window), 640, 480);<br>
<br>
=C2=A0 =C2=A0gtk_widget_show_all (window);<br>
<br>
=C2=A0 =C2=A0gtk_main ();<br>
<br>
+=C2=A0 g_free (cmd);<br>
=C2=A0 =C2=A0return 0;<br>
=C2=A0}<br>
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

--001a113ed20a34df410531a13bc0--
