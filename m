Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29ECAE0056A; Mon,  8 Sep 2014 08:58:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CA0CFE0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 08:57:51 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Mon, 8 Sep 2014
	17:57:45 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id B0705288E2C;
	Mon,  8 Sep 2014 17:57:45 +0200 (CEST)
Date: Mon, 8 Sep 2014 17:57:45 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: "Frazer, Will" <will.frazer@eurotech.com>
Message-ID: <20140908155745.GB25602@sestofb10.enea.se>
References: <f5853f85c69e409593c89e39260ca912@EPBYMINSA0032.epam.com>
	<15cf2669b9a9496db30b36893090d5c8@DB4PR05MB397.eurprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <15cf2669b9a9496db30b36893090d5c8@DB4PR05MB397.eurprd05.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH v2] Add support for Java SE Embedded
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
X-List-Received-Date: Mon, 08 Sep 2014 15:58:00 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Dear Will Frazer,

On Mon, Sep 08, 2014 at 02:13:35PM +0000, Frazer, Will wrote:
> Folks,
> 
> My understanding is that while this recipe generated download URL will work if you have already visited the Oracle download location, it won't work for a build system that has never been there before. Try it.
>
The updated download method was to avoid the manual download process
associated with Oracle Java Binaries. I have tested this on a couple
of machines before sending it upstream.

It was based on this discussion:
https://gist.github.com/hgomez/4697585
 
> Also, Oracle has previously been very much against using any mechanism that bypasses a user clicking on the licence acceptance. I'm not aware this position has changed. You may find that you are in violation of the Licence agreement if you do this. One of the reasons why the URLs were obfuscated in the past I believe.
> 

Thank you very much for raising this concern. I wasn't aware of this.
As per my understanding, setting
LICENSE_FLAGS_WHITELIST += "oracle_java" in local.conf was Yocto's way
of conforming to the License terms of Oracle. 

Adding CC to Nitin A Kamble for his view on this.

> Will Frazer 
> Eurotech UK

Thanks and Regards,
Maxin

> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Vladimir Redzhepov
> Sent: 08 September 2014 13:04
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE Embedded
> 
> >From a68c728141f369e1ac41f2aaf40915cf14ad341f Mon Sep 17 00:00:00 2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Mon, 8 Sep 2014 14:42:28 +0300
> Subject: [PATCH] Add support for Java SE Embedded
> 
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
>  ...racle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb |  9 +++++++++
>  recipes-devtools/oracle-java/oracle-jse-ejre.inc        | 17 +++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb
>  create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre.inc
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb
> new file mode 100644
> index 0000000..bfa8011
> --- /dev/null
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-h
> +++ eadless_1.7.0.bb
> @@ -0,0 +1,9 @@
> +PV_UPDATE = "60"
> +BUILD_NUMBER = "19"
> +
> +require oracle-jse-ejre.inc
> +
> +SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> +
> +SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> +SRC_URI[sha256sum] = "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> new file mode 100644
> index 0000000..7889684
> --- /dev/null
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> @@ -0,0 +1,17 @@
> +SUMMARY = "Oracle Java SE runtime environment binaries"
> +DESCRIPTION = "This is the proprietary JRE from Sun/Oracle, with the 
> +Hotspot JVM. It is\  provided by Sun/Oracle only in binary format.\  
> +Java Platform, Standard Edition (Java SE) lets you develop and deploy 
> +Java\  applications on desktops and servers, as well as in today's 
> +demanding\  embedded environments. Java offers the rich user interface, 
> +performance,\  versatility, portability, and security that today's 
> +applications require.\  The JRE (Java Runtime Environment) is needed on 
> +a system to run Java\  applications and applets"
> +
> +JDK_JRE = "ejre"
> +require oracle-jse.inc
> +
> +LIC_FILES_CHKSUM = "\
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3a11238025bf13b87f04753183ffeb90 \
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=c339b34e3da6673d2c5950d0f8808f8c \
> +	"
> --

