Return-Path: <prvs=138094b9f3=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5EF9E00BE8; Tue, 25 Jul 2017 23:00:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 177 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jul 2017 23:00:42 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5727BE00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1501048841;
	l=935; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=EFMmOMqZa6eS6tzBF9tvwhQ3CXeipDYwrssIGCnQbl4=;
	b=YjJEpUwxjw1cU3cj9Ti8PvhgsF0r7vibnnIIDNDnXBajtFkjbs/Ik3e2gIxYRmsGLu
	4r7TsU3V1r7bDA/FLcgZlcz5tswVMNJqX3lfAIgiDFoN7shoZslW4e8bH/fH1te9uUlu
	YmUdRdugzrQAz9KGxAN8cC3GJjmZJ5c4H/1cs=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq2NsVaruNM0BuYWC2Hzed5IgCQrA==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2035:3c8e:af6c:cbea])
	by smtp.strato.de (RZmta 41.1 AUTH) with ESMTPSA id n0b16dt6Q5ve4Ud
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 26 Jul 2017 07:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1501048642; x=1501653442;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=EFMmOMqZa6eS6tzBF9tvwhQ3CXeipDYwrs
	sIGCnQbl4=; b=Kf+frDqZ1oaxGg8W0QJ79uRq9DZD9FhpWkoyr2OaZ3afJVIRDW
	8l2B1htGgOLgkuh2s94YDV7rf3pEQ8qes1/Y72xFPZz7PYrTIg0fGrmtakyLA2cV
	gZo886+H1HI7Y+5eNVq6Kz19VJ7d4+gAC4SEP55Pg2H5jeQgUYbUuHlwY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.2) with ESMTPSA id
	md50000545992.msg; Wed, 26 Jul 2017 07:57:21 +0200
X-MDRemoteIP: 178.26.238.27
X-MDArrival-Date: Wed, 26 Jul 2017 07:57:21 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=138094b9f3=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
Date: Wed, 26 Jul 2017 07:57:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Wed, 26 Jul 2017 06:00:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi

On 26.07.2017 05:12, Riko Ho wrote:
> Does anyone know on how to run poky on mpich cluster ?

As far as I can see, MPICH is a userland library, basically. So it would 
be the other way round, you could probably run a mpich application on a 
number of nodes that run some OE/Poky thing.

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


