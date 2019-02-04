Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ED8AE00A0C; Mon,  4 Feb 2019 07:46:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 337F1E0084E
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 07:46:00 -0800 (PST)
Received: from [10.0.3.91] ([78.6.3.122]) by smtpcmd11.ad.aruba.it with bizsmtp
	id Yflz1z00b2dwwGE01flzEG; Mon, 04 Feb 2019 16:45:59 +0100
To: yocto@yoctoproject.org
References: <c0b624bd-1c1a-3628-94e8-8e880263d289@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8129df46-ff61-216d-02b5-56de45729697@faresoftware.it>
Date: Mon, 4 Feb 2019 16:45:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <c0b624bd-1c1a-3628-94e8-8e880263d289@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1549295159; bh=tM0doKXy5CV+lXW7lLibh+rMYCW7CHSowix5h3XIvDw=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=LPVuOOaDaOsBvWWkP2E/kNlAxuf22VpVe2MZuPd+Jxnx5sVQtJUsl6Pww0L1Lk9K8
	Ir3QRVNI+DM8riRtffes+kDw2GzjiLWpgG8p0JWNGtVyZFw1GK8xVxZD1yF/5uR/Hf
	FOUZY2e3L9mtsFPrF6HmL1E8IMLKXPJLVh0Mr33T1BFTNGykJaNyDi0nW+fr02l7SK
	0WYYA7eGzYtl6zxj7dxbYmNTnEEk3DyDCcfwWwY7br4sJ0AWN+x2zSVFlOUCmo4TzB
	G0RkklFIgiiTKFVUcap7MKunzqodGsg5P7tcOet663Q5nYv+Dptz1klEu2kancMDbH
	4tFnVeUixgbTg==
Subject: Re: GPG key used to authenticate DEB packages
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
X-List-Received-Date: Mon, 04 Feb 2019 15:46:02 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Sorry.

Relase.gpg miss in Yocto deploy/deb folders.

I need to build Release.gpg on my own


MZ

Il 04/02/19 16:35, Mauro Ziliani ha scritto:
> Hi all.
>
> My yocto image integrates package-management for package_deb.
>
> I made my own debian repository and all works fine.
>
> I miss only where Yocto save the gpg key  used to sign Release.gpg files.
>
>
> So when I try apt-get update/upgrade onto my production system, apt-get
> tell me that all packages are not recognized as authenticate.
>
>
> Where is the gpg key to copy in production system?
>
>
> Best regards,
>
>   MZ
>

