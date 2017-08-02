Return-Path: <prvs=13872ee4e4=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA345E00C9E; Wed,  2 Aug 2017 03:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 309E6E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 03:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501668414;
	l=1539; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=K7C7yeJ9dU8vfMo3yCT+eGXOQWK87ytUts2aNA28dNs=;
	b=GVFVg1FtsS36ua0dbRnlO16yNfBUdc0OKCCAYHJYAWrt9bCDiLHvu6LzwMSRQ/GZZi
	Z39zFF28OE1dhUT6CodBW9ZMUxbxgUxP3TTDPqIL+JvU0fzRUA7LhfUPlPoM6jufCrhN
	q9h/8WCgJvRydxiDpotaQGXWn3iUqnrcco4yg=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id d0acf7t72A6qDp8
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 2 Aug 2017 12:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501668400; x=1502273200;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=K7C7yeJ9dU8vfMo3yCT+eGXOQWK87ytUts
	2aNA28dNs=; b=C2AzuLc0UWNFL3wgjUOYT4PLWz0uwtKOpKhS79qNqTrHSveTZQ
	PgDhLeCNSxn9pR2gwWrwuhnmP7iNyFyfUShS7OtEK+cCc+VNhvyxrf581x9HBabh
	cPkRdZInLwvLPkuIk4wDhdIijvYoIRksM8yTMq6e9EBUXwO11/hBChZqI=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000547895.msg; Wed, 02 Aug 2017 12:06:39 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Wed, 02 Aug 2017 12:06:39 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=13872ee4e4=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Bacheh Karaji <bachehkaraji@yahoo.com>,
	Yocto Discussion List <yocto@yoctoproject.org>
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
	<568398942.4073936.1501667235929@mail.yahoo.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <b92ea58d-f44d-2655-59d0-7490545fea7a@rsi-elektrotechnik.de>
Date: Wed, 2 Aug 2017 12:06:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <568398942.4073936.1501667235929@mail.yahoo.com>
Subject: Re: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 10:06:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi!

At the moment it like this:

On 02.08.2017 11:47, Bacheh Karaji wrote:
 > I bitbake the image "core-image-base"/.

You start out with a already big image setup.

> IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi 
> net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc 
> minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"

And then you add even more stuff.

After that, you want to remove lots of it again.

While that maybe technically works, its pretty pointless. You first 
waste a lot of compilation time in generating stuff, which you then need 
additional time to remove again.

The correct approach is to create an image recipe that exactly fits your 
needs. Usually one would start out with core-image-minimal.bb, copy that 
to your-cool-image.bb, and then add the additionally wanted packages in 
there.

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


