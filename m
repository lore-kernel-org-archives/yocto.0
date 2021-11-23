Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE88FC433FE
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 17:43:52 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.14561.1637689432111451943
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 09:43:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TzavWTMJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id a9so40301564wrr.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 09:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=jufl7Htbu1gT+x8MuCNr0GbVNQclHQAAyHtfZhOiSQk=;
        b=TzavWTMJsjiI3qqq3ZMcNJVz8+7FLgvKCtEqr4aCzUe/iP5hD5C6GHJkWJlFezOdWM
         1AgrYzUzNmghWOz9TkpfZQq0q2NhcRjfDHX9vcVlwTlI9Dqzm32vOhslmuLQSrsyrvtv
         YBqAOp0PK6gok04QKrwTtx8CC0yDtndqW0BhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=jufl7Htbu1gT+x8MuCNr0GbVNQclHQAAyHtfZhOiSQk=;
        b=SJuR6RHt3o851S5iyrQ3eISx7poo8Wc5E6YKzt9hSLqGo8KuWFVPzHawFwQIDx0+51
         acetKEMNNXcA8HYpmpFyo+a6qrOlH/kO1ZeroB4MVjva5vVWuxVdTwtHT40SQZ5uUubp
         G5M8y79Yv2Byb2hw9mrqntqYOzqzuQ5wmjt/6CGHKU/n9Oa3RlY5GbSPX4Gp6BcKZyoT
         MJZH2bcTX6N1bfulVJQS+nVKSiLZUDMUJPfU3r39q5PpzfNcQcE1E8wI5akjlkhQAGE6
         ytNzwY6heb4x5t8O+ZRYlcBLGVMn2k1OE13V+6eaP/ydUb1RmZtqS+JVgwG9xa04K8UF
         bMpg==
X-Gm-Message-State: AOAM532oin+HxxyjfDwXLrsaVJQDaUP0pRfKuYeJb/RbTHuujDAdjYTV
	PGtD78i+JnKeBACbBJ1F6yTv0w==
X-Google-Smtp-Source: 
 ABdhPJxg0yUXRZQtQkz3oHTiFH6/FvklyA2bN0QiaN8PbWx5YX0d8rQZ0YwwnPQInlBZyFSmJv23pQ==
X-Received: by 2002:a5d:47c9:: with SMTP id o9mr9187723wrc.348.1637689430434;
        Tue, 23 Nov 2021 09:43:50 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:e990:5f99:797d:8988?
 ([2001:8b0:aba:5f3c:e990:5f99:797d:8988])
        by smtp.gmail.com with ESMTPSA id
 m7sm1630407wml.38.2021.11.23.09.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 09:43:50 -0800 (PST)
Message-ID: 
 <acb4b7e9d576aae4b4ee8374f0e26033a65bff47.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] [yocto] QA notification for completed
 autobuilder build (yocto-3.1.12.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	"<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>, OE-core
	 <openembedded-core@lists.openembedded.org>
Cc: Lee Chee Yang <chee.yang.lee@intel.com>, "Tummalapalli, Vineela"
	 <vineela.tummalapalli@intel.com>, "Stephen K Jolley (via Google Docs)"
	 <sjolley.yp.pm@gmail.com>
Date: Tue, 23 Nov 2021 17:43:46 +0000
In-Reply-To: 
 <BN9PR11MB5372F9B07F411F0B1708A930BB609@BN9PR11MB5372.namprd11.prod.outlook.com>
References: 
	<581c5d14ffc3eca5b39297c422a08eabba4f6d93.camel@linuxfoundation.org>
	 <BN9PR11MB5372F9B07F411F0B1708A930BB609@BN9PR11MB5372.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 17:43:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55399

On Tue, 2021-11-23 at 11:54 +0000, Teoh, Jay Shen wrote:
> This is the full report for yocto-3.1.12.rc1:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects. 
> 
> new issue found 
> 
> Bug 14622 - bsps-hw.bsps-hw.Test_Seek_bar_and_volume_control manual test case failure
>    
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14622
> 
> Thanks,
> Jay

Thanks Jay.

The TSC discussed 3.1.12 and are happy for rc1 to be released.

Cheers,

Richard


