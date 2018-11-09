Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88619E00BD0; Fri,  9 Nov 2018 02:50:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA16E00ABE
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 02:50:36 -0800 (PST)
Received: from [10.0.3.97] ([78.6.3.122]) by smtpcmd04.ad.aruba.it with bizsmtp
	id xmqa1y00N2dwwGE01mqafX; Fri, 09 Nov 2018 11:50:34 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <1fdcb125-8659-2d44-fad4-cf833d655b9d@faresoftware.it>
Date: Fri, 9 Nov 2018 11:50:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1541760634; bh=zAvKE6QyG09UcUhK2pLyIpnjYvMsswO3wRHFAaks9To=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=SroHm/3xb8kGUfZCtc4Y7zjhD4Sw5yoikReP7Ow+LeieI1xutQy58tM3sH4sPhz5v
	W4/teLsHUsF8AmaN5utjh2Bj/DVnT3SZuakk41nf9JdpszL0F9YDeaGsgqvKVMbRsn
	7VWNPrBLz3CV8Wn4tCBy3qR1gc/AITk0cBLsQUfSvGk9bsh0kAnvKjDeqkm727X1ku
	QyiIkPdhJR7W/bmTQCwe9VSzTVuR7qDqamT6eleI86JUnWiNz78gjZ3swua2VvCbf4
	F7FUnJaLYykSvKnFQVNmnG9uvdo+khztOOfN15ddFJuUBTFpibyeDiOSArw63O6LUF
	7d7QU7YWRdFQg==
Subject: Autoincing version every rebuild
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
X-List-Received-Date: Fri, 09 Nov 2018 10:50:38 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'd like increment version number (PV) o release number (PR) every time
I built a recipe.

I use this strategy in debug mode to give a reference to every debug
session.


In production it PV and PR value for the recipe will be fixed.


Any idea?


I'm working with fsl 4.1.15-2.0.1


Best regards,

  Mauro


