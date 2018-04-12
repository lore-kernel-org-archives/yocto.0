Return-Path: <prvs=164086b4f5=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA5CE00B8E; Thu, 12 Apr 2018 11:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 187 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Apr 2018 11:49:11 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[85.215.255.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B96E00816
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 11:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1523558950;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:References:
	Message-ID:Subject:Cc:To:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH:From:
	Subject:Sender;
	bh=IBDGHaIdvlmGTldo97UIwWPrGp9kfwHpYNzXnU4251M=;
	b=i5fgUgGiasGee3S7zLHiXWGFaWjJvmUz27vxHuM3JyfNFBAg/Fk82QtyhxWLOMU/SF
	b+dz1H2irkc0oXYV/JIaQ3EZ+NhnNJmZR+h7m4IzViuqJeha27pqxJ7ZTdIkV/lI3eGt
	Pe5Pxybit8Bl9N6xMmklDKIVwU1u8mWPGw5hkxYQT6z3vAOK96m5mqZ9Vtm2RuRh3MD/
	EUSHj0Zka6nQaV4wJ0IAuhKELUI7ZcrSUsfkeXEiq6f4rvnyFMVHWAHOl2XIUjYqwq1S
	+BEdw+yBjg/OoArbqKOBjVIsIKB6ykZveiAuLckPa7mszNf6ZfaVBSJJ3+YFvplnkfNo
	hcGA==
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 43.2 AUTH)
	with ESMTPSA id k073b2u3CIk26tH
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 12 Apr 2018 20:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1523558761; x=1524163561;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=IBDGHaIdvlmGTldo97UIwWPrGp9kfwHpYNzXnU4251M=; b=K
	nuGJmapPzj7AR34VelGWmdkCXVcqGt39l6A2HyxFzqCFNvyZpu3cveb9GWj+gilI
	LmpW5blAy1P+MFfWdIkQwLfEKiL9mFCa4MNoYyTlmZseu1QbR2Ovsr67BrWo78Q5
	eqyAxHGf+1zxwNhZRO1g2h428Pdfe4BSyt9Ie1qH90=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.3) with ESMTPSA id
	md50000060780.msg; Thu, 12 Apr 2018 20:46:01 +0200
X-MDRemoteIP: 178.27.6.117
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 12 Apr 2018 20:46:01 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=164086b4f5=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Thu, 12 Apr 2018 20:45:47 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Richard Collins <richard.collins@guidedknowledge.com>
Message-ID: <20180412184546.75r7dmfuy7epgnli@jholzmayr.localdomain>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
User-Agent: NeoMutt/20180323
Cc: yocto@yoctoproject.org
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 18:49:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Apr 12, 2018 at 01:11:17PM +0100, Richard Collins wrote:
> I get the following for DISTRO.
> 
> DISTRO            = "yogurt"
> DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
> 

For further reference by anyone who is reading this in the archive: the
supplier is Phytec, and the distro layer is here: https://git.phytec.de/meta-yogurt/

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


