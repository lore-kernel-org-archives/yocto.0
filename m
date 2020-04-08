Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.11189.1586352049091639250
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 06:20:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=K/KjvIkG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id i10so1488715wrv.10
        for <yocto@lists.yoctoproject.org>; Wed, 08 Apr 2020 06:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=l3r7/DN/GReH637kQu+ad/Fj6dv1L7DSNsiKfWbCdZ8=;
        b=K/KjvIkG3OC67QpaY8Q1mbMmJsjqOhzzPRT4vyoFXwzAJAWJ+WGim62YgCLYxgzpso
         ix+KUl3NrwjJLNI6THVo/PPsQTlqNxzIA2WcJaIHnMHVqOwRwRqUq6JMqZZTvY3d62NK
         S8OeDNAmVrKUV+V650TXyrA/qkJpDAdRvGxi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=l3r7/DN/GReH637kQu+ad/Fj6dv1L7DSNsiKfWbCdZ8=;
        b=F/OpFbk4gYHC/Q4/wnPpldTM97MfV2mdtneEB0SRMb745d7EmOQEji6Ia8aAHafGDJ
         Ow/wp4lvEJiSOz03G7yYDfJvGYP/a9EbVyoaljMeTj0RqdcXVI12e2azU8yWmR1H8LOM
         4wTTxbkvFg/OrHK4ibnVizfQjvDWJ3ogulL+WdHhiEaAdscJWEXg3DEH472Q1zJfxipp
         coXqgfEMfCQnlFMrASXe3qfP0EUg1VgVDQn7D2WLKf/HI/uJE0NoiLoEXNmU19fBJ0EF
         owAYGfdgfvlp8+erMH+o6mgyQCNV2blRCaWeVHWLXQ0vAca+pbmpoX8gGa2dokM+so18
         95VA==
X-Gm-Message-State: AGi0PuZbpbcaOu4no+yyCdhhs7oG4iyGyU65XfbXM7fD/92xgajoxLLT
	/eU3d6RgqjM3rdWHWyxjzDAVWA==
X-Google-Smtp-Source: APiQypKsqfy9/uwRdy1OqCUAWv57mRWnfZSJRhJE9PYDGrMZCQWIkCBspgBSZPAWjJV/yk4AL0C9Rw==
X-Received: by 2002:a5d:4111:: with SMTP id l17mr9056403wrp.271.1586352047584;
        Wed, 08 Apr 2020 06:20:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id m19sm6593440wml.21.2020.04.08.06.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2020 06:20:46 -0700 (PDT)
Message-ID: <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: pokybuild@localhost.yoctoproject.org, yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com
Date: Wed, 08 Apr 2020 14:20:45 +0100
In-Reply-To: <20200408040108.BA881414AB8@localhost>
References: <20200408040108.BA881414AB8@localhost>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-08 at 04:01 +0000, pokybuild@localhost.yoctoproject.org
wrote:
> A build flagged for QA (yocto-3.1.rc2) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc2
> 
> 
> Build hash information: 
> 
> bitbake: 4618da2094189e4d814b7d65672cb65c86c0626a
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: bd539ea962ee285eb71053583e3c17fa166fc610
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: 1795f30d8ab73d35710ca99064c51190dc84853e
> poky: 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478
> 
> 

There were two failures in this build due to collect-results failing. I
fixed the missing dependency on that autobuilder worker (there was
already an open bug but it wasn't fixed yet) and reran the collections
scripts so the results were added and handled.

Cheers,

Richard

