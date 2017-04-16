Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734CCE00524; Sun, 16 Apr 2017 08:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C88E00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 08:50:33 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id u2so20322359wmu.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 08:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QEZ38AeGrYkkudOXGnXcvl7HKGC8rGUq2bApDEreXCI=;
	b=qhoZLEbDgbdvSiLMxmXKe8EcWVth8sXQxENtpftpzIkG9m7V86WdUvL0K1n+ipy75W
	HoZyi7gFuDkJ9R4mjN3XYsTL/8MQZ0b0otyilvNBpKC9ne5a2wEG2xGBUh21aL+7Jg1g
	502mEHjGma8vm4eeIDhS8evyCbdT4/HfuRlw7jaP1u/JnOwukytkZZN81RiNXcwD3qz0
	2nle6fXvTOrWS9YpIB78TMm2ZOLsIezAULwWwiQMb2hAmOeDGiUkZ4FANZdqO59acoQz
	cc6KXjgTyDl/7kCM2BEmJfH2NVlW6U9kuEl1HTSqYqIMWhXarTZwCpwOFM8MtBzs0Ahx
	JevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QEZ38AeGrYkkudOXGnXcvl7HKGC8rGUq2bApDEreXCI=;
	b=R9hgN7zfAJQ9IreqBCtq00EkNj4DnUlzZh4V051mOo2reA/8BjlPddIVWQTtVySbTr
	G0S4Yl874kmG7rFwYdjMW1xz2arwhSE7d16m8GJ5hSjWWvINPadFbs+hm8VFglQaNeKM
	obMI1Er1UfogaEbm4E6buUGUUzhwoa+PgBjhAuTng/Sk0nCHbO98MOwjcho6lA7UlbcV
	U2LMXrqJX5Qi5F0EphI6gVVYeMd5MhUOCs2DMceSs1IgxJkLmetIVf1Phb0T+HBxJvd0
	0bQx5BmzUWdeSiei3fT3uYAgsIJkwYPrgoLnSV1MG2YW2bPYx28EBbFL5wodExBZjaIo
	9juw==
X-Gm-Message-State: AN3rC/4DUPg2AspIdj0KtKmDgHJ0/hISxjXrMqji60Fj10AOdvT46UK9
	YQ8uFtuebWD2ONKl41nqTQYC3S0gE4sm
X-Received: by 10.28.153.194 with SMTP id b185mr5804592wme.101.1492357832446; 
	Sun, 16 Apr 2017 08:50:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Sun, 16 Apr 2017 08:50:01 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Apr 2017 08:50:01 -0700
Message-ID: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
To: openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Sun, 16 Apr 2017 15:50:36 -0000
Content-Type: text/plain; charset=UTF-8

Hello All

I have put together recipes for upcoming gcc-7 major release as well
as glibc 2.26 release, which we would target for next release ( 2.4 )

There are several changes in gcc-7 which will need fixing packages. If you have
time to spare feel free to give it a shot and send fixes for the packages or bug
reports. Below are commits you can cherry-pick independently.

gcc7 -  http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/gcc7&id=9562231d6a37ea9c59086927bf0c854fd40b29cd

glib-2.26 - http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/glibc-2.26&id=6e91059d3f6ca0f4468ff59a2c7449be301ee100

Refer to

https://gcc.gnu.org/gcc-7/porting_to.html

For porting issues with gcc7

Cheers
-Khem

