Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA981E00D42; Tue, 25 Jun 2019 08:39:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd12131.aruba.it (smtpcmd12131.aruba.it [62.149.156.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D927E00AB4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 08:39:41 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd12.ad.aruba.it with bizsmtp
	id V3ff200182wfazh013ffcL; Tue, 25 Jun 2019 17:39:39 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <5ef67315-a366-0fb7-34e4-2cadc92a0ff5@faresoftware.it>
Date: Tue, 25 Jun 2019 17:39:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1561477180; bh=QWK0LteMK1+fJqvSikszAccA7HayIj2Nvek0lolndo4=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=h2z3MSVm4zR4dsndQe1zn8XjWgsaP2Zry8jj8MkGyHk8peVczMwXGnNaymglCMS10
	5t5KCsLPUyi/7Wppr7ZcGZD550K0DJ7Sypdxa7eI+oUpCR/0+ohEVY8aU5RVDHEVsa
	NBt9OSPZ9xQnay+374qGarTaJgDb7iwzk2yaHIFmZJE0FJb916UAah63kgrQz7pZpK
	ISpHVT97+JCjVO7zqbfHz9oDgpCciCKWPJlA7LIuMlbaL8K46VaGqkkEeXdpRY4/Vr
	k8JGKJNG/DWEZOVkW+1OEtEvJFdRiC4LRMCbb8yFNswUwiVYKwyTKXfTp2JauzZcsh
	jl+Cps1B/cxAw==
Subject: do_image_*[depends]: how this works?
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
X-List-Received-Date: Tue, 25 Jun 2019 15:39:43 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I don't understand how to use the do_image_wic[] istructions.

Where I can find info about?


I need to customize a syslinux.cfg configuration file, but with 
syslinux_%.bbappend I fail.

I look inside many image recipe the row

do_image_wic[depends] := ....


But I don't understand the mean


MZ


