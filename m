Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2DB6E00566; Tue, 26 Aug 2014 13:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFBB5E00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:02:40 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id n15so1941141lbi.41
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=tY+R3zgtPokMYLySESIWFFWFfKhhiFhYP3QkMOe9KgA=;
	b=jYdFI2u2gHU59k7MUvC6Bc9pdJaw7ZuVIuBFILNBI2eoddFWNyXxItxlPGW6Q9yLPP
	+A86Nke+EF/J5FJ1Uc60Rq9SnD5h9YBNrg3N3hS3zamGJhKRE12Ca5pDCfzV0rqj2B2B
	/UqP6heudXz37cGV4ZKRanyvKKFUfISzfe8gwqTgGUn4ITZATN3YowWC+KOj0PDNrtlD
	1wdkZREBt0rikTbrmWVQU+raT6788+/JV2QEbyMSRKrpj5TwD25a+g1g3sYvC3Ad22xF
	ENiN+h7wHh16pK9T9jgXkQIH8pLsZtphPSTdFoeslPHTp5sT/Sia4Bsx8gJ/HYoJbyzK
	R5lQ==
X-Received: by 10.112.57.195 with SMTP id k3mr27166822lbq.48.1409083359724;
	Tue, 26 Aug 2014 13:02:39 -0700 (PDT)
Received: from [192.168.50.237] (ip-109-90-30-8.hsi11.unitymediagroup.de.
	[109.90.30.8])
	by mx.google.com with ESMTPSA id wv3sm2676539lac.35.2014.08.26.13.02.38
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 26 Aug 2014 13:02:38 -0700 (PDT)
Message-ID: <53FCE7DD.7010102@gmail.com>
Date: Tue, 26 Aug 2014 22:02:37 +0200
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
In-Reply-To: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
Subject: Re: systemd - how do I wait for a driver to load?
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
X-List-Received-Date: Tue, 26 Aug 2014 20:02:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

You should look at  "ConditionPathExists=" Options of systemd-units.
Otherwise if udev is loading your device module, you could add the
device-unit to "Requires=" option.

Am 26.08.2014 21:52, schrieb Chris Tapp:
> I've got a service running under systemd that will only start once a kernel module has loaded and created its /dev/dvb/adaptor nodes.
> 
> Unfortunately, it doesn't load until after the service has failed and gone into an error state due to too many restarts.
> 
> I could "fix" this by increasing the restart interval, but is there a way of adding a dependancy on the kernel module?
> 
> --
> 
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> 

