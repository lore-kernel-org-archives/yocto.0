Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D21B9E00D84; Tue, 20 Aug 2019 23:24:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D1AE00D74
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 23:24:15 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd12.ad.aruba.it with bizsmtp
	id riQE2000q2wfazh01iQEgt; Wed, 21 Aug 2019 08:24:14 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <fb9ff55a-2fa8-39c5-aa9e-1cb9a5533c6e@faresoftware.it>
Date: Wed, 21 Aug 2019 08:24:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566368654; bh=8dU9APVSpOWqA6+pLNsnW4ukehdFkWhWYphp+OhL9Cg=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=JY7ICUbg+ie1JJzDPeHtNQJIU9p4sCNzgk23YlZw/aWgCQAU99ZvvkL2SX7CGIg1o
	ovmP39LmM+Oyzy8gmVARoD9VaO0YASwxgdYEh3hgtsqnid/A7DBKKFcfPnwK4eg4pT
	UVBjFSXD5WvWM32u44q1wtPJk3La8BD7cDriWS7PnLYyy4B6glwz2nMcCyG1CmwOlv
	kz3brt/g0SClWqZ6DQG0f5XTLPkQG26vbHEgx6x0FfmEcBktWpSkRICgHmvG2+xM8E
	TvweKG6C7YgeOGAvaNaLgpmhK1fj8/akQYErG1rjEXYvUJYUgfW57bF6vIRVh11RKo
	6CDbDHYBXQb7w==
Subject: Final DISTRO_FEATURES value
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
X-List-Received-Date: Wed, 21 Aug 2019 06:24:17 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

How can I inspect the final value of DISTRO_FEATURES when bitbake has 
completed the parse all recipes?


Best regards,

   MZ


