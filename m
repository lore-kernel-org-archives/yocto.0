Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68747E00C59; Sun,  3 Feb 2019 07:03:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.71 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0871.aruba.it (smtpcmd0871.aruba.it [62.149.156.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2054CE00546
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 07:03:09 -0800 (PST)
Received: from [192.168.24.108] ([79.2.65.198])
	by smtpcmd08.ad.aruba.it with bizsmtp
	id YF381z0084GeqKz01F38Mu; Sun, 03 Feb 2019 16:03:08 +0100
To: yocto@yoctoproject.org
References: <a8046832-271b-71e1-8d8d-50af56a210a9@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <eb0ce8d3-12fb-41d5-d0eb-ea6287b5f199@faresoftware.it>
Date: Sun, 3 Feb 2019 16:03:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <a8046832-271b-71e1-8d8d-50af56a210a9@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1549206188; bh=e+eye8vzInFYxP7kxQh/S543VB2oaSFtyed9DsIpzNY=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=e7mwVn+8W9r/FEfhOZF+78crJzJ+n8BfvrH/s3jTrxzOi8Pe4ZddGZW/IuSVOvqVO
	lfhDquBQoOJBQpW7x2rDeXjBSZIGlRrMzcKJFbAX973vH8rSs1BBIEAOxG3VZ0DBEY
	qD5U/0hAszsYE15ApwAxChuct9cya+/NwRPNVbR3sEvEr/yt/Q2mOTNpq/6YzMtmQa
	phLZHHUJWfpbCKFgVrImelggMmVoo/md773/dfJNXoAwbz0xWFju68FRFtYqeyhDOk
	QgNIu/FNLJeteg9fzxkj2v2M7o0ow4Vl7/83HoNA3uHpGN/bI7cDKkYyZWlzElqlKM
	8i1YoARNuHkvA==
Subject: Re: Set package DEB priority
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
X-List-Received-Date: Sun, 03 Feb 2019 15:03:11 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
Content-Language: it

Find the solution my own.

I put

PRIORITY := "required"

in conf/local.conf to set all packages as "required"

MZ


Il 03/02/19 15:10, Mauro Ziliani ha scritto:
> Hi all
>
> How can I set the priority of ad DEB by my recipes?
>
> I need to mark all packages as required.
>
> Now they are optional
>
>
> Mauro
>

