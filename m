Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA910E00D16; Wed,  2 Oct 2019 14:44:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB269E00C9B
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 14:44:46 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id 8lkk2100K2wfazh01lkkFA; Wed, 02 Oct 2019 23:44:44 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <57431d78-2438-81da-7972-e93cc91c44c4@faresoftware.it>
Date: Wed, 2 Oct 2019 23:44:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570052684; bh=mAjdD8rEvLXv9yKanpXPSRKqubZrQ9JBFtgDiF4EFrI=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=D3JSOZTrlrInS684ZzjHFD7mYXWFkB30zdO040inwSI1Ohg+RfT3hswQkTDkEOVxX
	iHUitwcdOuX61d/ItImuJ3x0/bZp4mr8WwMlZSTKzwzXVHvyX4AxJBrUgNCNCjNNcP
	NwmKkOUyBfAl6dRZXT8wtwpVENSk/896Spe74hDZgnpDbpMYZjQXcSpSZ8JBsQhhcn
	MOtBPbjXs/u++yIvvHHhuLLx1e3O573mkGgFwklfq8Si43UnBPt0/3tLh4bEfW5GYw
	fdB8q4NFILkXiM1LqUw041lX1IPrkFAhtb0d8IKp319kjh6vCSQjevGztpwiOV2Fhc
	0ndjNWXljLxXA==
Subject: python3 pygame under Pyro
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
X-List-Received-Date: Wed, 02 Oct 2019 21:44:56 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm trying to build python3-pygame for and imx6dl board in Pyro.

Pygame needs SDL, but I don't know how to tell to bitbake for compile 
sdl before pygame.


I put libsdl-native into DEPENDS but doesn't work.


bitbake try to run sdl-config but it cannot find the file.


Any idea?


Best regards,

   MZ



