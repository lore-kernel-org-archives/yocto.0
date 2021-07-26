Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web08.32318.1627316757810657094
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 09:25:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=QspUcPK/;
 spf=pass (domain: linaro.org, ip: 209.85.221.53, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f53.google.com with SMTP id g15so11824231wrd.3
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 09:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gm6P11TDqt0lcfXT/QSqNEWDJy4Qj+1fMWB7qgfKI9w=;
        b=QspUcPK/ZVmDo8+Rfnoc0P0dO10q5+FqGwdWWn11n1oglJY2e3JgFZ3dKstg3ic1QN
         JtLk8RTdfuFiscR4zHr1uddMw0d+Z/31bWANeJfQ/yQdN9PkdLxWAEdcLFJv6PBo/nSo
         1UOgwPQTUOcJdHLr8XCk60YRAwcwSJVYfcCh0iIfgck3k7ZkjR2a6eqvd/8d8XXKniqm
         yA/G6H+jEudYA58LU4OXIc2+/AhpTv+fLfi6DnYwz7UVO3GqPM7j8tjlkWY7SGCNbDec
         a6LVJBOU+qRGlPTrbCNg7Lrt8AKl7CIVpiraE80BZhsUee048qHt6fJFujAL2X/eK+OA
         7Xmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gm6P11TDqt0lcfXT/QSqNEWDJy4Qj+1fMWB7qgfKI9w=;
        b=DwEG+maSEl0iuXxVfpqAG5X5e3kEbEmXuC0IX+rtETWAgw5gcIclLaVPgWIwVeRbhM
         JBwvAcyc+BBJvvzthtIkWj8jfm7AK6p8TBSPwI38B1zIshczpw8t51SgoxJsXJMR0ryt
         UgHWbADiYJXblPg8riwi7MEqK+Y2LjfiCdpW+nKlHzJuI0+Z4t+LlKX3hXFTAlWzdXb5
         xBLNhAgu8jXogNTNkZ+NSa2Zyurmdb42lEUIx8/+9bMq5egoDDobPgdEO7TStJsWZi1x
         CXk5MNp4cXLqndtib9lY+Pi3FCbjAJSh22loYyVpXKj6P94YItMpbl2SDdTSqd6mjXmF
         g4JA==
X-Gm-Message-State: AOAM531ASKSDPPZTI5cChhGfP6oiitUGnUZTe+HsrjZfZxV9/VK+VRt9
	gOgwhJECLNI2flXYOFJDBhE5jbvfFekBtHswMlcH1g==
X-Google-Smtp-Source: ABdhPJw38d/whX99j2bI8pgVmB3wHJS7I8UQBaGW56Q1EXJf8kehVGW7OlGRkc823S1DVkdd5dWQdHEmBsKNwDpL07Q=
X-Received: by 2002:adf:ebd2:: with SMTP id v18mr20935647wrn.248.1627316756310;
 Mon, 26 Jul 2021 09:25:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210721094627.29833-1-lukma@denx.de> <20210721094627.29833-5-lukma@denx.de>
 <CA+_AqitfdtJHQ0017LEpyhTrJF0xHZgsovrjqp1D7g2bPG5idg@mail.gmail.com>
In-Reply-To: <CA+_AqitfdtJHQ0017LEpyhTrJF0xHZgsovrjqp1D7g2bPG5idg@mail.gmail.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 26 Jul 2021 11:25:45 -0500
Message-ID: <CA+_Aqiu+C=K2enfS5PROO6P2TVrF_04NqE9ozSDaRBYW3vbEkw@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner 4/5] mem: Refactor ptest_list cleanup
To: "?ukasz Majewski" <lukma@denx.de>
Cc: yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: multipart/alternative; boundary="00000000000032858b05c80935e5"

--00000000000032858b05c80935e5
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to apply without success, looks like the patch is corrupted, can
you send it again?, or share a git repo/branch.

Regards,
Anibal


On Mon, 26 Jul 2021 at 11:10, Anibal Limon <anibal.limon@linaro.org> wrote:

