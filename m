Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9694BE0076F; Sat, 17 Jan 2015 10:37:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5540DE00596
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 10:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1421519852; l=808;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date;
	bh=wZVjuHquFaHu4xjEWtuK7ELZFnE=;
	b=JdF2DqV7Y7MdUxdwlWXdWtED5zPDQjoJ+LDReC9bENISK6EEzydP/8bl0VIPgCc8zHC
	u5CRDHpILOWrMA5JwUUoX1oxMVb+zhvRM+nRtkrp0HLowjlOBgSkMk5B6a8fOkWFbKhdd
	n75ZLNvy1ByCKX9cbE5EksfDAqFg2az/if8=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgBcHsubAgpni8lM9B/8=
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p579155E4.dip0.t-ipconnect.de [87.145.85.228])
	by smtp.strato.de (RZmta 36.3 DYNA|AUTH)
	with ESMTPSA id 906e3fr0HIbVIgl
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate);
	Sat, 17 Jan 2015 19:37:31 +0100 (CET)
Message-ID: <54BAABF4.8000300@jenslucius.de>
Date: Sat, 17 Jan 2015 19:37:40 +0100
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Andrea Benini <andreabenini@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
In-Reply-To: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
Subject: Re: armhf support for meta-raspberrypi
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
X-List-Received-Date: Sat, 17 Jan 2015 18:37:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Am 17.01.2015 um 16:55 schrieb Andrea Benini:
>
> Is there someone using armhf on it ?
>

Hello,

This option can be set by using the variable "DEFAULTTUNE", which is 
normally set within the machine configuration.

In case of the raspberrypi layer this is located in ./conf/machine.

The DEFAULTTUNE is set in the subdirectory "include" in the file 
tune-arm1176jzf-s.inc and is set to "armv6" by default. There is a 
discussion going on at the moment if this should be set to "armv6hf" by 
default, maybe you could read the mail archive of the last few days.

There are also special tune options available for the raspberrypi in 
this file which fits the processor architecture. I am using 
"arm1176jzfshf" so far without any problems but I did not do any speed 
tests.

Regards,

Jens

