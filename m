Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0558CE00CAE; Thu, 24 Nov 2016 02:03:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C091E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:03:32 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id g23so4504068wme.1
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:03:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=b6+1A/zdjoXNumSUNOLfjUGI2Ib4ji//MqfAPxfffeQ=;
	b=IPHgjRfE3Ze9QJ8PpLmsFM7h8KHpEO/hd1p/4HSm8OID88URMp08VoKRq6XC7bfY+3
	kAPlhuY+qeX5Zy8U2wPWmecY35aO+F/gqsOIkIGIG07iNJSdl/m0ukAcIrBn/GqN8eRb
	YMOQM78WM3jwWXJahTOGp4IBtCZS5tfnvBmd1zF358bb2LtUbZYA7tjzJrKniUc70h+c
	wGcYWQxsyyOdkwjlqygNRJoURSA5QbNxX9MJsOTdtpIsB1mA/GZodTDYkM8JxsXvvWXG
	/fK3PelV5vGNYtT4LVWvG/WBhVzw6xRlKmPNkqHusVx7vvH+vYjzmHXGR2SuDZZdAvwy
	aRPA==
X-Gm-Message-State: AKaTC00DBGou6MMvQZCxVgqx/IZxPTFQ92MohUuLJN3cdakbK4vGOjdsh0qBcpbP2rcwRw==
X-Received: by 10.28.170.202 with SMTP id t193mr1427271wme.10.1479981811522;
	Thu, 24 Nov 2016 02:03:31 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	wg8sm40950163wjb.42.2016.11.24.02.03.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 24 Nov 2016 02:03:30 -0800 (PST)
Message-ID: <1479981810.31241.7.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 24 Nov 2016 10:03:30 +0000
In-Reply-To: <20161123232721.30576-1-alejandro.hernandez@linux.intel.com>
References: <20161123232721.30576-1-alejandro.hernandez@linux.intel.com>
X-Mailer: Evolution 3.22.1-2 
Mime-Version: 1.0
Subject: Re: [PATCH] example-recipe: Fix LDFLAGS compilation issue on newly created recipes
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
X-List-Received-Date: Thu, 24 Nov 2016 10:03:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-23 at 17:27 -0600, Alejandro Hernandez wrote:
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
> ---
>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb     | 
> 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-
> example/example/example-recipe-0.1.bb
> b/scripts/lib/bsp/substrate/target/arch/layer/recipes-
> example/example/example-recipe-0.1.bb
> index 5fbf594..e534d36 100644
> --- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-
> example/example/example-recipe-0.1.bb
> +++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-
> example/example/example-recipe-0.1.bb
> @@ -14,7 +14,7 @@ SRC_URI = "file://helloworld.c"
>  S = "${WORKDIR}"
>  
>  do_compile() {
> -	     ${CC} helloworld.c -o helloworld
> +	     ${CC} ${LDFLAGS} helloworld.c -o helloworld

If you're fixing this, I think you should also add ${CPPFLAGS} and ${CFLAGS}

Cheers,
Andre'


