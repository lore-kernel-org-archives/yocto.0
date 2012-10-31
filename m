Return-Path: <Joe.MacDonald@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17429E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 05:43:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q9VCgwMw005676
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Oct 2012 05:42:58 -0700 (PDT)
Received: from yow-jmacdona-d1.ottawa.wrs.com (128.224.146.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 31 Oct 2012 05:42:58 -0700
Received: from yow-jmacdona-d2.wrs.com (yow-jmacdona-d2.wrs.com
	[128.224.146.166])	by yow-jmacdona-d1.ottawa.wrs.com (Postfix) with
	ESMTP id D79C07FD0;	Wed, 31 Oct 2012 08:42:42 -0400 (EDT)
Received: by yow-jmacdona-d2.wrs.com (Postfix, from userid 1000)	id
	B99676A3646; Wed, 31 Oct 2012 08:42:57 -0400 (EDT)
Date: Wed, 31 Oct 2012 08:42:57 -0400
From: Joe MacDonald <Joe.MacDonald@windriver.com>
To: <b40290@freescale.com>
Message-ID: <20121031124257.GD3265@windriver.com>
References: <1351663699-6121-1-git-send-email-b40290@freescale.com>
MIME-Version: 1.0
In-Reply-To: <1351663699-6121-1-git-send-email-b40290@freescale.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Wed, 31 Oct 2012 05:46:43 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [meta-fsl-ppc denzil] inetutils_1.8.bbapend: ifconfig -a includes interfaces without an address
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 31 Oct 2012 12:43:01 -0000
X-Groupsio-MsgNum: 10397
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="48TaNjbzBVislYPb"
Content-Disposition: inline

--48TaNjbzBVislYPb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-fsl-ppc denzil] inetutils_1.8.bbapend: ifconfig -a includes =
interfaces without an address] On 12.10.31 (Wed 01:08) b40290@freescale.com=
 wrote:

> From: Chunrong Guo <b40290@freescale.com>
>=20
>            *ifconfig/if_index.c (if_nameindex): Remove local variables
>            `ifc', `i', `rq_len', `last_len', `ifr', `end', `cur'.
>            Add local variables `content', `it', `length', `index'.
>            Remove code that uses the SIOCGIFCONF ioctl to get the interfa=
ces
>            list.  Parse the PATH_PROCNET_DEV file to fetch the list of
>            interfaces.
>=20
> Signed-off-by: Chunrong Guo <b40290@freescale.com>

What's the problem you're trying to solve here?

Also, I think you're working in meta-oe here, so you probably wanted to
send this to openembedded-devel@lists.openembedded.org, per the README
in the meta-oe layer.

-J.

> ---
>  recipes-append/inetutils/files/15.patch            |  197 +++++++++++++++
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
>=20
> diff --git a/recipes-append/inetutils/files/15.patch b/recipes-append/ine=
tutils/files/15.patch
> new file mode 100644
> index 0000000..c2d4f11
> --- /dev/null
> +++ b/recipes-append/inetutils/files/15.patch
> @@ -0,0 +1,197 @@
> +--- inetutils-1.8/ifconfig/if_index.c	2010-05-15 06:25:47.000000000 -0500
> ++++ ../inetutils-1.8-r0+fsl.1/inetutils-1.8/ifconfig/if_index.c	2012-10-=
30 04:03:19.595348659 -0500
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
> +=20
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
> +=20
> +   /* A first estimate.  */
> +-  rq_len =3D 4 * sizeof (struct ifreq);
> ++ // rq_len =3D 4 * sizeof (struct ifreq);
> +=20
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
> +=20
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
> ++=20
> ++     /* Step along the array by the size of the current structure */
> ++     // ifr =3D (struct ifreq *) ((caddr_t) ifr + len + IFNAMSIZ);
> +=20
> +       /* We ignore the other families .. OK ?  */
> +-      if (cur->ifr_addr.sa_family !=3D AF_INET)
> +-	continue;
> +-
> ++    //  if (cur->ifr_addr.sa_family !=3D AF_INET)
> ++	//continue;
> ++   idx =3D malloc (n * sizeof(*idx));
> ++   if (idx =3D=3D NULL)
> +       /* Make Room safely.  */
> +       {
> +-	struct if_nameindex *tidx =3D NULL;
> +-	tidx =3D realloc (idx, (i + 1) * sizeof (*idx));
> +-	if (tidx =3D=3D NULL)
> +-	  {
> +-	    if_freenameindex (idx);
> +-	    close (fd);
> +-	    errno =3D ENOBUFS;
> +-	    return NULL;
> +-	  }
> +-	idx =3D tidx;
> ++	//struct if_nameindex *tidx =3D NULL;
> ++	//tidx =3D realloc (idx, (i + 1) * sizeof (*idx));
> ++	//if (tidx =3D=3D NULL)
> ++	//  {
> ++	 //   if_freenameindex (idx);
> ++	  //  close (fd);
> ++	   // errno =3D ENOBUFS;
> ++	  //  return NULL;
> ++	 // }
> ++//	idx =3D tidx;
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
> +=20
> ++/*
> +       idx[i].if_name =3D strdup (cur->ifr_name);
> +       if (idx[i].if_name =3D=3D NULL)
> + 	{
> +@@ -174,18 +208,38 @@
> + 	  errno =3D ENOBUFS;
> + 	  return NULL;
> + 	}
> ++*/
> ++      idx[index].if_name =3D strdup (start + 1);
> ++      idx[index].if_index =3D index + 1;
> +=20
> + # if defined(SIOCGIFINDEX)
> +-      if (ioctl (fd, SIOCGIFINDEX, cur) >=3D 0)
> +-	idx[i].if_index =3D cur->ifr_index;
> +-      else
> ++  //    if (ioctl (fd, SIOCGIFINDEX, cur) >=3D 0)
> ++//	idx[i].if_index =3D cur->ifr_index;
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
> +-	idx[i].if_index =3D i + 1;
> +-      i++;
> ++//	idx[i].if_index =3D i + 1;
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
> +=20
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
> ++=20
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
> +=20
> + char *
> diff --git a/recipes-append/inetutils/files/add-module.patch b/recipes-ap=
pend/inetutils/files/add-module.patch
> new file mode 100644
> index 0000000..7acc3a4
> --- /dev/null
> +++ b/recipes-append/inetutils/files/add-module.patch
> @@ -0,0 +1,18 @@
> +--- inetutils-1.8/lib/gnulib.mk	2010-05-15 06:34:54.000000000 -0500
> ++++ inetutils-1.8/lib/gnulib.mk	2012-10-29 21:50:44.821671025 -0500
> +@@ -111,6 +111,15 @@
> +=20
> + ## end   gnulib module argp-version-etc
> +=20
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
> +=20
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
> +--=20
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
--=20
Joe MacDonald, Sr. Member of Technical Staff, Linux Products Group, Wind Ri=
ver
direct 613.270.5750     mobile 613.291.7421     fax 613.592.2283

--48TaNjbzBVislYPb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEARECAAYFAlCRHNEACgkQPN8S4W6ZZnfFfACfSnt9pxmXxIpA0jJZDIZvvath
L5wAnj627Sgwhv8JZGr9udY/N6QA0vdL
=eWkB
-----END PGP SIGNATURE-----

--48TaNjbzBVislYPb--
