Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39626E00D4C; Thu, 30 May 2019 02:23:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A70BDE009A0
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 02:23:26 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id f204so3486629wme.0
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 02:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=3L91z2mrS2/Gf8sxY+yoeDzb3fbH49bY9zcEgO0OnSo=;
	b=aQabSLRJ64+EHLD65Kem8OD9WHBfDI18EnHpjr1F2C/BBP4p1Fp/Vrg8J0fJ2ST9CM
	G1DPHLD/LY76kNQVDo0XpSUcMqS8UfvPHkFbqhB/00m4nBprgTvpiSa1NODM/N4+m1Pu
	Pw+jiMgr4VeWdvUgWNqi4btQdzUd/TEwWt4QI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=3L91z2mrS2/Gf8sxY+yoeDzb3fbH49bY9zcEgO0OnSo=;
	b=RaFgTdQpxeSZRuWzAvn997mcDU+J4OqlTLGB8yvgMLUh9BWhSIgnRi/wYYpc06kJUP
	rL1mKO/hsAY7liLxJWikHbYVDhDY0p9rLMWWa+2150x3THYdACeNEXeNGXvs9ocB6Ose
	w9ZxYH4Wc3xns4knxfoc1pfsJYorseadLoUu4OmvZk7ukhUOYWK/A0Tt3Aq0/Pbwqj/7
	HkLKDcB6UtKAaBWbq79ROKQFK/AIrD9lX5BM8FKQFUSztWqRKBpw7FZ1Ly2+AnYPXvjA
	nBMRdz5OrHWjEvhTVUDMluamtzWKlwt9d4UrGsaRD3fyzuShXrgbvZU5pUoQUI4yyiJ4
	YhMA==
X-Gm-Message-State: APjAAAW8vryPk7hMIVz1tg2WSiL0vXtDyNGSdmfv29FaPpYcWfoi1knj
	lVynzpE5VTh+EkHgYIycwem/ntx20rE=
X-Google-Smtp-Source: APXvYqyzp4WiXtgIAsSaqEjWgt7ZVgJw0S8kguuZGI3s8sRwHd/q09TVcTOyT1kzaLgjdmXMSrrFQQ==
X-Received: by 2002:a7b:c344:: with SMTP id l4mr1552906wmj.59.1559208205834;
	Thu, 30 May 2019 02:23:25 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 17sm1963338wmi.25.2019.05.30.02.23.24
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 30 May 2019 02:23:25 -0700 (PDT)
Message-ID: <63fb83b7af212c18dcd59d065a6be691541dbcb3.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Wolfgang Tolkien <w@tolkien.email>
Date: Thu, 30 May 2019 10:23:23 +0100
In-Reply-To: <4Mklk4xKXpgIf9dueA8b9iCg-NG3yLTrfkOh1lp-DFykEH_6iWsrYXfeueNQuxFvp8CSqYBjkCo4NEe7NV1eC7hAR24odoLZGA46at_1vrc=@tolkien.email>
References: <7As9_zcZlHPteOw6wNtYJxOjL2RahJDKXMGg5yLB6d-95M4XrIDRKROQzsg53io7ErueGn2nhWJSfl8xwuxT8m4-jg2AT6P0GWQ0xAmaynM=@tolkien.email>
	<49b4f2b21ece083360e23e612a59bec2fadeb374.camel@linuxfoundation.org>
	<4Mklk4xKXpgIf9dueA8b9iCg-NG3yLTrfkOh1lp-DFykEH_6iWsrYXfeueNQuxFvp8CSqYBjkCo4NEe7NV1eC7hAR24odoLZGA46at_1vrc=@tolkien.email>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.7: SSTATEPOSTUNPACKFUNCS_remove not working
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
X-List-Received-Date: Thu, 30 May 2019 09:23:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-05-29 at 22:37 +0000, Wolfgang Tolkien wrote:
> Thanks,
> 
> not sure I follow: 'SSTATEPOSTUNPACKFUNCS_remove' is not valid any
> more and previously only worked because there was a bug?

Previously the value of the expression wasn't accounted for in the
hashes which represent the state of the tasks.

The remove values need to be accounted for so we fixed that.

The reason you now see the hash mismatch is because its correctly
accounting for "remove" expressions.

> Also, what about running bitbake-dumpsig on the task sigdata and
> finding a line containing
> 
> "_remove of" (and nothing else)

Its showing its accounting for the remove.

Its empty due to the code in uninative.bbclass which sets a
vardepvalueexclude for SSTATEPOSTUNPACKFUNCS.

You're seeing the hash change because uninative is a little odd due to
the point in parsing where it gets added. Its not meant to change the
hash but the way you're altering things means it now does.

What may work is doing something like:

python uninative_changeinterp () {
    return
}

Cheers,

Richard


