Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95E2E00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 05:09:45 -0800 (PST)
Received: from [192.168.101.57] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id 676FB6E943A9; 
	Wed, 12 Dec 2012 14:09:43 +0100 (CET)
Message-ID: <50C88216.3010803@timomueller.eu>
Date: Wed, 12 Dec 2012 14:09:42 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFCv3 0/7][eclipse-poky] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Wed, 12 Dec 2012 13:09:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

mail@timomueller.eu wrote, On 06.12.2012 16:48:
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> since the last proposal some things have changed:
> 1. Eclipse help generation is now part of the yocto-docs project
> (currently available in the origin/timo branch)
> 2. We agreed that the plugin should be licensed under the EPL v1.0
> instead of having a separate documentation plugin licensed under the
> CCA-SA 2.0 UK.
>
> The last patch set was adding generated eclipse help files (html) to
> the repository. One major change in this patch series is that I
> extended the plugin build system to integrate the generation into the
> build process. Thus keeping the eclipse help and the official
> documentation in sync is now automated.
> Also the eclipse help is now part of the user.doc plugin and no longer
> contained in a separate plugin/feature.
>
> Rational from the original patch:
> <snip>
> the documentation of the yocto project can currently be viewed online
> or as a separate pdf. When using the eclipse ide to develop software
> on base of a yocto sysroot and toolchain it would be convenient to
> access the relevant parts of the documentation from within the ide.
> </snip>
> <snip>
> I have intergrated this
> documentation in the ide and it can now be accessed through the
> eclipse help center (Help -> Help Contents).
> </snip>
>
> Best regards
> Timo
>
> Timo Mueller (7):
>    plugins/sdk.ide.doc.user: Add empty eclipse help
>    plugins/sdk.ide.doc.user: Add about.html to prepare addition of yocto
>      documentation
>    scripts/generate_doc.sh: Add script to handle eclipse help generation
>    plugins/sdk.ide.doc.user: Add yocto documentation to the table of
>      contents
>    scripts/generat-doc.sh: Copy generated eclipse help into the user.doc
>      plugin
>    scripts/build.sh: Add documentation generation to the default build
>    (TEMPORARY): Use origin/timo branch of yocto docs project
>
>   .../META-INF/MANIFEST.MF                           |    3 +-
>   plugins/org.yocto.sdk.ide.doc.user/about.html.in   |  166 ++++++++++++++++++++
>   .../org.yocto.sdk.ide.doc.user/build.properties    |    9 +-
>   plugins/org.yocto.sdk.ide.doc.user/html/book.css   |    1 +
>   plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   31 ++++
>   plugins/org.yocto.sdk.ide.doc.user/toc.xml         |   21 +++
>   scripts/build.sh                                   |    7 +
>   scripts/generate_doc.sh                            |   91 +++++++++++
>   8 files changed, 326 insertions(+), 3 deletions(-)
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/about.html.in
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/html/book.css
>   create mode 100644 plugins/org.yocto.sdk.ide.doc.user/toc.xml
>   create mode 100755 scripts/generate_doc.sh
>

The name of the poky-ref-manual will be changed to ref-manual. This 
change has an impact on this patch series, since the name is used in the 
generate-doc shell script.
But with the temporary fix in patch 7, the timo branch is used, which 
will for the time being remain unaffected by the name changes. This way 
you can test the documentation integration proposed in this patch set.
I would like to get your opinion on the general approach to integrate 
the documentation into eclipse. If it fits into the eclipse-poky project 
in general, I will rewrite this patch series to reflect the changes. The 
rewrite will also remove the "the" from the different help chapters (as 
Scott pointed out to me).
I also agreed with Scott that once this approach is agreed on I will 
provide the necessary patches to the timo branch of the yocto-docs 
project and he will merge the eclipse generation into the master of the 
project.

Best regards,
Timo

PS: I also apologize for not signing off the patch series. I will make 
up for that in the reworked patches.

