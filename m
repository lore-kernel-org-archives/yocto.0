Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EADCE00C2B; Sun, 25 Sep 2016 09:15:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9A6FE00B66
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2016 09:15:21 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id oz2so7573415pac.0
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2016 09:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=mcibHsmWu1tpbEwsHfffUfTYj/txGXpEkpZlETdaWA4=;
	b=xUU2trAWfqp9vaI2BBoNXGLwddKOrIE6W0d6ELLanzs7g4FQTJH7I2n7HZ8YQgUE3u
	0hFrrnp8OBn/T0IHzHi+hse8Kn0wo4WmEbepLPJMqBtiLnC/70bbmLaTFUIQ0Oys5+My
	wCN8ePMmXHr7a8rVn81rFXbcJH4pq2gO3TS1+D71Bx8cktGS/fAOIaSJMHNU2VK/fR39
	4kgDO7uYC4VZyRrdZjmTcCHzVQXFFp888t4Cw7xNcTuDOIsA0CHw9Geccb1wibSoEEuk
	VyX/+LiQnRLC5lEqR3w/pbg6TKNsP2oNeAan6/Mk8r+vP/pwkZmYPT3ex99UQW5bkThc
	CJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=mcibHsmWu1tpbEwsHfffUfTYj/txGXpEkpZlETdaWA4=;
	b=fPQXRc1LlAlA/kbRFcGDgTYzVfgW1uFP7nQTHlTlZcQ8eZ/k8uwrBx0GnD/M6pF83L
	rNBcnOdbJ0yysiw50wO9QkMjnWxh90BfMUfrdyziNmpF0l0GG1eUF3PZBRBsPUMLynJZ
	L4nhJ2qWHl/HJQpQwxmUKnBDpHJna6aMJ87AReujh5JGwmRibSaaEFCckjNx09iU/3BN
	RqNk/9d9p+3Q78LTX4R9RbmWK7tmJvv0r1JuygIhiyIhs40b9wY4VVKbPWtCQjz1JIPr
	pTNGtp9wwQTGsjT9OJLPR6DFeKQDvpPYWGLk7Z6KnoBxHFOWY09k9h5CZgYiSIabpIHZ
	UgRA==
X-Gm-Message-State: AA6/9RnmEb+l/gPdm1zmoLkPPaN9xKVfp4Sn44KRu6sOmXN6JqMbdqCGueFwDYIEdeLQ7w==
X-Received: by 10.66.72.132 with SMTP id d4mr17024826pav.113.1474820120995;
	Sun, 25 Sep 2016 09:15:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c88d:7203:3d56:a160?
	([2601:202:4001:9ea0:c88d:7203:3d56:a160])
	by smtp.gmail.com with ESMTPSA id
	i62sm24705852pfe.70.2016.09.25.09.15.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Sep 2016 09:15:20 -0700 (PDT)
To: wenzong.fan@windriver.com, yocto@yoctoproject.org
References: <1474613277-37436-1-git-send-email-wenzong.fan@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <85f13fbf-a5f4-de0f-6602-13849bc470fb@gmail.com>
Date: Sun, 25 Sep 2016 09:15:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1474613277-37436-1-git-send-email-wenzong.fan@windriver.com>
Subject: Re: [meta-security][PATCH] paxctl: allow build of paxctl-native
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
X-List-Received-Date: Sun, 25 Sep 2016 16:15:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 09/22/2016 11:47 PM, wenzong.fan@windriver.com wrote:
> From: Joe Slater <jslater@windriver.com>
>
> paxctl-native is needed to build paxtest.

merged.

thanks,
Armin
>
> Do not use the install target in Makefile for paxctl-native, it will
> fail with error:
>
>    install: cannot change ownership of '.../sbin/paxctl': \
>    Operation not permitted
>
> Signed-off-by: Joe Slater <jslater@windriver.com>
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-security/paxctl/paxctl_0.9.bb | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
>
> diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
> index d69219f..fb87f10 100644
> --- a/recipes-security/paxctl/paxctl_0.9.bb
> +++ b/recipes-security/paxctl/paxctl_0.9.bb
> @@ -18,3 +18,18 @@ EXTRA_OEMAKE = "CC='${CC}' DESTDIR='${D}'"
>   do_install() {
>   	oe_runmake install
>   }
> +
> +# The install target in the Makefile will fail for paxctl-native with error:
> +#   install -D --owner 0 --group 0 --mode a=rx paxctl .../sbin/paxctl
> +#   install: cannot change ownership of '.../sbin/paxctl': \
> +#   Operation not permitted
> +# Drop '--owner 0 --group 0' to fix the issue.
> +do_install_class-native() {
> +	local PROG=paxctl
> +	install -d ${D}${base_sbindir}
> +	install -d ${D}${mandir}/man1
> +	install --mode a=rx $PROG ${D}${base_sbindir}/$PROG
> +	install --mode a=r $PROG.1 ${D}${mandir}/man1/$PROG.1
> +}
> +
> +BBCLASSEXTEND = "native"


