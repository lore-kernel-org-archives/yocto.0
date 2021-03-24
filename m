Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.781.1616610738545678998
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:32:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=QlUL98/X;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EE27638C081C
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 18:32:17 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id x7so2995871wrw.10
        for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 11:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xP3ZAld+IpSIaMZRvEjkKq2dFe5W2ROIrF6hsApFpfk=;
        b=QlUL98/XxRyABJgUtZFdRll2W8/czcFKS5vNm+qCULY5fZ1HlreJjxl1qTfeCuJKqa
         RH6ZpxIWd1NSPiEw3LIkE/PrNziEgb+V2RPn4Xd/B695cqIsFfJ9p8fI2luOGkFepoc+
         cU4f8eq7gq5ut2LHKwSJjD8SS3qu2cjnNL9HDpS/0pXXqpuaP8bK2xBP/8k7kkq8wFjn
         iPPxNYtAWDC80eXqkuzbyzQoxhDxA0TFubwlz/o4mDnEgeAmOTPoNTWyiMUelj7Rdzu2
         OA7eM4qdRpl0RbbnkHxHfcKZuvR1YM/IqJzClz5tGYPIILZ2wsr+6a8J/DspsmcfTnSL
         7Y2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xP3ZAld+IpSIaMZRvEjkKq2dFe5W2ROIrF6hsApFpfk=;
        b=MULHSd2I78tX5LtQQtm0EUBiywGIQxrNslcRBuSWmRKBCiJqHPVNu3uJT7C94M006M
         AIs+PgtHUlNchbHBt9mNY22PWJM2fIHcOutvUPYxrqTmAN/frNJl6bktdaTqZxpnVgUx
         1djvo6FQzJvTC4pYKJfC27mVMtYZwI7yXL1q+MNmde0qdiGIioTcUOL9KoJqJmVjfau9
         O8IpIt+FTOYq32cexRAbjp38jourCwGzNQkvgcAqv6hrUTxzlSN07X+ROVLGJBROgn2m
         XoCD0KnVD/VaI5NebB2uTzD3BSwVY89/9uJWD34/5DrC8BOz4XwxhMtE900zUucJloBd
         /R9g==
X-Gm-Message-State: AOAM531Jcir87jKeS2sGgQCYbpuQ3NrFwx56l23uK9uRogu2ZP5loyRk
	D5uQ5xx1SpmyHq8o6TJiizzEE+HS4ZO/cJ+lcOjvpA==
X-Google-Smtp-Source: ABdhPJy/GbLy2VVazFSCikgm1W2yMa8dxYohiDHctkB/0usaecc9R9YVF0Qc9yY0KElg/rsZeO0JXMTwXpmI/VJYxxY=
X-Received: by 2002:a5d:5044:: with SMTP id h4mr3988761wrt.95.1616610736510;
 Wed, 24 Mar 2021 11:32:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210323185719.2949300-1-anibal.limon@linaro.org> <93334bd2-01c5-815b-3f46-09be1ce67a56@windriver.com>
In-Reply-To: <93334bd2-01c5-815b-3f46-09be1ce67a56@windriver.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Wed, 24 Mar 2021 12:32:05 -0600
Message-ID: <CA+_AqitZVcXTn1vCYVR5A+hKWA53yd0k3hYrg911cfLuO9UjMA@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH 1/2] Add support to specify timeout by ptest
To: Yi Fan Yu <yifan.yu@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "MacLeod, Randy" <Randy.MacLeod@windriver.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000b0cc3f05be4c84dd"

--000000000000b0cc3f05be4c84dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Mar 2021 at 10:25, Yi Fan Yu <yifan.yu@windriver.com> wrote:

> On 3/23/21 2:57 PM, An=C3=ADbal Lim=C3=B3n wrote:
> > [Please note: This e-mail is from an EXTERNAL e-mail address]
> >
> > The ptest-runner has a default timeout of 300 secs and can be override
> > usint -t option in the runner.
> >
> > There is a need to specify timeout by ptest because not all ptests take=
s
> > the sametime also are affected by machine. So add support to read a fil=
e
> > inside ptest folder (timeout-ptest) and override global timeout with it=
.
> >
> > For example in glib-2.0,
> >
> >    /usr/lib/glib-2.0/ptest/run-ptest
> >    /usr/lib/glib-2.0/ptest/timeout-ptest
> >
>
> I don't see a huge amount of use of `timeout-ptest` since
>
> many tests I looked at have their own timeout mechanism built-in to
> individual tests (OR we have patched in... ex: valgrind).
>
>
> This has the advantage that the entire testsuite doesn't get killed,
> only that particular hanging test.
>
> I think the highest timeout I have bumped up is with valgrind at 90s
>

Ack, I changed the behavior of timeout so that's the reason I'm seeing this
error.

I don't see any reason to not support this may be useful in the future.

Regards,
Anibal


