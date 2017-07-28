Return-Path: <prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 840DCE00D05; Thu, 27 Jul 2017 23:13:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.216 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 686BAE00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501222424;
	l=1669; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=jNc/d7X8F2KJTp6T8oVBJHms3K8DcRApFvWF38X0s2Q=;
	b=qkGYS88sDh+KoEXbyhyGy1wEZ6LQDy5NgdV5RLAsCvYtQblXXzPGKgJrxKINIh1JYG
	UyjM1rOtncfqR3jigbOLCzeYy1hxY7ADgo/SLYo6gqSQ6rAPSRjqh65VQNndjx8/Ano3
	2HsxBSijafQWsSAkZgXAcP2MNEu/LqSG8BkSw=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id q0be27t6S6DePyf
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 28 Jul 2017 08:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501222405; x=1501827205;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=jNc/d7X8F2KJTp6T8oVBJHms3K8DcRApFv
	WF38X0s2Q=; b=fl4cl0SdIaFScH0PKejcfd6ZUt4G+80LvMV3oTLFOXJi7alFas
	yM8cWqH/DVYgFBrnNXEPyPut9RqPYkL+GDYYTW8hvaBBi7j4X9LydMS+h9L7XZeG
	F+uEq2+9ZlB/SJdAzgbWHpz88OGS4pvFuvZ3+vMfEpssV3lwiG+dD4Jvc=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000546716.msg; Fri, 28 Jul 2017 08:13:24 +0200
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Fri, 28 Jul 2017 08:13:24 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1382f5a5ed=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
Date: Fri, 28 Jul 2017 08:13:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 06:13:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

On 28.07.2017 07:56, Riko Ho wrote:
> How can I port it to MPICH ?

Easy, just do a complete rewrite of the compiler infrastructure :-)

Or did you actually mean "how can I install" instead of "how can I 
port"? In that case, the answer is "Not at all."

Seriously, icecc/distcc have absolutely nothing to do with mpich(or any 
other comparable mpi/hpc framework). You are mixing up an awful lot of 
buzzwords, what is running where and doing what.

If you want to speed up bitbake by using multiple boxes, icecc is your 
choice. Follow its own installation procedures for getting started.

mpich seems to be a framwork/infrastructure for hpc applications, which 
is something completely different.

And generally, all this shbang is not worth the effort. Are you really 
running multiple hours of builds per day? Would shaving off a couple of 
percent from the compilation provide any gain? Mind, its only the 
compilation that can be distributed. Not the whole rest that actually 
makes up the magic of a bitbake build.


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


