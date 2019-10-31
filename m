Return-Path: <prvs=12077f25f8=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D99CE00DAF; Thu, 31 Oct 2019 15:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [81.169.146.220 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 183 seconds by postgrey-1.32 at yocto-www;
	Thu, 31 Oct 2019 15:07:35 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD5ECE00ADD
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 15:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572559654;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=LT2jJTX1muc10YDtFEQ0CU76k4UL0kaZuUwqupMk3kg=;
	b=MYkqp1IQZMzee/5dwUcFMpreXwjbphxr0RkowxbKrbmGwTkkW1loxYNP4fPbplkoaO
	n0lyD6YatKG7PH0gVQX4XR3/D80dCGqe5wAKmsPixQ5DELAhLHPw2C9icJDc0TNrwKlE
	FF5d47krq+sFYzYbP6u7ajxcYvnPWmUuh1qdWX+Otaz0L3ufVkPKjfJczuIGds9jdHR6
	6u3554WuFBaXYsvXTG+SDpIxgTfWSsiJf+FnGWxYJnJie9NP7Uk4jbnTsnPD9/wEssmH
	rMyjjiyWNgedmrZhpKgw39LVQ6YQcCUX/h2z0d20pgkcNXmUyHz4lrJt6UPfCSG2EFau
	ohgg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 44.29.0 AUTH)
	with ESMTPSA id 6029d5v9VM4U7vb
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Thu, 31 Oct 2019 23:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1572559469; x=1573164269;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To; bh=LT
	2jJTX1muc10YDtFEQ0CU76k4UL0kaZuUwqupMk3kg=; b=xKr7LOCprFcGUZbVvb
	tNJrVYLkfuhVM19BoZnDjNa/ko4KTJLxfRijWjKsuO20oIJuCWMBd+D8vLmvGmD9
	f0yOTgfFiL7xN9OlYj0h2uCLoJW0CIKGMsnIid4Eq9epV66q5dDS+5ojVefQoQX5
	a3OMpghJNwYj0i5R207rPB9R0=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.0) with ESMTPSA id
	md50000213661.msg; Thu, 31 Oct 2019 23:04:29 +0100
X-MDRemoteIP: 77.158.50.100
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Thu, 31 Oct 2019 23:04:29 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=12077f25f8=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Thu, 31 Oct 2019 23:04:15 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: "Bishop ." <m.bishop2@gmail.com>
Message-ID: <20191031220415.3ulpjsb5lja5tuzn@jholzmayr.localdomain>
References: <CAMdxf7veSHDxNm6=azcAUf8S83EU5ZeCrfgECzKrPzXhFsrLXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdxf7veSHDxNm6=azcAUf8S83EU5ZeCrfgECzKrPzXhFsrLXg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: GCC version 8 upgrade
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
X-List-Received-Date: Thu, 31 Oct 2019 22:07:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Oct 31, 2019 at 11:49:38AM -0400, Bishop . wrote:
> How silly would it be to try and get GCC sdk v8 complied and installed for
> Jethro?

Lets call it "quite demanding" instead of "outright silly", ok?

Greetz

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


