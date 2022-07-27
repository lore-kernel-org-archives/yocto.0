Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9C79C19F21
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 03:53:07 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web08.16046.1658893985877809252
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 20:53:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=t4eaCjt3;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.167.45,
 mailfrom: jdmason@kudzu.us)
Received: by mail-lf1-f45.google.com with SMTP id w15so17319439lft.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 20:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fZCORekuDBIk9iIhISaC1sEFCLYgEA9fjyY2/8Oa1iM=;
        b=t4eaCjt3K3ZvckP+Z205+BKKIH9mulccxGkUHYnMuBnODEhbUsm0/5FaxKRkulIb+z
         1MysOCdNNcVT8BERPDEzqMXiy83iTzP3emJsZfPI5frJGijCIgx42BsABzJeqjVy0NRa
         scNXoIIUTXWadrAoldsLiau6I9gaiJ6RuYgZh51M/XKMCNysMmBhT1MELKSsa41jw7DF
         2wYknovY5WOZQSLxsazUWHJJffNNmU3+flfSEYh0hHQFBfybDwXfHVZYTaTue1o8RFVz
         gZmXqLHnemp2MBgM/AmvZM2R1ev+iWWXheFi+gunFnW+E1czfUcItMbLmdE/ZyDDjMQx
         CKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fZCORekuDBIk9iIhISaC1sEFCLYgEA9fjyY2/8Oa1iM=;
        b=50AN5Ei73i/Se7T1pOiXiMrL/hoYmoRAjtkqFiSRvf2b8TAhUPDNgllhQ+q/34xro8
         pQmePcW0QtyJBXWw/qrMCVtzXGUaDS63w5oQfvqd6Twqfv84ty0VzV0UZBAKMsBILq5z
         MX33Mc7EzeysqrAzLkpy6imhlKEMRF4d4NiFuA8lo+I4uhRRJvTNGxxpCSCLFza3U6T2
         06XlHdIwVtCs0Fc2/6PKeNaXc7OMImJa1QyclMZGVRYijVn7TGtEkOmF/yDoVw06I8Dx
         li833J3w7BWUXDShfRxHLcGaoPs3bN8azC9F9vBtoSiFZ1XVSwE+I87c0K2oErumOpCW
         3OeA==
X-Gm-Message-State: AJIora+dmeUE9MnqOKY4NCGLB0OX6EBKju9W3Zl2tLKzE0nqptXQMB7t
	Qkps6ie3CXcBJPqOLCPp80BOXEzVCKkMhChVXyG5YQ==
X-Google-Smtp-Source: 
 AGRyM1uuvaR1GO0MPEjZd8eC68CdmmfY/LosQSs66Zt1dO3Gy0C+n0WqrpRZleLtQNASpCdNCI5NoLzJZn0KfXU4vJo=
X-Received: by 2002:a05:6512:3342:b0:489:e36b:4149 with SMTP id
 y2-20020a056512334200b00489e36b4149mr7378533lfd.588.1658893983773; Tue, 26
 Jul 2022 20:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220726151511.3571294-1-peter.hoyes@arm.com>
In-Reply-To: <20220726151511.3571294-1-peter.hoyes@arm.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 26 Jul 2022 23:52:52 -0400
Message-ID: 
 <CAPoiz9xZx+japyzvnx+O+mm3p5TJrLYEoiwxU2eUi=ZBcqr3aA@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] [PATCH 1/2] zephyrtest: Enable use of
 TESTIMAGE_AUTO
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, diego.sueiro@arm.com, jon.mason@arm.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 03:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57652

On Tue, Jul 26, 2022 at 11:18 AM Peter Hoyes <peter.hoyes@arm.com> wrote:
>
> From: Peter Hoyes <Peter.Hoyes@arm.com>
>
> When TESTIMAGE_AUTO is enabled, the do_testimage task is inserted after
> do_image_complete and before do_build so that the test suites
> automatically run as part of the image build.
>
> However, do_testdata_write is currently constrained to run only before
> do_build, so it likely won't execute prior to do_testimage. Change the
> "before" constraint to do_testimage do that the testdata is always
> generated prior to running the testimage task.
>
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>

This series passed CI and is a fantastic improvement
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/597428786

> ---
>  meta-zephyr-core/classes/zephyrtest.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-zephyr-core/classes/zephyrtest.bbclass b/meta-zephyr-core/classes/zephyrtest.bbclass
> index 248fd15..aa48e6c 100644
> --- a/meta-zephyr-core/classes/zephyrtest.bbclass
> +++ b/meta-zephyr-core/classes/zephyrtest.bbclass
> @@ -50,4 +50,4 @@ python testdata_clean() {
>          os.remove(fname)
>  }
>
> -addtask do_testdata_write before do_build after do_deploy
> +addtask do_testdata_write before do_testimage after do_deploy
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57645): https://lists.yoctoproject.org/g/yocto/message/57645
> Mute This Topic: https://lists.yoctoproject.org/mt/92629631/3616920
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jdmason@kudzu.us]
> -=-=-=-=-=-=-=-=-=-=-=-
>

