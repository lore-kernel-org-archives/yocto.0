Return-Path: <prvs=979498b18=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C7DDE01687
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 05:54:12 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqIEALzFSlKsEApK/2dsb2JhbABagz9SwQKBRXSCJQEBAQQBAQE3NBcEAgEIDQQEAQELFAkHHwgBChQJCAEBBBMIiAq8QASOBgGBGTgGgxmBAwOOTYZniSWORIFoQg
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: [psplash][PATCH] Add option to read message from file
Thread-Index: Ac6+pHIymGSUvZ+1TVuSvsCdsMelrwAAMFdg
Date: Tue, 1 Oct 2013 12:53:57 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064FAEF5E@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA77064FAEF32@sdexmbx1srv.skidata.net>
In-Reply-To: <F7680723A1CA6840825A59020FA77064FAEF32@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.112.215]
MIME-Version: 1.0
Subject: Re: [psplash][PATCH] Add option to read message from file
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
X-List-Received-Date: Tue, 01 Oct 2013 12:54:13 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everybody,
I recently sent a patch for psplash to add the ability to read the displaye=
d message from a file.

I'd appreciate any comments on it!

Thanks and best regards,
Richard Leitner

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On
> Behalf Of Richard Leitner - SKIDATA
> Sent: Tuesday, October 01, 2013 2:51 PM
> To: Yocto Project Discussion ML (yocto@yoctoproject.org)
> Subject: [yocto] [psplash][PATCH] Add option to read message from file
>=20
> Add an option to read the displayed message from a file.
> Additionally the maximum length for the read string can be defined.
> The string will then be cut after the given number of chars.
> It is also possible to define a prefix which is displayed in front of the=
 read file content.
>=20
> If no file is defined a hardcoded message (using MSG like before) can be =
displayed.
>=20
> For these changes the following defines were introduced:
> MSG_FILE_PATH ...... path to the file
> MSG_FILE_MAX_LEN ... number of chars read from file MSG_FILE_PREFIX .... =
text
> displayed in front of the file content
>=20
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  psplash.c |   41 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
>=20
> diff --git a/psplash.c b/psplash.c
> index 09cf0d0..093a99a 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -23,6 +23,20 @@
>  #include "psplash-bar-img.h"
>  #include "radeon-font.h"
>=20
> +/* Here you can define a message which will be displayed above the
> + * progress bar.
> + * The message can be either read from a file:
> + *    Set MSG_FILE_PATH (and if needed MSG_FILE_{MAX_LEN,PREFIX})
> + *    to display the first MSG_FILE_MAX_LEN characters
> + *    of the first line from MSG_FILE_PATH as message.
> + *    Additionally the content of MSG_FILE_PREFIX will be displayed
> + *    before the read message. */
> +#define MSG_FILE_PATH ""
> +#define MSG_FILE_MAX_LEN 32
> +#define MSG_FILE_PREFIX ""
> +/* Or a fixed string can be used:
> + *    If MSG_FILE is not set or not readable
> + *    the content of MSG will be used as message. */
>  #define MSG ""
>=20
>  void
> @@ -204,6 +218,8 @@ main (int argc, char** argv)
>    int        pipe_fd, i =3D 0, angle =3D 0, ret =3D 0;
>    PSplashFB *fb;
>    bool       disable_console_switch =3D FALSE;
> +  FILE      *fd_msg;
> +  char      *str_msg;
>=20
>    signal(SIGHUP, psplash_exit);
>    signal(SIGINT, psplash_exit);
> @@ -287,7 +303,30 @@ main (int argc, char** argv)
>=20
>    psplash_draw_progress (fb, 0);
>=20
> -  psplash_draw_msg (fb, MSG);
> +  /* Draw message from file or defined MSG */
> +  fd_msg =3D fopen (MSG_FILE_PATH, "r");
> +  if (fd_msg=3D=3DNULL) {
> +    psplash_draw_msg (fb, MSG);
> +  } else {
> +    str_msg =3D (char*) malloc (
> +              (MSG_FILE_MAX_LEN + strlen(MSG_FILE_PREFIX) + 1)*sizeof(ch=
ar));
> +    if (str_msg !=3D NULL && fgets (str_msg, MSG_FILE_MAX_LEN, fd_msg)!=
=3DNULL) {
> +      if (strlen (MSG_FILE_PREFIX) > 0) {
> +        /* if MSG_FILE_PREFIX is set, prepend it to str_msg */
> +        memmove (str_msg + strlen(MSG_FILE_PREFIX) + 1, str_msg,
> strlen(str_msg));
> +        strcpy (str_msg, MSG_FILE_PREFIX);
> +		/* replace \0 after MSG_FILE_PREFIX with a space */
> +        str_msg[strlen(MSG_FILE_PREFIX)] =3D ' ';
> +      }
> +      psplash_draw_msg (fb, str_msg);
> +      free (str_msg);
> +    } else {
> +      /* MSG_FILE_PATH is empty (or malloc failed)
> +	   *    so display MSG_FILE_PREFIX only */
> +      psplash_draw_msg (fb, MSG_FILE_PREFIX);
> +    }
> +    fclose (fd_msg);
> +  }
>=20
>    psplash_main (fb, pipe_fd, 0);
>=20
> --
> 1.7.10.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

