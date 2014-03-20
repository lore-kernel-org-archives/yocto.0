Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEBCFE0098F
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:29:37 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id z60so2796237qgd.8
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:29:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3ixW+lrd7MRRsmvSZ1oDB9wlW4l7XiU3cAT9nj6btLM=;
	b=ImhYWkzoYUMl2scpe32JnVC03NR7nFjrjwIMoewYWjh0uWBvQfKhVbGiZGkbMjYP7M
	7firR8j95qYS8V7VB60a2dsyScGYKjpJgvscl/BFGv5EjvjinJIiKAwjEDvQGsOjEPfJ
	CkPlMqCYFbjHyPB6h+K1GwDP+ViEyyC/D9XwL/V/0zX3pEEMU5zsVktJyC5++30g8vuH
	Xfw9DIw8/zFrAIr1mGV0clavmmg5zuEVzzdtzmmSFioQsrkrcyLXuS5L2twWh78eXKEG
	11QBs/0zdL2nrTAHBE/2EPwiMLZa6O0dhyM+0mu0qvrF9mOF1PIObTgRCEjfsXxo+Mis
	1DWw==
X-Gm-Message-State: ALoCoQkw2MiUXPqJ8sGz7JEWV9jwxYQJ77U/9QlFJ/PWgqqwZnH7L7aKQRAwV9x4lKgJOmRlCLlN
X-Received: by 10.140.81.112 with SMTP id e103mr2721666qgd.99.1395325777338;
	Thu, 20 Mar 2014 07:29:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 20 Mar 2014 07:29:17 -0700 (PDT)
In-Reply-To: <15d3c57733e746090eb65ea218b2f85435d0972d.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
	<15d3c57733e746090eb65ea218b2f85435d0972d.1395261635.git.elizabeth.flanagan@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Mar 2014 14:29:17 +0000
Message-ID: <CAJTo0Lb0ZGFDErQWzp=mhGJmk9u=UxHbj-K=wEW0pGyxOhqhWg@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 02/22] yoctogit.py: Fix cp construction from source to build
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
X-List-Received-Date: Thu, 20 Mar 2014 14:29:39 -0000
Content-Type: text/plain; charset=UTF-8

On 19 March 2014 20:51, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
> +        if "poky" in self.layername or \
> +           "oecore" in self.layername or \
> +           "eclipse" in self.layername:

Do you actually need to do substring comparisons (in vs is) there?  I
suspect not, so I prefer this idiom as it involves less repetition:

if self.layername in ('poky', 'oecore', 'eclipse')

Ross

