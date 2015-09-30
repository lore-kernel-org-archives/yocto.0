Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18D6CE00CAF; Wed, 30 Sep 2015 07:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF2EE00AB5
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 07:31:42 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so42472483pad.1
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 07:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=nWnjHRJn/rgoXMhZCXZAyGceLMBhE2NqaMLo+bC4DVY=;
	b=QIpavinMwJr7eAxx3wsVIgj98LkgA0wba/EKLZpWkVvzny/HKNzH9uezY6ZkL5kE2E
	JX1dLUbcTJihvX+ogIfZ9W+Sgx4SG8RqcbGYdJEQYQhteAYOSN1wv2llAm3MoqzzWewF
	ppjAkD/12twvVOnTw4DVTiwiNZFNsjaVkERVVbGaoBR3xxeIr2EE+w1PcUZtuUOanK9d
	9RhJiomdl3Id9gNJT5YAykQ57KF+iN6q++mWXdti83QCzdQUD34ueYVE1UBRt4JE06Ts
	+cvWgQhxXjmVxfyHKhWns99NqOz7ZZlMkp4zmZ/leSXRIMtSGIZ5r8hF96bg8vDc9h/L
	LpMg==
X-Gm-Message-State: ALoCoQmXh1Ao1NPVLTspoZe42g4KMTiZ0YnlAa9BdG6F65dX9beUpy7J+pzOpP0J+0QEoJeXVUUW
X-Received: by 10.68.201.168 with SMTP id kb8mr5288512pbc.95.1443623502691;
	Wed, 30 Sep 2015 07:31:42 -0700 (PDT)
Received: from [192.168.2.178] ([83.217.123.106])
	by smtp.googlemail.com with ESMTPSA id
	ip1sm1109892pbc.30.2015.09.30.07.31.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 Sep 2015 07:31:42 -0700 (PDT)
To: mariano.lopez@linux.intel.com, yocto@yoctoproject.org
References: <1443621262-322-1-git-send-email-mariano.lopez@linux.intel.com>
From: Michael Wood <michael.g.wood@intel.com>
Message-ID: <560BF24C.6070309@intel.com>
Date: Wed, 30 Sep 2015 15:31:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1443621262-322-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: Re: [error-report-web][PATCH] parser: Add Unicode support to the error log
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
X-List-Received-Date: Wed, 30 Sep 2015 14:31:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 30/09/15 14:54, mariano.lopez@linux.intel.com wrote:
> From: Mariano Lopez <mariano.lopez@linux.intel.com>
>
> If the server receives a error log with Unicode
> character in it, it will throw and internal server
> error, this is caused because the server doesn't
> try to convert everything to ASCII
>
> This patch changes the log encoding to UTF-8 so
> it will allow Unicode characters.
>
> [YOCTO #8225]
>
> Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
> ---
>   Post/parser.py | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Post/parser.py b/Post/parser.py
> index d33a968..599afde 100644
> --- a/Post/parser.py
> +++ b/Post/parser.py
> @@ -85,7 +85,7 @@ class Parser:
>                   recipe = package
>                   recipe_version = "unknown"
>   
> -            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = str(fail['log']), BUILD = b)
> +            f = BuildFailure(TASK = str(fail['task']), RECIPE = recipe, RECIPE_VERSION = recipe_version, ERROR_DETAILS = fail['log'].encode('utf-8'), BUILD = b)
>   
>               f.save()
>   

Thanks for the patch. Now committed.

Michael




