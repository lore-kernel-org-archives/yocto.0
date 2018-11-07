Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41BC8E00A54; Wed,  7 Nov 2018 11:15:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB142E00A1A
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 11:15:47 -0800 (PST)
Received: by mail-pg1-f193.google.com with SMTP id 32-v6so7725859pgu.2
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 11:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=E+uZ1MkiKrnpawLHSAIK5y8APmoN5Ro/q9TY0OeviPs=;
	b=NaeJA971PLYDnkB9cMp5E/7wO2Khe/G7eJWmXCJ84F9AwiKp6+mbpaH4JYH0pSyQCN
	8OQ+aTHAyz4ibbYhI7XGn4KWz08cR65dCoSh8wJ5Usl2Mef4GvrokW/msiENY8hHpo+Y
	03Wl1UU7SVeT6hCPjv4f+KvxKXyHBP8sQgs6lKNAQDILv+dKN1n1OQ0+DnwORnesqXhA
	nRCzPELYs9/Mr5pqD5Uthff47mlhk1kblT6keJuMhxDPTz7jXOk4gQwOaqnhtxHtIfW7
	uhvJ2HhXg50EDacFXw7lSNMygut/wDCxIha0umTI+KvyiXYDPo3scL7mnP3W2u0S/NnK
	NqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=E+uZ1MkiKrnpawLHSAIK5y8APmoN5Ro/q9TY0OeviPs=;
	b=DunV8vRSxfSqjOoojGX7Zqt9aF5v3CzYHw62MxSuFrPT/cdakPIWV+nS+/9Oub8CkO
	/3iN2EHnweyE/Bymsa2+V5612+Gw0FAgfbYR3xECCFKZXg36TVWihUUrSrRA3zTAeWiy
	uU0ThbLpS0ieNeq1OqKPgOL1bMSQhVksFwL2oguVlJwaPdOi9xlwDF8qhm5Z3ttHGwoA
	MIri/vyfT7Ui7Povya1tzmjpVrzj/XwcY0+1wj9fn2SG3T6DT1D48YdiJn5QBIZAy4nH
	TIB9VZt9w7C3dN+6KwiYDmpCTkrmby8Hl28FhetdVOY7P/IJE2BmM5n7Zt0CWzApmEDP
	k2aA==
X-Gm-Message-State: AGRZ1gJJGl8UkwqxjPn6kVVzxr8dJYZBPYGR2MQkzQYYzCzUo4ZhyLn4
	LpAfeU8XbfC1O+MELpfdlgbpKKkcqcg=
X-Google-Smtp-Source: AJdET5fkkxCayR0z1sT7rAfmwWt9AYmNp5DqbVk6aApqxfQBoxCCwWFTJEAxKlsxw/ON13I0DwPl7Q==
X-Received: by 2002:a62:b615:: with SMTP id
	j21-v6mr1469175pff.199.1541618146428; 
	Wed, 07 Nov 2018 11:15:46 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:8dfb:8ab4:5b4a:d848?
	([2601:202:4180:c33:8dfb:8ab4:5b4a:d848])
	by smtp.gmail.com with ESMTPSA id
	f6-v6sm1707128pfg.128.2018.11.07.11.15.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Nov 2018 11:15:45 -0800 (PST)
To: Michael Halstead <mhalstead@linuxfoundation.org>, yocto@yoctoproject.org
References: <20181107183338.22347-1-mhalstead@linuxfoundation.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <2e0a8556-fbbe-e51d-117e-c7f9effd8b29@mvista.com>
Date: Wed, 7 Nov 2018 11:15:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181107183338.22347-1-mhalstead@linuxfoundation.org>
Subject: Re: [yocto-autobuilder-helper][PATCH] config.json: Add steps to test new workers before adding to the main pool
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
X-List-Received-Date: Wed, 07 Nov 2018 19:15:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 11/7/18 10:33 AM, Michael Halstead wrote:
> We add workers to the nightly-bringup pool to test them in a production like
> enviroment. Include one completely emulated target and one to test
> virtualization extentions.


Would this be a good indicator to add a new host to the sanity checker
or start that process?


- armin

>
> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> ---
>  config.json | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/config.json b/config.json
> index f912abf..2945155 100644
> --- a/config.json
> +++ b/config.json
> @@ -145,6 +145,19 @@
>                  "SANITYTARGETS" : "core-image-minimal:do_testsdkext"
>              }
>          },
> +       "nightly-bringup" : {
> +            "MACHINE" : "qemuarm",
> +            "TEMPLATE" : "nightly-arch",
> +            "step2" : {
> +                "MACHINE" : "beaglebone-yocto",
> +                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk"
> +            },
> +            "step5" : {
> +                "MACHINE" : "qemux86-64",
> +                "SDKMACHINE" : "x86_64",
> +                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
> +            }
> +        },
>          "nightly-mips" : {
>              "MACHINE" : "qemumips",
>              "TEMPLATE" : "nightly-arch",

