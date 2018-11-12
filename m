Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B320E0090E; Mon, 12 Nov 2018 00:21:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F207E007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 00:21:39 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id j26-v6so8235690wre.1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 00:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7ZYk27bykSxUx7R6wu49cBxaR8dNBGUjToeCmuKAoiU=;
	b=c79QG+KMLznRo638czt/LiQVyJtk/MQn9rObOhoOiJijf33EVXdeqQ60MGmpViAImv
	KEt+bbtbnVf36bJjA+AGDy8TRiTyqhQE/EsPnTDda8ufa6rJYXF0+G+ge7QtjBjvTyR0
	iL7e3tAdr65OXRJsJYNbKmzml56ONcWgpEw5z5vpj22zSGEUFkQEQb13Brtc2PRyh/5X
	fQfBNrIOMDyJX31NopKTWEWO63qi71KpbVBUhLMc5ZkVdsf+40SJCJK3FheRh7QImpyG
	0Qs9+XstZBTDRYrgykIN9j1iBTpWAqWUqTGMMrJU5oI8mmOkqLFgUSOIbZe96J6E4l8S
	95/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7ZYk27bykSxUx7R6wu49cBxaR8dNBGUjToeCmuKAoiU=;
	b=SFskUxsxP6l/cBITIgqM2Qubnzyp+DdtUSe/Ma7kHWSPBytJx2iVPesiujvdljL12c
	RjWM5oHdTHBLFJenUcfyhXnYgiKo1emZiFgw+lTaZy105Mh5eYLmkTtb7ekX3PXUp/hu
	cY8uHwDM4c81w+TokrCFaH7JFOXzGg5C5z/BYCcwVuSw72aheleRG6wdXiJ4rdF6n4Ne
	ndl24lUB+Szu5Mmisyej5BlKTQ2Wd+XJJzYgY7I8F3OWIbB/b9oyAlLDIlQ4rtrcCt8k
	Jmz05QkOhAn4P5fx7hKLMXTMDFiO2nDpq4RSaCTNK/YboUoGOx2tPQohUOz9g1VE9i9Y
	LSrA==
X-Gm-Message-State: AGRZ1gIiYi5QkesP7j245a8L1iCRTWT9VK4uHuAJtVGJeFfXMWZnJicY
	tl4lI7tdpieqXj7wnfQ/if1IIfPEx37bwguJgvKIFt2sv3I=
X-Google-Smtp-Source: AJdET5cz2IEZpBrxw5eK5fC5ZAws/U+jvbAulvUtB9d4wGqeAhFwHPHk0ychBg9x31Eactn11MArxY74y1TEAqtOLrs=
X-Received: by 2002:adf:9563:: with SMTP id 90-v6mr40473wrs.60.1542010898226; 
	Mon, 12 Nov 2018 00:21:38 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 12 Nov 2018 09:21:27 +0100
Message-ID: <CAAfyv34hdgkOrO0JB0ADVDYsZfBoNULDu9k9w7RLjg4LcZTdYw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: using pip3-native to install python requirements
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
X-List-Received-Date: Mon, 12 Nov 2018 08:21:41 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm having recipe for custom python3 application whcih need to install
~20 python dependencies. I've create requirements.txt and using pip on
PC I can install necessary python packages. When try to use
pip3-native (as DEPENDS) and call pip3 I get some errors:

pkg_resources.VersionConflict: (pip 8.1.1
(/usr/lib/python3/dist-packages), Requirement.parse('pip==9.0.1'))

I would like to ask it pip3 can be used (didn't find any other
occurrence in poky) or should I add python dependencies as RDEPENDS ?
Thanks.

BR,

marek


--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