> Indeed this change doesn't has a direct impact  but is fine to me.
>
> Applied, Thanks!
>
> On Wed, 21 Jul 2021 at 04:47, ?ukasz Majewski <lukma@denx.de> wrote:
>
>> From: Adrian Freihofer <adrian.freihofer@siemens.com>
>>
>> Try to make memory management more robust by assigning always NULL to
>> struct ptest_list pointers. It's a refactoring which probably improves
>> the code but does not fix a concrete bug.
>>
>> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
>> ---
>>  main.c             |  9 +++++----
>>  ptest_list.c       | 13 ++++---------
>>  ptest_list.h       |  8 +-------
>>  tests/ptest_list.c | 13 +++++++------
>>  tests/utils.c      | 22 +++++++++++-----------
>>  utils.c            |  6 +++---
>>  6 files changed, 31 insertions(+), 40 deletions(-)
>>
>> diff --git a/main.c b/main.c
>> index e73626c..efa21b2 100644
>> --- a/main.c
>> +++ b/main.c
>> @@ -116,7 +116,8 @@ main(int argc, char *argv[])
>>         mtrace();
>>  #endif
>>
>> -       struct ptest_list *head, *run;
>> +       struct ptest_list *head = NULL;
>> +       struct ptest_list *run = NULL;
>>         __attribute__ ((__cleanup__(cleanup_ptest_opts))) struct
>> ptest_options opts;
>>
>>         opts.dirs = malloc(sizeof(char **) * 1);
>> @@ -175,7 +176,7 @@ main(int argc, char *argv[])
>>
>>         head = NULL;
>>         for (i = 0; i < opts.dirs_no; i ++) {
>> -               struct ptest_list *tmp;
>> +               struct ptest_list *tmp = NULL;
>>
>>                 tmp = get_available_ptests(opts.dirs[i], opts.timeout);
>>                 if (tmp == NULL) {
>> @@ -211,7 +212,7 @@ main(int argc, char *argv[])
>>
>>                 run = filter_ptests(head, opts.ptests, ptest_num);
>>                 CHECK_ALLOCATION(run, (size_t) ptest_num, 1);
>> -               ptest_list_free_all(head);
>> +               ptest_list_free_all(&head);
>>         }
>>
>>         for (i = 0; i < ptest_exclude_num; i++)
>> @@ -219,7 +220,7 @@ main(int argc, char *argv[])
>>
>>         rc = run_ptests(run, opts, argv[0], stdout, stderr);
>>
>> -       ptest_list_free_all(run);
>> +       ptest_list_free_all(&run);
>>
>>         return rc;
>>  }
>> diff --git a/ptest_list.c b/ptest_list.c
>> index b689670..87b8c71 100644
>> --- a/ptest_list.c
>> +++ b/ptest_list.c
>> @@ -69,24 +69,19 @@ ptest_list_free(struct ptest_list *p)
>>         free(p);
>>  }
>>
>> -int
>> -ptest_list_free_all(struct ptest_list *head)
>> +void
>> +ptest_list_free_all(struct ptest_list **head)
>>  {
>> -       int i = 0;
>>         struct ptest_list *p, *q;
>>
>> -       VALIDATE_PTR_RINT(head);
>> -
>> -       p = head;
>> +       p = *head;
>>         while (p != NULL) {
>>                 q = p;
>>                 p = p->next;
>>
>>                 ptest_list_free(q);
>> -               i++;
>>         }
>> -
>> -       return i;
>> +       *head = NULL;
>>  }
>>
>>  int
>> diff --git a/ptest_list.h b/ptest_list.h
>> index e583d9f..949250c 100644
>> --- a/ptest_list.h
>> +++ b/ptest_list.h
>> @@ -36,12 +36,6 @@
>>                 x = NULL; \
>>         } while (0)
>>
>> -#define PTEST_LIST_FREE_ALL_CLEAN(x) \
>> -       do { \
>> -               ptest_list_free_all(x); \
>> -               x = NULL; \
>> -       } while (0)
>> -
>>  #define PTEST_LIST_ITERATE_START(head, p) for (p = head->next; p !=
>> NULL; p = p->next) {
>>  #define PTEST_LIST_ITERATE_END }
>>
>> @@ -58,7 +52,7 @@ struct ptest_list {
>>
>>  extern struct ptest_list *ptest_list_alloc(void);
>>  extern void ptest_list_free(struct ptest_list *);
>> -extern int ptest_list_free_all(struct ptest_list *);
>> +extern void ptest_list_free_all(struct ptest_list **);
>>
>>  extern int ptest_list_length(struct ptest_list *);
>>  extern struct ptest_list *ptest_list_search(struct ptest_list *, char *);
>> diff --git a/tests/ptest_list.c b/tests/ptest_list.c
>> index 37d19ae..6bbc13b 100644
>> --- a/tests/ptest_list.c
>> +++ b/tests/ptest_list.c
>> @@ -53,7 +53,7 @@ START_TEST(test_add)
>>  {
>>         struct ptest_list *head = ptest_list_alloc();
>>         ck_assert(ptest_list_add(head, strdup("perl"), NULL, 1) != NULL);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -62,14 +62,15 @@ START_TEST(test_free_all)
>>         struct ptest_list *head = NULL;
>>         int i;
>>
>> -       ck_assert(ptest_list_free_all(head) == -1);
>> +       ptest_list_free_all(&head);
>> +       ck_assert(head == NULL);
>>         ck_assert(errno == EINVAL);
>>
>>         head = ptest_list_alloc();
>>         for (i = 0; i < ptests_num; i++)
>>                 ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
>>
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -87,7 +88,7 @@ START_TEST(test_length)
>>                 ptest_list_add(head, strdup(ptest_names[i]), NULL, 1);
>>
>>         ck_assert_int_eq(ptest_list_length(head), ptests_num);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -109,7 +110,7 @@ START_TEST(test_search)
>>         for (i = ptests_num - 1; i >= 0; i--)
>>                 ck_assert(ptest_list_search(head, ptest_names[i]) !=
>> NULL);
>>
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -141,7 +142,7 @@ START_TEST(test_remove)
>>         ck_assert_int_eq(ptest_list_length(head), n);
>>
>>         ck_assert(ptest_list_search(head, "busybox") != NULL);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> diff --git a/tests/utils.c b/tests/utils.c
>> index 8df1b54..4e244fe 100644
>> --- a/tests/utils.c
>> +++ b/tests/utils.c
>> @@ -88,13 +88,13 @@ START_TEST(test_get_available_ptests)
>>         for (i = 0; ptests_not_found[i] != NULL; i++)
>>                 ck_assert(ptest_list_search(head, ptests_not_found[i]) ==
>> NULL);
>>
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>>  START_TEST(test_print_ptests)
>>  {
>> -       struct ptest_list *head;
>> +       struct ptest_list *head = NULL;
>>
>>         char *buf;
>>         size_t size = PRINT_PTEST_BUF_SIZE;
>> @@ -116,14 +116,14 @@ START_TEST(test_print_ptests)
>>
>>         head = ptest_list_alloc();
>>         ck_assert(print_ptests(head, fp) == 1);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>         line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp);
>>         ck_assert(line != NULL);
>>         ck_assert(strcmp(line, PRINT_PTESTS_NOT_FOUND) == 0);
>>
>>         head = get_available_ptests(opts_directory, 1);
>>         ck_assert(print_ptests(head, fp) == 0);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>         line = fgets(line_buf, PRINT_PTEST_BUF_SIZE, fp);
>>         ck_assert(line != NULL);
>>         ck_assert(strcmp(line, PRINT_PTESTS_AVAILABLE) == 0);
>> @@ -144,7 +144,7 @@ END_TEST
>>  START_TEST(test_filter_ptests)
>>  {
>>         struct ptest_list *head = get_available_ptests(opts_directory, 1);
>> -       struct ptest_list *head_new;
>> +       struct ptest_list *head_new = NULL;
>>         char *ptest_not_exists[] = {
>>                 "glib",
>>         };
>> @@ -161,8 +161,8 @@ START_TEST(test_filter_ptests)
>>         ck_assert(head_new != NULL);
>>         ck_assert(ptest_list_length(head_new) == 3);
>>
>> -       ptest_list_free_all(head);
>> -       ptest_list_free_all(head_new);
>> +       ptest_list_free_all(&head);
>> +       ptest_list_free_all(&head_new);
>>  }
>>  END_TEST
>>
>> @@ -191,7 +191,7 @@ START_TEST(test_run_ptests)
>>
>>         rc = run_ptests(head, opts, "test_run_ptests", fp_stdout,
>> fp_stderr);
>>         ck_assert(rc == 0);
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>
>>         fclose(fp_stdout);
>>         free(buf_stdout);
>> @@ -227,7 +227,7 @@ START_TEST(test_run_timeout_duration_ptest)
>>
>>         test_ptest_expected_failure(head, timeout, "hang",
>> search_for_timeout_and_duration);
>>
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -255,7 +255,7 @@ START_TEST(test_run_fail_ptest)
>>
>>         test_ptest_expected_failure(head, timeout, "fail",
>> search_for_fail);
>>
>> -       ptest_list_free_all(head);
>> +       ptest_list_free_all(&head);
>>  }
>>  END_TEST
>>
>> @@ -354,7 +354,7 @@ test_ptest_expected_failure(struct ptest_list *head,
>> const int timeout, char *pr
>>                         fp_stdout
>>                 );
>>
>> -               PTEST_LIST_FREE_ALL_CLEAN(filtered);
>> +               ptest_list_free_all(&filtered);
>>         }
>>
>>         fclose(fp_stdout);
>> diff --git a/utils.c b/utils.c
>> index a23679a..4737bcd 100644
>> --- a/utils.c
>> +++ b/utils.c
>> @@ -110,7 +110,7 @@ get_ptest_file(char **ptest_file, struct stat
>> *st_buf, const char *main_dir,
>>  struct ptest_list *
>>  get_available_ptests(const char *dir, int global_timeout)
>>  {
>> -       struct ptest_list *head;
>> +       struct ptest_list *head = NULL;
>>         struct stat st_buf;
>>
>>         int n, i;
>> @@ -212,7 +212,7 @@ get_available_ptests(const char *dir, int
>> global_timeout)
>>                 free(namelist);
>>
>>                 if (fail) {
>> -                       PTEST_LIST_FREE_ALL_CLEAN(head);
>> +                       ptest_list_free_all(&head);
>>                         errno = saved_errno;
>>                         break;
>>                 }
>> @@ -282,7 +282,7 @@ filter_ptests(struct ptest_list *head, char **ptests,
>> int ptest_num)
>>                 }
>>
>>                 if (fail) {
>> -                       PTEST_LIST_FREE_ALL_CLEAN(head_new);
>> +                       ptest_list_free_all(&head_new);
>>                         errno = saved_errno;
>>                 }
>>         } while (0);
>> --
>> 2.20.1
>>
>>
>> 
>>
>>

--00000000000032858b05c80935e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I tried to apply without=
 success, looks like the patch is corrupted, can you send it again?, or sha=
re a git repo/branch.</div><div><br></div><div>Regards,</div><div>Anibal</d=
iv><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, 26 Jul 2021 at 11:10, Anibal Limon &lt;<a href=3D"mailt=
o:anibal.limon@linaro.org">anibal.limon@linaro.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Ind=
eed this change doesn&#39;t has a direct impact=C2=A0 but is fine to me.<br=
></div><div><br></div>Applied, Thanks!</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 21 Jul 2021 at 04:47, ?ukasz =
Majewski &lt;<a href=3D"mailto:lukma@denx.de" target=3D"_blank">lukma@denx.=
de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">From: Adrian Freihofer &lt;<a href=3D"mailto:adrian.freihofer@siemens.com=
" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
<br>
Try to make memory management more robust by assigning always NULL to<br>
struct ptest_list pointers. It&#39;s a refactoring which probably improves=
<br>
the code but does not fix a concrete bug.<br>
<br>
Signed-off-by: Adrian Freihofer &lt;<a href=3D"mailto:adrian.freihofer@sie=
mens.com" target=3D"_blank">adrian.freihofer@siemens.com</a>&gt;<br>
---<br>
=C2=A0main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 9 ++++=
+----<br>
=C2=A0ptest_list.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 13 ++++---------<br>
=C2=A0ptest_list.h=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 8 +-------<br>
=C2=A0tests/ptest_list.c | 13 +++++++------<br>
=C2=A0tests/utils.c=C2=A0 =C2=A0 =C2=A0 | 22 +++++++++++-----------<br>
=C2=A0utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 +++---<br=
>
=C2=A06 files changed, 31 insertions(+), 40 deletions(-)<br>
<br>
diff --git a/main.c b/main.c<br>
index e73626c..efa21b2 100644<br>
--- a/main.c<br>
+++ b/main.c<br>
@@ -116,7 +116,8 @@ main(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mtrace();<br>
=C2=A0#endif<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head, *run;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *run =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __attribute__ ((__cleanup__(cleanup_ptest_opts=
))) struct ptest_options opts;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 opts.dirs =3D malloc(sizeof(char **) * 1);<br>
@@ -175,7 +176,7 @@ main(int argc, char *argv[])<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; opts.dirs_no; i ++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list =
*tmp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list =
*tmp =3D NULL;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D get_availa=
ble_ptests(opts.dirs[i], opts.timeout);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (tmp =3D=3D NUL=
L) {<br>
@@ -211,7 +212,7 @@ main(int argc, char *argv[])<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 run =3D filter_pte=
sts(head, opts.ptests, ptest_num);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CHECK_ALLOCATION(r=
un, (size_t) ptest_num, 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_al=
l(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_al=
l(&amp;head);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; ptest_exclude_num; i++)<b=
r>
@@ -219,7 +220,7 @@ main(int argc, char *argv[])<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D run_ptests(run, opts, argv[0], stdout, =
stderr);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(run);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;run);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
=C2=A0}<br>
diff --git a/ptest_list.c b/ptest_list.c<br>
index b689670..87b8c71 100644<br>
--- a/ptest_list.c<br>
+++ b/ptest_list.c<br>
@@ -69,24 +69,19 @@ ptest_list_free(struct ptest_list *p)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(p);<br>
=C2=A0}<br>
<br>
-int<br>
-ptest_list_free_all(struct ptest_list *head)<br>
+void<br>
+ptest_list_free_all(struct ptest_list **head)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int i =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_list *p, *q;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0VALIDATE_PTR_RINT(head);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D head;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D *head;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 while (p !=3D NULL) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 q =3D p;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p =3D p-&gt;next;<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ptest_list_free(q)=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i++;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return i;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0*head =3D NULL;<br>
=C2=A0}<br>
<br>
=C2=A0int<br>
diff --git a/ptest_list.h b/ptest_list.h<br>
index e583d9f..949250c 100644<br>
--- a/ptest_list.h<br>
+++ b/ptest_list.h<br>
@@ -36,12 +36,6 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 x =3D NULL; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } while (0)<br>
<br>
-#define PTEST_LIST_FREE_ALL_CLEAN(x) \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0do { \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_al=
l(x); \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0x =3D NULL; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (0)<br>
-<br>
=C2=A0#define PTEST_LIST_ITERATE_START(head, p) for (p =3D head-&gt;next; =
p !=3D NULL; p =3D p-&gt;next) {<br>
=C2=A0#define PTEST_LIST_ITERATE_END }<br>
<br>
@@ -58,7 +52,7 @@ struct ptest_list {<br>
<br>
=C2=A0extern struct ptest_list *ptest_list_alloc(void);<br>
=C2=A0extern void ptest_list_free(struct ptest_list *);<br>
-extern int ptest_list_free_all(struct ptest_list *);<br>
+extern void ptest_list_free_all(struct ptest_list **);<br>
<br>
=C2=A0extern int ptest_list_length(struct ptest_list *);<br>
=C2=A0extern struct ptest_list *ptest_list_search(struct ptest_list *, cha=
r *);<br>
diff --git a/tests/ptest_list.c b/tests/ptest_list.c<br>
index 37d19ae..6bbc13b 100644<br>
--- a/tests/ptest_list.c<br>
+++ b/tests/ptest_list.c<br>
@@ -53,7 +53,7 @@ START_TEST(test_add)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_list *head =3D ptest_list_alloc()=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(ptest_list_add(head, strdup(&quot;pe=
rl&quot;), NULL, 1) !=3D NULL);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -62,14 +62,15 @@ START_TEST(test_free_all)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_list *head =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int i;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert(ptest_list_free_all(head) =3D=3D -1)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ck_assert(head =3D=3D NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(errno =3D=3D EINVAL);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D ptest_list_alloc();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; ptests_num; i++)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ptest_list_add(hea=
d, strdup(ptest_names[i]), NULL, 1);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -87,7 +88,7 @@ START_TEST(test_length)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ptest_list_add(hea=
d, strdup(ptest_names[i]), NULL, 1);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert_int_eq(ptest_list_length(head), ptes=
ts_num);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -109,7 +110,7 @@ START_TEST(test_search)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D ptests_num - 1; i &gt;=3D 0; i--)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(ptest_li=
st_search(head, ptest_names[i]) !=3D NULL);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -141,7 +142,7 @@ START_TEST(test_remove)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert_int_eq(ptest_list_length(head), n);<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(ptest_list_search(head, &quot;busybo=
x&quot;) !=3D NULL);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
diff --git a/tests/utils.c b/tests/utils.c<br>
index 8df1b54..4e244fe 100644<br>
--- a/tests/utils.c<br>
+++ b/tests/utils.c<br>
@@ -88,13 +88,13 @@ START_TEST(test_get_available_ptests)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; ptests_not_found[i] !=3D NULL; i=
++)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(ptest_li=
st_search(head, ptests_not_found[i]) =3D=3D NULL);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
=C2=A0START_TEST(test_print_ptests)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D NULL;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *buf;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t size =3D PRINT_PTEST_BUF_SIZE;<br>
@@ -116,14 +116,14 @@ START_TEST(test_print_ptests)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D ptest_list_alloc();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(print_ptests(head, fp) =3D=3D 1);<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 line =3D fgets(line_buf, PRINT_PTEST_BUF_SIZE,=
 fp);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(line !=3D NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(strcmp(line, PRINT_PTESTS_NOT_FOUND)=
 =3D=3D 0);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D get_available_ptests(opts_directory, =
1);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(print_ptests(head, fp) =3D=3D 0);<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 line =3D fgets(line_buf, PRINT_PTEST_BUF_SIZE,=
 fp);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(line !=3D NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(strcmp(line, PRINT_PTESTS_AVAILABLE)=
 =3D=3D 0);<br>
@@ -144,7 +144,7 @@ END_TEST<br>
=C2=A0START_TEST(test_filter_ptests)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_list *head =3D get_available_ptes=
ts(opts_directory, 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head_new;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head_new =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *ptest_not_exists[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;glib&quot;,<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
@@ -161,8 +161,8 @@ START_TEST(test_filter_ptests)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(head_new !=3D NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(ptest_list_length(head_new) =3D=3D 3=
);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head_new);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head_new);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -191,7 +191,7 @@ START_TEST(test_run_ptests)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D run_ptests(head, opts, &quot;test_run_p=
tests&quot;, fp_stdout, fp_stderr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ck_assert(rc =3D=3D 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fclose(fp_stdout);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(buf_stdout);<br>
@@ -227,7 +227,7 @@ START_TEST(test_run_timeout_duration_ptest)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 test_ptest_expected_failure(head, timeout, &qu=
ot;hang&quot;, search_for_timeout_and_duration);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -255,7 +255,7 @@ START_TEST(test_run_fail_ptest)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 test_ptest_expected_failure(head, timeout, &qu=
ot;fail&quot;, search_for_fail);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0}<br>
=C2=A0END_TEST<br>
<br>
@@ -354,7 +354,7 @@ test_ptest_expected_failure(struct ptest_list *head, c=
onst int timeout, char *pr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fp_stdout<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PTEST_LIST_FREE_AL=
L_CLEAN(filtered);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptest_list_free_al=
l(&amp;filtered);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fclose(fp_stdout);<br>
diff --git a/utils.c b/utils.c<br>
index a23679a..4737bcd 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -110,7 +110,7 @@ get_ptest_file(char **ptest_file, struct stat *st_buf,=
 const char *main_dir,<br>
=C2=A0struct ptest_list *<br>
=C2=A0get_available_ptests(const char *dir, int global_timeout)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *head =3D NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct stat st_buf;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int n, i;<br>
@@ -212,7 +212,7 @@ get_available_ptests(const char *dir, int global_timeo=
ut)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(namelist);<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (fail) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0PTEST_LIST_FREE_ALL_CLEAN(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0ptest_list_free_all(&amp;head);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 errno =3D saved_errno;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
@@ -282,7 +282,7 @@ filter_ptests(struct ptest_list *head, char **ptests, =
int ptest_num)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (fail) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0PTEST_LIST_FREE_ALL_CLEAN(head_new);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0ptest_list_free_all(&amp;head_new);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 errno =3D saved_errno;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } while (0);<br>
-- <br>
2.20.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div></div>

--00000000000032858b05c80935e5--
