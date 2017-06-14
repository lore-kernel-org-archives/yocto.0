Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D31FDE00B5E; Wed, 14 Jun 2017 01:34:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906DAE00B18
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 01:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497429285; bh=JO4D287KtH2SlM5dM481ISfgm7hq9p+YazM9
	oKriYXQ=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=S
	w/43ZIZfvU8krDvZcGgFVcAiSoYh45cg5Ju5uky0u+ukY3nErYzzb4mPR8l3SqUoJwd
	UscTqV71gNXSi7QPG9aWj8dvDzENkVkitaYTDaoph9wIwky9MqY/nPWv/eU/Sow/rTy
	G0N40oXFx2uztwsXlTSGPLIWM02ZFXt4LhbcAawe/dg5PBNSb86qcLDJRAJcmYrPw8B
	5+Y1y94V/d+oNzltgPtyqDGGSl+oqURr79nlp3Sx9nOzetzGXbSnmWKt3Ad9vTbwEM3
	ezCamuF52inAtZ0QobT6CR2ixFOcBJjGWUe7o0XwQoNbeMiH4aNQMGrlBqBGeAYKRkD
	E9eyXg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=KdmwmhEjeDyjUsKOR0mhjC1VuZ06fYBXSCNj36fvM6aa5Hw+hxhWXXjGnwV6zv5YAXyUdmU13hoL89KmYuq6k1ei91xoBYgVB4Vzyg7qWuefAvdOpouC0XIza683nkHTnKIhEPwFEmBfDZzbTTi8wEalvsoi8W+ktnN2toiYhvcAYJC0Dace3DI8ch8wAuNfwucxVhSeJlJ1SeaOF3CZQvHpGFCI3myJRcUfGZmqWD1deWd7TUWfyp0fvqMQIQTxjYxNcXik3Vtt/YNK9n9fKYPYqD+M15T14NyzWo/sGLwXMP1dhyrFXJ6mwqrdbV65NVdesCrdXF3mYa3g5moStg==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dL3lB-000Bz6-9Z; Wed, 14 Jun 2017 04:34:41 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Maxin B. John'" <maxin.john@intel.com>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
Date: Wed, 14 Jun 2017 01:34:40 -0700
Message-ID: <507163139FFF4A1B9F8B22CDB8BDD953@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLk53ZFK44aJ6RZT0KITUfNfSdheAAARoFw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688714cdf520a7aa77286e97183476e0a99350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Cc: yocto@yoctoproject.org
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 08:34:48 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Maxin B. John [mailto:maxin.john@intel.com] 
> 
> Had a similar experience with respect to the availability of 
> static libraries in the SDK.
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5347
> 
> One way to fix this will be to include required static 
> libraries in the image
> before building SDK - eg: for glibc static development libraries:
> 
> IMAGE_INSTALL_append = " glibc-staticdev"

Does that include the .a files in the image or the SDK or both?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


