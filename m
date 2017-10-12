Return-Path: <prvs=1458222eda=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E0B0E00C78; Thu, 12 Oct 2017 11:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.221 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E998E00A9C
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1507834449;
	s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:To:Subject;
	bh=m0qXe/wruIE50HqBOMX7CrzsJnPJc2qATPIZ5mzOQkM=;
	b=d+LuBsYPgSiCQbT+LG1O4hkUfCLjqFaVONB5FAcvTXdhJ8G+qTkt7k1sLNzAUF3DGn
	yNpV62qObfMy210ySpzbxDBZBLMICQLNW6ZKubRIR9tpvbp65AXgoXUrasYldmoNnqpY
	aoACt+qkOFuuTK1yDcAUWSOVkEuTa9xgnVBWE=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Osp5gk4fUNWYU0OsF0poYosUBI=
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:3ce2:fb3:af6c:cbea])
	by smtp.strato.de (RZmta 42.5 AUTH) with ESMTPSA id z018f0t9CIs7wXT
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 12 Oct 2017 20:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1507834437; x=1508439237;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=m0qXe/wruIE50HqBOMX7CrzsJnPJc2qATP
	IZ5mzOQkM=; b=xhuu9HSRyKNMTM+piTpxK3GB/itqWI9cdrKWGINNJsR3thQ1LO
	cyBCvJjWj6WanhnoWPOBd2c+jPBP0Dx6zCrQM7cdy8Yk4VXg3Ul/0NRWNhJfuJ9H
	P6QVINbaUsQZ27czUn41MLMA86hytX1KXs1SUY30hODqULQrWuUgl5MqM=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.0) with ESMTPSA id
	md50000011215.msg; Thu, 12 Oct 2017 20:53:55 +0200
X-MDRemoteIP: 178.27.11.181
X-MDArrival-Date: Thu, 12 Oct 2017 20:53:55 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1458222eda=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Ayoub Zaki <ayoub.zaki@embexus.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9de83734-99a4-580b-4306-746108cbdb9b@embexus.com>
	<18e01836-129a-0259-ff7a-1a7d21d1f380@rsi-elektrotechnik.de>
	<35e6c4b3-e48a-f2b6-b595-f1c6868e9b2a@embexus.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <027c4503-af3f-7211-e1a1-b04fcb65648c@rsi-elektrotechnik.de>
Date: Thu, 12 Oct 2017 20:53:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <35e6c4b3-e48a-f2b6-b595-f1c6868e9b2a@embexus.com>
Subject: Re: Yocto Image with custom directory layout
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
X-List-Received-Date: Thu, 12 Oct 2017 18:54:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi

On 12.10.2017 20:47, Ayoub Zaki wrote:
> Hi,
> 
> 
> On 12.10.2017 20:34, Josef Holzmayr wrote:
>> Hi
>>
>> On 12.10.2017 19:07, Ayoub Zaki wrote:
>>> Hi,
>>> I would like to generate an image that contains a custom directories 
>>> layout for expl:
>>>
>>>
>>> foo/
>>> ├── bar1
>>> │   └── bar2
>>> │       ├── config
>>> │       └── data
>>> └── work
>>>      └── var
>>>          └── lib
>>>              ├── config
>>>              └── data
>>>
>>> It should contains only those directories an nothing else, is there 
>>> anyway to achieve that ? without using ROOTFS_POSTPROCESS_COMMAND.
>>
>> Should be possible if your image installs only your specific recipes 
>> that populate those directories. Means: no packagegroup-core-boot, no 
>> base-passwd, no.... -> then nothing should bring along other directories.
> I tried that but it does pull other packages even if I set in my image:
> 
> IMAGE_FEATURES = ""
> IMAGE_LINGUAS = ""
> PACKAGE_INSTALL = "my-layout-recipe"
> 
> Regards
> 

Probably you're inheriting from some more complex image class that pulls 
in the undesired packages. Have you already checked bitbake -e to see 
how the variables get expanded?

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


