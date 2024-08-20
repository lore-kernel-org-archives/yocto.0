Return-Path: <anibal@limonsoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EDDAC3DA4A
	for <webhook@archiver.kernel.org>; Tue, 20 Aug 2024 14:12:42 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.20294.1724163160519325010
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Aug 2024 07:12:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@limonsoftware-com.20230601.gappssmtp.com header.s=20230601 header.b=MynpXLR9;
 spf=pass (domain: limonsoftware.com, ip: 209.85.128.177, mailfrom: anibal@limonsoftware.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6b8d96aa4c3so22583467b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 Aug 2024 07:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=limonsoftware-com.20230601.gappssmtp.com; s=20230601; t=1724163159; x=1724767959; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s4xrkJuQ7NCtNJmM2BCrMOAL/N/KWOXZ5kSqwywmSWA=;
        b=MynpXLR9pBxHNeGp8tdDKvFjNzjsZEA5d4x/MUBRvuGcA/vfjEUgnEjJStOUd1xwyj
         tHTo1/1BSASPaOBNN2/48y3OeDG3zt9zwzsZJiSvwsZPGHzS1SpjzOPAbZlmlA47OlMP
         gbJKfuKaS3bS5DwL4zUeL6m4MF1bbttSLucmpbgPjYE0hHQzHC2mKuq5rTLTNR5Mr++Z
         MqWK1dvr/eC/GRlW61u/C9KaBAN5o+/WueAlAei3hVpfVx/mT5VOYYMGW9KkWGyHzOVZ
         N9tMTZHU0u65U5aZ6R1miAEiEdK5T2zWmA4QZv/ulPotYxrlpA/yuuPaLT0IklJqkuZh
         +N4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724163159; x=1724767959;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s4xrkJuQ7NCtNJmM2BCrMOAL/N/KWOXZ5kSqwywmSWA=;
        b=KWkeuHIlcVuJ1nObFeh2z2QQDelsFkQgC/xhHg3GXrZtwh95vxNk4A6H3KTzIildPd
         mfTw9BijX6t5nG3NtcmMgHCMryBT11To6kGZHJhIckTVFbUF2g8nPXN5QYoU8IXBEJwT
         XgNuqLa1102pQqBETN7TA7x40J5RTi+JBmAl5NyMG1XQPRXcZwTNlIcI/gPn8TPbqCvp
         3zaA+EHOOGeC5P2DzUnufNSXnjtJYFb0Wl//HrFBK5c7Wtdxnbh6NyYXqOWsa2vrUsH3
         ql0Cfuuy34ltxz7vyK3vztxqp42S3OVUwY7REdY9FF/MATYhcUYQeRVrrWvr2DBSgQNT
         9ylg==
X-Gm-Message-State: AOJu0Yy12lZvw8j/0YTAhac/Wy8nv2E+sbI2lKTgjw1ZJL3extCU26rJ
	E7VszhBEaS9A1jK2JPuI8ZUHFOTdV5G1ad/2u9fp5INMOLiV55KQi9OFd0n4BxIe4ax8Ol1SDn3
	q+G/C293mvL9rIOpZik1nV5K9cVHw/CVQmZ94ozyHPkleuMj8LNw=
X-Google-Smtp-Source: AGHT+IEu8R/lBL0C289lBnFkshmqaciXtNtrX+vIfuu3jFYmeTlKZHQ90hWuqWfWTm36vbLdl5Q83mLaJlkxQ2FdkWw=
X-Received: by 2002:a05:690c:3702:b0:6b7:3da:cffd with SMTP id
 00721157ae682-6b703dad0demr100246487b3.15.1724163158502; Tue, 20 Aug 2024
 07:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <a6577fc4899e28c7a78d7f913d42783f0dd508ea.1724131245.git.joerg.sommer@navimatix.de>
In-Reply-To: <a6577fc4899e28c7a78d7f913d42783f0dd508ea.1724131245.git.joerg.sommer@navimatix.de>
From: Anibal Limon <anibal@limonsoftware.com>
Date: Tue, 20 Aug 2024 08:12:27 -0600
Message-ID: <CAOU5ZMsJH7CNy++MZk8WK7AOSUpizmVKkvHdwz9vz6f0Sk2gdQ@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner][PATCH] ptest_list_remove: Fix pointer
 adjustment of prev and next
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
Content-Type: multipart/alternative; boundary="000000000000990e0c06201e040a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Aug 2024 14:12:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63728

--000000000000990e0c06201e040a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joerg,

Thanks, the patch fixes a very clear error, I applied it and bump to the
next point release.

Cheers!,
Anibal

