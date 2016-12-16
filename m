Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA3E3E00E34; Fri, 16 Dec 2016 04:38:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 881CDE00DC2
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:38:06 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id t184so35026764qkd.0
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WMW3cOzTZqm7l0QSQwELrjQQcPg+YyMXWfl+iirBYeM=;
	b=u9kav+oQPhcSCIFJiI1fMEkucDRustbG9ChubMamwKcydaC09jNbXbP5o8MPXNmo7U
	tSEFyxd6vUC6q/fYk4Th0+NDculviIVfszWnJJgyXTVFqzqSEtv22bfjYMM4ChLflsLv
	9+xppRUvRrudRBSJp2ZFqKectBqjSUOASZwtxnUyjlvHWF5v2MEtUBjvHNSepqdjLcR+
	d++9TbUv/cPUST6J+eosiX2aitr8Ql+JRYn+72I9eQdpvpul2JngY0uam/nuvWHmxDKN
	eYlMBLZT3FbvnjCsMUT4ssOmud8zMryoiO7fIAqAsH2h3t5l76NtwgdUCUX3qvOduYhC
	vpXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WMW3cOzTZqm7l0QSQwELrjQQcPg+YyMXWfl+iirBYeM=;
	b=bPfzUVrk1RBdlmGep0xtKwdEsn7N8Bckz9IojUNh3tjmZ9/ueiqWmxH6xBYucEF5Qk
	YbS6OD7CptEknAuF+RHeNaKxIGh17vxirY/N1RQCO2BapHrLpar3a8fR/ZHeCtdFbBRN
	TAHO0+EUSCMz8ZC5gfLvzsklbiw50o8dRVBTdoFUeD4HsRTqooqCHwvf47Ts4lwh+1+S
	eE3kGJiJdoWlxhXVkxGVE6W0hsEdIBub4ja7D6Q27SJP5QkLPHVpui6wQ1zGW3s7Nqhm
	4FJpna7TZbEBJOigGUY7WYz3si5kMCoSkpwnvNSYFSJPHQziCwJV0yT8ZQFOZOvEbBWP
	8rhA==
X-Gm-Message-State: AIkVDXIX5hvgMLrD0EZReZYWGZpgVJUKZMRJVk18u+CBNH26SWMlGYQ7qEPdTgz0yvHWjp0+aAd8ycxFrTQEzQ==
X-Received: by 10.55.115.6 with SMTP id o6mr2700039qkc.271.1481891885487; Fri,
	16 Dec 2016 04:38:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 16 Dec 2016 04:38:05 -0800 (PST)
In-Reply-To: <CAJTo0LawRg59hoZrS03DGcgdRVgG1PmJe6C7gN9Y_CKM6cdtdg@mail.gmail.com>
References: <CAF3SDA4zxDqiyofGbA35UGHgmNG6oBgKK==unMJFh_6RAwTPow@mail.gmail.com>
	<CAJTo0LawRg59hoZrS03DGcgdRVgG1PmJe6C7gN9Y_CKM6cdtdg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 16 Dec 2016 10:38:05 -0200
Message-ID: <CAF3SDA5WQYKhewVFDBqTuMDeOXvSQRTec-sminkhEYOrU63C5g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get headers installed at target side of SDK?
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
X-List-Received-Date: Fri, 16 Dec 2016 12:38:07 -0000
Content-Type: text/plain; charset=UTF-8

Hey Burton!

The headers are not in my image. Thank you a lot man!

Regards,

2016-12-16 10:21 GMT-02:00 Burton, Ross <ross.burton@intel.com>:
>
> On 16 December 2016 at 02:54, Daniel. <danielhilst@gmail.com> wrote:
>>
>> Then I tried to append packagegroup-sdk-target adding foo-dev to it
>> but still I can't get the headers at the SDK. I'm building the SDK by
>> building meta-toolchain and installing by executing the script
>> generated at tmp/deploy/sdk.
>
>
> Build a SDK by using bitbake my-image-name -c populate_sdk.
>
> This will build a SDK which contains the -dev packages for everything that
> goes into your image.  If you want headers that are not in your image
> usually then you can add them to TOOLCHAIN_TARGET_TASK in the image recipe:
>
> TOOLCHAIN_TARGET_TASK_append = " libsomething.dev"
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

