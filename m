Return-Path: <prvs=11558569b9=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E213FE00C75; Tue, 13 Dec 2016 05:51:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670B6E00C69
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 05:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1481637075;
	l=1960; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=L/f4BCgCASk+2/tqFRhzPG4HC/OGh0G0R+7w2tStddM=;
	b=eXuq/aooTtWNSYTOEc2ZNdfjNHrprRMXy0huILKnO3t3rGbQfkMANNxrcsjBNJXQko
	hdIY4vS9x+nJxbTNM7ShbqGfV3ZnhFd19HMaSMxsA9MdyD+1jQs8gpnlSKwlOwDQG5Qu
	RpXVenkJss5jInVqB3NKP37uzFmyadvgdcgu4=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N26eC0MVrEDIlpLg0lWA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 39.10 AUTH)
	with ESMTPSA id I05b2dsBDDpE08S
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 13 Dec 2016 14:51:14 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000486038.msg; Tue, 13 Dec 2016 14:51:14 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Tue, 13 Dec 2016 14:51:14 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=11558569b9=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
To: yocto@yoctoproject.org, juro.bystricky@intel.com
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <a382fb05-0510-e3e5-6480-3fd56a5f8f31@rsi-elektrotechnik.de>
Date: Tue, 13 Dec 2016 14:51:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Tue, 13 Dec 2016 13:51:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hello Juro,

first off, thanks for taking the kick, whatever its count is.

On 12.12.2016 23:15, Bystricky, Juro wrote:
> Building of Zephyr images in Yocto can now be done fairly unobtrusively
> via a new layer "meta-zephyr" and specifying a new distro in local.conf:
> DISTRO="zephyr"

Leaving out the poky/non-poky discussion, zephyr.conf currently contains 
an include for tune-cortexm3.conf which certainly should not be there, 
as it is machine specific. My local fix here is to create a warped 
version of qemuarm.conf named qemuarmm3.conf which fixes that.

>
> The repository for the meta-zephyr is here:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=juro/meta-zephyr.
>
> The new meta-zephyr layer contains several recipes to build (and run
> in QEMUs) various Zephyr tests. There is also a sample recipe to build
> Zephyr sample "philosophers" with instructions how to run it in QEMU.

The instructions seem to be missing that poky-contrib/meta is also 
needed in the bblayers for the tune-cortexm3 include.

> The new meta-zephyr is work based on previous original work by
> Randy Witt and Richard Purdie, so it is actually a second kick at the can.

Thanks to those too, of course.

>
> This is a work in progress, any feedback is appreciated.

Feedback was above - do you also want patches? ;-)

Greetz

-- 
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


