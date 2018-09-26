Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3496E0095C; Wed, 26 Sep 2018 02:11:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBE9E006F1
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 02:11:46 -0700 (PDT)
Received: from [10.0.3.81] ([78.6.3.122]) by smtpcmd06.ad.aruba.it with bizsmtp
	id g9Bk1y00Z2dwwGE019Bkr8; Wed, 26 Sep 2018 11:11:44 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <b7507926-9def-d2d2-5cb9-c62dadb8fd43@faresoftware.it>
Date: Wed, 26 Sep 2018 11:11:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1537953104; bh=PYy5cy1wCpoy+LewsRcdqEtF/EEkR2rD/NWaqo7BwQs=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Iinv9vXqMA4bo7gH+ywABqd5FYhtHNYb29lTfc0P/lEkXcbQMJpr7OPBVRN6o7DYd
	BOFbkGRowe1uZ1pjtbjzXfMLBuH5pNlWd3c0VXkHvQXOFXEQT8zVRq2K0IUbDVSEJB
	f96hfMCjDbuzkF78OPJW1tyMlMJHTSKL+xVEBng1Sel182Wl/4FxkKwcCz4Fd8eOvI
	E1kFWMQTG9rUzNY6vAr+5+hlXpmAqkGnyDqGHoTo+lzXjOFoFG34fCYNPxvbBqQhLX
	tKTeaLBjUbL4wcvGPkbw+RlpsHYn75hChhP0wKLs7SQGQxzXw7Cw2M9ib5GEMIzRdJ
	xYF0HqzLmBBsw==
Subject: Removing old images
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
X-List-Received-Date: Wed, 26 Sep 2018 09:11:48 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

How can I remove all unneeded images in tmp/deploy/images/imx6dlsabresd ?

I try a brutal rm -f. but it is not so friendly.


MZ


