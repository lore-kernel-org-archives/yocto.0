Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id AF975E01556
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 00:57:51 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so542027vbb.21
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 00:57:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=biqFq0omyhjNdyfo8omM6G0CnpZ06IxWG8HwlPjQE80=;
	b=aizLXNB+ASwn6rzd3cpz6FfrxnDUS2qIGyr0JwTb8vjhOfyyhznsTzmjeNZNSfs39Y
	Uf1r6SaM8smjD8+OXuTlSdj82rg3fzzHsjc+uN1m4Z9biduYIOAOWwGdmgrZS00vFVGv
	9xnDPCXltWhwT6w5t2tvUjzA/3/4Z3uiB9w/ht340WnZ6GiyJ5DQ5PH1MYCraimActEo
	3cY7LkdYMxAqPUGl++gy7JWxBwKBvkxJMZO+S2Fm2rMbiGA7TMDNvSVna/iLinooq3A8
	h9ndCx9IWrllWrR3yG4QmvtBSpsTn9zcqJZWuats+ur3fGZv4JSeIuVvGZcTSRYI3Qse
	6fhg==
X-Received: by 10.52.72.40 with SMTP id a8mr560062vdv.20.1362733070566; Fri,
	08 Mar 2013 00:57:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Fri, 8 Mar 2013 00:57:30 -0800 (PST)
In-Reply-To: <CABTzgQ5nZSRSxnmUMjUVfT1B6UijNTrU-zc5MRHBNmGPMuhUPA@mail.gmail.com>
References: <CABTzgQ5nZSRSxnmUMjUVfT1B6UijNTrU-zc5MRHBNmGPMuhUPA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Mar 2013 08:57:30 +0000
Message-ID: <CAJTo0LaY_gqduXzAPRZMH2DKttya7raAC1zbx5+C5SX+KQqqqQ@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQmEgqiwsnxPNz8IQIhbDTRHln/5LYtB9CXSYvptTiYXj+zWk11Z3ZSO37YOa+J54dF5wcf/
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Problem with Xserver freezing
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
X-List-Received-Date: Fri, 08 Mar 2013 08:57:51 -0000
Content-Type: text/plain; charset=UTF-8

On 7 March 2013 20:49, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> I created a X11 image and I found that the init is freezing. Advice
> regarding configuring Xorg is very much appreciated. If I remove
> Xinitialization from init then its properly starting. my board is a
> specialized version of Nvidia Tegra Harmony board.

That X log doesn't contain any information that's useful, you'll have
to dig around the other logs in /var or alternatively disable X from
the startup and then start it manually with options like --verbose.

Ross

