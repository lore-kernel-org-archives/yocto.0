Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B55BE0098F
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:23:26 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id i13so892453qae.5
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 07:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TX9K8UTy5y8VKHV951LwypOGDfbNWsV3NeMrBhIBv5E=;
	b=Mb9K4i01FE4uRnONKyDZIv7UuaY92oovOp999ZIaAnvZkGwympONCk44cEIa6Ixn+5
	x3Brujr+ZaF5AKzmjzLzPtvt9M5Hlgb6qNhhINi4tSh3XiaKDwPCrIsQ6BynexocKchQ
	KWlcQgn1LUjFpxbvsijnkH8GvnrLkSEC8DS6GtCuqJZ154iivYs1sf4ZLDolTio2P11L
	IbN57ccXqU/tQ9aEkhfvVlXH1CC4BcD1V8F/DIRApVG0dt0DdtK7ILymH1VuXpPtAg+s
	igucKozbRxkrTOzxu5zdrSniRvGas0qx7G4ShXZFxci8W5IKmSnCUsJpg54cwpuze5xF
	nTJg==
X-Gm-Message-State: ALoCoQlw47Sn2F2yujVJnTtVJzOXviA3K76sKUhG04iCvh8Y2qaBYX5oTtZK4vc0qilRWBx596Q4
X-Received: by 10.140.81.112 with SMTP id e103mr2678105qgd.99.1395325405568;
	Thu, 20 Mar 2014 07:23:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 20 Mar 2014 07:23:04 -0700 (PDT)
In-Reply-To: <d21b7cdbc63e5d5bb15e2b6b9ea3fb0cbc03f89f.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
	<d21b7cdbc63e5d5bb15e2b6b9ea3fb0cbc03f89f.1395261635.git.elizabeth.flanagan@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Mar 2014 14:23:04 +0000
Message-ID: <CAJTo0LbVi8tvBEfgJ9A3O90E7s-yS1tnhv60EP+f38KZxDNqnw@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 03/22] BuildImages.py: core-image-basic name change support
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
X-List-Received-Date: Thu, 20 Mar 2014 14:23:27 -0000
Content-Type: text/plain; charset=UTF-8

On 19 March 2014 20:51, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
> +        if self.layerversion_core < "4":
> +            self.images=self.images.replace("core-image-full-cmdline", "core-image-basic")
> +        elif self.layerversion_core > "3":
> +            self.images=self.images.replace("core-image-basic", "core-image-full-cmdline")

I had to read this logic carefully to make sure I wasn't missing any
nuances, why can't the elif be a simple "else"?

Ross

