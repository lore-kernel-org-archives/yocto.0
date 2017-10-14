Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 474D8E00D0E; Sat, 14 Oct 2017 02:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E5FE00D05
	for <yocto@yoctoproject.org>; Sat, 14 Oct 2017 02:58:34 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id n22so6837559uaj.13
	for <yocto@yoctoproject.org>; Sat, 14 Oct 2017 02:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cR2RhWsG9K8RIXJ5cL7By6WLSotfY22WPuSGotE1OZ4=;
	b=Hj5Z2zmEFrox4JoPYRExDSMtmH38hfF3NEky+igpeOA5/bV9JGw3TukU/fehAE1bWM
	nn3JJZVCAT4p11S9s/UV4O/+uMYlYZxEyHK6NRNtuBYdlDIbdurBhSyDWBFz7FMMer3j
	ft+1Uw51qeDzbUMq7WovbmJVh1aWZx1iA7wTeFCfKCswxVZznO1weaLJ8M0D1SAmYCWq
	29aFgGu1AsyVmXYOZqNEUgcUCL/juSnKZ8133xqn6N+w6FAsdFbjML66buO3Xw0kSrTC
	92a47fmSw/fUCsxZMmN39thevQUpQrd7pBH+spvUY3T/JuclsoUFph7dDpexDsNiyHPn
	Tdrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cR2RhWsG9K8RIXJ5cL7By6WLSotfY22WPuSGotE1OZ4=;
	b=kRBkxFefw9wb2M1Y29A6QucZMectyNnom7QSqwEVJQ8ganJRU54D3NO+NJR8J+OXJs
	jr9xMApnrR+HkvQnnG9N/eZLNRSyph9fhnYisONjVTwcVnaJWu4rwggVJsF7UzqGXKgQ
	HdhlyKBInmq2A6DZiSDCmbhvihjf7feCBfLB/hNUhcAahpd1iOfAv0gW7/2QdPnCwtJf
	BiBvKLVDVEmLN1fSgwNaOa4a1jBgEsyP4UKBPlw+70rxMbcagY2Brsgqt3tPuocMJtWQ
	NP6XU8zb+rY7jtQJij9IMeWp10aO9+pK7/rKrxjv/Vbfb9xbExc/hJIoa+iIdlXfzvVp
	us6w==
X-Gm-Message-State: AMCzsaWYxCn3aqLKZ/I3Dk2o+iV/VkzMM93koN2U4kDpMi5UxzkqdDkn
	nNpGJEa3lm1PF+f56kZujV0+qFyxpqQ+5vDUO6s=
X-Google-Smtp-Source: AOwi7QBgoWPDZYn0jJsqd9IszsMk2PHQLLjBewEYdw0GyFkphkUEbrKw1Ben/qmUVukYt2ft2c0l5U4C+E5+gFAvxO4=
X-Received: by 10.176.9.201 with SMTP id e9mr3305118uah.2.1507975113156; Sat,
	14 Oct 2017 02:58:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.82.197 with HTTP; Sat, 14 Oct 2017 02:58:32 -0700 (PDT)
In-Reply-To: <CAC+thW1vA3N3SjsVJ9uE+rz9+4FXCzzAKd6RzrtWHv-yORrgWQ@mail.gmail.com>
References: <1502634551-6371-1-git-send-email-gizero@gmail.com>
	<CAC+thW1vA3N3SjsVJ9uE+rz9+4FXCzzAKd6RzrtWHv-yORrgWQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 14 Oct 2017 11:58:32 +0200
Message-ID: <CAC+thW3y7ewju_qseTKJ1uWmC7jsGwEYaKpHchOFem081G3zSQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH] kernel-dev: fix typo
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
X-List-Received-Date: Sat, 14 Oct 2017 09:58:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!

On Thu, Aug 31, 2017 at 10:56 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> On Sun, Aug 13, 2017 at 4:29 PM, Andrea Galbusera <gizero@gmail.com> wrote:
>>
>> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
>> ---
>>  documentation/kernel-dev/kernel-dev-advanced.xml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml
>> b/documentation/kernel-dev/kernel-dev-advanced.xml
>> index 0394e08..c7e5a3a 100644
>> --- a/documentation/kernel-dev/kernel-dev-advanced.xml
>> +++ b/documentation/kernel-dev/kernel-dev-advanced.xml
>> @@ -867,7 +867,7 @@
>>              When stored outside of the recipe-space, the kernel Metadata
>>              files reside in a separate repository.
>>              The OpenEmbedded build system adds the Metadata to the build
>> as
>> -            a "ktype=meta" repository through the
>> +            a "type=kmeta" repository through the
>>              <ulink
>> url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>
>>              variable.
>>              As an example, consider the following
>> <filename>SRC_URI</filename>
>> --
>> 2.7.4
>>
>
> ping...
>
> Just to check I'm not mistakenly using the wrong list/subject/workflow...

pinging again...
...I'm sorry to insist, but I can't figure out why this trivial typo
fix has been ignored for long.

