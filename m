Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3C7E00A6D; Tue, 18 Aug 2015 07:34:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9302AE008EC
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 07:34:35 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 18 Aug 2015 16:34:34 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 8399528BA20;
	Tue, 18 Aug 2015 16:34:34 +0200 (CEST)
Date: Tue, 18 Aug 2015 16:34:34 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Message-ID: <20150818143433.GA53686@sestofb10.enea.se>
References: <1438347707-25863-1-git-send-email-mario@ossystems.com.br>
MIME-Version: 1.0
In-Reply-To: <1438347707-25863-1-git-send-email-mario@ossystems.com.br>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] oracle-jse.inc: don't link to ${D}${datadir}/java
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
X-List-Received-Date: Tue, 18 Aug 2015 14:34:40 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Mario,

On Fri, Jul 31, 2015 at 10:01:47AM -0300, Mario Domenech Goulart wrote:
> Libraries that install files into ${D}${datadir}/java (i.e., they
> create ${D}${datadir}/java) may cause errors like the following at
> rootfs time:
> 
>   ERROR:
>   Collected errors:
>    * extract_archive: Cannot create symlink from ./usr/share/java to
>      'ejre1.7.0_75': File exists.
> 
> Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
> ---
>  recipes-devtools/oracle-java/oracle-jse.inc | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
> index d5cd765..e657a45 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -15,7 +15,6 @@ S = "${WORKDIR}"
>  do_install () {
>  	install -d -m 0755					${D}${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}
>  	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}			${D}${datadir}/
> -	ln -sf ${JDK_JRE}${PV}_${PV_UPDATE}			${D}${datadir}/java
>  	install -d -m 0755					${D}${bindir}
>  	ln -sf ${datadir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/java ${D}${bindir}/java
>  }

Merged. Thank you!

Sorry for the delay in pushing this patch.

Best Regards,
Maxin