>
> yifan
>
> > Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
> > ---
> >   main.c       |  2 +-
> >   ptest_list.c |  3 ++-
> >   ptest_list.h |  3 ++-
> >   utils.c      | 69 +++++++++++++++++++++++++++++++++++++--------------=
-
> >   utils.h      |  2 +-
> >   5 files changed, 55 insertions(+), 24 deletions(-)
> >
> > diff --git a/main.c b/main.c
> > index e3a1b69..467548e 100644
> > --- a/main.c
> > +++ b/main.c
> > @@ -158,7 +158,7 @@ main(int argc, char *argv[])
> >          for (i =3D 0; i < opts.dirs_no; i ++) {
> >                  struct ptest_list *tmp;
> >
> > -               tmp =3D get_available_ptests(opts.dirs[i]);
> > +               tmp =3D get_available_ptests(opts.dirs[i], opts.timeout=
);
> >                  if (tmp =3D=3D NULL) {
> >                          fprintf(stderr, PRINT_PTESTS_NOT_FOUND_DIR,
> opts.dirs[i]);
> >                          continue;
> > diff --git a/ptest_list.c b/ptest_list.c
> > index 917ef4f..b689670 100644
> > --- a/ptest_list.c
> > +++ b/ptest_list.c
> > @@ -166,7 +166,7 @@ ptest_list_search_by_file(struct ptest_list *head,
> char *run_ptest, struct stat
> >   }
> >
> >   struct ptest_list *
> > -ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
> > +ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest,
> int timeout)
> >   {
> >          struct ptest_list *n, *p;
> >
> > @@ -179,6 +179,7 @@ ptest_list_add(struct ptest_list *head, char *ptest=
,
> char *run_ptest)
> >
> >          n->ptest =3D ptest;
> >          n->run_ptest =3D run_ptest;
> > +       n->timeout =3D timeout;
> >
> >          n->prev =3D NULL;
> >          n->next =3D NULL;
> > diff --git a/ptest_list.h b/ptest_list.h
> > index 02a64bb..e583d9f 100644
> > --- a/ptest_list.h
> > +++ b/ptest_list.h
> > @@ -50,6 +50,7 @@
> >   struct ptest_list {
> >          char *ptest;
> >          char *run_ptest;
> > +       int timeout;
> >
> >          struct ptest_list *next;
> >          struct ptest_list *prev;
> > @@ -62,7 +63,7 @@ extern int ptest_list_free_all(struct ptest_list *);
> >   extern int ptest_list_length(struct ptest_list *);
> >   extern struct ptest_list *ptest_list_search(struct ptest_list *, char
> *);
> >   extern struct ptest_list *ptest_list_search_by_file(struct ptest_list
> *, char *, struct stat);
> > -extern struct ptest_list *ptest_list_add(struct ptest_list *, char *,
> char *);
> > +extern struct ptest_list *ptest_list_add(struct ptest_list *, char *,
> char *, int);
> >   extern struct ptest_list *ptest_list_remove(struct ptest_list *, char
> *, int);
> >   extern struct ptest_list *ptest_list_extend(struct ptest_list *,
> struct ptest_list *);
> >
> > diff --git a/utils.c b/utils.c
> > index 1a3c90f..424115f 100644
> > --- a/utils.c
> > +++ b/utils.c
> > @@ -84,9 +84,30 @@ check_allocation1(void *p, size_t size, char *file,
> int line, int exit_on_null)
> >          }
> >   }
> >
> > +static inline char *
> > +get_ptest_file(char **ptest_file, struct stat *st_buf, const char
> *main_dir,
> > +               const char *ptest_dir, const char *file_name)
> > +{
> > +       if (asprintf(ptest_file, "%s/%s/ptest/%s",
> > +           main_dir, ptest_dir, file_name) =3D=3D -1)  {
> > +               return NULL;
> > +       }
> > +
> > +       if (stat(*ptest_file, st_buf) =3D=3D -1) {
> > +               free(*ptest_file);
> > +               return NULL;
> > +       }
> > +
> > +       if (!S_ISREG(st_buf->st_mode)) {
> > +               free(*ptest_file);
> > +               return NULL;
> > +       }
> > +
> > +       return *ptest_file;
> > +}
> >
> >   struct ptest_list *
> > -get_available_ptests(const char *dir)
> > +get_available_ptests(const char *dir, int global_timeout)
> >   {
> >          struct ptest_list *head;
> >          struct stat st_buf;
> > @@ -123,10 +144,11 @@ get_available_ptests(const char *dir)
> >                          break;
> >                  }
> >
> > -
> >                  fail =3D 0;
> >                  for (i =3D 0; i < n; i++) {
> >                          char *run_ptest;
> > +                       char *timeout_ptest;
> > +                       int timeout;
> >
> >                          char *d_name =3D strdup(namelist[i]->d_name);
> >                          CHECK_ALLOCATION(d_name,
> sizeof(namelist[i]->d_name), 0);
> > @@ -142,34 +164,38 @@ get_available_ptests(const char *dir)
> >                                  continue;
> >                          }
> >
> > -                       if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest=
",
> > -                           realdir, d_name) =3D=3D -1)  {
> > -                               fail =3D 1;
> > +                       if (get_ptest_file(&run_ptest, &st_buf, realdir=
,
> d_name, "run-ptest") =3D=3D NULL) {
> >                                  saved_errno =3D errno;
> >                                  free(d_name);
> > -                               break;
> > -                       }
> > -
> > -                       if (stat(run_ptest, &st_buf) =3D=3D -1) {
> > -                               free(run_ptest);
> > -                               free(d_name);
> >                                  continue;
> >                          }
> >
> > -                       if (!S_ISREG(st_buf.st_mode)) {
> > +                       if (ptest_list_search_by_file(head, run_ptest,
> st_buf)) {
> >                                  free(run_ptest);
> >                                  free(d_name);
> >                                  continue;
> >                          }
> >
> > -                       if (ptest_list_search_by_file(head, run_ptest,
> st_buf)) {
> > -                               free(run_ptest);
> > -                               free(d_name);
> > -                               continue;
> > +                       timeout =3D global_timeout;
> > +                       if (get_ptest_file(&timeout_ptest, &st_buf,
> realdir, d_name, "timeout-ptest")) {
> > +                               FILE *f =3D fopen(timeout_ptest, "r");
> > +
> > +                               if (f =3D=3D NULL) {
> > +                                       fail =3D 1;
> > +                                       saved_errno =3D errno;
> > +                                       free(run_ptest);
> > +                                       free(d_name);
> > +                                       free(timeout_ptest);
> > +                                       break;
> > +                               }
> > +                               fscanf(f, "%d", &timeout);
> > +                               fclose(f);
> > +
> > +                               free(timeout_ptest);
> >                          }
> >
> >                          struct ptest_list *p =3D ptest_list_add(head,
> > -                               d_name, run_ptest);
> > +                               d_name, run_ptest, timeout);
> >                          CHECK_ALLOCATION(p, sizeof(struct ptest_list
> *), 0);
> >                          if (p =3D=3D NULL) {
> >                                  fail =3D 1;
> > @@ -229,6 +255,7 @@ filter_ptests(struct ptest_list *head, char
> **ptests, int ptest_num)
> >                  for (i =3D 0; i < ptest_num; i++) {
> >                          char *ptest;
> >                          char *run_ptest;
> > +                       int timeout;
> >
> >                          n =3D ptest_list_search(head, ptests[i]);
> >                          if (n =3D=3D NULL) {
> > @@ -239,13 +266,14 @@ filter_ptests(struct ptest_list *head, char
> **ptests, int ptest_num)
> >
> >                          ptest =3D strdup(n->ptest);
> >                          run_ptest =3D strdup(n->run_ptest);
> > +                       timeout =3D n->timeout;
> >                          if (ptest =3D=3D NULL || run_ptest =3D=3D NULL=
) {
> >                                  saved_errno =3D errno;
> >                                  fail =3D 1;
> >                                  break;
> >                          }
> >
> > -                       if (ptest_list_add(head_new, ptest, run_ptest)
> =3D=3D NULL) {
> > +                       if (ptest_list_add(head_new, ptest, run_ptest,
> timeout) =3D=3D NULL) {
> >                                  saved_errno =3D errno;
> >                                  fail =3D 1;
> >                                  break;
> > @@ -509,8 +537,7 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >                                  fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE, sttime));
> >                                  fprintf(fp, "BEGIN: %s\n", ptest_dir);
> >
> > -
> > -                               status =3D wait_child(child, opts.timeo=
ut);
> > +                               status =3D wait_child(child, p->timeout=
);
> >
> >                                  entime =3D time(NULL);
> >                                  duration =3D entime - sttime;
> > @@ -528,6 +555,8 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >
> >                                  fprintf(fp, "END: %s\n", ptest_dir);
> >                                  fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE, entime));
> > +
> > +                               free(ptest_dir);
> >                          }
> >                  PTEST_LIST_ITERATE_END
> >                  fprintf(fp, "STOP: %s\n", progname);
> > diff --git a/utils.h b/utils.h
> > index 39832e6..69940d0 100644
> > --- a/utils.h
> > +++ b/utils.h
> > @@ -45,7 +45,7 @@ struct ptest_options {
> >
> >
> >   extern void check_allocation1(void *, size_t, char *, int, int);
> > -extern struct ptest_list *get_available_ptests(const char *);
> > +extern struct ptest_list *get_available_ptests(const char *, int);
> >   extern int print_ptests(struct ptest_list *, FILE *);
> >   extern struct ptest_list *filter_ptests(struct ptest_list *, char **,
> int);
> >   extern int run_ptests(struct ptest_list *, const struct ptest_options=
,
> > --
> > 2.31.0
> >
>

--000000000000b0cc3f05be4c84dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGJyPjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJn
bWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFdlZCwgMjQg
TWFyIDIwMjEgYXQgMTA6MjUsIFlpIEZhbiBZdSAmbHQ7PGEgaHJlZj0ibWFpbHRvOnlpZmFuLnl1
QHdpbmRyaXZlci5jb20iPnlpZmFuLnl1QHdpbmRyaXZlci5jb208L2E+Jmd0OyB3cm90ZTo8YnI+
PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAw
cHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRp
bmctbGVmdDoxZXgiPk9uIDMvMjMvMjEgMjo1NyBQTSwgQW7DrWJhbCBMaW3Ds24gd3JvdGU6PGJy
Pg0KJmd0OyBbUGxlYXNlIG5vdGU6IFRoaXMgZS1tYWlsIGlzIGZyb20gYW4gRVhURVJOQUwgZS1t
YWlsIGFkZHJlc3NdPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IFRoZSBwdGVzdC1ydW5uZXIgaGFzIGEg
ZGVmYXVsdCB0aW1lb3V0IG9mIDMwMCBzZWNzIGFuZCBjYW4gYmUgb3ZlcnJpZGU8YnI+DQomZ3Q7
IHVzaW50IC10IG9wdGlvbiBpbiB0aGUgcnVubmVyLjxicj4NCiZndDsgPGJyPg0KJmd0OyBUaGVy
ZSBpcyBhIG5lZWQgdG8gc3BlY2lmeSB0aW1lb3V0IGJ5IHB0ZXN0IGJlY2F1c2Ugbm90IGFsbCBw
dGVzdHMgdGFrZXM8YnI+DQomZ3Q7IHRoZSBzYW1ldGltZSBhbHNvIGFyZSBhZmZlY3RlZCBieSBt
YWNoaW5lLiBTbyBhZGQgc3VwcG9ydCB0byByZWFkIGEgZmlsZTxicj4NCiZndDsgaW5zaWRlIHB0
ZXN0IGZvbGRlciAodGltZW91dC1wdGVzdCkgYW5kIG92ZXJyaWRlIGdsb2JhbCB0aW1lb3V0IHdp
dGggaXQuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEZvciBleGFtcGxlIGluIGdsaWItMi4wLDxicj4N
CiZndDsgPGJyPg0KJmd0O8KgIMKgIC91c3IvbGliL2dsaWItMi4wL3B0ZXN0L3J1bi1wdGVzdDxi
cj4NCiZndDvCoCDCoCAvdXNyL2xpYi9nbGliLTIuMC9wdGVzdC90aW1lb3V0LXB0ZXN0PGJyPg0K
Jmd0OyA8YnI+DQo8YnI+DQpJIGRvbiYjMzk7dCBzZWUgYSBodWdlIGFtb3VudCBvZiB1c2Ugb2Yg
YHRpbWVvdXQtcHRlc3RgIHNpbmNlPGJyPg0KPGJyPg0KbWFueSB0ZXN0cyBJIGxvb2tlZCBhdCBo
YXZlIHRoZWlyIG93biB0aW1lb3V0IG1lY2hhbmlzbSBidWlsdC1pbiB0byA8YnI+DQppbmRpdmlk
dWFsIHRlc3RzIChPUiB3ZSBoYXZlIHBhdGNoZWQgaW4uLi4gZXg6IHZhbGdyaW5kKS48YnI+DQo8
YnI+DQo8YnI+DQpUaGlzIGhhcyB0aGUgYWR2YW50YWdlIHRoYXQgdGhlIGVudGlyZSB0ZXN0c3Vp
dGUgZG9lc24mIzM5O3QgZ2V0IGtpbGxlZCwgPGJyPg0Kb25seSB0aGF0IHBhcnRpY3VsYXIgaGFu
Z2luZyB0ZXN0Ljxicj4NCjxicj4NCkkgdGhpbmsgdGhlIGhpZ2hlc3QgdGltZW91dCBJIGhhdmUg
YnVtcGVkIHVwIGlzIHdpdGggdmFsZ3JpbmQgYXQgOTBzPGJyPjwvYmxvY2txdW90ZT48ZGl2Pjxi
cj48L2Rpdj48ZGl2PkFjaywgSSBjaGFuZ2VkIHRoZSBiZWhhdmlvciBvZiB0aW1lb3V0IHNvIHRo
YXQmIzM5O3MgdGhlIHJlYXNvbiBJJiMzOTttIHNlZWluZyB0aGlzIGVycm9yLjwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+SSBkb24mIzM5O3Qgc2VlIGFueSByZWFzb24gdG8gbm90IHN1cHBvcnQg
dGhpcyBtYXkgYmUgdXNlZnVsIGluIHRoZSBmdXR1cmUuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5SZWdhcmRzLDwvZGl2PjxkaXY+QW5pYmFsPC9kaXY+PGRpdj7CoDwvZGl2PjxibG9ja3F1b3Rl
IGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxi
cj4NCnlpZmFuPGJyPg0KPGJyPg0KJmd0OyBTaWduZWQtb2ZmLWJ5OiBBbsOtYmFsIExpbcOzbiAm
bHQ7PGEgaHJlZj0ibWFpbHRvOmFuaWJhbC5saW1vbkBsaW5hcm8ub3JnIiB0YXJnZXQ9Il9ibGFu
ayI+YW5pYmFsLmxpbW9uQGxpbmFyby5vcmc8L2E+Jmd0Ozxicj4NCiZndDsgLS0tPGJyPg0KJmd0
O8KgIMKgbWFpbi5jwqAgwqAgwqAgwqB8wqAgMiArLTxicj4NCiZndDvCoCDCoHB0ZXN0X2xpc3Qu
YyB8wqAgMyArKy08YnI+DQomZ3Q7wqAgwqBwdGVzdF9saXN0LmggfMKgIDMgKystPGJyPg0KJmd0
O8KgIMKgdXRpbHMuY8KgIMKgIMKgIHwgNjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLTxicj4NCiZndDvCoCDCoHV0aWxzLmjCoCDCoCDCoCB8wqAg
MiArLTxicj4NCiZndDvCoCDCoDUgZmlsZXMgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgMjQg
ZGVsZXRpb25zKC0pPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IGRpZmYgLS1naXQgYS9tYWluLmMgYi9t
YWluLmM8YnI+DQomZ3Q7IGluZGV4IGUzYTFiNjkuLjQ2NzU0OGUgMTAwNjQ0PGJyPg0KJmd0OyAt
LS0gYS9tYWluLmM8YnI+DQomZ3Q7ICsrKyBiL21haW4uYzxicj4NCiZndDsgQEAgLTE1OCw3ICsx
NTgsNyBAQCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIGZvciAoaSA9IDA7IGkgJmx0OyBvcHRzLmRpcnNfbm87IGkgKyspIHs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0IHB0ZXN0X2xpc3QgKnRtcDs8YnI+DQomZ3Q7
IDxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdG1wID0gZ2V0X2F2YWlsYWJsZV9w
dGVzdHMob3B0cy5kaXJzW2ldKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRt
cCA9IGdldF9hdmFpbGFibGVfcHRlc3RzKG9wdHMuZGlyc1tpXSwgb3B0cy50aW1lb3V0KTs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKHRtcCA9PSBOVUxMKSB7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZwcmludGYoc3RkZXJy
LCBQUklOVF9QVEVTVFNfTk9UX0ZPVU5EX0RJUiwgb3B0cy5kaXJzW2ldKTs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY29udGludWU7PGJyPg0KJmd0OyBk
aWZmIC0tZ2l0IGEvcHRlc3RfbGlzdC5jIGIvcHRlc3RfbGlzdC5jPGJyPg0KJmd0OyBpbmRleCA5
MTdlZjRmLi5iNjg5NjcwIDEwMDY0NDxicj4NCiZndDsgLS0tIGEvcHRlc3RfbGlzdC5jPGJyPg0K
Jmd0OyArKysgYi9wdGVzdF9saXN0LmM8YnI+DQomZ3Q7IEBAIC0xNjYsNyArMTY2LDcgQEAgcHRl
c3RfbGlzdF9zZWFyY2hfYnlfZmlsZShzdHJ1Y3QgcHRlc3RfbGlzdCAqaGVhZCwgY2hhciAqcnVu
X3B0ZXN0LCBzdHJ1Y3Qgc3RhdDxicj4NCiZndDvCoCDCoH08YnI+DQomZ3Q7IDxicj4NCiZndDvC
oCDCoHN0cnVjdCBwdGVzdF9saXN0ICo8YnI+DQomZ3Q7IC1wdGVzdF9saXN0X2FkZChzdHJ1Y3Qg
cHRlc3RfbGlzdCAqaGVhZCwgY2hhciAqcHRlc3QsIGNoYXIgKnJ1bl9wdGVzdCk8YnI+DQomZ3Q7
ICtwdGVzdF9saXN0X2FkZChzdHJ1Y3QgcHRlc3RfbGlzdCAqaGVhZCwgY2hhciAqcHRlc3QsIGNo
YXIgKnJ1bl9wdGVzdCwgaW50IHRpbWVvdXQpPGJyPg0KJmd0O8KgIMKgezxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCBzdHJ1Y3QgcHRlc3RfbGlzdCAqbiwgKnA7PGJyPg0KJmd0OyA8YnI+DQomZ3Q7
IEBAIC0xNzksNiArMTc5LDcgQEAgcHRlc3RfbGlzdF9hZGQoc3RydWN0IHB0ZXN0X2xpc3QgKmhl
YWQsIGNoYXIgKnB0ZXN0LCBjaGFyICpydW5fcHRlc3QpPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgbi0mZ3Q7cHRlc3QgPSBwdGVzdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
bi0mZ3Q7cnVuX3B0ZXN0ID0gcnVuX3B0ZXN0Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKgbi0mZ3Q7
dGltZW91dCA9IHRpbWVvdXQ7PGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgbi0m
Z3Q7cHJldiA9IE5VTEw7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIG4tJmd0O25leHQgPSBOVUxM
Ozxicj4NCiZndDsgZGlmZiAtLWdpdCBhL3B0ZXN0X2xpc3QuaCBiL3B0ZXN0X2xpc3QuaDxicj4N
CiZndDsgaW5kZXggMDJhNjRiYi4uZTU4M2Q5ZiAxMDA2NDQ8YnI+DQomZ3Q7IC0tLSBhL3B0ZXN0
X2xpc3QuaDxicj4NCiZndDsgKysrIGIvcHRlc3RfbGlzdC5oPGJyPg0KJmd0OyBAQCAtNTAsNiAr
NTAsNyBAQDxicj4NCiZndDvCoCDCoHN0cnVjdCBwdGVzdF9saXN0IHs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgY2hhciAqcHRlc3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGNoYXIgKnJ1bl9w
dGVzdDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoGludCB0aW1lb3V0Ozxicj4NCiZndDsgPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIHN0cnVjdCBwdGVzdF9saXN0ICpuZXh0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCBzdHJ1Y3QgcHRlc3RfbGlzdCAqcHJldjs8YnI+DQomZ3Q7IEBAIC02Miw3ICs2
Myw3IEBAIGV4dGVybiBpbnQgcHRlc3RfbGlzdF9mcmVlX2FsbChzdHJ1Y3QgcHRlc3RfbGlzdCAq
KTs8YnI+DQomZ3Q7wqAgwqBleHRlcm4gaW50IHB0ZXN0X2xpc3RfbGVuZ3RoKHN0cnVjdCBwdGVz
dF9saXN0ICopOzxicj4NCiZndDvCoCDCoGV4dGVybiBzdHJ1Y3QgcHRlc3RfbGlzdCAqcHRlc3Rf
bGlzdF9zZWFyY2goc3RydWN0IHB0ZXN0X2xpc3QgKiwgY2hhciAqKTs8YnI+DQomZ3Q7wqAgwqBl
eHRlcm4gc3RydWN0IHB0ZXN0X2xpc3QgKnB0ZXN0X2xpc3Rfc2VhcmNoX2J5X2ZpbGUoc3RydWN0
IHB0ZXN0X2xpc3QgKiwgY2hhciAqLCBzdHJ1Y3Qgc3RhdCk7PGJyPg0KJmd0OyAtZXh0ZXJuIHN0
cnVjdCBwdGVzdF9saXN0ICpwdGVzdF9saXN0X2FkZChzdHJ1Y3QgcHRlc3RfbGlzdCAqLCBjaGFy
ICosIGNoYXIgKik7PGJyPg0KJmd0OyArZXh0ZXJuIHN0cnVjdCBwdGVzdF9saXN0ICpwdGVzdF9s
aXN0X2FkZChzdHJ1Y3QgcHRlc3RfbGlzdCAqLCBjaGFyICosIGNoYXIgKiwgaW50KTs8YnI+DQom
Z3Q7wqAgwqBleHRlcm4gc3RydWN0IHB0ZXN0X2xpc3QgKnB0ZXN0X2xpc3RfcmVtb3ZlKHN0cnVj
dCBwdGVzdF9saXN0ICosIGNoYXIgKiwgaW50KTs8YnI+DQomZ3Q7wqAgwqBleHRlcm4gc3RydWN0
IHB0ZXN0X2xpc3QgKnB0ZXN0X2xpc3RfZXh0ZW5kKHN0cnVjdCBwdGVzdF9saXN0ICosIHN0cnVj
dCBwdGVzdF9saXN0ICopOzxicj4NCiZndDsgPGJyPg0KJmd0OyBkaWZmIC0tZ2l0IGEvdXRpbHMu
YyBiL3V0aWxzLmM8YnI+DQomZ3Q7IGluZGV4IDFhM2M5MGYuLjQyNDExNWYgMTAwNjQ0PGJyPg0K
Jmd0OyAtLS0gYS91dGlscy5jPGJyPg0KJmd0OyArKysgYi91dGlscy5jPGJyPg0KJmd0OyBAQCAt
ODQsOSArODQsMzAgQEAgY2hlY2tfYWxsb2NhdGlvbjEodm9pZCAqcCwgc2l6ZV90IHNpemUsIGNo
YXIgKmZpbGUsIGludCBsaW5lLCBpbnQgZXhpdF9vbl9udWxsKTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCB9PGJyPg0KJmd0O8KgIMKgfTxicj4NCiZndDsgPGJyPg0KJmd0OyArc3RhdGljIGlubGlu
ZSBjaGFyICo8YnI+DQomZ3Q7ICtnZXRfcHRlc3RfZmlsZShjaGFyICoqcHRlc3RfZmlsZSwgc3Ry
dWN0IHN0YXQgKnN0X2J1ZiwgY29uc3QgY2hhciAqbWFpbl9kaXIsPGJyPg0KJmd0OyArwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBjb25zdCBjaGFyICpwdGVzdF9kaXIsIGNvbnN0IGNoYXIgKmZpbGVf
bmFtZSk8YnI+DQomZ3Q7ICt7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqBpZiAoYXNwcmludGYocHRl
c3RfZmlsZSwgJnF1b3Q7JXMvJXMvcHRlc3QvJXMmcXVvdDssPGJyPg0KJmd0OyArwqAgwqAgwqAg
wqAgwqAgwqBtYWluX2RpciwgcHRlc3RfZGlyLCBmaWxlX25hbWUpID09IC0xKcKgIHs8YnI+DQom
Z3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBOVUxMOzxicj4NCiZndDsgK8KgIMKg
IMKgIMKgfTxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKgIMKgaWYgKHN0YXQoKnB0ZXN0
X2ZpbGUsIHN0X2J1ZikgPT0gLTEpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGZyZWUoKnB0ZXN0X2ZpbGUpOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0
dXJuIE5VTEw7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyArPGJyPg0KJmd0OyAr
wqAgwqAgwqAgwqBpZiAoIVNfSVNSRUcoc3RfYnVmLSZndDtzdF9tb2RlKSkgezxicj4NCiZndDsg
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZnJlZSgqcHRlc3RfZmlsZSk7PGJyPg0KJmd0OyArwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gTlVMTDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoH08
YnI+DQomZ3Q7ICs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoHJldHVybiAqcHRlc3RfZmlsZTs8YnI+
DQomZ3Q7ICt9PGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqBzdHJ1Y3QgcHRlc3RfbGlzdCAqPGJy
Pg0KJmd0OyAtZ2V0X2F2YWlsYWJsZV9wdGVzdHMoY29uc3QgY2hhciAqZGlyKTxicj4NCiZndDsg
K2dldF9hdmFpbGFibGVfcHRlc3RzKGNvbnN0IGNoYXIgKmRpciwgaW50IGdsb2JhbF90aW1lb3V0
KTxicj4NCiZndDvCoCDCoHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgc3RydWN0IHB0ZXN0X2xp
c3QgKmhlYWQ7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIHN0cnVjdCBzdGF0IHN0X2J1Zjs8YnI+
DQomZ3Q7IEBAIC0xMjMsMTAgKzE0NCwxMSBAQCBnZXRfYXZhaWxhYmxlX3B0ZXN0cyhjb25zdCBj
aGFyICpkaXIpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IGJyZWFrOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KJmd0OyA8
YnI+DQomZ3Q7IC08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZmFpbCA9IDA7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZvciAoaSA9IDA7IGkgJmx0OyBu
OyBpKyspIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
Y2hhciAqcnVuX3B0ZXN0Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgY2hhciAqdGltZW91dF9wdGVzdDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGludCB0aW1lb3V0Ozxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGNoYXIgKmRfbmFtZSA9IHN0cmR1cChuYW1l
bGlzdFtpXS0mZ3Q7ZF9uYW1lKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgQ0hFQ0tfQUxMT0NBVElPTihkX25hbWUsIHNpemVvZihuYW1lbGlzdFtpXS0m
Z3Q7ZF9uYW1lKSwgMCk7PGJyPg0KJmd0OyBAQCAtMTQyLDM0ICsxNjQsMzggQEAgZ2V0X2F2YWls
YWJsZV9wdGVzdHMoY29uc3QgY2hhciAqZGlyKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjb250aW51ZTs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfTxicj4NCiZndDsgPGJyPg0KJmd0OyAt
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoYXNwcmludGYoJmFtcDtydW5f
cHRlc3QsICZxdW90OyVzLyVzL3B0ZXN0L3J1bi1wdGVzdCZxdW90Oyw8YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlYWxkaXIsIGRfbmFtZSkgPT0g
LTEpwqAgezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgZmFpbCA9IDE7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBpZiAoZ2V0X3B0ZXN0X2ZpbGUoJmFtcDtydW5fcHRlc3QsICZhbXA7c3RfYnVmLCBy
ZWFsZGlyLCBkX25hbWUsICZxdW90O3J1bi1wdGVzdCZxdW90OykgPT0gTlVMTCkgezxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBzYXZl
ZF9lcnJubyA9IGVycm5vOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBmcmVlKGRfbmFtZSk7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3C
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChzdGF0KHJ1bl9wdGVzdCwgJmFt
cDtzdF9idWYpID09IC0xKSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKHJ1bl9wdGVzdCk7PGJyPg0KJmd0OyAtwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKGRfbmFtZSk7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGNv
bnRpbnVlOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmICghU19JU1JFRyhzdF9idWYuc3RfbW9kZSkpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwdGVzdF9saXN0X3NlYXJjaF9ieV9maWxlKGhlYWQs
IHJ1bl9wdGVzdCwgc3RfYnVmKSkgezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmcmVlKHJ1bl9wdGVzdCk7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZyZWUoZF9uYW1l
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgY29udGludWU7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIH08YnI+DQomZ3Q7IDxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgaWYgKHB0ZXN0X2xpc3Rfc2VhcmNoX2J5X2ZpbGUoaGVhZCwgcnVuX3B0ZXN0LCBz
dF9idWYpKSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBmcmVlKHJ1bl9wdGVzdCk7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKGRfbmFtZSk7PGJyPg0KJmd0OyAtwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb250aW51ZTs8YnI+
DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRpbWVvdXQgPSBnbG9i
YWxfdGltZW91dDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmIChnZXRfcHRlc3RfZmlsZSgmYW1wO3RpbWVvdXRfcHRlc3QsICZhbXA7c3RfYnVmLCByZWFs
ZGlyLCBkX25hbWUsICZxdW90O3RpbWVvdXQtcHRlc3QmcXVvdDspKSB7PGJyPg0KJmd0OyArwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBGSUxFICpmID0gZm9w
ZW4odGltZW91dF9wdGVzdCwgJnF1b3Q7ciZxdW90Oyk7PGJyPg0KJmd0OyArPGJyPg0KJmd0OyAr
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoZiA9PSBO
VUxMKSB7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBmYWlsID0gMTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNhdmVkX2Vycm5vID0g
ZXJybm87PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKHJ1bl9wdGVzdCk7PGJyPg0KJmd0OyArwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKGRf
bmFtZSk7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBmcmVlKHRpbWVvdXRfcHRlc3QpOzxicj4NCiZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnJl
YWs7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB9PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBmc2NhbmYoZiwgJnF1b3Q7JWQmcXVvdDssICZhbXA7dGltZW91dCk7PGJyPg0KJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmY2xvc2Uo
Zik7PGJyPg0KJmd0OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBmcmVlKHRpbWVvdXRfcHRlc3QpOzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0IHB0ZXN0X2xpc3QgKnAgPSBw
dGVzdF9saXN0X2FkZChoZWFkLDxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgZF9uYW1lLCBydW5fcHRlc3QpOzxicj4NCiZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZF9uYW1lLCBydW5fcHRl
c3QsIHRpbWVvdXQpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBDSEVDS19BTExPQ0FUSU9OKHAsIHNpemVvZihzdHJ1Y3QgcHRlc3RfbGlzdCAqKSwgMCk7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChwID09
IE5VTEwpIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgZmFpbCA9IDE7PGJyPg0KJmd0OyBAQCAtMjI5LDYgKzI1NSw3IEBAIGZpbHRl
cl9wdGVzdHMoc3RydWN0IHB0ZXN0X2xpc3QgKmhlYWQsIGNoYXIgKipwdGVzdHMsIGludCBwdGVz
dF9udW0pPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZvciAoaSA9IDA7IGkg
Jmx0OyBwdGVzdF9udW07IGkrKykgezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBjaGFyICpwdGVzdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgY2hhciAqcnVuX3B0ZXN0Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW50IHRpbWVvdXQ7PGJyPg0KJmd0OyA8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgbiA9IHB0ZXN0X2xpc3Rfc2Vh
cmNoKGhlYWQsIHB0ZXN0c1tpXSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIGlmIChuID09IE5VTEwpIHs8YnI+DQomZ3Q7IEBAIC0yMzksMTMgKzI2Niwx
NCBAQCBmaWx0ZXJfcHRlc3RzKHN0cnVjdCBwdGVzdF9saXN0ICpoZWFkLCBjaGFyICoqcHRlc3Rz
LCBpbnQgcHRlc3RfbnVtKTxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHB0ZXN0ID0gc3RyZHVwKG4tJmd0O3B0ZXN0KTs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcnVuX3B0ZXN0ID0gc3RyZHVw
KG4tJmd0O3J1bl9wdGVzdCk7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB0aW1lb3V0ID0gbi0mZ3Q7dGltZW91dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKHB0ZXN0ID09IE5VTEwgfHwgcnVuX3B0ZXN0ID09
IE5VTEwpIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgc2F2ZWRfZXJybm8gPSBlcnJubzs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZmFpbCA9IDE7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOzxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KJmd0
OyA8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwdGVz
dF9saXN0X2FkZChoZWFkX25ldywgcHRlc3QsIHJ1bl9wdGVzdCkgPT0gTlVMTCkgezxicj4NCiZn
dDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHB0ZXN0X2xpc3RfYWRk
KGhlYWRfbmV3LCBwdGVzdCwgcnVuX3B0ZXN0LCB0aW1lb3V0KSA9PSBOVUxMKSB7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNhdmVk
X2Vycm5vID0gZXJybm87PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIGZhaWwgPSAxOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBicmVhazs8YnI+DQomZ3Q7IEBAIC01MDks
OCArNTM3LDcgQEAgcnVuX3B0ZXN0cyhzdHJ1Y3QgcHRlc3RfbGlzdCAqaGVhZCwgY29uc3Qgc3Ry
dWN0IHB0ZXN0X29wdGlvbnMgb3B0cyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZnByaW50ZihmcCwgJnF1b3Q7JXNcbiZxdW90Oywg
Z2V0X3N0aW1lKHN0aW1lLCBHRVRfU1RJTUVfQlVGX1NJWkUsIHN0dGltZSkpOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmcHJpbnRm
KGZwLCAmcXVvdDtCRUdJTjogJXNcbiZxdW90OywgcHRlc3RfZGlyKTs8YnI+DQomZ3Q7IDxicj4N
CiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgc3RhdHVzID0gd2FpdF9jaGlsZChjaGlsZCwgb3B0cy50aW1lb3V0KTs8YnI+DQom
Z3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0YXR1
cyA9IHdhaXRfY2hpbGQoY2hpbGQsIHAtJmd0O3RpbWVvdXQpOzxicj4NCiZndDsgPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGVudGlt
ZSA9IHRpbWUoTlVMTCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIGR1cmF0aW9uID0gZW50aW1lIC0gc3R0aW1lOzxicj4NCiZndDsg
QEAgLTUyOCw2ICs1NTUsOCBAQCBydW5fcHRlc3RzKHN0cnVjdCBwdGVzdF9saXN0ICpoZWFkLCBj
b25zdCBzdHJ1Y3QgcHRlc3Rfb3B0aW9ucyBvcHRzLDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZwcmludGYoZnAs
ICZxdW90O0VORDogJXNcbiZxdW90OywgcHRlc3RfZGlyKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZnByaW50ZihmcCwgJnF1b3Q7
JXNcbiZxdW90OywgZ2V0X3N0aW1lKHN0aW1lLCBHRVRfU1RJTUVfQlVGX1NJWkUsIGVudGltZSkp
Ozxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZnJlZShwdGVzdF9kaXIpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIFBURVNUX0xJU1RfSVRFUkFURV9FTkQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgZnByaW50ZihmcCwgJnF1b3Q7U1RPUDogJXNcbiZxdW90OywgcHJvZ25hbWUpOzxicj4N
CiZndDsgZGlmZiAtLWdpdCBhL3V0aWxzLmggYi91dGlscy5oPGJyPg0KJmd0OyBpbmRleCAzOTgz
MmU2Li42OTk0MGQwIDEwMDY0NDxicj4NCiZndDsgLS0tIGEvdXRpbHMuaDxicj4NCiZndDsgKysr
IGIvdXRpbHMuaDxicj4NCiZndDsgQEAgLTQ1LDcgKzQ1LDcgQEAgc3RydWN0IHB0ZXN0X29wdGlv
bnMgezxicj4NCiZndDsgPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqBleHRlcm4gdm9pZCBjaGVj
a19hbGxvY2F0aW9uMSh2b2lkICosIHNpemVfdCwgY2hhciAqLCBpbnQsIGludCk7PGJyPg0KJmd0
OyAtZXh0ZXJuIHN0cnVjdCBwdGVzdF9saXN0ICpnZXRfYXZhaWxhYmxlX3B0ZXN0cyhjb25zdCBj
aGFyICopOzxicj4NCiZndDsgK2V4dGVybiBzdHJ1Y3QgcHRlc3RfbGlzdCAqZ2V0X2F2YWlsYWJs
ZV9wdGVzdHMoY29uc3QgY2hhciAqLCBpbnQpOzxicj4NCiZndDvCoCDCoGV4dGVybiBpbnQgcHJp
bnRfcHRlc3RzKHN0cnVjdCBwdGVzdF9saXN0ICosIEZJTEUgKik7PGJyPg0KJmd0O8KgIMKgZXh0
ZXJuIHN0cnVjdCBwdGVzdF9saXN0ICpmaWx0ZXJfcHRlc3RzKHN0cnVjdCBwdGVzdF9saXN0ICos
IGNoYXIgKiosIGludCk7PGJyPg0KJmd0O8KgIMKgZXh0ZXJuIGludCBydW5fcHRlc3RzKHN0cnVj
dCBwdGVzdF9saXN0ICosIGNvbnN0IHN0cnVjdCBwdGVzdF9vcHRpb25zLDxicj4NCiZndDsgLS08
YnI+DQomZ3Q7IDIuMzEuMDxicj4NCiZndDsgPGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2PjwvZGl2
Pg0K

--000000000000b0cc3f05be4c84dd--
