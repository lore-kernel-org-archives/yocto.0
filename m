Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04297E00C35; Fri, 29 Sep 2017 20:10:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45EAFE00BB7
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 20:10:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8U3A8aw011914
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 20:10:09 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 29 Sep 2017 20:10:07 -0700
To: Dengke Du <dengke.du@windriver.com>, <yocto@yoctoproject.org>
References: <1506736521-34304-1-git-send-email-dengke.du@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <b2e1fd3c-4608-c1d0-fe59-7d722b215ec7@windriver.com>
Date: Fri, 29 Sep 2017 23:10:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506736521-34304-1-git-send-email-dengke.du@windriver.com>
X-Originating-IP: [172.25.44.7]
Subject: Re: [meta-security][PATCH] keynote: update the SRC_URI
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
X-List-Received-Date: Sat, 30 Sep 2017 03:10:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-09-29 09:55 PM, Dengke Du wrote:
> The old URL can't be available, give the new URL to keynote.
> The project already moved to:
> 
>      https://sourceforge.net/projects/keynote-2-3/
> 
> Signed-off-by: Dengke Du <dengke.du@windriver.com>
> ---
>   recipes-security/keynote/keynote_2.3.bb | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
> index b1df880..23e75e4 100644
> --- a/recipes-security/keynote/keynote_2.3.bb
> +++ b/recipes-security/keynote/keynote_2.3.bb
> @@ -9,16 +9,19 @@ SECTION = "security"
>   LICENSE = "ISC"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=3a265095c549c1808686a676f2699c98"
>   
> -SRC_URI = "http://www.cs.columbia.edu/~angelos/Code/${BPN}.tar.gz \
> +MAIN_ID = "${@d.getVar('PV').split('.')[0]}"
> +MINOR_ID = "${@d.getVar('PV').split('.')[1]}"
> +SRC_URI = "${SOURCEFORGE_MIRROR}/project/${PN}-${MAIN_ID}-${MINOR_ID}/${PN}_${PV}.tar.gz \
>          file://configure-remove-hardcode-path.patch \
>          file://makefile-add-ldflags.patch \
>          file://run-ptest \
>   "
> +S = "${WORKDIR}/${PN}-${PV}+dfsg.orig"
>   
>   inherit autotools-brokensep ptest
>   
> -SRC_URI[md5sum] = "ba58a0297c421dc6aa671e6b753ef695"
> -SRC_URI[sha256sum] = "62f7a9d57ceb6bcdd47b604b637a7ac8ed337cef0ab02f1fa28b7e61c9b15821"
> +SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
> +SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"

Denke tells me that the source is identical but docs were added
so the checksums have changed.

../Randy

>   
>   DEPENDS = "flex openssl"
>   
> 


-- 
# Randy MacLeod.  WR Linux
# Wind River an Intel Company

