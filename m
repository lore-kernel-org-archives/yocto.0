Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF24EE017DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 04:12:13 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hv10so2843718vcb.29
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 04:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=QxT+5kuMzmUD5VsBawbbdrXL/91DDCjJ2DttBuOihBY=;
	b=MPqYWmGsk/x6qX6snxYOUDIUVFCUsH6V1MGzsCZeUf3woRqUcMzDUZ6xNqAVebAax0
	tre2YKaPEmRR5WpMMJ/UizKG2pC+XvpH98/IFxHHWuaNCQFvNGVNLXEi+xrnV5HVpWk9
	/LQcLaBZ5/7k4bbomVOjIIQ5wU2SvY4J0TBeh13BQb0P+QCXIONuu1vUJRS9kJmGELBu
	nNZXAp/TozCgJhJ33HdeAYuYYKwYtFupwj2dt9536/ahWzXnUZIOufqPB1QCDYar+RN/
	S3UNFrvZ9zrFnotoVvRzhO+yK6VwfZHvXnxx/2YtnQq0vV2yHROZY9AtvhV5f6AOPs46
	+O4Q==
X-Gm-Message-State: ALoCoQmgFFzRD1uEMpG5MBlyhf6glv6mz0kXBw+DLGhYpACoMM2c5QkiRqUHZQ+SWQdMxjOPUirB
X-Received: by 10.220.144.80 with SMTP id y16mr1481041vcu.4.1383304332495;
	Fri, 01 Nov 2013 04:12:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 1 Nov 2013 04:11:52 -0700 (PDT)
In-Reply-To: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
References: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Nov 2013 11:11:52 +0000
Message-ID: <CAJTo0LZDy=OMicnNi6J5ax8A01X4mEtrRjdHPk-QavCSCRDYVQ@mail.gmail.com>
To: =?UTF-8?Q?S=C3=B8ren_Holm?= <sgh@sgh.dk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] e2fsprogs: Escape filenames in populate-extfs.sh
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
X-List-Received-Date: Fri, 01 Nov 2013 11:12:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Please sent patches to oe-core@.

Ross

On 28 October 2013 23:11, S=C3=B8ren Holm <sgh@sgh.dk> wrote:
> [YOCTO #5401]
> ---
>  .../e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh     | 20 ++++++++++----=
------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-ex=
tfs.sh b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
> index 9eff030..7de720b 100644
> --- a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
> +++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
> @@ -35,7 +35,7 @@ DEBUGFS=3D"debugfs"
>                 fi
>
>                 # Only stat once since stat is a time consuming command
> -               STAT=3D$(stat -c "TYPE=3D\"%F\";DEVNO=3D\"0x%t 0x%T\";MOD=
E=3D\"%f\";U=3D\"%u\";G=3D\"%g\"" $FILE)
> +               STAT=3D$(stat -c "TYPE=3D\"%F\";DEVNO=3D\"0x%t 0x%T\";MOD=
E=3D\"%f\";U=3D\"%u\";G=3D\"%g\"" "$FILE")
>                 eval $STAT
>
>                 case $TYPE in
> @@ -43,20 +43,20 @@ DEBUGFS=3D"debugfs"
>                         echo "mkdir $TGT"
>                         ;;
>                 "regular file" | "regular empty file")
> -                       echo "write $FILE $TGT"
> +                       echo "write \"$FILE\" \"$TGT\""
>                         ;;
>                 "symbolic link")
> -                       LINK_TGT=3D$(readlink $FILE)
> -                       echo "symlink $TGT $LINK_TGT"
> +                       LINK_TGT=3D$(readlink "$FILE")
> +                       echo "symlink \"$TGT\" \"$LINK_TGT\""
>                         ;;
>                 "block special file")
> -                       echo "mknod $TGT b $DEVNO"
> +                       echo "mknod \"$TGT\" b $DEVNO"
>                         ;;
>                 "character special file")
> -                       echo "mknod $TGT c $DEVNO"
> +                       echo "mknod \"$TGT\" c $DEVNO"
>                         ;;
>                 "fifo")
> -                       echo "mknod $TGT p"
> +                       echo "mknod \"$TGT\" p"
>                         ;;
>                 *)
>                         echo "Unknown/unhandled file type '$TYPE' file: $=
FILE" 1>&2
> @@ -64,11 +64,11 @@ DEBUGFS=3D"debugfs"
>                 esac
>
>                 # Set the file mode
> -               echo "sif $TGT mode 0x$MODE"
> +               echo "sif \"$TGT\" mode 0x$MODE"
>
>                 # Set uid and gid
> -               echo "sif $TGT uid $U"
> -               echo "sif $TGT gid $G"
> +               echo "sif \"$TGT\" uid $U"
> +               echo "sif \"$TGT\" gid $G"
>         done
>
>         # Handle the hard links.
> --
> 1.8.3.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

