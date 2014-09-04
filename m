Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C293FE00769; Thu,  4 Sep 2014 07:10:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C5BA7E006EF
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 07:10:29 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Thu, 4 Sep 2014
	16:10:26 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id D7830288E2C;
	Thu,  4 Sep 2014 16:10:26 +0200 (CEST)
Date: Thu, 4 Sep 2014 16:10:26 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Message-ID: <20140904141026.GA2333@sestofb10.enea.se>
References: <62599fadb3fd4388af5fe60df349faf7@EPBYMINSA0032.epam.com>
MIME-Version: 1.0
In-Reply-To: <62599fadb3fd4388af5fe60df349faf7@EPBYMINSA0032.epam.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH] Provide common functionality to run jdk on the build host
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
X-List-Received-Date: Thu, 04 Sep 2014 14:10:36 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Patch applied. Thanks!

On Thu, Sep 04, 2014 at 12:30:44PM +0000, Vladimir Redzhepov wrote:
> >From f7c9e480729ea2c3bafb6ae5e101627f7f77f867 Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Thu, 4 Sep 2014 15:02:22 +0300
> Subject: [PATCH] Provide common functionality to run jdk on the build host.
> 
> The native class provides common functionality for recipes that
> wish to build tools to run on the build host (i.e. tools that use
> the compiler or other tools from the build host).
> 
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 6a34a7a..de0870a 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -10,3 +10,11 @@ DESCRIPTION = "This is the proprietary JDK from Sun/Oracle, with the Hotspot JVM
> 
>  JDK_JRE = "jdk"
>  require oracle-jse.inc
> +
> +do_install_class-native() {
> +    install -d -m 0755                      ${D}${bindir}/${JDK_JRE}${PV}_${PV_UPDATE}
> +    cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${bindir}/
> +    ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}     ${D}${bindir}/java
> +}
> +
> +BBCLASSEXTEND = "native"
> -- 
Best Regards,
Maxin

