Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E5CE00B58; Sat, 24 Oct 2015 12:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BDCDE00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:55:26 -0700 (PDT)
Received: by wijp11 with SMTP id p11so117420311wij.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:55:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=rxudmw0135N9cfflrpuE4Cs3BPmoi1i0GZMNTmg4e24=;
	b=WnXmegEtkqXhs9AWaX7oaaySOxoRedKG2QC/J1rPelL70NdxggwmSHRithkmWbyDsu
	TUniMcvFTB3R475beBoJM8xmue9O4k9AUzchprvLxWHd6GUJtvD4L9bN90RFKZIA/LBy
	/NRgXL+LEoSAlIOoPnjOnsWLYlhvRDP5BZhzeYVJs7VwGOwRTjWudNelkmTNq1a0i2jK
	3YNKLjDfRh4RObWxUHDPTpOIZbOqiDHjaNWUGOO8vSsyp8xAflh7UV+maPRK/WqTR2Mi
	rtYmUliSfYNbSJxJLyKdGUXGV5vZmNVFjPTRiLLl/OGsDew4U7ByQ13K8hsoT7iNlnil
	b4aA==
X-Gm-Message-State: ALoCoQkH+K/8QlMbHPJPK6RjXa+ExgDxVb13GIv2GWLeSxxxoe9vzfvABCNHBIzC9Z4sf5ICOoqp
X-Received: by 10.194.78.35 with SMTP id y3mr11913084wjw.3.1445716525660;
	Sat, 24 Oct 2015 12:55:25 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	an7sm8405634wjc.44.2015.10.24.12.55.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 12:55:24 -0700 (PDT)
Date: Sat, 24 Oct 2015 21:55:22 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <20151024195522.GB4459@resin>
References: <1445514612-10204-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1445514612-10204-2-git-send-email-ajlennon@dynamicdevices.co.uk>
MIME-Version: 1.0
In-Reply-To: <1445514612-10204-2-git-send-email-ajlennon@dynamicdevices.co.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: add .pc files for the OpenGLESv2 and EGL libraries
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
X-List-Received-Date: Sat, 24 Oct 2015 19:55:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 22, 2015 at 12:50:11PM +0100, Alex J Lennon wrote:
> These pkg-config files make it easier for libepoxy to find
> those libraries and the appropriate link flags.
>
> Modified from Thomas Petazzoni's patch here: http://goo.gl/jdz7lO
>
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---

I merged a similar patch of Khem's. This patched fixed the libepoxy issue too
cause it fixes the paths too.

Thanks.

--
Andrei Gherzan

