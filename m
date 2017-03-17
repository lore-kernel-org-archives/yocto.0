Return-Path: <prvs=12499e4edc=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C80E00724; Fri, 17 Mar 2017 05:14:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.160 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07603E0050B
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489752856;
	l=1042; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:Cc:References:To:Subject;
	bh=1rt4O9oFv96KlkitXj+rGK5je4V3Z+vmo+vz3P5T0hc=;
	b=PQr/kos3knl3xMSF5c4JkUzu1ldVPbeGFcA17aBGyydDakutPTIU0DEoEp+Hjtulua
	R+5Pw7aQoWzGkIkYLTB2DF4MLL/RGBF8Wvx5YUWlxjGCPb4r57JmMpuwBLvUZtWp1NCi
	3BxJe4r3xDLYBitKVR4KVRuKS8G7CEevn2xjo=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvF1MhuFNtPdyidq1PsMOrsgJUXn/sWrYFv/BbNIsEQ==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:185a:368e:af6c:cbea])
	by smtp.strato.de (RZmta 40.2 AUTH) with ESMTPSA id 907248t2HCEG0gh
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 17 Mar 2017 13:14:16 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000510703.msg; Fri, 17 Mar 2017 13:13:56 +0100
X-MDRemoteIP: 178.26.151.155
X-MDArrival-Date: Fri, 17 Mar 2017 13:13:56 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12499e4edc=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: ravikiran j <ravikiran.j@mistralsolutions.com>
References: <CALDHXtf7=HeQV56Yg-9WPL2nu_-OvaF0qNBVcAsks5SAaBhAiA@mail.gmail.com>
	<b117f9cc-2e4b-9f3c-74ff-87f9afdf1609@rsi-elektrotechnik.de>
	<CALDHXtdjqTqtYixJ1a3xn1rOF+_ZcJ_ExiT1r1bA1Qw=6xg_Hg@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <c5eefd24-f47b-8cf8-3b71-5bc7671587fe@rsi-elektrotechnik.de>
Date: Fri, 17 Mar 2017 13:13:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALDHXtdjqTqtYixJ1a3xn1rOF+_ZcJ_ExiT1r1bA1Qw=6xg_Hg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 17 Mar 2017 12:14:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi.

On 17.03.2017 13:10, ravikiran j wrote:
> for this error  which layer i needs to be added ?

As I already explicitly linked to the layerindex, here is another 
example of its usefulness:
https://layers.openembedded.org/layerindex/recipe/47350/

Please understand that I probably won't respond another time to things 
that are trivially solvable through information that I already provided.

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


