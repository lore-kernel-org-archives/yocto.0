Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FC4FE00B58; Sat, 24 Oct 2015 12:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.195 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f195.google.com (mail-wi0-f195.google.com
	[209.85.212.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E42E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:48:09 -0700 (PDT)
Received: by wiut4 with SMTP id t4so12027461wiu.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=eZGMLWpMbqmYwGc0XBXru5YAX7t2U7UA9Cyk4Z9VCCg=;
	b=j/et7SRonwEqMS4Pq8UL8T86d1m6BMk3EN9BKWMy2WZ2Wi1J7vm/tXl8CrAeK3RYnS
	R3EUzSGbRmNtLLVhesXF+oXwTN8F+mOZKUrlbyoeSZUXvxJt0irCCdLHr2ZGYScczPvs
	42heBJtpOZ9i+N/vh7u3JjHmTEhee1XV6CeiWpHHK/BKziAEXSoLeR5EtXT9rM2gL96g
	5+lQL0wA7xySEXJG3ujdq+3M+5WBpSxktqxv64aKLOuIKoutHbGjNfAmL0ZazKTaTjtt
	RPAq7F8NiJ5Q4G7cxeYQf75riudeMFoWKT8rkyrKUuKC9LLCYw5FlqrsIIm4guFw9pq9
	rE7g==
X-Gm-Message-State: ALoCoQkVcxZIjybDOHqSxj4TTXOo4L8f1hxWM/I70vcjosZA/7SkjsZHsCFKNvaPOdEV00SnGYmr
X-Received: by 10.194.62.112 with SMTP id x16mr36238294wjr.132.1445716088994; 
	Sat, 24 Oct 2015 12:48:08 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	v9sm29703552wjv.45.2015.10.24.12.48.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 12:48:07 -0700 (PDT)
Date: Sat, 24 Oct 2015 21:48:05 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <20151024194805.GA4459@resin>
References: <1445525577-14694-1-git-send-email-ajlennon@dynamicdevices.co.uk>
MIME-Version: 1.0
In-Reply-To: <1445525577-14694-1-git-send-email-ajlennon@dynamicdevices.co.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] README: Add section on audio routing
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
X-List-Received-Date: Sat, 24 Oct 2015 19:48:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 22, 2015 at 03:52:57PM +0100, Alex J Lennon wrote:
> See http://redmine.gherzan.com/issues/55
>
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  README | 36 +++++++++++++++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 5 deletions(-)
>

Merged to maser. Thanks Alex.

--
Andrei Gherzan

