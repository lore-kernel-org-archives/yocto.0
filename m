Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B214E00C37; Mon,  4 Apr 2016 08:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E90FEE00BFD
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 08:18:34 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id c20so37674575pfc.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 08:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wjlRvx5KV2D5fFChJ1k+Y7C41/lYAO8BpwlTJqH60pA=;
	b=zpJqz7Ybe+cNd4TlpbfsnRiHGM+6RXH123Pg/PBdapvDrh9t7DPPHUU9tE813jKKCM
	hLe3o9sKJe/1Z4VFjYHrKR0wlG9Clal9aG26/unbk/QPmimmSs2CSbmMGgcL3aQS66HL
	/LXdey9jO+8/UMmgqlxVbMd+bdx6SmQwrxuGwXybgNA9OdHXz8sJWyAcosBoKUEm6bcN
	a2MpNJqrN//5YOo+GqetPsUPK88ikpiaxlLIHA9+Yl/2ywPEQjpJuQsrR9hoclDD4jLw
	E3EUMg5VQE3M10Jqau3cdmJe544zaqxmWnO4y8c42LSTCiPzhxlMvHL/wTyJiqOZpTcy
	h2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wjlRvx5KV2D5fFChJ1k+Y7C41/lYAO8BpwlTJqH60pA=;
	b=S3FQFudJu3fB3uatcy2YzhDLOqntFjfCWFB8criMQXWJ73yFKCwKEvF2soJzQoxXw6
	2ykdhTsqONvr7gJm1Nziz6FMzicDnysxxiD141uDrTFWkQUjKLZXlAAkXW9SFOKNcAcp
	kGhxjqztqcynaVL23pPrBlb404ToocGzh2KXHzk2GJ6T/OFOUq+BjGbAY264HaEnD/Jv
	LsTNSyBsdi54tPfySOtaSGGFcHHwn8ASJ9hIOAxGm1B196M79cKOvkjRkr0guNdcWID9
	+e6efYZJ+6y3AR++LPb4CO2IEJU0hwmNUQ3z7a/5OQZcO1auo9TQH72CzUM0W4EiVQ24
	4tMg==
X-Gm-Message-State: AD7BkJJlnJksHqtiU9lg2XHziHkbhDh0R+ymgOUzCe4WsAlqwHUV1qUIi9wXlDDYTskMpQ==
X-Received: by 10.98.68.91 with SMTP id r88mr21692778pfa.12.1459783114206;
	Mon, 04 Apr 2016 08:18:34 -0700 (PDT)
Received: from linux-mkz6 ([209.65.105.133]) by smtp.gmail.com with ESMTPSA id
	r191sm40325060pfr.36.2016.04.04.08.18.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 08:18:33 -0700 (PDT)
Date: Mon, 4 Apr 2016 08:18:28 -0700
From: Trevor Woerner <twoerner@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160404151828.GA6648@linux-mkz6>
References: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
	<57027B09.2090808@mlbassoc.com> <20160404150630.GB29635@linux-mkz6>
MIME-Version: 1.0
In-Reply-To: <20160404150630.GB29635@linux-mkz6>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Mon, 04 Apr 2016 15:18:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-04-04 @ 08:06:30 AM, Trevor Woerner wrote:
> On Mon 2016-04-04 @ 04:32:41 PM, Gary Thomas wrote:
> > On 04/04/2016 03:24 PM, Trevor Woerner wrote:
> > >The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> > >/dev/ttyAMA0.
> > >
> > >Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > >---
> > >  conf/machine/raspberrypi3.conf | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > >diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> > >index 1b73f2f..2c3df41 100644
> > >--- a/conf/machine/raspberrypi3.conf
> > >+++ b/conf/machine/raspberrypi3.conf
> > >@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> > >  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
> > >
> > >  include conf/machine/raspberrypi2.conf
> > >+
> > >+SERIAL_CONSOLE_raspberrypi3 = "115200 ttyS0"
> > >
> > 
> > Why the _raspberrypi3 modifier?  Wouldn't SERIAL_CONSOLE = "115200 ttyS0" do?
> 
> oh, I see what you mean. maybe, let me check

yep, that works too ;-)

v2 to follow

> 
> > 
> > -- 
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
> > -- 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

