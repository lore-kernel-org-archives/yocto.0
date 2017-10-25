Return-Path: <prvs=14716c3ac2=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5888DE00D27; Wed, 25 Oct 2017 07:24:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.218 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [81.169.146.218 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5331E00D1F
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 07:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1508941466;
	s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:From:References:Cc:To:Subject;
	bh=ef4dTIZXMJJB2xlgF9Vs/aoFJus/TfndUGM3dS+XURI=;
	b=Ilcr5eNjTolJmQxBTB8FsSuFPzXg3nUQfbPpgMw5H+H2jmq1Ex8fvIDc4UJDSvHBOU
	o+5IYTuCQeTKJcgkzalYr9br+LRI5UP9UZ0EBUncHRC1eqC89kcn9IOanNDMZJS3PXCp
	pkkUUfQMOqHshgi3eyk+ZA+2Yws8gQjzCJEXU=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Oop5Qo4fhADQi1rSTLfuAPP4FE=
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:2cf1:e1f:af6c:cbea])
	by smtp.strato.de (RZmta 42.8 AUTH) with ESMTPSA id 40b7eet9PEOMSxT
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Wed, 25 Oct 2017 16:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1508941458; x=1509546258;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:Cc:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Language:
	Content-Transfer-Encoding; bh=ef4dTIZXMJJB2xlgF9Vs/aoFJus/TfndUG
	M3dS+XURI=; b=kqaLbtULmt3GHQ20qVOpU+dh9VbfQpeVNsX4J7ZfbiG6YHDqCO
	h/eweh+CrgGeF1lUmxxrNDYoBas6NpIYE2bN4uMJcKgZpsiBSeS8vgp+Y5u+4jSa
	rC8IHD0W3xnr5kIbo2yxUt5SKIABL4xsXBCYLsm3VsZDWrT9oXEvT/f58=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.0) with ESMTPSA id
	md50000014626.msg; Wed, 25 Oct 2017 16:24:15 +0200
X-MDRemoteIP: 62.168.35.106
X-MDArrival-Date: Wed, 25 Oct 2017 16:24:15 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14716c3ac2=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <1508934039-32450-1-git-send-email-holzmayr@rsi-elektrotechnik.de>
	<1508941225.11251.15@fm-out.intel.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <ab957440-9738-5f1d-d920-0ab79cba3b50@rsi-elektrotechnik.de>
Date: Wed, 25 Oct 2017 16:24:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1508941225.11251.15@fm-out.intel.com>
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH] devtool: add clean command
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
X-List-Received-Date: Wed, 25 Oct 2017 14:24:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

Hi!

On 25.10.2017 16:20, Leonardo Sandoval wrote:
> 
> 
> On Wed, Oct 25, 2017 at 7:20 AM, Josef Holzmayr 
> <holzmayr@rsi-elektrotechnik.de> wrote:
>> Add an idiomatic way to devtool to clean a recipe. 
> 
> what I can see on the patch,  this does a bitbake -c clean <recipename>, 
> right?
> 

In a nutshell and by default, yes. It sticks to the configurability that 
was already there in the build command, but in the end thats what it is 
meant to do in the vast majority of cases. The motivation is just that 
when using an eSDK, you don't have direct access to bitbake for 
triggering that task - which in turn is helpful in some application 
development situations,

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


