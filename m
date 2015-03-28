Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED2DBE00924; Fri, 27 Mar 2015 22:27:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7674DE0091F
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 22:27:14 -0700 (PDT)
Received: by pdcp1 with SMTP id p1so25080882pdc.3
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 22:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=z7wM+rt2/QxixZn51st7dugflRG8Kra+ciKBIFX995s=;
	b=mM8zVOAB57PcaG/PrqouDJ+qwUkdvj3IzlXp48VLNnQNfWwiRdHWd3k764eB2TAAWc
	5cP8mvLa/Og668b/7h/yy/ZT2ULobaHgOQwQR+Q5Q3vzuZOrw4kKKchxwRa4YHp6xmT9
	eUgMS9LTRT8x1b6D5WV3zHNGSpx6si9ZHcUS3FFq5Q5gLx84fNv79PHpTg9G7CO0u8k6
	35lFrd3/kGQxNXHz2kfIpGeFBH9bMa/srdK9L9tmUGsv03pQM1jfTDBS2X3s1jLkggwG
	AS6uUuX+YRAljWiBUbx1dfxSTkH2kK7oX7SCKSMDn1g08GgHdRX9mVnkc0WAX5ktmu93
	UEAQ==
X-Received: by 10.68.114.194 with SMTP id ji2mr41229825pbb.132.1427520433761; 
	Fri, 27 Mar 2015 22:27:13 -0700 (PDT)
Received: from ?IPv6:2601:9:1b80:31f:744c:276a:f00c:82d7?
	([2601:9:1b80:31f:744c:276a:f00c:82d7])
	by mx.google.com with ESMTPSA id ul8sm3804595pab.36.2015.03.27.22.27.11
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Mar 2015 22:27:12 -0700 (PDT)
Message-ID: <55163BA6.5000002@gmail.com>
Date: Fri, 27 Mar 2015 22:27:02 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1427489380-16202-1-git-send-email-hugo.saldanha@aker.com.br>
In-Reply-To: <1427489380-16202-1-git-send-email-hugo.saldanha@aker.com.br>
Subject: Re: [meta-security][PATCH] libmspack: update to version 0.5
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
X-List-Received-Date: Sat, 28 Mar 2015 05:27:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


merged to master-next

thanks.

- armin
On 03/27/2015 01:49 PM, Hugo Vasconcelos Saldanha wrote:
> SRC_URI to version 0.4 was broken.
>
> Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
> ---
>   recipes-security/libmspack/{libmspack_0.4.bb => libmspack_0.5.bb} | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>   rename recipes-security/libmspack/{libmspack_0.4.bb => libmspack_0.5.bb} (72%)
>
> diff --git a/recipes-security/libmspack/libmspack_0.4.bb b/recipes-security/libmspack/libmspack_0.5.bb
> similarity index 72%
> rename from recipes-security/libmspack/libmspack_0.4.bb
> rename to recipes-security/libmspack/libmspack_0.5.bb
> index 5d2061d..80db23c 100644
> --- a/recipes-security/libmspack/libmspack_0.4.bb
> +++ b/recipes-security/libmspack/libmspack_0.5.bb
> @@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b
>
>   SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz\
>   "
> -SRC_URI[md5sum] = "1ab10b507259993c74b4c41a88103b59"
> -SRC_URI[sha256sum] = "b7958983f60cbec40d48ef87520210f9d8e2672a57a5ce0a2187b3d4fb2f5c68"
> +SRC_URI[md5sum] = "3aa3f6b9ef101463270c085478fda1da"
> +SRC_URI[sha256sum] = "8967f275525f5067b364cee43b73e44d0433668c39f9376dfff19f653d1c8110"
>
>   inherit autotools
>
>

