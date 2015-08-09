Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A09E9E00A6D; Sun,  9 Aug 2015 15:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51AD5E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 15:37:50 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so127610260wib.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 15:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=wkJrgDa9uIMrBdiaCmyuh7ZCzowji+crnVv1kCxyHw0=;
	b=LcfvNi/ZMVr/FMqk3aWY8ykTqnyiJxorefWWodN5u4JGs8gTOUYjaTmsJAyNMGxMNA
	/ThPIzYblUdCH47rcV0Cfb023L959jWRz3Yr3UcrvwLpjJ3gacW3jZjWn7nbvRNVX0ce
	FaRFiLTF0JXG57gYV0Fj8hn2YQN4LTLZI1lsXuSQ4JskPdi4kY2nQ20l8NpO0t9vkFJk
	zJsnXGu+f4HaZQw5IhYnp0VhstkvbFkJk+aBeNtReN5WsRsxU+TfYl7GL85ngWGUCU+m
	2Oso7tMCiqXacpgyt9uLnj6VXlX63eg/nefG0j3fSf0HdsNvmz/UQi3b26p4kNWYDn2W
	dP9Q==
X-Gm-Message-State: ALoCoQmT9FI5LFNuLcGllJSIoIJeHkzu61vSnEajxF7CmLm9FWePlK4mcdwcybfTsKBpEFXjLiVV
X-Received: by 10.180.9.162 with SMTP id a2mr17439544wib.95.1439159869553;
	Sun, 09 Aug 2015 15:37:49 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	v9sm26314722wjq.41.2015.08.09.15.37.48
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 15:37:48 -0700 (PDT)
Date: Mon, 10 Aug 2015 00:37:47 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <20150809223747.GH17962@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-2-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
In-Reply-To: <1438245251-20437-2-git-send-email-javier@osg.samsung.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi.inc: Make kgdboc kernel param optional
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
X-List-Received-Date: Sun, 09 Aug 2015 22:37:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 30, 2015 at 10:34:07AM +0200, Javier Martinez Canillas wrote:
> From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
>
> The kernel debugger over console (kgdboc) parameter is being added
> unconditionally to the kernel command line but this means that the
> kernel will stop and wait for gdb to attach in case of a exception
> or when sending a sysrq-g key. This behaviour may not be what most
> users wants that are not remotely debugging the kernel over serial
> console so make it optional by adding a ENABLE_KGDB config option.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
> [javier: Extended commit message and made it conditional]
> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>
> ---
>
>  README                                     | 23 +++++++++++++++--------
>  recipes-kernel/linux/linux-raspberrypi.inc |  5 ++++-
>  2 files changed, 19 insertions(+), 9 deletions(-)

Merged to master. Thanks.

--
Andrei Gherzan

