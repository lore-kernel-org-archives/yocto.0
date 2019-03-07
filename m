Return-Path: <prvs=1969792a08=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F22EE00CAB; Thu,  7 Mar 2019 02:25:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CB35E0053F
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 02:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1551954322;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Y9A8cD51cHasFm/Pbm9dfqC0ULDBsCHjAbP/Zlm5nj0=;
	b=PpgYRuVjG4bWo/Xwt1j6dz/jk1UeHF0f3Ck1fF0XpQPP9oWnQDNDqzJyhWKUqO1bCb
	bfwDWLUwzXjoYLUvfCx2MkqdM5FVAHI03+j0eBpcqY5+qAKb/VifQpixeMKsZ6IWK7mN
	iot3lcPkcBwhohp//bSFJ1vYlzgKf58XvYdxwa3MZmOML23eg9UNrd1wM+j6cB6y3RyS
	ZolY2wDb4WnAPDIxonFE6UdR1RfaNBJPuWVN2sZzXoaI6aNb5NjGegoa4Q6vEFs3dvFf
	KM67PUgFBev26sysmzjRSwBKcbWF2XQKvU0N3iPVx3FgaMeSdNsnUIKTFKy+xUf3HuWB
	hLZg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.13 AUTH)
	with ESMTPSA id d04f50v27APMbWE
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 7 Mar 2019 11:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1551954324; x=1552559124;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=Y9A8cD51cHasFm/Pbm9dfqC0ULDBsCHjAbP/Zlm5nj0=; b=L
	+C7V+ChxDUvI8T9XHvKTZ6WceBaHw+TIiT+ABS4LGdIrLVXsvs0ZGjUR/yT29eBm
	fKMVvm1FpZaehUQBulcASBcR62e3n/fcLc4L8u9+8usbQpdzfaW9Q1U8Q97VhR7b
	ysbhQ/6beRD0y8O2LurcrtT3zmx5dOYJsr7U5u+GXM=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.2) with ESMTPSA id
	md50000147618.msg; Thu, 07 Mar 2019 11:25:24 +0100
X-MDArrival-Date: Thu, 07 Mar 2019 11:25:24 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1969792a08=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Thu, 7 Mar 2019 11:25:19 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <20190307102519.iehr56q36ghxgcxc@jholzmayr.localdomain>
References: <46d4a7de-f19f-8fa2-63b7-f21431d3435c@siemens.com>
MIME-Version: 1.0
In-Reply-To: <46d4a7de-f19f-8fa2-63b7-f21431d3435c@siemens.com>
User-Agent: NeoMutt/20180716
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] npm offline build for yocto
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
X-List-Received-Date: Thu, 07 Mar 2019 10:25:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Jan,

On Thu, Mar 07, 2019 at 10:37:26AM +0100, Jan Kiszka wrote:
> Hi Michael,
> 
> I found your progress report (and unanswered question) on that topic in http://lists.openembedded.org/pipermail/openembedded-core/2018-April/268639.html.
> Did this effort go further?
> 
> I just ran into it again while updating
> https://github.com/siemens/meta-iot2000 to Node.js >v6. I also played with
> prefilling the cache, but likely in the wrong way.

We've had our share of fun ourselves by now, especially with the
event-stream module being hijacked and removed. To my knowledge none of
the existing nodejs package managers (npm, yarn, ...) do support pure
fetching neither explicit caching. The only thing that seems to be
mostly working fine is using an explicit caching proxy like lazy-npm to
externally cache the remote repositories.

Greetz
-- 
———————————————
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


