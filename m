Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C570E00C3C; Mon, 19 Nov 2018 10:16:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB950E00C09
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 10:16:17 -0800 (PST)
Received: by mail-ed1-f68.google.com with SMTP id o10so3584123edt.13
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 10:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4dKAmeiHyufIFZ2oGGAEjvvNnf4tH8/U0ZjspqbjjvQ=;
	b=TD/YLmYpP7AEq4fzsqTLfqtF27cIcRriJp0U9IUFNfTVm5Lu2ACXbGQNZOk/GZz3qZ
	Nrte+8ZFWimVCOzn+5SwaEsEmeNblidlrqvwjQ6jenPnA1LyQu6AYSymsNhbbGWkzWMq
	lgczY59WHL4QJvgwZFSWDxh5pizbRRt5+Fl775r6AaOaaGT4+qYJ2InFIR1jcD2sTMJU
	vUxhpYjQstFSfHl/g0Xi43HSHAABxGF0qHjsXXvoHU9IdW67u2hOm4AGYO4VezLA329q
	dpw//TENJPc/K+NTyJVrZf43qhrv65wzbD+Gc+fidPfC1iJFu6NOFgJUMDveCNMhmjP+
	Z6NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4dKAmeiHyufIFZ2oGGAEjvvNnf4tH8/U0ZjspqbjjvQ=;
	b=RIBH3s5C956UKX2CLAf1QFwTNj0SKGCnQi20lA4nGLaMR9VMsNS62OKKxpbrpNxIHR
	A1NdbwuDBsgJcKFxZ4Qlo8LwwnNLAbXKiKHhFSZAsgL460KcvfjC9ipe+hXPMmoSsiJE
	GnzmitUAHJzUWaJXEDXajsGGSrfJ7Mw2MIVhBajaOEDBdAae7bXkKA3/l46DhnbHVunS
	iNuRzvwwNcccfSiLucE5vfJE4pg0kPEsUy7dcbLoX75tAsND+tVjVncOx5pMZ6DM2SYQ
	2FM62ST1lzDEzoFHE9rMPbBOvf1ZGxf2HfbPFAZ5K/xYeVOQ3kULTCJtC4Y0kNiPiNVE
	5+6g==
X-Gm-Message-State: AGRZ1gLEepZqv8rBgfGF6H8ie+2zxyKMM75Tuhp9WGx/H0b82uvY16F5
	qpjROip0bhU3BCQhi+wAFvalxnx1qOyDuR8bKOY=
X-Google-Smtp-Source: AJdET5ct10f2SC+qpLjTT64kAHDG9Xkhv84eSQaaNB7gvUKpaxVZfsp3LIg3Bw77aD+kL446ADi/6hQvUc2C5hdfBE4=
X-Received: by 2002:a50:a3d1:: with SMTP id t17mr21558347edb.238.1542651376962;
	Mon, 19 Nov 2018 10:16:16 -0800 (PST)
