Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web10.28.1593117738333816276
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 13:42:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XgSv6tVw;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id b4so6747745qkn.11
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jun 2020 13:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ii7U2dgr5FlwzXoo7jqrlfbb3ybvyd6xMTiziGSO2RY=;
        b=XgSv6tVwhfFk66g9tp/nKcuVnKXwvFyo7+76xOVMyRWYOJ4c4vhvxoXk6ouyoYHj1I
         FUwFj/Hl7l5GfUH1ihZyVcgA2AAamPA+0uhLa81XoL6Z9rvPPjGszBEXSPqVElesEef2
         zdOQTGZLPqtz75MWEmc+h2QK9RZcl4WpbtodGPv5SW/vObhCsJonzVKBZadMeFf4TKCv
         THtTBJ3pUTH6NU9vB2LKYl4XOlQB+5pndLegXYbp4g3IkTmMQWw+KZmx+NUE2AekLGL8
         nnRpiFosbgjWNhB3f3GzlhFJ577ELFR49cIzXcXFGzeMWxlViE9n266k0SV0eMKUH77J
         MBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ii7U2dgr5FlwzXoo7jqrlfbb3ybvyd6xMTiziGSO2RY=;
        b=DsRww/EvX7rXE/Z3YXTO1ChJG5p+HY8R6V2bWVl5YDCR0YdumHHeKZqFa0DJ16UIN1
         YZjMJa/IRuUBIsXvLaFd+oj/QUXrHphLVNfUgiPLdG7s+oFdxDr17gUO6kkKGpzMuX/b
         jIyltkd3wnS+cdz8oxBmpZG+D+aoMYBe2Gr4FPZ66pXijzogBaPYxd51BJBwmKEqfZNE
         mz0Ws4DFXs4lYJV08Un4q89L8ULiXeGrLLfoN3RS/4eOE8hsXbP0KY5FWXAdeY5AYOVc
         2T7MmFcogzGaLcncdqDStKnBsPnFyClAj/Dn70IwUlNFp0KkrSZ9fV+a+alFhSVs6Yd5
         qazQ==
X-Gm-Message-State: AOAM530/lINduNjY14BbAEBcAQTcHiVrwV0aRMlBg14ap7XB05TqZYzk
	6iycq2HRAUq97zHZ1R1ZFpo=
X-Google-Smtp-Source: ABdhPJysLikJrIkFX0PdMi7MfUxBtehIf7pSd/q9a4RBXaufOUAgSEyh90j723GTsWBOrVKe2tHZGg==
X-Received: by 2002:a37:64cd:: with SMTP id y196mr7544432qkb.26.1593117737585;
        Thu, 25 Jun 2020 13:42:17 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id 59sm7059301qtf.41.2020.06.25.13.42.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:42:16 -0700 (PDT)
Date: Thu, 25 Jun 2020 16:42:14 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] wic: Use --offset and --fixed-size instead of --align and --size
Message-ID: <20200625204214.GB14796@linux-uys3>
References: <20200612183809.865-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200612183809.865-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied to master, thanks!
