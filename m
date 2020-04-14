Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.2060.1586898700432452964
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 14:11:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AnrrVFj+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id j2so16270957wrs.9
        for <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2020 14:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=MzOmYBjZK5UWTv/cAw7Y7b4z6izXGnZBUZmA/53v1VM=;
        b=AnrrVFj+2DWJEYtPSeXBMriaoHWol05/p4tGmJjvCSSie5M05qrcX0WfkieioGzerH
         OnLgFq/7MRRfbYj0c6CNKeOQ4Djh1MUmtdEv/tSj92P06i02UW5b3eB7VWlMlC43VfiH
         AHmI3UJKJIGIuDcoTwTJGJb+cml+JxTBFgmCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=MzOmYBjZK5UWTv/cAw7Y7b4z6izXGnZBUZmA/53v1VM=;
        b=RBBOc/RRy5DxjEprVT+EdYS2ssW27Qh9LZv2tiqIG0HWuM0wfMyxVT7TAgzotn81aH
         zEVn2lO0hYVLRdSWPw+svWjkEqbrTJ5+LxynBeGL1WESex8sK0pyvGnsRuHqLAV1kkd6
         7OX8BE5zRWa33MS1S+YRqPMg9EAdSt/qeyOnTrOqXyZEIwKlVliLmzEukWtThyZ0o3N2
         fJziXTE1YbYfzX2nV8PwBWgly9TlmIdoj0Lz4GyGGn+h5Y0en1yhkW4A10Ft4/O//UXG
         3kBkneJjfmaYDS3Tg85PT76gOjYu9kXrvpNK65PLZIQRHlb6yiZLhm2dha16dsS1AdS0
         99vA==
X-Gm-Message-State: AGi0PuZZKdQyLOPR3RVw1PMu47KwRMFaqt0fk2JGVQ/Pq2lKUJhmYdrW
	7skNnkOEXirktP/8S/zdvvQwmw==
X-Google-Smtp-Source: APiQypKZIKn0FNNVmYuTAjnCY7GIyQ9lIU8UclDqUJXgIj+1qr505AGPQrz23TvH6eYUWGqkIFmGIw==
X-Received: by 2002:adf:ee88:: with SMTP id b8mr5791612wro.93.1586898698931;
        Tue, 14 Apr 2020 14:11:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id r20sm706217wmh.26.2020.04.14.14.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 14:11:38 -0700 (PDT)
Message-ID: <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>, "Tummalapalli, Vineela"
	 <vineela.tummalapalli@intel.com>, Paul Eggleton
	 <bluelightning@bluelightning.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Tue, 14 Apr 2020 22:11:36 +0100
In-Reply-To: <CY4PR11MB1879762D12519AEC68852879E3DF0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200408040108.BA881414AB8@localhost>
	 <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
	 <CY4PR11MB1879762D12519AEC68852879E3DF0@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Sangeeta/Vineela,

On Sat, 2020-04-11 at 07:26 +0000, Jain, Sangeeta wrote:
> This is the full report for yocto-3.1.rc2:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects.  
> No new defects are found in this cycle.
> 
> Note: Few failures are observed. These are setup issue since running
> tests remotely, not real yocto issue.

Thanks for the QA run!

The TSC met today and this was one of the topics discussed. We would
have time for another build and QA run but none of the queued changes
or open bugs appear to be significant enough to warrant that.

We'd therefore like to proceed to release rc2 which will be slightly
ahead of schedule and aim to have a prompt point release thereafter 
with the inevitable fixes as people start using it.

Paul (cc'd) is working on the release notes which is a ton of work and
much appreciated, thanks Paul.

Vineela: Could you prepare the release so we're ready when we have the
release notes please?

We're also pleased to say we do have an LTS maintainer lined up and
that should be announced soon.

Cheers,

Richard

