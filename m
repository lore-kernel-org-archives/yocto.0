Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1501.1592340925576237045
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 13:55:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qkAlPjBz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F30DE01D10; Tue, 16 Jun 2020 13:55:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (robert.berger.yocto.user[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.49 listed in list.dnswl.org]
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 339DCE01CCB
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 13:55:24 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id h5so71490wrc.7
        for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 13:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=uD8Q0uVFdJhAInVREHVOFrlW6GMkcJaieeTEkGkMitk=;
        b=qkAlPjBzwltpShj3mXCSPJ9oqqUXRD+SH1ouQqmZYyr1Gq8/GI4faUvpwlhdzvrAjL
         pxaaY7DIOw8GrhEmN7hjE0SDawTby8d37ZrxCucv271gtwgwa6jCS9XK91Hc+e8YahVc
         qbhoVInMa+hOTirdlFX2BA27c0DmKHT3SQEq19Ce/+kEOjMU8rSMkZ1RfBoJEA+DhVV8
         9nTl71pRnlB1MDmQbc/ePSheQj7wqWenJ+3FydJDpNE122RFn1ocObteHQeLg6oe1Z1N
         rLhVZkdLGHpYmcgE7KUSnvL6vGYEF+tfgmiQPgcHGgfIcU+YZa447tReRd3lzz3hW8pc
         Qc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=uD8Q0uVFdJhAInVREHVOFrlW6GMkcJaieeTEkGkMitk=;
        b=DX2GQEDHcjIpTFX+j3YZ8qambp6STeOJwtQ35OhGh96q8+DNHBb++uDj12kVKXy96Z
         MYKV81YFxrqDAYP0W+DzxrB9TKuiekIFL9zltY9HSCbeZZJYFEAR7c+2SE48+RTiD+Jr
         rZMj/9cS/NqvAStTET3cCvjjoR0eLyVoF58uFqokWlRfWgGEZyyW+ZR4X7bMo8uHmF9d
         QMWGC8HuLSz/5slFV6tpiNjtv4EEcJ3eizmIAX3I+YImxcpSKkg5pvUSqUpaIFxE9KMN
         FdD5elMRmdDKtW4XOJ+T3crg2VM8+sOgpMfwaRphw2aADaNbZS0cikwuujqIEKp2vLY/
         yUeg==
X-Gm-Message-State: AOAM533Bg7H/AZozcevIqXTjzcsYtSzXZ4Hf5ucv3uIxewuvFzZYVrpP
	yrDDGlP2xjrIbdsUQXwRWBU=
X-Google-Smtp-Source: ABdhPJyyCxNmbtsHQ+v/VAtQ+bCYqU2f9V68BLW+88jrBz6d1am/loOqrmBBz/mUoLYwkCl0d0KaTg==
X-Received: by 2002:a5d:490f:: with SMTP id x15mr4802086wrq.259.1592340923296;
        Tue, 16 Jun 2020 13:55:23 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-130-251.home.otenet.gr. [2.86.130.251])
        by smtp.gmail.com with ESMTPSA id b14sm5457821wmj.47.2020.06.16.13.55.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 13:55:22 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Subject: Go toolchain in SDK
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
Message-ID: <439eb160-94b9-a8ce-f305-be6c486eb06d@gmail.com>
Date: Tue, 16 Jun 2020 23:55:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

What is the "proper" way to add the Go toolchain to an SDK nowadays 
(dunfell)?

I saw there is in poky:

./meta/recipes-core/meta/meta-go-toolchain.bb

but I am not quite sure how to build an SDK with meta-go-toolchain included.

so I added something like that to local.conf which seems to work for the 
"classic" SDK:

# --> golang stuff
# attempt to add golang to SDK
TOOLCHAIN_HOST_TASK_append = " \
     packagegroup-go-cross-canadian-${MACHINE} \
"

TOOLCHAIN_TARGET_TASK_append = " \
     ${@multilib_pkg_extend(d, 'packagegroup-go-sdk-target')} \
"
# <-- golang stuff

bitbake core-image-sato-sdk -c populate_sdk

and currently also for:
bitbake core-image-sato-sdk -c populate_sdk_ext

I don't think that's the way it was intended.

Can you please enlighten me?

Regards,

Robert
