Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A08EE00DA4; Sat,  8 Jun 2019 06:06:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5529E00B65
	for <yocto@yoctoproject.org>; Sat,  8 Jun 2019 06:06:02 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd12.ad.aruba.it with bizsmtp
	id ND602001G2wfazh01D60oC; Sat, 08 Jun 2019 15:06:01 +0200
To: Yocto-mailing-list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <9e07389d-c8e5-057b-2232-707adf39c971@faresoftware.it>
Date: Sat, 8 Jun 2019 15:06:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1559999161; bh=w1Q2hzDaGP+ka8JXxKX9E5PeLXXnbxJ+cV7zoV5AjtY=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=A2wc22pCr9S/mlsB6HX4eJCjh9pjbRVE/oSrE3Omyg3hlzKSnbLQyS+SYGMirn+4b
	8r2cVFzttb0xxZd374Ubu2YG05POZOrZ1Lku5wDFDGHFNiuJyKRyJvQpiDnso0dXtN
	h+qkxdZ9fub1F/vZzdYIWwPTJkC82XgDiKfiOWtizpC0m+L6CTgfWqxMhopyBUvtqm
	Nb1CxpjCI5+oSC/Bs4dB41UU47zx8y/1pF33D7zTEL4CeNqo7Nzz1vUo0uIR9ytAUh
	LdyK+68xV5G4m20gVnQ9nwkTkFJY/olZ56JtY7HESXQszKCaGXoZSDCb8NTNlVzLDL
	bsHRZuWaZMcrw==
Subject: qmake project and installed-vs-shipped QA
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
X-List-Received-Date: Sat, 08 Jun 2019 13:06:05 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I built a project with qmake5

In my recipe I inherit qmake5

My application is well installed with "make install" (all file are 
installed correctly).


But bitbake tells me the this files are not shipped, but the application 
exectuable yes.

The executable is installed by "make install" as other files.

The solution is add in FILE_${PN} the  files not shipped.


But there is a way to ship files correctly installed without define 
FILES_${PN} inside the recipe?


Thanks all

MZ


