Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 299D6E00786; Tue, 23 Sep 2014 13:23:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3939BE0034C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 13:23:27 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id c9so2428305qcz.29
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 13:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=BmhyFSUJMInRXmQMC4ouRq57wVIqHw4uT4MtvnC2lLs=;
	b=wD3x9tL36A2vQNxh7h8uFyO42dkTtn0HLI7cNstSvfH8TU9G03h96tu4ruyE/eSI3D
	oA57+oGyNXPrGnl5ITKIRwJor7pqld8jdRK21NWvE0WJB7+EcF4I5qaePfa6jfOourbr
	Z+EN9f6zCdp2UpgmS+pIOWZuvkJVEpZvY0YViUFMN4j4AYtAMxzpxcRepGXjyHGCwm/Z
	3LqgwOgH0nd5PVJFyJJV5xiMjlDFkIM3jOVYF3Mp8vcFfY7u1tt5dtsgnJvngVsKbj10
	9n4qEaNT8ammRnZwwOR1LTYaSroY09H0evbhKmO9RXxHsJgXsUAD5FAKSiwUpfH4m+oh
	By/Q==
X-Received: by 10.224.163.8 with SMTP id y8mr2522188qax.60.1411503807153;
	Tue, 23 Sep 2014 13:23:27 -0700 (PDT)
Received: from [155.1.1.163] ([187.11.221.17])
	by mx.google.com with ESMTPSA id b1sm11150649qat.9.2014.09.23.13.23.25
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Sep 2014 13:23:26 -0700 (PDT)
Message-ID: <5421D5DF.9020900@gmail.com>
Date: Tue, 23 Sep 2014 17:19:43 -0300
From: Daniel Hilst Selli <danielhilst@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1411501436-25404-1-git-send-email-danielhilst@gmail.com>
In-Reply-To: <1411501436-25404-1-git-send-email-danielhilst@gmail.com>
Subject: Re: [PATCH] ARM: Headfull JVM added.
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
X-List-Received-Date: Tue, 23 Sep 2014 20:23:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/23/2014 04:43 PM, Daniel Hilst SellI wrote:
> I've added the headful version of the JVM. Also, I'm suggesting a new
> way of fetching. Since Oracle forces it's users to go to its website
> and accept the aggrement, non-human fetching is aways hack and error
> prone.  What I sugest is that the build system ask for the user to
> visit the website, download the package and put it on right place, if
> isn't already there.
> ---
>   ...le-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
>   create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb
>
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb
> new file mode 100644
> index 0000000..e3030a6
> --- /dev/null
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb
> @@ -0,0 +1,21 @@
> +PV_UPDATE = "60"
> +BUILD_NUMBER = "19"
> +
> +require oracle-jse-ejre.inc
> +
> +#  ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz
> +DL_FILE = "ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz"
> +SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/${DL_FILE}"
> +
> +SRC_URI[md5sum] = "b72400960629e7403c4b579dada2a804"
> +SRC_URI[sha256sum] = "c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf86779"
> +
> +do_fetch() {
> +        if ! test -f "${DL_DIR}/${DL_FILE}"; then
> +            echo "Please accept the License Agreement, download the ${DL_FILE} and put it on ${DL_DIR}"
> +            echo "The download link can be found at http://www.oracle.com/technetwork/java/embedded/embedded-se/downloads/javase-embedded-downloads-2209751.html"
> +            return 1
> +        else
> +            return 0
> +        fi
> +}
> \ No newline at end of file
Sorry, I forgot to mention that this is for meta-oracle-java layer,

Cheers,

