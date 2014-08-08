Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE7BE00543; Fri,  8 Aug 2014 16:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7A6E0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 16:03:34 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id l13so1783470iga.10
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 16:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xIJkLTFO4nq0DFQazQsUiUM3hB/xK4Pb2hXToxRxeNs=;
	b=G+SQgQW60UXnealbWlMe0et0FikEfolYlmDWtRUF7xfKpPSiCCsymWmIJHrDscdIE2
	y9rleSDfFjCmItuvAbg31hxoJCupOp1TUfT1KFJtAylu4lIz+hvEiFhtcWBR94cim2Vy
	AqxzyLM8qj+pCip60c2GBdLofqwxEfdksV2tL1Q6mD0jMzyTnwxJqG3egI1oa4Z+uR8Q
	xZn7kdY9k34T+CC2o3RKz2jwXcT6Oqp990WoZ6lfS9spoPeS5kVIoGBXtH5/Y11KJggL
	WaSLgUW1G1TAti9CLnJnqUKQw6JO3epTorcVPqF5B/5yoFCiz2PbDQAWL/v+J6itHGdX
	Evow==
X-Received: by 10.43.6.195 with SMTP id ol3mr7039495icb.86.1407539013682; Fri,
	08 Aug 2014 16:03:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Fri, 8 Aug 2014 16:03:03 -0700 (PDT)
In-Reply-To: <1407515991-63868-5-git-send-email-maxin.john@enea.com>
References: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
	<1407515991-63868-5-git-send-email-maxin.john@enea.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Aug 2014 16:03:03 -0700
Message-ID: <CAMKF1sreGPMmcRym-ce5FxRapWENu2QOQVgXNWTWoS5uc_wvBw@mail.gmail.com>
To: "Maxin B. John" <maxin.john@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 4/5] oracle-jse-jre-i586: add custom fetch method
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
X-List-Received-Date: Fri, 08 Aug 2014 23:03:45 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 8, 2014 at 9:39 AM, Maxin B. John <maxin.john@enea.com> wrote:
> Provide a custom fetch method to avoid manual downloading of binaries.
>
> Signed-off-by: Maxin B. John <maxin.john@enea.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> index 6125025..1fca3a8 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> +++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
> @@ -1,4 +1,3 @@
> -PR = "r0"
>  PV_UPDATE = "25"
>
>  require oracle-jse-jre.inc
> @@ -7,3 +6,12 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-i
>
>  SRC_URI[md5sum] = "0e9ccefe49e937e592dbb605f2e8e7d8"
>  SRC_URI[sha256sum] = "4016965536d8607743267812ab04e6d428036dda432893748c1df6cb77b09628"
> +
> +RDEPENDS_${PN} = "libxml2 libx11 glib-2.0 alsa-lib libxext libxtst libxrender \
> +                  fontconfig libxxf86vm"
> +
> +do_fetch () {
> +  wget  --header=Cookie:oraclelicense=a ${SRC_URI} -O ${DL_DIR}/jre-7u25-linux-i586.tar.gz
> +}


could we just override FETCHCMD_wget for this recipe ?

> +
> +COMPATIBLE_HOST = '(i.86.*)-(linux)'
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