MIME-Version: 1.0
References: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 19 Nov 2018 10:16:04 -0800
Message-ID: <CAFNP8OuRthep-BdMDtNeed1a9XoCuEM6CM0n_ea6cb8pVXwECg@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [[yocto-docs][thud][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 18:16:19 -0000
Content-Type: multipart/alternative; boundary="00000000000056106e057b088364"

--00000000000056106e057b088364
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Armin,

See
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-suppo=
rted-distros
and let me know if the patch is good.

Thanks,
Scott

On Sun, Nov 18, 2018 at 6:15 PM Armin Kuster <akuster808@gmail.com> wrote:

> poky.conf
>     ubuntu-16.04
>     ubuntu-16.10
>     ubuntu-17.04
>     fedora-26
>     centos-7
>     debian-8
>     debian-9
>     opensuse-42.1
>     opensuse-42.2
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  documentation/ref-manual/ref-system-requirements.xml | 20
> ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-system-requirements.xml
> b/documentation/ref-manual/ref-system-requirements.xml
> index 9298e84..0abc47e 100644
> --- a/documentation/ref-manual/ref-system-requirements.xml
> +++ b/documentation/ref-manual/ref-system-requirements.xml
> @@ -93,19 +93,22 @@
>                  <listitem><para>Ubuntu 11.10</para></listitem>
>                  <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 13.10</para></listitem>
> -                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem> -->
> +                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 14.10</para></listitem>
>                  <listitem><para>Ubuntu 15.04</para></listitem>
> -                <listitem><para>Ubuntu 15.10</para></listitem>
> +                <listitem><para>Ubuntu 15.10</para></listitem> -->
>                  <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
> +                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>
> +                <listitem><para>Ubuntu 17.04 </para></listitem>
>  <!--                <listitem><para>Fedora 16 (Verne)</para></listitem>
>                  <listitem><para>Fedora 17 (Spherical)</para></listitem>
>                  <listitem><para>Fedora release 19 (Schr=C3=B6dinger's
> Cat)</para></listitem>
> -                <listitem><para>Fedora release 20
> (Heisenbug)</para></listitem> -->
> +                <listitem><para>Fedora release 20
> (Heisenbug)</para></listitem>
>                  <listitem><para>Fedora release 22</para></listitem>
>                  <listitem><para>Fedora release 23</para></listitem>
> -<!--                <listitem><para>Fedora release 24</para></listitem>
> -                <listitem><para>CentOS release 5.6
> (Final)</para></listitem>
> +                <listitem><para>Fedora release 24</para></listitem> -->
> +                <listitem><para>Fedora release 26</para></listitem>
> +<!--                <listitem><para>CentOS release 5.6
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.7
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.8
> (Final)</para></listitem>
>                  <listitem><para>CentOS release 6.3
> (Final)</para></listitem>
> @@ -121,13 +124,14 @@
>                  <listitem><para>Debian GNU/Linux 7.4
> (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.5
> (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.6
> (Wheezy)</para></listitem> -->
> -<!--                <listitem><para>openSUSE 11.4</para></listitem>
> +<!--                <listitem><para>openSUSE 11.4</para></listitem>
>                  <listitem><para>openSUSE 12.1</para></listitem>
>                  <listitem><para>openSUSE 12.2</para></listitem>
>                  <listitem><para>openSUSE 12.3</para></listitem>
> -                <listitem><para>openSUSE 13.1</para></listitem> -->
> -                <listitem><para>openSUSE 13.2</para></listitem>
> +                <listitem><para>openSUSE 13.1</para></listitem>
> +                <listitem><para>openSUSE 13.2</para></listitem> -->
>                  <listitem><para>openSUSE 42.1</para></listitem>
> +                <listitem><para>openSUSE 42.2</para></listitem>
>              </itemizedlist>
>          </para>
>
> --
> 2.7.4
>
>

--00000000000056106e057b088364
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Armin, <br></div><div><br></div><div=
>See <a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.htm=
l#detailed-supported-distros">https://yoctoproject.org/docs/2.6/ref-manual/=
ref-manual.html#detailed-supported-distros</a> and let me know if the patch=
 is good.</div><div><br></div><div>Thanks, <br></div><div>Scott<br></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Nov 18, 2=
018 at 6:15 PM Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com">aku=
ster808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">po=
ky.conf<br>
=C2=A0 =C2=A0 ubuntu-16.04<br>
=C2=A0 =C2=A0 ubuntu-16.10<br>
=C2=A0 =C2=A0 ubuntu-17.04<br>
=C2=A0 =C2=A0 fedora-26<br>
=C2=A0 =C2=A0 centos-7<br>
=C2=A0 =C2=A0 debian-8<br>
=C2=A0 =C2=A0 debian-9<br>
=C2=A0 =C2=A0 opensuse-42.1<br>
=C2=A0 =C2=A0 opensuse-42.2<br>
<br>
Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" tar=
get=3D"_blank">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-system-requirements.xml | 20 +++++++++++=
+--------<br>
=C2=A01 file changed, 12 insertions(+), 8 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documen=
tation/ref-manual/ref-system-requirements.xml<br>
index 9298e84..0abc47e 100644<br>
--- a/documentation/ref-manual/ref-system-requirements.xml<br>
+++ b/documentation/ref-manual/ref-system-requirements.xml<br>
@@ -93,19 +93,22 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 11.10&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 12.04 (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 13.10&lt;/para&gt;&lt;/listitem&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 14.04 (LTS)&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 14.04 (LTS)&lt;/para&gt;&lt;/listitem&gt; <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 14.10&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 15.04&lt;/para&gt;&lt;/listitem&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 15.10&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 15.10&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Ubuntu 16.04 (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 16.10 (LTS)&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Ubuntu 17.04 &lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;li=
stitem&gt;&lt;para&gt;Fedora 16 (Verne)&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Fedora 17 (Spherical)&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Fedora release 19 (Schr=C3=B6dinger&#39;s Cat)&lt;/para&gt;&=
lt;/listitem&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Fedora release 20 (Heisenbug)&lt;/para&gt;&lt;/listitem&gt; --&gt=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Fedora release 20 (Heisenbug)&lt;/para&gt;&lt;/listitem&gt; <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Fedora release 22&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Fedora release 23&lt;/para&gt;&lt;/listitem&gt;<br>
-&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listite=
m&gt;&lt;para&gt;Fedora release 24&lt;/para&gt;&lt;/listitem&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;CentOS release 5.6 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Fedora release 24&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;Fedora release 26&lt;/para&gt;&lt;/listitem&gt;<br>
+&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listite=
m&gt;&lt;para&gt;CentOS release 5.6 (Final)&lt;/para&gt;&lt;/listitem&gt;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;CentOS release 5.7 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;CentOS release 5.8 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;CentOS release 6.3 (Final)&lt;/para&gt;&lt;/listitem&gt;<br>
@@ -121,13 +124,14 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Debian GNU/Linux 7.4 (Wheezy)&lt;/para&gt;&lt;/listitem&gt;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Debian GNU/Linux 7.5 (Wheezy)&lt;/para&gt;&lt;/listitem&gt;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;Debian GNU/Linux 7.6 (Wheezy)&lt;/para&gt;&lt;/listitem&gt; =
--&gt;<br>
-&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listite=
m&gt;&lt;para&gt;openSUSE 11.4&lt;/para&gt;&lt;/listitem&gt;<br>
+&lt;!--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listite=
m&gt;&lt;para&gt;openSUSE 11.4&lt;/para&gt;&lt;/listitem&gt; <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;openSUSE 12.1&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;openSUSE 12.2&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;openSUSE 12.3&lt;/para&gt;&lt;/listitem&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;openSUSE 13.1&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;openSUSE 13.2&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;openSUSE 13.1&lt;/para&gt;&lt;/listitem&gt; <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;openSUSE 13.2&lt;/para&gt;&lt;/listitem&gt; --&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;listitem&=
gt;&lt;para&gt;openSUSE 42.1&lt;/para&gt;&lt;/listitem&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;listitem&gt;&l=
t;para&gt;openSUSE 42.2&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/itemizedlist&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;<br>
<br>
-- <br>
2.7.4<br>
<br>
</blockquote></div>

--00000000000056106e057b088364--
