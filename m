Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 940FCE00A8C
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:32:59 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id t19so5010589igi.0
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 10:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=5HfS3sD8lKt4Ogzuo5DU6NQg9g2vkROjxKkez/shNCs=;
	b=jdIT7dbZT+EZulLTrH5isLyDqiddNHKQxY/vY/zbP69zdl5KGtQmdHgsGq4KE44+xH
	4AlhPf+Zoh4NexGvJX6j/Zwh1flInAwhJqh5KVpV3VHf6IJqe77oF6abVBuCBN3D28cM
	uKiFnK/HuTKWhcd/5fQSJ1wuI8bSnu2tgqzeJ/qStZNkLY60AYk2mOYLcs+kochjcxWb
	DtnHMcMmJZdDJgGlpQ6CdXdnshw5D2MKBN9ZExG+mMZ6Iyhqii6rm7pGdZb+GvBgZGw6
	yfaVGEQSF7GJ7ka+tX171JA0uDKU2niE2Giag8eFuS6X1iTfUQeDfQfbzhIjr9ty5HkZ
	Vy/Q==
X-Received: by 10.50.60.103 with SMTP id g7mr36313103igr.20.1394044378595;
	Wed, 05 Mar 2014 10:32:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 5 Mar 2014 10:32:28 -0800 (PST)
In-Reply-To: <1394010268-16318-1-git-send-email-s.mennetrier@innotis.org>
References: <1394010268-16318-1-git-send-email-s.mennetrier@innotis.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2014 10:32:28 -0800
Message-ID: <CAMKF1srEaqx2pwT52zbeQyE-b0hcU6wxVrZgX4eSfmoAoCn7wQ@mail.gmail.com>
To: =?UTF-8?Q?S=C3=A9bastien_Mennetrier?= <s.mennetrier@innotis.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] omxplayer : Install fonts directory in datadir
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
X-List-Received-Date: Wed, 05 Mar 2014 18:33:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 5, 2014 at 1:04 AM, S=C3=A9bastien Mennetrier
<s.mennetrier@innotis.org> wrote:
> Signed-off-by: S=C3=A9bastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-mult=
imedia/omxplayer/omxplayer_git.bb
> index a456026..7492f62 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -52,9 +52,12 @@ do_compile() {
>
>  do_install() {
>         oe_runmake dist
> +       mkdir -p ${D}${datadir}/fonts/truetype/freefont/
> +       install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/

just use

install -D ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/

>  }
>
>  FILES_${PN} =3D "${bindir}/omxplayer* \
> -               ${libdir}/omxplayer/lib*${SOLIBS}"
> +               ${libdir}/omxplayer/lib*${SOLIBS} \
> +               ${datadir}/fonts"
>
>  FILES_${PN}-dev +=3D "${libdir}/omxplayer/*.so"
> --
> 1.8.1.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

