Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B60D7E00B20; Tue, 11 Apr 2017 23:54:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1EAE00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 23:54:08 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id CE9C068A01C; Wed, 12 Apr 2017 07:54:07 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 288CD68A01B;
	Wed, 12 Apr 2017 07:54:07 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B87E2674006F;
	Wed, 12 Apr 2017 08:54:06 +0200 (CEST)
To: Paulo Neves <ptsneves@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <01133dfb-ddd8-5514-466a-ec64d829aa78@mlbassoc.com>
Date: Wed, 12 Apr 2017 08:54:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
Subject: Re: multiconfig samples not put in the build dir.
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
X-List-Received-Date: Wed, 12 Apr 2017 06:54:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-12 08:48, Paulo Neves wrote:
> Hello,
>
> I thought it would be consistent to have the multiconfig samples to
> also be populated just like the local.conf.
>
> I produced a patch accordingly:
>
>>From 6091978f666463c46093203b74f28b82a9bf4d47 Mon Sep 17 00:00:00 2001
> From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
> Date: Mon, 3 Apr 2017 11:23:12 +0200
> Subject: [PATCH 1/2] multiconfig samples are now put in the build dir.
>
> The users of multiconfig which use the templateconf
> mechanism may also want the multiconfig samples to
> be retrieved from the template configuration
> directories. This patch allows for that.
>
> It only copies the .conf.sample files. It does not
> create the multiconfig directory if the templateconf
> directory does not exist or have any sample files.
> ---
>  scripts/oe-setup-builddir | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
> index ef495517aaafd8150313ac1f8f5eb5079c90d09b..783ed20dd49d23fe38fa28d6a105918200a54610
> 100755
> --- a/scripts/oe-setup-builddir
> +++ b/scripts/oe-setup-builddir
> @@ -77,11 +77,11 @@ if [ -n "$TEMPLATECONF" ]; then
>      OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
>      OECORENOTESCONF="$TEMPLATECONF/conf-notes.txt"
>  fi
> -
>  unset SHOWYPDOC
>  if [ -z "$OECORELOCALCONF" ]; then
>      OECORELOCALCONF="$OEROOT/meta/conf/local.conf.sample"
>  fi
> +
>  if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
>      cat <<EOM
>  You had no conf/local.conf file. This configuration file has therefore been
> @@ -91,12 +91,20 @@ for more information as common configuration
> options are commented.
>
>  EOM
>      cp -f $OECORELOCALCONF "$BUILDDIR/conf/local.conf"
> +    if ( find "$TEMPLATECONF/multiconfig/" -iname '*.conf.sample'
> 2>&1 >  /dev/null ); then
> +       mkdir -p "$BUILDDIR/conf/multiconfig/"
> +        cp -fa "$TEMPLATECONF/multiconfig" "$BUILDDIR/conf/"
> +        (cd "$BUILDDIR/conf/multiconfig/" &&
> +        rename .conf.sample .conf *.conf.sample)

This doesn't look right to me - what are you expecting the 'rename' command to do?

> +        echo "Multiconfig samples detected copying them also.\n"
> +    fi
>      SHOWYPDOC=yes
>  fi
>
>  if [ -z "$OECORELAYERCONF" ]; then
>      OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
>  fi
> +
>  if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
>      cat <<EOM
>  You had no conf/bblayers.conf file. This configuration file has therefore been
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

