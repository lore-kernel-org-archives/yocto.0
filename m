Return-Path: <prvs=12499e4edc=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C117FE00546; Fri, 17 Mar 2017 00:30:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D46E0050B
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 00:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489735828;
	l=792; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=4ktK4fz57hqfOtWQjpHRT4NS8u1DWUteqU0H1Eo2kkk=;
	b=QWWFttIJIbO9bf9882Aj2AmHHUiwxWkee+Vy8sJfUo2OTGxSZb1mIRZhm3sSw2o39x
	ks/U5CuSn41gywWbBWLZZEr1Qv60cRa9W4LJod6Hfs3ajSb3PbWKSzb341x69W+2ImYY
	8sILR7WZqQtFbyTvKP5GuOml8vJO9aC9OJVQM=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq1PsMOrsgJUXn/sWrYFv/BbNIsEQ==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:185a:368e:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id z05adbt2H7UR4EG
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 17 Mar 2017 08:30:27 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000510580.msg; Fri, 17 Mar 2017 08:30:15 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Fri, 17 Mar 2017 08:30:15 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12499e4edc=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: ravikiran j <ravikiran.j@mistralsolutions.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CALDHXtf7=HeQV56Yg-9WPL2nu_-OvaF0qNBVcAsks5SAaBhAiA@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <b117f9cc-2e4b-9f3c-74ff-87f9afdf1609@rsi-elektrotechnik.de>
Date: Fri, 17 Mar 2017 08:30:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALDHXtf7=HeQV56Yg-9WPL2nu_-OvaF0qNBVcAsks5SAaBhAiA@mail.gmail.com>
Subject: Re: Missing or unbuildable dependency chain
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
X-List-Received-Date: Fri, 17 Mar 2017 07:30:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 17.03.2017 06:22, ravikiran j wrote:
> ERROR: Nothing RPROVIDES 'dnsmasq'

meta-networking does, as to be found 
through:https://layers.openembedded.org/layerindex/recipe/4473/

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


