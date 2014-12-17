Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 140CDE0072A; Wed, 17 Dec 2014 10:02:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBAFE002F9
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 10:02:25 -0800 (PST)
Received: by mail-lb0-f181.google.com with SMTP id l4so13446660lbv.12
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 10:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=pDySNZuVPreDwQDFfLaaHzKXiyz0fZIcSF2+S7+etcU=;
	b=C3xI/wofERt5ndF//3bWUoa/Sp4lXjuTCXouD6oW2DeByr1k1lzrJL8hO3OmtuqBbx
	rWxBGGCnf+JSD3uWzTyazgOOCPcIZny9rH+cX9GegxZW4lg1+JHK68+mPLnIz6Rf5aeD
	sSJschf1Tzx1SD0n1DxZT8pocaTZNOC1CG+KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=pDySNZuVPreDwQDFfLaaHzKXiyz0fZIcSF2+S7+etcU=;
	b=RBEe3tnd9WjY+fmFcIgdYOPK82NLAePbsbRYizt8OXqBs/iJAVmE29/MHpsvAesbPS
	BTCf6BYLa0JIsjk/nnIcODiF1hoWNn+rAweDLZKtlRWTK19+3aL8pi68CASihAu7JEH8
	5sHFz56pmZNRyElSuHIoyhMyJ5UdT0fa0h3eLt8uV5vwIRmQdo6HcWFVGJmMYy2OFz1C
	JIHtMbmbkKu7rvT+Py9XrNV8jG+bWgM77UH95dTJ3LDmv9zb05jEic3QEkuO7YiCPYDz
	rZBLmAizm1KHMer9dtPQ11tU2ynI/L8dB7oo5LSUuD0CNBsWjiim4waMnW8IcFU+yYZ9
	OwqQ==
X-Gm-Message-State: ALoCoQnHJoew2n1pK6rrOi2bEkK89XrvKRiJYYL4hB3fPOE1GLr1speFBw/fGA97SVQyOxjWeCiv
MIME-Version: 1.0
X-Received: by 10.112.132.2 with SMTP id oq2mr42549325lbb.11.1418839344869;
	Wed, 17 Dec 2014 10:02:24 -0800 (PST)
Received: by 10.112.150.2 with HTTP; Wed, 17 Dec 2014 10:02:24 -0800 (PST)
X-Originating-IP: [72.74.84.52]
Date: Wed, 17 Dec 2014 13:02:24 -0500
Message-ID: <CAPoQQ-3eq6N6j2R=0b6q0k0DXQqh_vN7EZ6jD_4mxPXU61eNgA@mail.gmail.com>
From: Cody P Schafer <dev@codyps.com>
To: bruce.ashfield@windriver.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: bump linux-yocto-dev to 3.18?
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
X-List-Received-Date: Wed, 17 Dec 2014 18:02:29 -0000
Content-Type: text/plain; charset=UTF-8

It looks like http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-dev/
is still sitting at 3.17.6, are their plans to merge the 3.18 changes?

Or does linux-yocto-dev wait on stable kernel releases?
Or is this blocked on something else I'm unaware of?

--
Cody

