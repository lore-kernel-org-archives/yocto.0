Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.360.1584638809731805244
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 10:26:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Nks+p1vf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id a25so4174208wrd.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 10:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=aZ7EEws5pUKZH6RiEwSoq7Pb9T49bCiOj9orp2nmR/I=;
        b=Nks+p1vfPT1BoGcV5Iea2fMqtg5KKP8yESHXsGRLyl8cilZfrOqUgVgZ7A0EWn4Mau
         srBXGXjIh6f6PoP6cTNI/aDUb3WtmUjw4wXLezFSksNiBr3STT9gI+VNAfnDf70jThRa
         q4ZPVtIJEWdn07TkwL8c4sgDWJq5AEsAKleXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=aZ7EEws5pUKZH6RiEwSoq7Pb9T49bCiOj9orp2nmR/I=;
        b=lbN+c6Mcqx5wM1ZXsyMnAfwwvBwGWvk40k5YVRyVNVwu5EKpTGbJc2eXcu6HQ2PD2t
         j0+og4gPU4cImZSASv8smd2Yyy+Kq+kNVcm07eRBhpuoGK+y2bbi5I03z5+prz0nkH9t
         3NbSdcUbpdCeLexsC8ScMH81s/4DCmu1ncUMj0bhrIjCYaVFB0ip3vwqGtOPoWp6Awze
         34syRf4GU5eiCZCEwH3LMTsm+OQtWAeGzL9S7E0AJtSq0o+ZM8qvWHMAfD0zrGAI27uV
         TRRfWo6B3Exz7YoMJVG5AOHSZs8rSuVSk+M+4rQl1HzNX8T8+YUmO+Z7fGWoezingWNt
         SvYQ==
X-Gm-Message-State: ANhLgQ3yz4jzVfj/SfzqoUjIMga4EEZ9vUPSAQaqjajC2DGD1RW/ShT/
	575mRcEJQbrNQNcSJBTeFb+ZWg==
X-Google-Smtp-Source: ADFU+vvgWq1V/TVxVtMhrA+iGQL/1pBhZw7XN7gzwbfgODKlgiv88UUNtOEd8zhqxHDuai63Kyf7YQ==
X-Received: by 2002:adf:e70d:: with SMTP id c13mr5727042wrm.306.1584638808293;
        Thu, 19 Mar 2020 10:26:48 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u144sm4151792wmu.39.2020.03.19.10.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 10:26:47 -0700 (PDT)
Message-ID: <67346733bb661f1e75cc82d30026979d7f675217.camel@linuxfoundation.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian Bunk <bunk@stusta.de>, Mike Looijmans <mike.looijmans@topic.nl>
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>, ross@burtonini.com, 
	yocto@lists.yoctoproject.org
Date: Thu, 19 Mar 2020 17:26:46 +0000
In-Reply-To: <20200319172141.GB29515@localhost>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
	 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
	 <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
	 <20200319080514.GR104502@korppu>
	 <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
	 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl>
	 <20200319172141.GB29515@localhost>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-03-19 at 19:21 +0200, Adrian Bunk wrote:
> On Thu, Mar 19, 2020 at 05:07:17PM +0100, Mike Looijmans wrote:
> > ...
> > With both parallelization options
> > to "16", I might end up with 16 compile tasks running 16 compile
> > threads
> > each, i.e. 256 running processes.
> > ...
> 
> This is a bug:
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=13306
> 
> I sometimes wonder whether something basic like "no more than one 
> compile task at a time" would be sufficient in practice to avoid
> overloading all cores.

You can test with:

do_compile[number_threads] = "1"

Cheers,

Richard

