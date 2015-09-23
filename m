Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60794E00DDF; Wed, 23 Sep 2015 15:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3962E0055C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:27:25 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so4233487wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:27:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=659zuyjwpO4fr2jHHhPc/12zJB8MNkC011RyO2dr2tU=;
	b=QGzjDWo80l1ueyiq4uxwxYFlhCH1MrOfY0PvFXqnmE4kJUb9stO/pA9iu7uX5fZpV6
	/buh/i6BhspSkSgn3uydrCurZB5052uta0cYOZpoKI75cwrM+L77qgQchSwQMfhpEvc+
	eMIWQ7S5Q2mrRo1HWuxUIend3pQYcZJWCTTdVmY6BYII4yd/Zxp1jY5evrG8Q8qf1wsL
	5xkot0n2iiQWFwIZ3JdXkyaxpeoL+249GUB2pzZQn4+Rzl/VrHJ7yJYFhV/1ZVon9cCv
	bVOFVjYj+x4PKkUZuT5uUqILWfRBQvxlIeRhuLd/PjWnpGbrKGEkoL4ySDf6W9uw8qJH
	M69A==
X-Gm-Message-State: ALoCoQnf7lmjKjWvAxEDsL6Zf3ouHH5dHHvNbTpJBL2XybtTBjGTnWcCtH9cweNI7M7qgTVFXOKK
X-Received: by 10.194.7.232 with SMTP id m8mr26877206wja.56.1443047244826;
	Wed, 23 Sep 2015 15:27:24 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139])
	by smtp.gmail.com with ESMTPSA id w1sm9334301wjz.37.2015.09.23.15.27.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 15:27:23 -0700 (PDT)
Date: Thu, 24 Sep 2015 01:27:21 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Edward Vidal <develone@sbcglobal.net>
Message-ID: <20150923222721.GC23493@resin>
References: <998678350.1550167.1442063545537.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <998678350.1550167.1442063545537.JavaMail.yahoo@mail.yahoo.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] rootfs fails
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
X-List-Received-Date: Wed, 23 Sep 2015 22:27:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello guys,

On Sat, Sep 12, 2015 at 01:12:25PM +0000, Edward Vidal wrote:
>    Hello All,
>    Thanks after doing "bitbake core-image-sato -c cleansstate"
>    followed by  "bitbake core-image-sato" was able to get the image.
>    During the core-image-sato with no IMAGE_INSTALL_append =  I did see a
>    few warnings that I have not seen before (see below).
>        WARNING: QA Issue: gstreamer1.0-plugins-bad: configure was passed
>        unrecognised options: --with-egl-window-system
>    [unknown-configure-option]
>
>        WARNING: QA Issue: /home/vidal/wkg/yocto/RaspberryPi2/poky/build/
>        tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/perl/
>        5.22.0-r0/packages-split/perl-ptest/usr/lib/perl/ptest/hints/
>        epix.sh is owned by uid 1000, which is the same as the user running
>    bitbake.
>         This may be due to host contamination [host-user-contaminated]
>    Another strange happening is python is missing items to do "python
>    setup.py install" on package
>        both repo072015 & repo091015 are using python 2.7.9-r1
>        -python-distribute-0.6.32 is missing and 2 new RPMs are installed
>        +python-pip-7.1.0 is now being using instead of python-pip-1.5.6
>        +python-setuptools-18.2 is now being used.
>    Could this be related to rootfs failing at times?
>    Regards,
>    Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

I merged a patch that should fix this issue. Can you try to replicate with
current HEAD?

--
Andrei Gherzan

