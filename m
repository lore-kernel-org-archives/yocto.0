Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BCE0E00E1F; Tue, 27 Feb 2018 19:51:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64BEEE00843
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 19:50:59 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id m5so499475pff.7
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 19:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=wmwHI1KE32BtOA6J0XiP/SVIKqPokBzF44PHW5I7hfs=;
	b=RorjuRc9eWKRQLF7epQt8O/O8Ba+B30epRFHgNpQuN+UwWbPavhRtLdBQNEPNPqmv5
	dEsjE+VsK06Vrw/rkfSj5dqbtyntb291Q4uhRAJH7OaS6P2XhcDIl+tvxwF72AM/hafB
	V5wIQ9ZldomSix0PMz0rDXkV19dm9xi+CZD1DX9QH6eYALwraEcaa9cB6//OH+w6wmVM
	Af3juG4z2JjmZcWHGVxZnc5rgihHrlyGWwN5JywcspcEgAn7dUQYRrjc8bTw7uNSgQE4
	iNdU12tEWXqJcZFX/GHPV1THbvR1eDOu4SzB8E7Hbm0wHNNb5MQVpq6LknYencEHY0zM
	FoBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=wmwHI1KE32BtOA6J0XiP/SVIKqPokBzF44PHW5I7hfs=;
	b=JRttdFxOze3isI9mb8lUo67MPIQPJnX+NvELZ7osJdLQ+K4sgAZhqCnAmPjIJ1p9KA
	41pVUPXoCgKtCY50L+1YT0YC8goBVspXEVb6s/KaXmr8mk91tO05JUytj3w//oefkC0X
	F1PbTprmlOtp3QJCoOX3bSjCHjaH+okCrwEdGbWHZkIZ++YCUzQ3VZRiBnFOIFViL2bM
	DXN+2kO28oTmGQTdhJyO+1TQjgkdZLpu6/TvASGfNq26KzJM2z49DyxpojfzmMnmS3zX
	hOTRv0aMrfYCCOXQK9DI1i3jm3Sz2o3atYsWytbTFL5XNuomq/wmbmVwGnuWL8SOsLQH
	7J0A==
X-Gm-Message-State: APf1xPBSxCQsa/YIVvoEZiQjpZhxjFDjs8MjI3EX9rCYsA7PEkFJm3ng
	4s3epWIyfe17fUNt4Zn3OPKiRCfE
X-Google-Smtp-Source: AH8x227Mk0TUoLyWNbcDle2OH5Lwri6zTy+7anQRcEim/iuavWz6jLy+q37In+WXdB7RuOvt+ke/ig==
X-Received: by 10.99.113.94 with SMTP id b30mr13084343pgn.228.1519789859202;
	Tue, 27 Feb 2018 19:50:59 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:812d:b93c:3785:4a27])
	by smtp.gmail.com with ESMTPSA id 70sm625966pgb.86.2018.02.27.19.50.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Feb 2018 19:50:58 -0800 (PST)
To: Ulf Samuelsson <yocto@emagii.com>, yocto@yoctoproject.org
References: <4be9ce77-2cd0-868b-cecd-ad01f0b871c6@emagii.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <f38bd4f6-8554-2de9-3f0e-4daa0e8d658e@gmail.com>
Date: Tue, 27 Feb 2018 19:50:57 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <4be9ce77-2cd0-868b-cecd-ad01f0b871c6@emagii.com>
Subject: Re: [PATCH] hostname.sh: remove warning for bashism
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
X-List-Received-Date: Wed, 28 Feb 2018 03:51:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2/27/18 2:58 PM, Ulf Samuelsson wrote:
> The use of the environment variable HOSTNAME, triggers
> the checkbashisms script, so change HOSTNAME to LOCALHOST
> 
> Signed-off-by: Ulf Samuelsson <ulf@emagii.com>
> ---
>   meta/recipes-core/initscripts/initscripts-1.0/hostname.sh | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh 
> b/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
> index 95287cc..f4ba2b8 100755
> --- a/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
> +++ b/meta/recipes-core/initscripts/initscripts-1.0/hostname.sh
> @@ -7,7 +7,7 @@
>   # Default-Stop:
>   # Short-Description: Set hostname based on /etc/hostname
>   ### END INIT INFO
> -HOSTNAME=$(/bin/hostname)
> +LOCALHOST=$(/bin/hostname)
> 
>   hostname -b -F /etc/hostname 2> /dev/null
>   if [ $? -eq 0 ]; then
> @@ -17,6 +17,6 @@ fi
>   # Busybox hostname doesn't support -b so we need implement it on our own
>   if [ -f /etc/hostname ];then
>       hostname `cat /etc/hostname`
> -elif [ -z "$HOSTNAME" -o "$HOSTNAME" = "(none)" -o ! -z "`echo 
> $HOSTNAME | sed -n '/^[0-9]*\.[0-9].*/p'`" ] ; then
> +elif [ -z "$LOCALHOST" -o "$LOCALHOST" = "(none)" -o ! -z "`echo 
> $LOCALHOST | sed -n '/^[0-9]*\.[0-9].*/p'`" ] ; then
>       hostname localhost
>   fi


I see buildhistory_commit() is also using HOSTNAME in shell functions
in meta/classes/buildhistory.bbclass should that be changed too ?

