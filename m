Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F24474C804C5
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 11:44:26 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 79B761660520; Wed,  3 Aug 2011 10:44:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 67BA0166051F;
	Wed,  3 Aug 2011 10:44:24 -0600 (MDT)
Message-ID: <4E397AE8.5020707@mlbassoc.com>
Date: Wed, 03 Aug 2011 10:44:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Matthew McClintock <msm@freescale.com>
References: <1312389206-15422-1-git-send-email-msm@freescale.com>
In-Reply-To: <1312389206-15422-1-git-send-email-msm@freescale.com>
Cc: yocto@yoctoproject.org, openembedded-core@openembedded.org
Subject: Re: [PATCH] Update intltool to set perl shebang correctly for	installed tools
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
X-List-Received-Date: Wed, 03 Aug 2011 16:44:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-03 10:33, Matthew McClintock wrote:
> Several installed scripts set the perl shebang that is too long
> which can cause failures on certian older bash versions.

How does the change below correspond to this comment?  It's not
clear [at least to me] how changing that environment variable
affects shebang constructs.  Can you give a more thorough explanation?

>
> Signed-off-by: Matthew McClintock<msm@freescale.com>
> ---
>   meta/recipes-devtools/intltool/intltool.inc       |    2 +-
>   meta/recipes-devtools/intltool/intltool_0.40.6.bb |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-devtools/intltool/intltool.inc b/meta/recipes-devtools/intltool/intltool.inc
> index c934654..d8917ad 100644
> --- a/meta/recipes-devtools/intltool/intltool.inc
> +++ b/meta/recipes-devtools/intltool/intltool.inc
> @@ -12,5 +12,5 @@ RRECOMMENDS_${PN} = "perl-modules"
>
>   inherit autotools pkgconfig perlnative
>
> -export PERL_virtclass-native = "/usr/bin/env perl"
> +export PERL = "/usr/bin/env perl"
>   BBCLASSEXTEND = "native"
> diff --git a/meta/recipes-devtools/intltool/intltool_0.40.6.bb b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> index c7938e5..8b52cf8 100644
> --- a/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> +++ b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> @@ -1,7 +1,7 @@
>   require intltool.inc
>   LICENSE="GPLv2"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
> -PR = "r3"
> +PR = "r4"
>
>   SRC_URI_append = " file://intltool-nowarn-0.40.0.patch"
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

