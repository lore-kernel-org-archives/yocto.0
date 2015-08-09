Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62705E00A6D; Sun,  9 Aug 2015 15:44:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1FC6E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 15:44:14 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so17370753wic.1
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 15:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=fCINvklxO8vTd/rF/SaoHM2zPwyv9YyLJm8clkiUBAM=;
	b=cZJZbLAOnWy91zBrOCalzoq5Jcwu/6bGWkOoSAUZCQNKT9L8L0rukyFAXxLrF87iip
	R/3e/EKJYG5+ZNvTHlh/p9E4j8r7GV/KA4cTMyL4Ag9bir52+fhCysAlG/1F6MF1Pxxq
	qNmDSlVsXQtFZrjAZ3NiX+ukex/D3OidgiXSi+N/fhA8qNLiZBx1LTfUqvVki/V1L8iW
	4ddTd6eTu9jBpMNH2yx9XoQCXnjOE99+pqYoDnwbYtlpmeOXRg675IXGKX7Ga1CnxQu2
	jdnFOZOMaxhSllHZvaZp4MgjqVgYm/tdXtxlQwi7ApfRzBDzObU/O4uxdsde8MlK4Tw8
	9INg==
X-Gm-Message-State: ALoCoQn3CNH7KZGNUgA4bz9FiGvDevUSs9sD4o6BlJIvjSzY58mXOoQWP0WgBTwd3MljmhEw2LGj
X-Received: by 10.194.249.100 with SMTP id yt4mr40636353wjc.0.1439160253752;
	Sun, 09 Aug 2015 15:44:13 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	o9sm26356091wja.29.2015.08.09.15.44.12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 15:44:13 -0700 (PDT)
Date: Mon, 10 Aug 2015 00:44:10 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150809224410.GI17962@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-3-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <1438245251-20437-3-git-send-email-javier@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 2/5] rpi-config: Allow to mask GPU irqs
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
X-List-Received-Date: Sun, 09 Aug 2015 22:44:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Thu, Jul 30, 2015 at 10:34:08AM +0200, Javier Martinez Canillas wrote:
> From: Derek Foreman <derekf@osg.samsung.com>
>
> The rpi config.txt file has a mask_gpu_interrupt option which needs to
> be set when using the new VC4 DRM/KMS driver. Since this option exists
> in the config file and needed by some kernels, add a option to set it.
>

I understand the scope of this change and it makes sense. The only confusion is
in the "since this option exixts in the config file". This option is not in the
config file. What do you mean by that?

--
Andrei Gherzan

