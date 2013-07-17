Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67411E013A2
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 08:01:02 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id d10so1645433lbj.14
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 08:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vSESmo6TXY5wKrejYHu/f0vO/0LuLjX3iUpHeS7wjXw=;
	b=jkO6r1rbzIy3/HjTLVsh339J2r1yoszgP9LFBpKWw+lxmJ8d2lhCQLiwI1m6/wnYy+
	oyHhjj/+nehDny8Oi8pvZzZY6xb9RCdQmnWdhiD2miz+sZCuEuGI4Jy5L9MCj0Jed5vc
	2+G6bjs7oQRdgVnzGrTYgG8dQHU/Hl0DT58q83iBQenV3VTgLK/hezTLJG77s7tO2Vfm
	U7VqrPIprrrnWtJhbnEhovE0lxEgmzsO197ZpbLUWCHhrHHYGqizg2a6ZDsGLNFQrQVy
	/rOPBEjtt7b/BeFJPmP3HZFOLWoEZnlx6YacKa5ck2aL1AARMs/HT4TIJNWvH1kdFuHV
	px2Q==
MIME-Version: 1.0
X-Received: by 10.152.27.40 with SMTP id q8mr3111545lag.75.1374073261890; Wed,
	17 Jul 2013 08:01:01 -0700 (PDT)
Received: by 10.112.133.234 with HTTP; Wed, 17 Jul 2013 08:01:01 -0700 (PDT)
In-Reply-To: <1373728745-15435-2-git-send-email-paul@paulbarker.me.uk>
References: <1373728745-15435-1-git-send-email-paul@paulbarker.me.uk>
	<1373728745-15435-2-git-send-email-paul@paulbarker.me.uk>
Date: Wed, 17 Jul 2013 11:01:01 -0400
Message-ID: <CADkTA4PEq4TSjeNxNs-XKap8-wsBjNMuJLbaR1pUbwb3FLY+Jw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][dylan][PATCH] linux-yocto: Fix SRCREVs in linux-yocto_3.2
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
X-List-Received-Date: Wed, 17 Jul 2013 15:01:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Jul 13, 2013 at 11:19 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> The KERNEL_VERSION set by linux-yocto_3.2.bb in openembedded-core is 3.2.32 but
> the SRCREVs in the bbappend in meta-yocto-bsp referred to version 3.2.18. These
> SRCREVs are updated to the correct values.

Looks good, and thanks for the boot report.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>



>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
> index fa160f8..6aa0add 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
>  KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
>  KBRANCH_beagleboard = "standard/default/beagleboard"
>
> -SRCREV_machine_atom-pc ?= "41074a778d251a77e036fd8a99915cd4da6cd8f7"
> -SRCREV_machine_routerstationpro ?= "94abc0d75d0a99c40c53402570cd9c569539fee9"
> -SRCREV_machine_mpc8315e-rdb ?= "a04e94f4dae9cf6d32d059cf9e0308abe7341a3a"
> -SRCREV_machine_beagleboard ?= "40bde7a43ef3cd85729ab02464a7ecdf71e522a6"
> +SRCREV_machine_atom-pc ?= "4e22c5593a355ab6f21f29895b68ee432df49f22"
> +SRCREV_machine_routerstationpro ?= "06264be5913f2984aad07fe31a27fd8ef8e15782"
> +SRCREV_machine_mpc8315e-rdb ?= "f906a896696d98c1e651bcef17631f1096cd6c31"
> +SRCREV_machine_beagleboard ?= "cdc1e64b1cec2f93a1ea656e358b8bb8d2926954"
>
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
> --
> 1.8.3.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

