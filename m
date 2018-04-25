Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADDC6E00B30; Wed, 25 Apr 2018 06:05:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A518FE00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 06:05:35 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id o20-v6so19864879itc.1
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 06:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=X760Edm1nCpsqtEuRxVte+hthYSLArXg/PhBLMmvx38=;
	b=YNgCjBBlVgBEXM5nxEphjqvNsN5yfL0Sit4nTkR4x8enK2fHii+TFlL2VbYEu5GKBu
	zbzymRsCYMVNAibsDzT6vLYyZBy7k4ZIMumHZG8kcE4/T9nTE58el7ONB4FCfeJcqQ2d
	Pj/Lq8gUi1rg6OfADg/1DEKpKCDQ64uE+W1jZLoGigZX5at3wLiomGgpF26qnuusQspv
	2qLKrAt6H2xQAwm9kEMukGTHwdpt8WYm0RD0HQDHGBq/NTqSYFDp74Z4t86cNxWM3syz
	/SflbzCVD9RrXt8qIXT0dB1faDStPb7m/dYzlQgnqFjxqseWicfiwGujzYpKpCw5a1CC
	Q4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=X760Edm1nCpsqtEuRxVte+hthYSLArXg/PhBLMmvx38=;
	b=BsIQqHp5K5zghhPrM1y2rlhCNUmAFbrZ1LKh9iCG9twFj9R7tyf1EZGiCPE9+zOBST
	98t2xo4xPJFRCiaDKbqEcrPnRgrkoH0WEiwSwAoMmEkVpUEyp2HsM/m8yKKKSARtAnX1
	bHJ59C9E68XhGXY9mdybha4+dN5me+CEOBjQxSo8A9to+mkWWlSJvjg6EUklYrI7gECb
	GzHsMv3Rirhutt15lcXhpBicnvoc5QmaoNa2wY5mOquVlwvKnZWuJVQg0nXaPk7Yx1Z5
	AZCo5d2bWtvyyNl1Gzbp0btR1qeCKx8zSChJnWo/+Ecw/tm9HFoNgOwzHv6nsl7/yPf5
	whGQ==
X-Gm-Message-State: ALQs6tCRU4nuMTp2RHXjflmNKR0dNMcAmPKGF+ubYrfACHR+WLpa/o6Z
	fdOAYnGWtSQuN5sGkP/Hu7/zJvjk
X-Google-Smtp-Source: AIpwx4+f+7GCCMqyz3heQUg+w10J+btdRwlPMhdWmf8xeX4Y8ke76FF/8jTXbfzNIjkgmKuNoFdhfg==
X-Received: by 2002:a24:d011:: with SMTP id
	m17-v6mr22613277itg.147.1524661534709; 
	Wed, 25 Apr 2018 06:05:34 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	f124-v6sm7938450ioa.8.2018.04.25.06.05.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 25 Apr 2018 06:05:34 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1524661533.31562.2.camel@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, OE-core
	<openembedded-core@lists.openembedded.org>, Yocto-mailing-list
	<yocto@yoctoproject.org>
Date: Wed, 25 Apr 2018 08:05:33 -0500
In-Reply-To: <CAJTo0LbOsiLq=0Zz=4fPE-A7Q7Ez_XVgqm8CBkSeAu6Bz=myLg@mail.gmail.com>
References: <CAJTo0LbOsiLq=0Zz=4fPE-A7Q7Ez_XVgqm8CBkSeAu6Bz=myLg@mail.gmail.com>
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Mime-Version: 1.0
Subject: Re: [OE-core] GCC 8 hosts
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
X-List-Received-Date: Wed, 25 Apr 2018 13:05:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-04-25 at 13:11 +0100, Burton, Ross wrote:
> Hi,
> 
> Just thought I'd say that GCC 8 is going to start appearing in the
> wild, I believe the first distro to ship with it will be Fedora 28.
> As usual there are changes in behaviour so there are several
> problems.
> So far I've identified the following issues:
> 
> * Python 2 crashes on startup
> * Kernel tools fail to build
> * grub fails to build
> * ovmf fails to build
> 
> I've patches locally for all but the ovmf failure (which is a pain
> because the source uses CRLF) so if anyone switches to a GCC 8 host
> before they're merged and wants to help, you know where to find me.

Do you have a branch with the patches somewhere so we can try them out?

> 
> Ross

