Return-Path: <enrico.scholz@sigma-chemnitz.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88587E00C91; Thu, 13 Dec 2018 05:59:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [193.158.56.148 listed in list.dnswl.org]
Received: from mail.cvg.de (mail.cvg.de [193.158.56.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1174EE00C81
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 05:59:30 -0800 (PST)
Received: from mail-mta-0.intern.sigma-chemnitz.de
	(mail-mta-0.intern.sigma-chemnitz.de [192.168.12.76])
	by mailout-1.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wBDDxSWd019790
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 14:59:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2012061000; t=1544709569;
	bh=fMemStMWc1VpRKQnu+bZ0f3UWys9kNjG+fDcGkrKNJE=; l=1107;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=ZujEMyPSFVLjyhkwZO9tHXu+EMwFjRY5TNu7CmmvKveCkIpdpWiQBIRYJJDMbAqp3
	2Po0OM6iEgdLE2VqDBPwIIlphzx5yPrvFTwTvDATS0GptKGypoqI9m47xFOETwkVLe
	FVI3+EJGSsfRXA0rgetKVGOveQP29w8EmgXT695E=
Received: from reddoxx.intern.sigma-chemnitz.de
	(reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
	by mail-mta-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wBDDxHY9007567
	for <yocto@yoctoproject.org> from enrico.scholz@sigma-chemnitz.de;
	Thu, 13 Dec 2018 14:59:18 +0100
Received: from mail-msa-0.intern.sigma-chemnitz.de ( [192.168.12.77]) by
	reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 81CD1976FF6;
	Thu, 13 Dec 2018 14:59:57 +0100
Received: from ensc-virt.intern.sigma-chemnitz.de
	(ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wBDDxG9g007564
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NO); Thu, 13 Dec 2018 14:59:16 +0100
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
	4.91) (envelope-from <ensc@sigma-chemnitz.de>)
	id 1gXRWF-00EVv4-Sb; Thu, 13 Dec 2018 14:59:16 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Alan Martinovic <alan.martinovic@senic.com>
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
Date: Thu, 13 Dec 2018 14:59:15 +0100
In-Reply-To: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
	(Alan Martinovic's message of "Tue, 11 Dec 2018 12:55:05 +0100")
Message-ID: <lypnu58r4c.fsf@ensc-virt.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Sender: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Thu, 13 Dec 2018 13:59:32 -0000
Content-Type: text/plain

Alan Martinovic <alan.martinovic@senic.com> writes:

> am looking for opinions on how to deal with recipes that depend on file content
> that can't be versioned.

For ssh public keys we use something like

  https://github.com/sigma-embedded/meta-de.sigma-chemnitz/blob/thud/classes/elito-image.bbclass#L36-L44

e.g. we take it from ${HOME}/.config/oe (which is a little bit tricky to
expand).


And/or incliude local/side configuration by

  https://gitlab.com/ensc-groups/bpi-router/BSP/blob/thud-next/build/conf/local.conf#L33-36

which in turn includes something from ~/.config/oe/

  https://gitlab.com/ensc-groups/bpi-router/BSP/blob/thud-next/build/conf/local_bpi-router.bigo.ensc.de.conf#L9


> i.e.  The logging service on the embedded device needs to have a
> certain private key

Note that including private keys in the image usually weakens security
because the key can be extracted more or less trivially.



Enrico
-- 
SIGMA Chemnitz GmbH       Registergericht:   Amtsgericht Chemnitz HRB 1750
Am Erlenwald 13           Geschaeftsfuehrer: Grit Freitag, Frank Pyritz
09128 Chemnitz

