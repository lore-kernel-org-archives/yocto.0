Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACB13E004FF; Tue, 19 Aug 2014 08:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8C12EE0034C
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 08:30:31 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1;
	Tue, 19 Aug 2014 17:30:22 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 3685028C142;
	Tue, 19 Aug 2014 17:30:22 +0200 (CEST)
Date: Tue, 19 Aug 2014 17:30:22 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140819153022.GA52003@sestofb10.enea.se>
References: <1408031252-24814-1-git-send-email-maxin.john@enea.com>
MIME-Version: 1.0
In-Reply-To: <1408031252-24814-1-git-send-email-maxin.john@enea.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Subject: Re: [meta-oracle-java][PATCH 1/2] oracle-java: update fetch method
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
X-List-Received-Date: Tue, 19 Aug 2014 15:30:48 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

Gentle ping .. 
Could anyone review these, please ?

On Thu, Aug 14, 2014 at 05:47:31PM +0200, Maxin B. John wrote:
> Use custom FETCHCMD_wget to avoid manual downloading of Oracle Java packages.
> 
> Signed-off-by: Maxin B. John <maxin.john@enea.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse.inc | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
> index 98069f4..3a4e20d 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -6,6 +6,8 @@ LIC_FILES_CHKSUM = "\
>  	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=c339b34e3da6673d2c5950d0f8808f8c \
>  	"
>  
> +FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
> +
>  # get the java update version in the resulting package
>  PR =. "u${PV_UPDATE}"
>  S = "${WORKDIR}"
> -- 
> 1.9.1

