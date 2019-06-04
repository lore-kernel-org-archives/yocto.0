Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D95A4E00D44; Tue,  4 Jun 2019 00:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F627E006D2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 00:08:51 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id LX8p2000R2wfazh01X8pmq; Tue, 04 Jun 2019 09:08:49 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <7e9f634a-175f-1e49-2d80-da364686d077@faresoftware.it>
Date: Tue, 4 Jun 2019 09:08:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1559632129; bh=oGSz5Y29/5F60g6gQY0XI2W3pZT+sa0Og5mr1LCNy6Y=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=eTuTDu+wx+YVYT4WoLNSfLc8Yn6jtWr/04g7nOndUS0A02ZzEJrHPduXisi3+aAvJ
	eBVEDc2jEBgV2h4PEMHs1ig3x7ewAKItNNIrm0QAa8AE9JeHA4riliXL08qxPfF2yV
	wnsRIhmOmIaAlAlydlgFJdv6zyYG1CI0zakLUNrJ3NC6UR+gocFF0Gf8fF6SGsADHj
	64VIXoBr8nm9P5ZGP7Huy56s4KRBEnfzx7s7V0BaEQ5u5lDMikp06FDBO2xgsjH0WW
	L5rO9Y43nufXBPZE3dhDh0nkP5eZXsz6NCUVfwWdP3rqFySd205Z5kmcLbPN8MHFBw
	eLcAbtqFCjBGg==
Subject: How to disable SIMD extensions (mmx, sse3, ...)?
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
X-List-Received-Date: Tue, 04 Jun 2019 07:08:55 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I'm working with a Geode LX800, porting an old application Debian-based 
into Yocto Thud.

I need to disable some multimedia SIMD extensions for gcc compiler.

Where I can do this?

I suppose I have to disable SIMD extensions in 
conf/machine/geode_lx800.conf file (the machine descriptor file), but I 
cannot find any document about.


Can you help me?

MZ



