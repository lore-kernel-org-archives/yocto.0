Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECEDFC4332F
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 14:56:35 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web11.123638.1699541794910440032
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Nov 2023 06:56:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JTrKt7fY;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-586753b0ab0so510492eaf.0
        for <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 06:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699541794; x=1700146594; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=//ZlcdaRkqdP/y48ibufB2MtSnZDGL7zOcbU+5u1408=;
        b=JTrKt7fYmCSdYg8Mgn+4VQFho2axQ/5d1IAB0HdYFVw5hON3M4kd+Zy9WVtSUEI3w2
         K1kG9DyTkYJPuF+X+B210BcQb7kYZp8/oknUJrXwvHdmcNPwvICEu1fWiQxQ7pzdjHlq
         hRmWcB9og11JS4tVQppdM1nFlin3qf11hqeGcFzY3QxUJGZgM68BZvjnGiFoFIP6UP/H
         i3jHTMcOlHd2BoKSCOkwUSLcmqszt+E2amSY18Of4yXfjOjfASi5bVdeBITWM2BDrAa5
         48K6+JM7NoMQY4I5ItCjQvyFp1J+yajaAjMMcNkh+4RFaCua3IAhI9VVgAbLSzFvI0Td
         QG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699541794; x=1700146594;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=//ZlcdaRkqdP/y48ibufB2MtSnZDGL7zOcbU+5u1408=;
        b=bvRlvZ6tCVuegJjrYltW3Nc7kazXV2EAN/xz88dbjAs1qD4J3L/oHuyKaCFBW8nE2i
         7uNQUG6YNJnkihj5sdHJx3ZhbPq6T00cV45oQ5kEs2QnujNHlMfZeDSBKZoWVoBUSff+
         WJCFRF9EcS6ONnnqrED8WJQpTMGJqehEuJQuMrXQUd2UZ7UwlXHzQv7cs8wDq9FcGNqO
         GqAClxC2r+X3dlJlnUfXr3tFO6CIwinL5uYpp/eT5HuTxIrJZnklyIo5Gkmu4bvR0xum
         q3BfZjO1WYize2sbb+4JHc+UOG5aPGOgWsPsVPpu4hARYoOFClTK7jrjEC5PeJn7Ite4
         2o2Q==
X-Gm-Message-State: AOJu0YzZCTUFwlg3DkGGU/OwRcMUwEd9gnJxwPV451wMZPkjlCacwnI7
	nTlGB0miQs/a9BGkbGL1aH3/3wfet14mDA==
X-Google-Smtp-Source: AGHT+IGEUWuDk05RBEveOsxl4dcItwVPt1dWuiC2Ludk+ZZYuGqiMeKWaQKZVui9m4zMWjQzWOs3dA==
X-Received: by 2002:a4a:c888:0:b0:57b:c983:bce9 with SMTP id t8-20020a4ac888000000b0057bc983bce9mr5487287ooq.8.1699541794229;
        Thu, 09 Nov 2023 06:56:34 -0800 (PST)
Received: from ?IPV6:2600:1700:9190:ba10:ff2b:7fec:1b0c:22e7? ([2600:1700:9190:ba10:ff2b:7fec:1b0c:22e7])
        by smtp.gmail.com with ESMTPSA id v9-20020a4ae049000000b00581e5b78ce5sm2826514oos.38.2023.11.09.06.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:56:33 -0800 (PST)
Message-ID: <22ffbdc8-33c0-4de5-9953-2e64bd706bb4@gmail.com>
Date: Thu, 9 Nov 2023 09:56:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-security][PATCH] ima,evm: Add two variables to write
 filenames and signatures into
Content-Language: en-US
To: Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org
References: <20231101171317.643420-1-stefanb@linux.ibm.com>
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <20231101171317.643420-1-stefanb@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 14:56:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61646

merged.

thanks,
Armin

On 11/1/23 1:13 PM, Stefan Berger wrote:
> Add two variables IMA_FILE_SIGNATURES_FILE and EVM_FILE_SIGNATURES_FILE
> for filenames where the ima_evm_sign_rootfs script can write the names
> of files and their IMA or EVM signatures into. Both variables are
> optional. The content of the file with IMA signatures may look like
> this:
>
> /usr/bin/gpiodetect ima:0x0302046730eefd...
> /usr/bin/pwscore ima:0x0302046730eefd004...
>
> Having the filenames along with their signatures is useful for signing
> files in the initrd when the initrd is running out of a tmpfs filesystem
> that has support for xattrs. This allows to enable an IMA appraisal
> policy already in the initrd where files must be signed as soon as the
> policy becomes active.
>
> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
> ---
>   meta-integrity/classes/ima-evm-rootfs.bbclass | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
> index 98c4bc1..7b73373 100644
> --- a/meta-integrity/classes/ima-evm-rootfs.bbclass
> +++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
> @@ -89,6 +89,18 @@ ima_evm_sign_rootfs () {
>           bbnote "IMA/EVM: Signing IMA policy with key ${IMA_EVM_PRIVKEY}"
>           evmctl sign --imasig ${evmctl_param} --portable -a sha256 --key "${IMA_EVM_PRIVKEY}" "${IMAGE_ROOTFS}/etc/ima/ima-policy"
>       fi
> +
> +    # Optionally write the file names and ima and evm signatures into files
> +    if [ "${IMA_FILE_SIGNATURES_FILE}" ]; then
> +        getfattr -R -m security.ima --e hex --dump ./ 2>/dev/null | \
> +          sed -n -e 's|# file: |/|p' -e 's|security.ima=|ima:|p' | \
> +          sed '$!N;s/\n/ /' > ./${IMA_FILE_SIGNATURES_FILE}
> +    fi
> +    if [ "${EVM_FILE_SIGNATURES_FILE}" ]; then
> +        getfattr -R -m security.evm --e hex --dump ./ 2>/dev/null | \
> +          sed -n -e 's|# file: |/|p' -e 's|security.evm=|evm:|p' | \
> +          sed '$!N;s/\n/ /' > ./${EVM_FILE_SIGNATURES_FILE}
> +    fi
>   }
>   
>   # Signing must run as late as possible in the do_rootfs task.


