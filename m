Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96609E00C60; Tue, 22 Nov 2016 07:10:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70A06E00C45
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 07:10:30 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id r94so768401ioe.1
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 07:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bD0hEq1Hgay0jZG0hwdb3/CmeR0eezkRTZYqPv89C6U=;
	b=sy+MPm9nAwxSzYZe0hvmdnbNa+4ihXnwm/94JMuREdRFrZAsFi1jlenmIt6vwDGMmV
	IGlF08iU4HxfVWLPFHpOYtvh0ngFpuMO2DORbs/+v5no6z8fPgBm0RlY9OPmSirv2rHn
	AliA7/XFBWC+psmGS52kxX91367puM8r0Obf9JJyoGWB4IS6yhBZqUDN4dzi/rdQoIsL
	lvYoSrL0xNF3gVDWMbTPWsdRbrcTmXDuJjOA46Qtu7fCXa/mEPTipQ7x7cAGZ5A6PLer
	bFYzj25+kmh6qGcYgAjEkPE8U2xYdofdYVvPXqFeKPfttdClJf2Guyf2dwc7XNd7PB13
	fSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bD0hEq1Hgay0jZG0hwdb3/CmeR0eezkRTZYqPv89C6U=;
	b=QonyyWWinszsbkatYRsFKHA7eNrjDDl8m7M+WIbXAvFqqobpPi4jAzvUngb89AWKhJ
	UeXw4o8cbQRETX3Ky0URhEbbJZLDjTk81JIVSSibzRTkAlGoizKMu8uqLHA1TdhNPeWx
	K7ve0hosBJOFlLedMFm5fX60C2kg0g3NDfuU3crwyW8x6xCfMIylRzt6N9mfo39lo9+1
	0XPGaumk3R4Xh1wUKeBxdaJ6ygM7Qv3vLY5b1MrYNsprmQ+5+IWuUJBytCcYfBom/kbL
	Hcm/S7Zi7KoAmph22Wkpx/BjEaExMlRSTBLeF2hGBE/B5OYLoNMKeyjyRCl72d/94vh1
	ji2Q==
X-Gm-Message-State: AKaTC00+CKB1zSt2MhrgmIRPDCdB0jy7jfiyKY/5zBSAcg1H0hpggV88DKSgNyUB0Z7kjQ==
X-Received: by 10.107.204.5 with SMTP id c5mr16183427iog.143.1479827429944;
	Tue, 22 Nov 2016 07:10:29 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id u6sm914993itb.4.2016.11.22.07.10.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Nov 2016 07:10:29 -0800 (PST)
Date: Tue, 22 Nov 2016 10:10:27 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20161122151027.GA11632@openSUSE-i7.site>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Tue, 22 Nov 2016 15:10:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Herve,

Any chance your patches are available in a tree somewhere? Maybe in a branch?
Maybe on github? ;-)

I would like to give them a try (build and boot).

Best regards,
	Trevor

