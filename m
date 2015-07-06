Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 758B9E009DF; Mon,  6 Jul 2015 02:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23256E009BE
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 02:48:52 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 6FA846001181
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 12:48:50 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1436176130; bh=F9GZYwFjuRmxslJ2IuRUVgUg5ssNF1uvFo/VxvH3OIA=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=8RF/Wxlmiv0Z5nZJJ55hPZsgo3xeihmA4Y+6PudI/2sl3dYNv19v3liyJ3ZFiQLjf
	N8mWMFQWQxo2IrKY/VfGtaseHE4pZYR9Q5U49snv3v4XG5BJjWHm1VbYYFfCrdmnFR
	Wq+nFltd8+LUpR2mpgy3WZTij8MC4nKbZ7ABueSI=
Message-ID: <559A4F02.8040907@mail.bg>
Date: Mon, 06 Jul 2015 12:48:50 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>	<20150706051954.GF6806@ulm-bmuc496424.bmw-carit.de>
	<20150706084005.GA8098@ad.chargestorm.se>
In-Reply-To: <20150706084005.GA8098@ad.chargestorm.se>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Mon, 06 Jul 2015 09:48:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi guys,

One issue with the regularly changing tarball checksums is that people
start to get used to thes changes (e.g. everything looks like false
positive). Currently the tarball checksums and SCM revisions are
probably the most important tool for builds traceability. If we get
used to think about these checksums as "unreliable", it will be much
easier to miss an important component change, which would otherwise
ring a bell.

Kind regards,
Nikolay

