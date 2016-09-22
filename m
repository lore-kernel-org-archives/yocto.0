Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03D1BE00B9C; Wed, 21 Sep 2016 21:33:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5264E00444
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 21:33:24 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id hi10so3107024pac.2
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 21:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=BiOpll6dgc152NUSFT1/YaoImjJfHMuMcCIGjVV4MNM=;
	b=QeyXKwboWX90QqRE5QvifeWfx53A7sWZy7CVNqG7FYExhrLkEJY7y/QviNDFZg0hp1
	KRTPrtr3QTE0inILkbjqXUbfzD+8ehgkxe7dp5nC5ezJslycKAGq9KiXDb6buCXaVCB7
	jPFWp/IZB0EzWwihynZFSIehyYjF6HlTOUuTWj7fRIEl9OGXAup0WdL/9PX3zui5/j6d
	SJTJ9vDJK7HzE4v82qsgrcZoWkN3ZjS7ZAqBRHN76O0jR3eklpBR3DEl5iLndnDA0epw
	cZ2JAZWVfT9OvARqXaVSfQ6VYt9YWi5VQmPyeU3yENiH53arF3D5TrMHjqWjVa+ylJKI
	FGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=BiOpll6dgc152NUSFT1/YaoImjJfHMuMcCIGjVV4MNM=;
	b=CWbjCKWC61YTr8ElhCt/R+ZjG14ayM1lpcC+5eEdAkYl3svRnWuFTf2AlOi4Ya4H2K
	cwVFhwZ9z18Mt1BgKgwht0BByZS6hDMpGCb1fNEU+udjewNVIdcmLw67s52Z9jy+pr1C
	VAh2pv04ulw7glBZrrLZqtd9FGr6alr+egYVEHSakhBcGtn4GLf2YNh+viKqKGXhH32m
	2c4XmMHPkRj9pDJUA6usOuxSehOf6cCdZddpJWx7GjmfUA1AQdmNoJbz5NzRHPTdQAHC
	PUEYX3TZXawqdlJkwvkd3pOBha4tti+A0f7imWl754usX137BkW+ZmyBminlOCU8CNL2
	A63g==
X-Gm-Message-State: AE9vXwO/OF6ufwEN7n+q2RdB0FRnzH76/TSYrQBN046IWuUgZm8mWu3p3OX2JZq1rFJFag==
X-Received: by 10.66.77.170 with SMTP id t10mr34268526paw.105.1474518804044;
	Wed, 21 Sep 2016 21:33:24 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c1fa:d80c:b211:8746?
	([2601:202:4001:9ea0:c1fa:d80c:b211:8746])
	by smtp.gmail.com with ESMTPSA id
	f124sm1285990pfg.7.2016.09.21.21.33.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 21:33:23 -0700 (PDT)
To: "Wang, Xin" <wangxin2015.fnst@cn.fujitsu.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <cea0cc0b-eedb-cff9-db4e-f839be442c98@gmail.com>
	<1474270394-13238-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
	<C43D7C6FFC265C429F44FEB1C68F1B25633E17CF@G08CNEXMBPEKD03.g08.fujitsu.local>
From: akuster808 <akuster808@gmail.com>
Message-ID: <e23f77eb-1be0-80ca-8fba-e1ecb43ec73f@gmail.com>
Date: Wed, 21 Sep 2016 21:33:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <C43D7C6FFC265C429F44FEB1C68F1B25633E17CF@G08CNEXMBPEKD03.g08.fujitsu.local>
Subject: Re: [meta-security][PATCH v2] samhain: 4.1.4 -> 4.1.5
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
X-List-Received-Date: Thu, 22 Sep 2016 04:33:27 -0000
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit

merged.

thanks,

Armin

On 09/21/2016 06:52 PM, Wang, Xin wrote:
> ping
>
> -----Original Message-----
> From: Wang, Xin/Íõ öÎ
> Sent: Monday, September 19, 2016 3:33 PM
> To: yocto@yoctoproject.org
> Cc: Wang, Xin/Íõ öÎ
> Subject: [yocto][meta-security][PATCH v2] samhain: 4.1.4 -> 4.1.5
>
> 1) Upgrade samhain from 4.1.4 to 4.1.5.
> 2) Add TARGET_CC_ARCH.Fix error.
>      ERROR: samhain-server-4.1.5-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '/yocto/work001/fnst/wangx/poky/build/tmp/work/i586-poky-linux/samhain-server/4.1.5-r0/packages-split/samhain-server/usr/sbin/yule_setpwd'
>      No GNU_HASH in the elf binary: '/yocto/work001/fnst/wangx/poky/build/tmp/work/i586-poky-linux/samhain-server/4.1.5-r0/packages-split/samhain-server/usr/sbin/yulectl' [ldflags]
>
> Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
> ---
>   .../samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb}      | 0
>   .../samhain/{samhain-server_4.1.4.bb => samhain-server_4.1.5.bb}      | 2 ++
>   recipes-security/samhain/samhain.inc                                  | 4 ++--
>   3 files changed, 4 insertions(+), 2 deletions(-)  rename recipes-security/samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb} (100%)  rename recipes-security/samhain/{samhain-server_4.1.4.bb => samhain-server_4.1.5.bb} (97%)
>
> diff --git a/recipes-security/samhain/samhain-client_4.1.4.bb b/recipes-security/samhain/samhain-client_4.1.5.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-client_4.1.4.bb
> rename to recipes-security/samhain/samhain-client_4.1.5.bb
> diff --git a/recipes-security/samhain/samhain-server_4.1.4.bb b/recipes-security/samhain/samhain-server_4.1.5.bb
> similarity index 97%
> rename from recipes-security/samhain/samhain-server_4.1.4.bb
> rename to recipes-security/samhain/samhain-server_4.1.5.bb
> index df78f63..0d76b9a 100644
> --- a/recipes-security/samhain/samhain-server_4.1.4.bb
> +++ b/recipes-security/samhain/samhain-server_4.1.5.bb
> @@ -21,6 +21,8 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl"
>   
>   SRC_URI += "file://samhain-server-volatiles"
>   
> +TARGET_CC_ARCH += "${LDFLAGS}"
> +
>   EXTRA_OECONF += " \
>       --with-config-file=REQ_FROM_SERVER/etc/samhainrc \
>       --with-data-file=REQ_FROM_SERVER/var/lib/samhain/samhain_file \ diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index 907f431..5bf2ee7 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>   	   file://${INITSCRIPT_NAME}.default \
>   	  "
>   
> -SRC_URI[md5sum] = "1ab697b7000d0a272d9ade05bb1bc6e0"
> -SRC_URI[sha256sum] = "32ee7477af11d9f2f64f30b9cb316c351897c1c994c7b98b0ef17fc0ca5e1d1a"
> +SRC_URI[md5sum] = "bdb6d2653d706f3180e37ef3d95c824d"
> +SRC_URI[sha256sum] = "4ff4c38765c942abbaac2577df4c8c4940482a1bffc4a719f181c4fca6f173a7"
>   
>   S = "${WORKDIR}/samhain-${PV}"
>   
> --
> 2.7.4
>
>
>


