Return-Path: <yevgenyp@pointgrab.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8CCE009E7; Tue, 14 Aug 2018 04:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96772E009C2
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:38:17 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id t25-v6so11858128wmi.3
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pointgrab-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=KaljsgnFTJF53WGQxNz9AnYokQtUDfscY1ZGpKyJFO4=;
	b=eqaQyo6dUGPsrpUhCosF4J97UwergRKz75O9mmRFE/jLqn5vYZwm52oTNvlJrFQEfP
	Pxuq3deWwFdOxdwzDSUhGcHYzTShX1kCwt/ave3oe1vU3DL1PgC1j8KcUkdHN8q0/BXH
	+eutsKnExerHKbphsEvlZbXnV1wmt3LZuaWYihojrcn6NA4E4b8sgKdCmfPYV/sM747q
	luG4L/s74KwKFl3qPz2sEdJbry0i5+dPNvLgaSurRLrmcmpUz5OSeuFBV5qHPNkA3KD/
	glDBxgESr2FaPjn1fdkBRzvzXpb1CYVBGSeR4D7i52c+8ZBiIWOOpdt5YEo7Y8zWIIal
	K3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=KaljsgnFTJF53WGQxNz9AnYokQtUDfscY1ZGpKyJFO4=;
	b=YcduaYmL3xthM0boBRwa1D/25gRKElQJEp3sjfoY7xdHwrg94X5dfQmBvRCWxMrIiF
	bdiGzIFTxmumpJM9iJSqrBKQ0DLrAohnZNT0lxqShEcT8IztWASkL2s0KkKTpc2DTtKf
	A5NE+F97Fc8VkSr1M1bq4ZjdEKOun+vGOAEfPMkiPZJtLA7enTWEN/LsKsHwVGzchJge
	JmmQyYljBKMfCfW9NPeOCKo1sXR8n52n/bs/Dur0bo33rWN9A3lswvR6KxFUaa2B8so7
	R3IKU1FJxyTnSlYOwGGfcEJLlia7kTs4w/+W1Hylw7RcW/exfUCQUFhUQ6i/We0viTkv
	9U1Q==
X-Gm-Message-State: AOUpUlFS1mj7IAQUqIC6d0Ny4917fwL2XkZQlyrjufHENHUaNVKHTuMU
	r9OhrjC0fW9rncbL1F9fZo5KTQ==
X-Google-Smtp-Source: AA+uWPzBQhdG3+EC+BASxAFNmK5RPbz24tVFEriLAYcM4QxbnMtXdaLsRaiw1wfLZR9qk/1iKFvBgw==
X-Received: by 2002:a1c:415:: with SMTP id
	21-v6mr11316668wme.128.1534246696163; 
	Tue, 14 Aug 2018 04:38:16 -0700 (PDT)
Received: from [192.168.225.135] ([77.222.132.139])
	by smtp.gmail.com with ESMTPSA id
	v14-v6sm7630043wmh.41.2018.08.14.04.38.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 04:38:15 -0700 (PDT)
To: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1509905058-65701-1-git-send-email-yevgenyp@pointgrab.com>
From: Yevgeny Popovych <yevgenyp@pointgrab.com>
Message-ID: <14e3f1bc-7768-460c-e8fe-d696321d16f7@pointgrab.com>
Date: Tue, 14 Aug 2018 14:38:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1509905058-65701-1-git-send-email-yevgenyp@pointgrab.com>
X-Mailman-Approved-At: Tue, 14 Aug 2018 08:04:15 -0700
Subject: Re: [yocto-docs][PATCH] ref-manual: Removed misleading paragraph in siteinfo section
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
X-List-Received-Date: Tue, 14 Aug 2018 11:38:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello Scott.

siteinfo was removed from base.bbclass by Richard Purdie in 2010
(commit 185cb38f1319856b4bdaaf4d9a73b5056be53d54 in openembedded-core).

Richard, can you confirm/reject this change?

Thanks!


On 11/05/2017 08:04 PM, Yevgeny Popovych wrote:
> ..on the inclusion of siteinfo.bbclass in base.bbclass.
> This is not true since 2010.
> 
> Signed-off-by: Yevgeny Popovych <yevgenyp@pointgrab.com>
> ---
>  documentation/ref-manual/ref-classes.xml | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
> index 5961d3e..fe41f9e 100644
> --- a/documentation/ref-manual/ref-classes.xml
> +++ b/documentation/ref-manual/ref-classes.xml
> @@ -3134,12 +3134,6 @@ This check was removed for YP 2.3 release
>          and <filename><link linkend='var-SITEINFO_BITS'>SITEINFO_BITS</link></filename>
>          that can be used elsewhere in the metadata.
>      </para>
> -
> -    <para>
> -        Because the
> -        <link linkend='ref-classes-base'><filename>base</filename></link> class
> -        includes the <filename>siteinfo</filename> class, it is always active.
> -    </para>
>  </section>
>  
>  <section id='ref-classes-spdx'>
> 

-- 
Sincerely,
Yevgeny Popovych

