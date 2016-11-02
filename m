Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4639FE0071C; Wed,  2 Nov 2016 02:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.57.91 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1209 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Nov 2016 02:03:52 PDT
Received: from 1.mo5.mail-out.ovh.net (1.mo5.mail-out.ovh.net [188.165.57.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A55E006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 02:03:52 -0700 (PDT)
Received: from player695.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id D8B3A36462
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 09:28:34 +0100 (CET)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player695.ha.ovh.net (Postfix) with ESMTPSA id 76B6A460099;
	Wed,  2 Nov 2016 09:28:33 +0100 (CET)
Date: Wed, 2 Nov 2016 08:28:30 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161102082830.584afd43@nuc.betafive.co.uk>
In-Reply-To: <20161101134647.11370-1-net147@gmail.com>
References: <20161101134647.11370-1-net147@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 11795490377203681658
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrkedvgdduvdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: Fix appending to RDEPENDS
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
X-List-Received-Date: Wed, 02 Nov 2016 09:03:59 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  2 Nov 2016 00:46:47 +1100
Jonathan Liu <net147@gmail.com> wrote:

> The += operator should not be used in combination with overrides as it
> will clear any existing values in the variable.
> 
> Example:
> FOO = "bar"
> FOO_rpi += "baz"
> 
> The above example would result in FOO being equal to " baz" instead of
> "bar baz".
> 
> The bbappend is changed to use a wildcard instead of a specific
> version to simplify updating U-Boot.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot_%.bbappend       | 1 +
>  recipes-bsp/u-boot/u-boot_2016.03.bbappend | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
>  delete mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend
> 
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend
> b/recipes-bsp/u-boot/u-boot_%.bbappend new file mode 100644
> index 0000000..3781666
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -0,0 +1 @@
> +RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
> diff --git a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> b/recipes-bsp/u-boot/u-boot_2016.03.bbappend deleted file mode 100644
> index 35dfc37..0000000
> --- a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -RDEPENDS_${PN}_rpi += "rpi-u-boot-scr"

Looks good. Thanks for picking this up!

Paul

