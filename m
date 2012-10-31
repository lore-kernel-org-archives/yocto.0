Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23707E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 09:00:20 -0700 (PDT)
Received: from mail113-ch1-R.bigfish.com (10.43.68.229) by
	CH1EHSOBE015.bigfish.com (10.43.70.65) with Microsoft SMTP Server id
	14.1.225.23; Wed, 31 Oct 2012 16:00:19 +0000
Received: from mail113-ch1 (localhost [127.0.0.1])	by
	mail113-ch1-R.bigfish.com (Postfix) with ESMTP id 188D71C0373	for
	<yocto@yoctoproject.org>; Wed, 31 Oct 2012 16:00:19 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zz98dI9371I936eI1432Ic8kzz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail113-ch1 (localhost.localdomain [127.0.0.1]) by mail113-ch1
	(MessageSwitch) id 1351699216530890_28720;
	Wed, 31 Oct 2012 16:00:16 +0000 (UTC)
Received: from CH1EHSMHS017.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail113-ch1.bigfish.com (Postfix) with ESMTP id
	7FCD02A008F	for <yocto@yoctoproject.org>;
	Wed, 31 Oct 2012 16:00:16 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS017.bigfish.com
	(10.43.70.17) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 31 Oct 2012 16:00:15 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.121]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0318.003;
	Wed, 31 Oct 2012 16:00:15 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Guo Chunrong-B40290 <B40290@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc denzil] inetutils_1.8.bbapend: ifconfig
	-a includes interfaces without an address
Thread-Index: AQHNt4DQqwFdOE/hikOyhk6Hbv1iJg==
Date: Wed, 31 Oct 2012 16:00:15 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A73B3A1@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1351663699-6121-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1351663699-6121-1-git-send-email-b40290@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc denzil] inetutils_1.8.bbapend: ifconfig -a includes interfaces without an address
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 31 Oct 2012 16:00:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B42465B07F4485468506DB6A81D6F2E8@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 31, 2012 at 1:08 AM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>            *ifconfig/if_index.c (if_nameindex): Remove local variables
>            `ifc', `i', `rq_len', `last_len', `ifr', `end', `cur'.
>            Add local variables `content', `it', `length', `index'.
>            Remove code that uses the SIOCGIFCONF ioctl to get the interfa=
ces
>            list.  Parse the PATH_PROCNET_DEV file to fetch the list of
>            interfaces.
>
> Signed-off-by: Chunrong Guo <b40290@freescale.com>
> ---
>  recipes-append/inetutils/files/15.patch            |  197 ++++++++++++++=
+
>  recipes-append/inetutils/files/add-module.patch    |   18 ++
>  recipes-append/inetutils/files/add-readfile.patch  |  250 ++++++++++++++=
++++++
>  recipes-append/inetutils/inetutils_1.8.bbappend    |    8 +
>  .../net-tools/net-tools_1.60-23.bbappend           |    9 -
>  5 files changed, 473 insertions(+), 9 deletions(-)
>  create mode 100644 recipes-append/inetutils/files/15.patch
>  create mode 100644 recipes-append/inetutils/files/add-module.patch
>  create mode 100644 recipes-append/inetutils/files/add-readfile.patch
>  create mode 100644 recipes-append/inetutils/inetutils_1.8.bbappend
>  delete mode 100644 recipes-append/net-tools/net-tools_1.60-23.bbappend

You moved the patch against master over to meta-oe, why wouldn't you
do the same for the denzil version?

-M

