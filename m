Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4630FE00C27; Mon,  5 Aug 2019 01:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB086E00B8E
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2019 01:47:16 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id lLnF2000Q2wfazh01LnF0K; Mon, 05 Aug 2019 10:47:15 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <efee19a9-0d34-a551-60da-022d5e6469bf@faresoftware.it>
Date: Mon, 5 Aug 2019 10:47:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1564994835; bh=zC4ljoMdDWLO4RC3uEE37AkbfZdUYJzDNnXQr+g4WP0=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=DQwiAGqPoXCi7MeGctmlTEAbqwHwtC8LafyYANHoZBkKlBbOg4Ngf9qtF5FpI5JvX
	rpm0V8Bs2o00ele2/q47Cj0CZyKVd7V+KoDHD6Ktp+wy3FyLmsxl2KqdgQDb1ggEwZ
	uIrAzHtE71jGhTbHQwUqyUAw03JsqageLNfWHDjkQnmgx2vm+8my4t12J66iv3s07l
	KoiaFnqd5/Fe5PiDwf7aSGZ43b8mK1nGhbrSgib8yo5rypHLfjlGILJHKGNIzKDRwn
	MRltsXBzfMimPtHYFhSkfThPjkcvCe91AjRjsU8yQoocmIjHtjZmCP3d0XJCPxu2U/
	t/VnJqPKjIXAA==
Subject: Yocto Pyro, bitbake, git pull for my recipe (Why not?)
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
X-List-Received-Date: Mon, 05 Aug 2019 08:47:18 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

It seems that bitbake doesn't check the remote git repository of my 
application (terminal is the name of the recipe) every time I do


bitbake  terminal


The recipe is this

# ------------ the recipe ---------

SRCREV="${AUTOREV}"

SRC_URI = " \

     git://git@server/terminal.git;protocol=ssh;branch=master \

"


S := "${WORKDIR}/git"

inherit qmake5

# ------------ the end of recipe ---------


Any idea to force git pull?


Best regards,

   MZ


