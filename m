Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F3B0E009BD; Fri,  4 Dec 2015 07:49:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0522FE00978
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 07:49:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tB4FnFbO006237
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 4 Dec 2015 07:49:16 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 4 Dec 2015 07:49:15 -0800
To: Kyle Russell <bkylerussell@gmail.com>, <yocto@yoctoproject.org>
References: <1449099554-22948-1-git-send-email-bkylerussell@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5661B5F3.9020004@windriver.com>
Date: Fri, 4 Dec 2015 10:49:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1449099554-22948-1-git-send-email-bkylerussell@gmail.com>
Subject: Re: [meta-oracle-java][PATCH v2] oracle-jse-jdk: Don't use ${D} installing symlink target
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
X-List-Received-Date: Fri, 04 Dec 2015 15:49:25 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-12-02 06:39 PM, Kyle Russell wrote:
> When installed to the sysroot, this makes the symlink point to the
> workdir, which is invalid in the sstate package.  Since we cd to
> ${D} before creating the symlink, this ensures the link is created
> in the correct install location, so just point the link to the final
> target so that the patch is correctly fixed up during populate_sysroot.

Looks good to me: Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
> Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
> ---
>   recipes-devtools/oracle-java/oracle-jse-jdk.inc |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 54e83b8..6f13125 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -16,7 +16,7 @@ do_install_class-native() {
>       install -d -m 0755 ${D}${bindir}
>       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
>       for prog in java javac; do
> -	( cd ${D}${bindir} && ln -sf ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
> +	( cd ${D}${bindir} && ln -sf ${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
>       done
>
>       ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
>


