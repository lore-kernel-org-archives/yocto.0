Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.2210.1597481429056267968
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Aug 2020 01:50:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QMReVNv8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id r15so375547wrp.13
        for <yocto@lists.yoctoproject.org>; Sat, 15 Aug 2020 01:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=o86/Srr8FhgJ+u3CN/Y4QI0gOagkB+npZiLYaLx5eUA=;
        b=QMReVNv8euRo+5Ve5/KpApOpN3twxRsS6oV8qIMzHVDJfO60CEBzW9WE/A+HIBv6JJ
         jf4OGU3VhW9YtDM9F5yOKX3AyFzXh+L7Ow8jRDOKbfEwia5srEvAx7bLk2cfFae2Jx8R
         QqB9GKtD1q9yjSq4X3A3ywhdxUCEZsPf2DBDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=o86/Srr8FhgJ+u3CN/Y4QI0gOagkB+npZiLYaLx5eUA=;
        b=umokb6q42J2Y0jO0ODR4Gr5CB9y+ODiG991eJ2r0MSss6LXTX8QLIH7HrxXtOv/WHs
         H7QP+ohwjHa9Cmc6XCfkT9ZdMlwTifAyiEe9kjioVLl9HwPdRIsapN1ygJdQR5j6SQc9
         7dlz6sGzv5ypBtmV27Df+r3r/roy258zaFx0lChUDS1TV3mZB7JYaikfbAJaGxw6lFd7
         0PKMIb/1As0F6ciBBJN0lOuu7SoVmHWCQYjGHImvFHNZLf3jXx+lczK/WTfuq3EzEEpt
         DhdmhTcr9GrPpAaRp7NylgTtlnjAiDt/wm1rAABKaDaLYJPtUPAbsLjRBB9hpPZ8NgSt
         YMpA==
X-Gm-Message-State: AOAM533RAxXRjCXqf2gX3vzRpsngbXvs3x757rxoIE5RZ3Yh/TCa1GGn
	xyb1ToYQ4IBr48OIW+EQitYUrA==
X-Google-Smtp-Source: ABdhPJy7vnS5H3wQ1DieFJ+qEIlTDa+pvjm6VVzjvtncrXKf3E3ofnxxDVqbdznNYpq8b0Osv9+D4A==
X-Received: by 2002:adf:ff8a:: with SMTP id j10mr5811061wrr.323.1597481427529;
        Sat, 15 Aug 2020 01:50:27 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 9.2.b.8.e.7.7.2.a.f.d.7.4.c.d.e.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.2.b.8.e.7.7.2.a.f.d.7.4.c.d.e.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:edc4:7dfa:277e:8b29])
        by smtp.gmail.com with ESMTPSA id z15sm21738685wrn.89.2020.08.15.01.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 01:50:26 -0700 (PDT)
Message-ID: <24e7c5e4a7603c56752a7c01c52d2d04fa6a3213.camel@linuxfoundation.org>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.4.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Poky Build User <pokybuild@centos7-ty-4.yocto.io>, 
	yocto@lists.yoctoproject.org
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com,
 akuster808@gmail.com,  sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com,
 "Mittal, Anuj" <anuj.mittal@intel.com>, "Tummalapalli, Vineela"
 <vineela.tummalapalli@intel.com>
Date: Sat, 15 Aug 2020 09:50:24 +0100
In-Reply-To: <20200815050617.E1710247EA@centos7-ty-4.yocto.io>
References: <20200815050617.E1710247EA@centos7-ty-4.yocto.io>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-08-15 at 05:06 +0000, Poky Build User wrote:
> A build flagged for QA (yocto-3.0.4.rc1) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.4.rc1
> 
> 
> Build hash information: 
> 
> bitbake: fd279f857c98d492f43cc62d9ebae18ce6412b6e
> meta-arm: 38de27d05f104f989adfed5c5363464dd600b316
> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> meta-intel: ce6f8ddd2d7f42a9fe530d30332b0d9695e4904b
> meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> oecore: 9cad716656b427e625a470a820b8b29b1ec9f976
> poky: f2eb22a8783f1eecf99bd4042695bab920eed00e

Looks like there were 4 failures in this build:

https://autobuilder.yoctoproject.org/typhoon/#/builders/64/builds/2309

https://autobuilder.yoctoproject.org/typhoon/#/builders/79/builds/1247
https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/1249

https://autobuilder.yoctoproject.org/typhoon/#/builders/69/builds/2302

Two are from vulkan-tools where time.clock() was removed from python
3.8.

I think one is a known virtgl failure. We should perhaps just abort
that test on the problematic host?

The other set of failures are timeout issues on centos7-ty-1 which look
like known intermittent failures, particularly on that host.

I don't think any of there are 3.0.4 regressions and therefore
shouldn't stop the release IMO. We do need to release note the vulkan-
tools issue with py 3.8.

Cheers,

Richard

