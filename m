Return-Path: <prvs=1247d9a5f6=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55CDEE00A96; Wed, 15 Mar 2017 05:27:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7241E00A81
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 05:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489580857;
	l=1033; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=vkGeSuzF2/jIjsUsg94eU2MnX8g1zW12Ie2ZB/R3nR8=;
	b=Tj3a5uBbQqNeriW4AjI311k8Ic5iMLPN4zRoqyn0+7liyCPsd3pixitrsoq1Mbq3k5
	87nCJtSaEFYw2IdOwtv4/hDbv9HcleSqiRLg3UctVOqi6cYGlbIZYQ2M/2C2lJi/hbwx
	T0DNgIcDPoILc/V0jUwrYgxVsi8YG4/89tPm8=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id d0aea5t2FCRanGi
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 15 Mar 2017 13:27:36 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000509959.msg; Wed, 15 Mar 2017 13:27:25 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Wed, 15 Mar 2017 13:27:25 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1247d9a5f6=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <CY4PR18MB160558F10B9A0B408F667B9FE0270@CY4PR18MB1605.namprd18.prod.outlook.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <93ba9ae9-88dc-8731-2ce2-069781169974@rsi-elektrotechnik.de>
Date: Wed, 15 Mar 2017 13:27:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CY4PR18MB160558F10B9A0B408F667B9FE0270@CY4PR18MB1605.namprd18.prod.outlook.com>
Subject: Re: List of packages in image and their Licenses
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
X-List-Received-Date: Wed, 15 Mar 2017 12:27:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 15.03.2017 09:42, Keskinarkaus, Teemu wrote:

> I know that there is bitbake command/option to get list of all packages
> available, but how would I get a list of packages that goes to any
> specific image? And is there a way to get what Licenses those packages
> are using?

look at tmp/deploy/licenses/$YOURSPECIFICBUILD_$TIMESTAMP/license.manifest

(with $YOURSEPCIFICBUILD basically being imagename-machine)

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


