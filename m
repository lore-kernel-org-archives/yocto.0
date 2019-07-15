Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB9DE00D32; Sun, 14 Jul 2019 23:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0FE2E00B9C
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1563172769;
	bh=xoSqPxXTolwV5YprCrbkKD5faefBPJ6LVUkiuot0XXg=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=bssZhaLxJCNjVL8I7hXY3Xo5PltK1bXs8Fx4fESdIdBjTDLePMn6AQ5MCuNA92FWU
	uVDIHVtAuCgpaF2LrHGH9KhZ2URp/MedfdwgIPFYH3YPlCpjowzswVeVNn+tKp1vCK
	BERiIqGect1V4k8VVe9NFmj3RVIKv/DEyzO8WVCA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx104
	[212.227.17.168]) with ESMTPSA (Nemesis) id 1MtOGU-1ib9O308dy-00uuoi;
	Mon, 15 Jul 2019 08:39:29 +0200
To: JH <jupiter.hce@gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<bc2d0dac-da76-9e29-cbb0-d597e264ad53@gmx.de>
	<9228f0cd-69ce-e99f-9b1c-271a39e74a45@gmx.de>
	<CAA=hcWQ1pAwNi=aSmLjiig+Rti_=rjr14W6G-ZE7W_NTdENbgA@mail.gmail.com>
	<CAA=hcWTRAtkC_5SmHArwtQqDnc_tG4Q9JD6O4rokd_dS_A+ofA@mail.gmail.com>
	<6c83cc85-0817-64f8-5472-51e4b484be65@gmx.de>
	<CAA=hcWQtiyFd4ezM+bTKRFN-vzF8kL0DPiqFRbAi_4MeHJnRLQ@mail.gmail.com>
	<de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
	<CAA=hcWQqqJjEqCqnJr9K7LhqkwQhzKO4f8t0NwCLfPHi30S49w@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <aa724ced-943c-56ac-56a5-8faee2534744@gmx.de>
Date: Mon, 15 Jul 2019 08:39:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQqqJjEqCqnJr9K7LhqkwQhzKO4f8t0NwCLfPHi30S49w@mail.gmail.com>
X-Provags-ID: V03:K1:CuB/vE80PtCvF5a3IHCY69qs0xG2/4eXAPNNZ5yESaj2H3UM8Z2
	Lb22Ub+/+QeJwqwbgtWXAjxPFhfeF36IsTmg2d21CsrLXmH8/6/wSVFnju8aSa+mN8fuJwZ
	Kj5qZAmTTER5uVi8iAT/RjHK95i8cY4eyZP3XjMhRd9w99t3pq6s7dEi2EAPVFPFGwVTvUd
	7TruQvgmq3miv7BQxVwug==
X-UI-Out-Filterresults: notjunk:1;V03:K0:eMs0xhHXTy4=:+d6PpK9saFA7XZVDG2TfUy
	z4SfJk4OfC24WSBcWLs5/E74a+Ns1ML3BBAjYOCO/nbQwWZ+IcXrnRu46p8PdnQ9ip8f7mJZX
	Lm7mIJsxve9o+eseoZO6Ir/OaBcjGxjdJoS2Nk+CEYosr64jWDlW4EYwzGjnT1/B8SaTnoxKL
	Lofw2eHjM4syeIKMverXivIu5cVgFITN8Gg1OfjkTo4ApeprOqJKVfp9Bh7WHIbUEiiElDnvz
	3gy4IdXMMGojSiVmoNHPXsJDr35qP5nFEdrGqB9OnX2Q5Kof7QgnJbzfXHnG6q1xszB4H7Eo0
	46goM4P+4SRhxfovOKoicdvfxwonhBINYTGMoFzPa1lT1rAVjxu+9h3O+druBe+27CcWepjZC
	TfAUoCeN1HEgxkMvsEIet1QrCYC0VgGEgIe776Ti7QXADvG4IaMp2bqI0UIVnurnrOQ8QsqRM
	phXIGiel19QxrrK7H42eqS1mBIz65usSZw0wAYEd1Rdd94Fzr08KtEK19IdCvxYwbqAS453m0
	mg+c6LQbK/IG7l1yWf/QfW0K5tBHYFAPVSoN8lud79uPpBkLEQw2PNiYInVf7eiycNskqIO6m
	d6iYUpHujqoEY8hMOkxLgNxhWulVWQidqWrsRbnEsLVtTP/riUttqWlUgUgktjdmvXQfUj3kZ
	wumthIp339ySTvVR3lYzYbKwbjPPCFzB46nV5GHE13ltabmdYHp218wZMBA5l301YNEygyDED
	iMWMMmQEcT92Ml5N1uSijh2f1UdswP3YKEEYF1uhgrdcJtld7s9uEhbsqpm7nfR/g0RAF9L4F
	MDjvje1N8xIxlzW9+8mqk+bkstCEUbp4ES5KkSiXvnW3+pZUdbKody/X8G7NmgiH8pOJGBOd8
	bH90W5JE3NobioihA3e7xIhbcKH8vaC51x4hEZHisMETjUs786Nu7Sz45uZfry7lXJGowpocp
	jtn0jYm25buclFQclmR+77adMmTxE5RqfSJ7licq8BWiyMH8PWiWBJsOGyUCst2DixgXhGW+y
	P4sdojD4rbg6UGXZd1V4NaB7xLEDjK5qnQHz3bMbgp2KvyE1VKn1405+vgKjscV/1vf09lHyi
	pJBs2nqsUjw9nUHuzo255ThpEeq/7dWqown
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Mon, 15 Jul 2019 06:39:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hey,

On 13.07.19 13:53, JH wrote:
> Hi Moritz,
>
> Thanks for your explanation, I know the copy from your script is for
> an example, Did you get the zImage-initramfs? I'll double check to
> follow your and Zoran documents.
Yes I have a working initramfs now. As I said the main problem for me
was that I did not understand that the yocto build system puts the
unbundled kernel into the rootfs. However I use x86 architecture.
For you there seems to be a problem because of the architecture of your
target. You will have to track the yocto recipes for initramfs back to
understand why there is this limitation to architecture (and eventually
adapt it). A shortcut could be to look at what the raspberry pi people
did as I guess someone should have solved this problem. (Since raspberry
pi is also ARM)
>
> Thank you.
>
> - jupiter

Good luck
Moritz


