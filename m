Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B24FE00BE0; Thu, 29 Jun 2017 03:56:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.30.184.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.kapsi.fi (mail.kapsi.fi [217.30.184.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2521E00BD5
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 03:56:26 -0700 (PDT)
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <Anders.Montonen@iki.fi>)
	id 1dQX7W-0003GX-SL
	for yocto@yoctoproject.org; Thu, 29 Jun 2017 13:56:22 +0300
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.84_2)
	(envelope-from <Anders.Montonen@iki.fi>) id 1dQX7W-0006pA-RB
	for yocto@yoctoproject.org; Thu, 29 Jun 2017 13:56:22 +0300
Date: Thu, 29 Jun 2017 13:56:22 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@yoctoproject.org
In-Reply-To: <20170622120832.GS27196@bill-the-cat>
Message-ID: <alpine.DEB.2.11.1706291347560.1790@lakka.kapsi.fi>
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
	<CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
	<AD70DBFD-84A9-44DF-8DCB-1C25BBF0F351@iki.fi>
	<20170622120832.GS27196@bill-the-cat>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: Re: AppArmor
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
X-List-Received-Date: Thu, 29 Jun 2017 10:56:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed

Hi Tom,

On Thu, 22 Jun 2017, Tom Rini wrote:
>
> I did fix the latter of these (along with the perl problem), but I'm
> using sysvinit and needed apache2 in my project anyhow.

Your commit fixes most of the problems, but /usr/bin/aa-easyprof still 
gets installed with a shebang referring to the host python3 interpreter. 
The script is processed and installed by utils/python-tools-setup.py, 
which captures whatever $PYTHON is set to at the time.

-a