>
> diff --git a/recipes-append/inetutils/files/15.patch b/recipes-append/ine=
tutils/files/15.patch
> new file mode 100644
> index 0000000..c2d4f11
> --- /dev/null
> +++ b/recipes-append/inetutils/files/15.patch
> @@ -0,0 +1,197 @@
> +--- inetutils-1.8/ifconfig/if_index.c  2010-05-15 06:25:47.000000000 -05=
00
> ++++ ../inetutils-1.8-r0+fsl.1/inetutils-1.8/ifconfig/if_index.c        2=
012-10-30 04:03:19.595348659 -0500
> +@@ -28,7 +28,7 @@
> + #include <unistd.h>
> + #include <sys/types.h>
> + #include <sys/socket.h>
> +-
> ++#include <read-file.h>
> + /* Solaris at least earlier 2.6 and before does not include
> +    the ioctl definitions if BSD_COMP is not set.  */
> + #if defined(__svr4__)
> +@@ -97,24 +97,29 @@
> + struct if_nameindex *
> + if_nameindex (void)
> + {
> +-#if defined(SIOCGIFCONF)
> +-  int fd =3D socket (AF_INET, SOCK_DGRAM, 0);
> +-  struct ifconf ifc;
> +-  unsigned int i =3D 0;
> +-  int rq_len, last_len;
> +-  struct if_nameindex *idx =3D NULL;
> +-  struct ifreq *ifr, *end, *cur;
> ++  //printk("if_nameindex\n");
> +
> ++//#if defined(SIOCGIFCONF)
> ++//  int fd =3D socket (AF_INET, SOCK_DGRAM, 0);
> ++//  struct ifconf ifc;
> ++//  unsigned int i =3D 0;
> ++//  int rq_len, last_len;
> ++    char *content, *it;
> ++    size_t length, index;
> ++    struct if_nameindex *idx =3D NULL;
> ++//  struct ifreq *ifr, *end, *cur;
> ++     int fd;
> ++    fd =3D socket (AF_INET, SOCK_DGRAM, 0);
> +   if (fd < 0)
> +     return NULL;
> +
> +   /* A first estimate.  */
> +-  rq_len =3D 4 * sizeof (struct ifreq);
> ++ // rq_len =3D 4 * sizeof (struct ifreq);
> +
> +-  ifc.ifc_buf =3D NULL;
> +-  ifc.ifc_len =3D 0;
> ++//  ifc.ifc_buf =3D NULL;
> ++//  ifc.ifc_len =3D 0;
> +   /* Read all the interfaces out of the kernel.  */
> +-  do
> ++/*  do
> +     {
> +       last_len =3D ifc.ifc_len;
> +       ifc.ifc_buf =3D alloca (ifc.ifc_len =3D rq_len);
> +@@ -142,30 +147,59 @@
> + # endif
> +
> +       cur =3D ifr;
> +-
> +-      /* Step along the array by the size of the current structure */
> +-      ifr =3D (struct ifreq *) ((caddr_t) ifr + len + IFNAMSIZ);
> ++*/
> ++      content =3D read_file (PATH_PROCNET_DEV, &length);
> ++      if (content =3D=3D NULL)
> ++         return NULL;
> ++         /* Count how many interfaces we have.  */
> ++   {
> ++    size_t n =3D 0;
> ++    it =3D content;
> ++    do
> ++      {
> ++        it =3D memchr (it + 1, ':', length - (it - content));
> ++        n++;
> ++      }
> ++    while (it);
> ++
> ++     /* Step along the array by the size of the current structure */
> ++     // ifr =3D (struct ifreq *) ((caddr_t) ifr + len + IFNAMSIZ);
> +
> +       /* We ignore the other families .. OK ?  */
> +-      if (cur->ifr_addr.sa_family !=3D AF_INET)
> +-      continue;
> +-
> ++    //  if (cur->ifr_addr.sa_family !=3D AF_INET)
> ++      //continue;
> ++   idx =3D malloc (n * sizeof(*idx));
> ++   if (idx =3D=3D NULL)
> +       /* Make Room safely.  */
> +       {
> +-      struct if_nameindex *tidx =3D NULL;
> +-      tidx =3D realloc (idx, (i + 1) * sizeof (*idx));
> +-      if (tidx =3D=3D NULL)
> +-        {
> +-          if_freenameindex (idx);
> +-          close (fd);
> +-          errno =3D ENOBUFS;
> +-          return NULL;
> +-        }
> +-      idx =3D tidx;
> ++      //struct if_nameindex *tidx =3D NULL;
> ++      //tidx =3D realloc (idx, (i + 1) * sizeof (*idx));
> ++      //if (tidx =3D=3D NULL)
> ++      //  {
> ++       //   if_freenameindex (idx);
> ++        //  close (fd);
> ++         // errno =3D ENOBUFS;
> ++        //  return NULL;
> ++       // }
> ++//    idx =3D tidx;
> ++      int saved_errno =3D errno;
> ++      close (fd);
> ++      free(content);
> ++      errno =3D saved_errno;
> ++     return NULL;
> +       }
> +-
> ++  }
> +       /* FIXME: We did not deal with duplicates or interface aliases.  =
*/
> ++  for (it =3D memchr (content, ':', length), index =3D 0; it;
> ++       it =3D memchr (it, ':', it - content), index++)
> ++    {
> ++      char *start =3D it - 1;
> ++      *it =3D '\0';
> ++
> ++      while (*start !=3D ' ' && *start !=3D '\n')
> ++        start--;
> +
> ++/*
> +       idx[i].if_name =3D strdup (cur->ifr_name);
> +       if (idx[i].if_name =3D=3D NULL)
> +       {
> +@@ -174,18 +208,38 @@
> +         errno =3D ENOBUFS;
> +         return NULL;
> +       }
> ++*/
> ++      idx[index].if_name =3D strdup (start + 1);
> ++      idx[index].if_index =3D index + 1;
> +
> + # if defined(SIOCGIFINDEX)
> +-      if (ioctl (fd, SIOCGIFINDEX, cur) >=3D 0)
> +-      idx[i].if_index =3D cur->ifr_index;
> +-      else
> ++  //    if (ioctl (fd, SIOCGIFINDEX, cur) >=3D 0)
> ++//    idx[i].if_index =3D cur->ifr_index;
> ++ //     else
> ++    {
> ++        struct ifreq cur;
> ++        strcpy (cur.ifr_name, idx[index].if_name);
> ++        cur.ifr_index =3D -1;
> ++        if (ioctl (fd, SIOCGIFINDEX, &cur) >=3D 0)
> ++          idx[index].if_index =3D cur.ifr_index;
> ++      }
> ++
> + # endif
> +-      idx[i].if_index =3D i + 1;
> +-      i++;
> ++//    idx[i].if_index =3D i + 1;
> ++ //      i++;
> ++   if (idx[index].if_name =3D=3D NULL)
> ++        {
> ++          int saved_errno =3D errno;
> ++          close (fd);
> ++          free (content);
> ++          errno =3D saved_errno;
> ++          return NULL;
> ++        }
> ++
> +     }
> +
> +   /* Terminate the array with an empty solt.  */
> +-  {
> ++/*  {
> +     struct if_nameindex *tidx =3D NULL;
> +     tidx =3D realloc (idx, (i + 1) * sizeof (*idx));
> +     if (tidx =3D=3D NULL)
> +@@ -199,14 +253,19 @@
> +   }
> +   idx[i].if_index =3D 0;
> +   idx[i].if_name =3D NULL;
> +-
> +-  close (fd);
> ++*/
> ++  idx[index].if_index =3D 0;
> ++  idx[index].if_name =3D NULL;
> ++
> ++ // close (fd);
> ++ free(content);
> +   return idx;
> +-
> ++/*
> + #else
> +   errno =3D ENOSYS;
> +   return NULL;
> + #endif
> ++*/
> + }
> +
> + char *
> diff --git a/recipes-append/inetutils/files/add-module.patch b/recipes-ap=
pend/inetutils/files/add-module.patch
> new file mode 100644
> index 0000000..7acc3a4
> --- /dev/null
> +++ b/recipes-append/inetutils/files/add-module.patch
> @@ -0,0 +1,18 @@
> +--- inetutils-1.8/lib/gnulib.mk        2010-05-15 06:34:54.000000000 -05=
00
> ++++ inetutils-1.8/lib/gnulib.mk        2012-10-29 21:50:44.821671025 -05=
00
> +@@ -111,6 +111,15 @@
> +
> + ## end   gnulib module argp-version-etc
> +
> ++
> ++## begin gnulib module read-file
> ++
> ++libgnu_a_SOURCES +=3D read-file.c
> ++
> ++EXTRA_DIST +=3D read-file.h
> ++
> ++## end   gnulib module read-file
> ++
> + ## begin gnulib module arpa_inet
> +
> + BUILT_SOURCES +=3D arpa/inet.h
> diff --git a/recipes-append/inetutils/files/add-readfile.patch b/recipes-=
append/inetutils/files/add-readfile.patch
> new file mode 100644
> index 0000000..bb18ae9
> --- /dev/null
> +++ b/recipes-append/inetutils/files/add-readfile.patch
> @@ -0,0 +1,250 @@
> +Signed-off-by: Chunrong Guo <b40290@freescale.com>
> +---
> + inetutils-1.8/lib/read-file.c |  191 ++++++++++++++++++++++++++++++++++=
+++++++
> + inetutils-1.8/lib/read-file.h |   36 ++++++++
> + 2 files changed, 227 insertions(+)
> + create mode 100644 inetutils-1.8/lib/read-file.c
> + create mode 100644 inetutils-1.8/lib/read-file.h
> +
> +diff --git a/lib/read-file.c b/lib/read-file.c
> +new file mode 100644
> +index 0000000..ba7aef3
> +--- /dev/null
> ++++ b/lib/read-file.c
> +@@ -0,0 +1,191 @@
> ++/* -*- buffer-read-only: t -*- vi: set ro: */
> ++/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
> ++/* read-file.c -- read file contents into a string
> ++   Copyright (C) 2006, 2009-2011 Free Software Foundation, Inc.
> ++   Written by Simon Josefsson and Bruno Haible.
> ++
> ++   This program is free software; you can redistribute it and/or modify
> ++   it under the terms of the GNU General Public License as published by
> ++   the Free Software Foundation; either version 3, or (at your option)
> ++   any later version.
> ++
> ++   This program is distributed in the hope that it will be useful,
> ++   but WITHOUT ANY WARRANTY; without even the implied warranty of
> ++   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> ++   GNU General Public License for more details.
> ++
> ++   You should have received a copy of the GNU General Public License
> ++   along with this program; if not, write to the Free Software Foundati=
on,
> ++   Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.  =
*/
> ++
> ++#include <config.h>
> ++
> ++#include "read-file.h"
> ++
> ++/* Get fstat.  */
> ++#include <sys/stat.h>
> ++
> ++/* Get ftello.  */
> ++#include <stdio.h>
> ++
> ++/* Get SIZE_MAX.  */
> ++#include <stdint.h>
> ++
> ++/* Get malloc, realloc, free. */
> ++#include <stdlib.h>
> ++
> ++/* Get errno. */
> ++#include <errno.h>
> ++
> ++/* Read a STREAM and return a newly allocated string with the content,
> ++   and set *LENGTH to the length of the string.  The string is
> ++   zero-terminated, but the terminating zero byte is not counted in
> ++   *LENGTH.  On errors, *LENGTH is undefined, errno preserves the
> ++   values set by system functions (if any), and NULL is returned.  */
> ++char *
> ++fread_file (FILE *stream, size_t *length)
> ++{
> ++  char *buf =3D NULL;
> ++  size_t alloc =3D BUFSIZ;
> ++
> ++  /* For a regular file, allocate a buffer that has exactly the right
> ++     size.  This avoids the need to do dynamic reallocations later.  */
> ++  {
> ++    struct stat st;
> ++
> ++    if (fstat (fileno (stream), &st) >=3D 0 && S_ISREG (st.st_mode))
> ++      {
> ++        off_t pos =3D ftello (stream);
> ++
> ++        if (pos >=3D 0 && pos < st.st_size)
> ++          {
> ++            off_t alloc_off =3D st.st_size - pos;
> ++
> ++            /* '1' below, accounts for the trailing NUL.  */
> ++            if (SIZE_MAX - 1 < alloc_off)
> ++              {
> ++                errno =3D ENOMEM;
> ++                return NULL;
> ++              }
> ++
> ++            alloc =3D alloc_off + 1;
> ++          }
> ++      }
> ++  }
> ++
> ++  if (!(buf =3D malloc (alloc)))
> ++    return NULL; /* errno is ENOMEM.  */
> ++
> ++  {
> ++    size_t size =3D 0; /* number of bytes read so far */
> ++    int save_errno;
> ++
> ++    for (;;)
> ++      {
> ++        /* This reads 1 more than the size of a regular file
> ++           so that we get eof immediately.  */
> ++        size_t requested =3D alloc - size;
> ++        size_t count =3D fread (buf + size, 1, requested, stream);
> ++        size +=3D count;
> ++
> ++        if (count !=3D requested)
> ++          {
> ++            save_errno =3D errno;
> ++            if (ferror (stream))
> ++              break;
> ++
> ++            /* Shrink the allocated memory if possible.  */
> ++            if (size < alloc - 1)
> ++              {
> ++                char *smaller_buf =3D realloc (buf, size + 1);
> ++                if (smaller_buf !=3D NULL)
> ++                  buf =3D smaller_buf;
> ++              }
> ++
> ++            buf[size] =3D '\0';
> ++            *length =3D size;
> ++            return buf;
> ++          }
> ++
> ++        {
> ++          char *new_buf;
> ++
> ++          if (alloc =3D=3D SIZE_MAX)
> ++            {
> ++              save_errno =3D ENOMEM;
> ++              break;
> ++            }
> ++
> ++          if (alloc < SIZE_MAX - alloc / 2)
> ++            alloc =3D alloc + alloc / 2;
> ++          else
> ++            alloc =3D SIZE_MAX;
> ++
> ++          if (!(new_buf =3D realloc (buf, alloc)))
> ++            {
> ++              save_errno =3D errno;
> ++              break;
> ++            }
> ++
> ++          buf =3D new_buf;
> ++        }
> ++      }
> ++
> ++    free (buf);
> ++    errno =3D save_errno;
> ++    return NULL;
> ++  }
> ++}
> ++
> ++static char *
> ++internal_read_file (const char *filename, size_t *length, const char *m=
ode)
> ++{
> ++  FILE *stream =3D fopen (filename, mode);
> ++  char *out;
> ++  int save_errno;
> ++
> ++  if (!stream)
> ++    return NULL;
> ++
> ++  out =3D fread_file (stream, length);
> ++
> ++  save_errno =3D errno;
> ++
> ++  if (fclose (stream) !=3D 0)
> ++    {
> ++      if (out)
> ++        {
> ++          save_errno =3D errno;
> ++          free (out);
> ++        }
> ++      errno =3D save_errno;
> ++      return NULL;
> ++    }
> ++
> ++  return out;
> ++}
> ++
> ++/* Open and read the contents of FILENAME, and return a newly
> ++   allocated string with the content, and set *LENGTH to the length of
> ++   the string.  The string is zero-terminated, but the terminating
> ++   zero byte is not counted in *LENGTH.  On errors, *LENGTH is
> ++   undefined, errno preserves the values set by system functions (if
> ++   any), and NULL is returned.  */
> ++char *
> ++read_file (const char *filename, size_t *length)
> ++{
> ++  return internal_read_file (filename, length, "r");
> ++}
> ++
> ++/* Open (on non-POSIX systems, in binary mode) and read the contents
> ++   of FILENAME, and return a newly allocated string with the content,
> ++   and set LENGTH to the length of the string.  The string is
> ++   zero-terminated, but the terminating zero byte is not counted in
> ++   the LENGTH variable.  On errors, *LENGTH is undefined, errno
> ++   preserves the values set by system functions (if any), and NULL is
> ++   returned.  */
> ++char *
> ++read_binary_file (const char *filename, size_t *length)
> ++{
> ++  return internal_read_file (filename, length, "rb");
> ++}
> +
> +diff --git a/lib/read-file.h b/lib/read-file.h
> +index 0000000..14041dc
> +--- /dev/null
> ++++ b/lib/read-file.h
> +@@ -0,0 +1,36 @@
> ++/* -*- buffer-read-only: t -*- vi: set ro: */
> ++/* DO NOT EDIT! GENERATED AUTOMATICALLY! */
> ++/* read-file.h -- read file contents into a string
> ++   Copyright (C) 2006, 2009-2011 Free Software Foundation, Inc.
> ++   Written by Simon Josefsson.
> ++
> ++   This program is free software; you can redistribute it and/or modify
> ++   it under the terms of the GNU General Public License as published by
> ++   the Free Software Foundation; either version 3, or (at your option)
> ++   any later version.
> ++
> ++   This program is distributed in the hope that it will be useful,
> ++   but WITHOUT ANY WARRANTY; without even the implied warranty of
> ++   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> ++   GNU General Public License for more details.
> ++
> ++   You should have received a copy of the GNU General Public License
> ++   along with this program; if not, write to the Free Software Foundati=
on,
> ++   Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.  =
*/
> ++
> ++#ifndef READ_FILE_H
> ++#define READ_FILE_H
> ++
> ++/* Get size_t.  */
> ++#include <stddef.h>
> ++
> ++/* Get FILE.  */
> ++#include <stdio.h>
> ++
> ++extern char *fread_file (FILE * stream, size_t * length);
> ++
> ++extern char *read_file (const char *filename, size_t * length);
> ++
> ++extern char *read_binary_file (const char *filename, size_t * length);
> ++
> ++#endif /* READ_FILE_H */
> +--
> +1.7.9.7
> +
> diff --git a/recipes-append/inetutils/inetutils_1.8.bbappend b/recipes-ap=
pend/inetutils/inetutils_1.8.bbappend
> new file mode 100644
> index 0000000..8134a27
> --- /dev/null
> +++ b/recipes-append/inetutils/inetutils_1.8.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> +
> +
> +SRC_URI +=3D "file://add-readfile.patch \
> +            file://15.patch \
> +            file://add-module.patch \
> +      "
> +PR_append_fsl =3D "+${DISTRO}.0"
> diff --git a/recipes-append/net-tools/net-tools_1.60-23.bbappend b/recipe=
s-append/net-tools/net-tools_1.60-23.bbappend
> deleted file mode 100644
> index b780bac..0000000
> --- a/recipes-append/net-tools/net-tools_1.60-23.bbappend
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -PR_append_fsl =3D "+${DISTRO}.0"
> -
> -inherit update-alternatives
> -
> -ALTERNATIVE_NAME_fsl =3D "ifconfig"
> -ALTERNATIVE_LINK_fsl =3D "${base_sbindir}/ifconfig"
> -ALTERNATIVE_PATH_fsl =3D "${base_sbindir}/ifconfig.net-tools"
> -ALTERNATIVE_PRIORITY_fsl =3D "200"
> -
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


