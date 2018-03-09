Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37E53E010A6; Thu,  8 Mar 2018 23:56:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B769E00E6B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 23:56:34 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id e194so2224762wmd.3
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 23:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=otuJ4Evd9oMZ/HcZ5LsrtDqKJhAUS7f08fAlrrYt3e8=;
	b=rWdAjXjG0pBVf8NS8jKNlrtVunm2qsnojWrwjsoGIvbyn90BdS/MyJ0+Ssn8E9/njE
	LVwqDzcEcRFd7wV7uiHLycD/Ehfku33dUk+Oip/YsLDbOEcxQGUulncO0XRzVkwDUv0C
	hpvChLbV+iJADwgbiuqLt9Xm85f1feOjnb8fNLFl9AuHwruggh4NgVnqLUPD+UkOL2nj
	cVKNajzIqi2OIWbt4tgHi1V/LVsDbr3TAp/MJg4opkBdDfYExEW2/hJ8HqcxJOyqTBfX
	QLkSGzsbMvgJ2nflu59uu4wBDYo2fEhOHeRRWgwtMC1s+yPSQRIoCAGSkM0UafCKpQ2x
	rVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=otuJ4Evd9oMZ/HcZ5LsrtDqKJhAUS7f08fAlrrYt3e8=;
	b=CNeApyoGOd5TCHpMLlcvgAMybkbmWSZcECAkht+VYYB9SSycvqrMlO8PLuOV0O8RWu
	9Ffd+QJ3lb1Rg7kat9mQ18AmdbLcndoZHCBPMjJwzHNgqy+3mJOk9k1l7lpDTTTHtNLc
	ybKtBMauEA81rnnqcs2ajB3fyodFrEPNg8jFTCaMrGxFLCnJGB0l3WziSz/60cMhmXux
	ULEoO5nYyUh1Td7pM+eWj9P8fc/AAmNBgD1DZUc+Rll/9QBxdYwq2LW0TBtQIrTjTCLV
	1eYdC4JndfHXd4VAcXeux1RWjMIDVFcGzxBu8iVI5Qp4j2E7rMjk2Yr1rnO4Rn4+lLyx
	djUw==
X-Gm-Message-State: AElRT7GGsqftw+wDb57VVABLNiVXsxNwXjVnWgRAY6HBcy7eht6+KIpj
	GtS8ReM4CbufGWOXsQCgO+lVv8c=
X-Google-Smtp-Source: AG47ELuBdtgRFFASQ48rmRnI73eKjVyOOF+Bq8vnlyMVdsJRh4bNcX+cXB52t3vfGIF9a83P0UtZyw==
X-Received: by 10.28.112.8 with SMTP id l8mr1159111wmc.47.1520582193436;
	Thu, 08 Mar 2018 23:56:33 -0800 (PST)
Received: from pohly-mobl1 (p548497B7.dip0.t-ipconnect.de. [84.132.151.183])
	by smtp.gmail.com with ESMTPSA id b7sm707006wmg.41.2018.03.08.23.56.32
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 08 Mar 2018 23:56:32 -0800 (PST)
Message-ID: <1520582192.7229.1.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "Marcelo E. Magallon"
	<marcelo.magallon@hpe.com>
Date: Fri, 09 Mar 2018 08:56:32 +0100
In-Reply-To: <d6e0c216-5c38-0fb1-d8fb-df6aa33acfff@windriver.com>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
	<4e5155da-e5fa-e19e-969f-bed685faa3e8@windriver.com>
	<20180308221034.2pazjzabwcfe6h6a@nyx.americas.hpqcorp.net>
	<d6e0c216-5c38-0fb1-d8fb-df6aa33acfff@windriver.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Fri, 09 Mar 2018 07:56:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2018-03-08 at 19:18 -0600, Mark Hatle wrote:
> Yes, the dlopen means the automated processing can't identify the
> need.. and
> then the RDEPEND is the correct solution.
> 
> (This might be a reasonable bug/enhancement request to the
> system.  Look for
> pthread_cancel and automatically infer that libgcc is required.)

There is already a feature request for that:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10954

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