On Mon, Aug 19, 2024 at 11:20=E2=80=AFPM J=C3=B6rg Sommer via lists.yoctopr=
oject.org
<joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:

> From: J=C3=B6rg Sommer <joerg.sommer@navimatix.de>
>
> The back pointer of the next list element was not updated. This lead to
> SEGV under some circumstances.
>
> Signed-off-by: J=C3=B6rg Sommer <joerg.sommer@navimatix.de>
> ---
>  ptest_list.c       |  5 +++-
>  tests/ptest_list.c | 64 ++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 68 insertions(+), 1 deletion(-)
>
> diff --git a/ptest_list.c b/ptest_list.c
> index 917ef4f..c221ebf 100644
> --- a/ptest_list.c
> +++ b/ptest_list.c
> @@ -206,7 +206,10 @@ ptest_list_remove(struct ptest_list *head, char
> *ptest, int free)
>                 q =3D p->prev;
>                 r =3D p->next;
>
> -               q->next =3D r;
> +               if (q !=3D NULL)
> +                       q->next =3D r;
> +               if (r !=3D NULL)
> +                       r->prev =3D q;
>
>                 if (free) {
>                         ptest_list_free(p);
> diff --git a/tests/ptest_list.c b/tests/ptest_list.c
> index 081f027..c3aa107 100644
> --- a/tests/ptest_list.c
> +++ b/tests/ptest_list.c
> @@ -145,6 +145,67 @@ START_TEST(test_remove)
>  }
>  END_TEST
>
> +START_TEST(test_remove_first)
> +{
> +       struct ptest_list *head =3D ptest_list_alloc();
> +       struct ptest_list *p;
> +
> +       ptest_list_add(head, strdup("a"), NULL);
> +       ptest_list_add(head, strdup("b"), NULL);
> +       ptest_list_add(head, strdup("c"), NULL);
> +
> +       p =3D ptest_list_remove(head, "a", 0);
> +       ck_assert_ptr_nonnull(p);
> +       ck_assert_str_eq(p->ptest, "a");
> +       ptest_list_free(p);
> +
> +       ck_assert_ptr_null(ptest_list_search(head, "a"));
> +       ck_assert_ptr_nonnull(ptest_list_search(head, "b"));
> +       ck_assert_ptr_nonnull(ptest_list_search(head, "c"));
> +       ck_assert_int_eq(ptest_list_length(head), 2);
> +
> +       ptest_list_free_all(head);
> +}
> +END_TEST
> +
> +START_TEST(test_remove_last)
> +{
> +       struct ptest_list *head =3D ptest_list_alloc();
> +       struct ptest_list *p;
> +
> +       ptest_list_add(head, strdup("a"), NULL);
> +       ptest_list_add(head, strdup("b"), NULL);
> +       ptest_list_add(head, strdup("c"), NULL);
> +
> +       p =3D ptest_list_remove(head, "c", 0);
> +       ck_assert_ptr_nonnull(p);
> +       ck_assert_str_eq(p->ptest, "c");
> +       ptest_list_free(p);
> +
> +       ck_assert_ptr_nonnull(ptest_list_search(head, "a"));
> +       ck_assert_ptr_nonnull(ptest_list_search(head, "b"));
> +       ck_assert_ptr_null(ptest_list_search(head, "c"));
> +       ck_assert_int_eq(ptest_list_length(head), 2);
> +
> +       ptest_list_free_all(head);
> +}
> +END_TEST
> +
> +START_TEST(test_remove_all)
> +{
> +       struct ptest_list *head =3D ptest_list_alloc();
> +
> +       ptest_list_add(head, strdup("a"), NULL);
> +       ptest_list_add(head, strdup("b"), NULL);
> +
> +       ck_assert_ptr_null(ptest_list_remove(head, "a", 1));
> +       ck_assert_ptr_null(ptest_list_remove(head, "b", 1));
> +       ck_assert_int_eq(ptest_list_length(head), 0);
> +
> +       ptest_list_free_all(head);
> +}
> +END_TEST
> +
>  Suite *
>  ptest_list_suite()
>  {
> @@ -160,6 +221,9 @@ ptest_list_suite()
>         tcase_add_test(tc_core, test_length);
>         tcase_add_test(tc_core, test_search);
>         tcase_add_test(tc_core, test_remove);
> +       tcase_add_test(tc_core, test_remove_first);
> +       tcase_add_test(tc_core, test_remove_last);
> +       tcase_add_test(tc_core, test_remove_all);
>
>         suite_add_tcase(s, tc_core);
>
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63723):
> https://lists.yoctoproject.org/g/yocto/message/63723
> Mute This Topic: https://lists.yoctoproject.org/mt/107995723/8181911
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> anibal@limonsoftware.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000990e0c06201e040a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joerg,<div><br></div><div>Thanks, the patch fixes a ver=
y clear error, I applied it and bump to the next point release.</div><div><=
br></div><div>Cheers!,</div><div>Anibal</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 19, 2024 at 11:20=
=E2=80=AFPM J=C3=B6rg Sommer via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;joerg.sommer=3D<a href=3D"mailto:navimatix.d=
e@lists.yoctoproject.org">navimatix.de@lists.yoctoproject.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: J=C3=B6r=
g Sommer &lt;<a href=3D"mailto:joerg.sommer@navimatix.de" target=3D"_blank"=
>joerg.sommer@navimatix.de</a>&gt;<br>
<br>
The back pointer of the next list element was not updated. This lead to<br>
SEGV under some circumstances.<br>
<br>
Signed-off-by: J=C3=B6rg Sommer &lt;<a href=3D"mailto:joerg.sommer@navimati=
x.de" target=3D"_blank">joerg.sommer@navimatix.de</a>&gt;<br>
---<br>
=C2=A0ptest_list.c=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 5 +++-<br>
=C2=A0tests/ptest_list.c | 64 +++++++++++++++++++++++++++++++++++++++++++++=
+<br>
=C2=A02 files changed, 68 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/ptest_list.c b/ptest_list.c<br>
index 917ef4f..c221ebf 100644<br>
--- a/ptest_list.c<br>
+++ b/ptest_list.c<br>
@@ -206,7 +206,10 @@ ptest_list_remove(struct ptest_list *head, char *ptest=
, int free)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D p-&gt;prev;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 r =3D p-&gt;next;<b=
r>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0q-&gt;next =3D r;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (q !=3D NULL)<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0q-&gt;next =3D r;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (r !=3D NULL)<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0r-&gt;prev =3D q;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (free) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ptest_list_free(p);<br>
diff --git a/tests/ptest_list.c b/tests/ptest_list.c<br>
index 081f027..c3aa107 100644<br>
--- a/tests/ptest_list.c<br>
+++ b/tests/ptest_list.c<br>
@@ -145,6 +145,67 @@ START_TEST(test_remove)<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
+START_TEST(test_remove_first)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D ptest_list_alloc();=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *p;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;a&quot;), NUL=
L);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;b&quot;), NUL=
L);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;c&quot;), NUL=
L);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D ptest_list_remove(head, &quot;a&quot;, 0)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(p);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_str_eq(p-&gt;ptest, &quot;a&quot;);<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free(p);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_null(ptest_list_search(head, &quo=
t;a&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(ptest_list_search(head, &=
quot;b&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(ptest_list_search(head, &=
quot;c&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_int_eq(ptest_list_length(head), 2);<b=
r>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+}<br>
+END_TEST<br>
+<br>
+START_TEST(test_remove_last)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D ptest_list_alloc();=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *p;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;a&quot;), NUL=
L);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;b&quot;), NUL=
L);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;c&quot;), NUL=
L);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D ptest_list_remove(head, &quot;c&quot;, 0)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(p);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_str_eq(p-&gt;ptest, &quot;c&quot;);<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free(p);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(ptest_list_search(head, &=
quot;a&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_nonnull(ptest_list_search(head, &=
quot;b&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_null(ptest_list_search(head, &quo=
t;c&quot;));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_int_eq(ptest_list_length(head), 2);<b=
r>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+}<br>
+END_TEST<br>
+<br>
+START_TEST(test_remove_all)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D ptest_list_alloc();=
<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;a&quot;), NUL=
L);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_add(head, strdup(&quot;b&quot;), NUL=
L);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_null(ptest_list_remove(head, &quo=
t;a&quot;, 1));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_ptr_null(ptest_list_remove(head, &quo=
t;b&quot;, 1));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert_int_eq(ptest_list_length(head), 0);<b=
r>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+}<br>
+END_TEST<br>
+<br>
=C2=A0Suite *<br>
=C2=A0ptest_list_suite()<br>
=C2=A0{<br>
@@ -160,6 +221,9 @@ ptest_list_suite()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tcase_add_test(tc_core, test_length);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tcase_add_test(tc_core, test_search);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tcase_add_test(tc_core, test_remove);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tcase_add_test(tc_core, test_remove_first);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tcase_add_test(tc_core, test_remove_last);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tcase_add_test(tc_core, test_remove_all);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 suite_add_tcase(s, tc_core);<br>
<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63723): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63723" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63723</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107995723/818=
1911" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107995723/8181911</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:anibal@limonsoftware.com" target=3D"_blank">anib=
al@limonsoftware.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000990e0c06201e040a--

