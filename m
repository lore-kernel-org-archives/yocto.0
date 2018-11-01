Return-Path: <zertsekel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596F3E00A0A; Thu,  1 Nov 2018 11:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zertsekel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F23E00971
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 11:53:34 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id h13so3610052itl.1
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 11:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=skDNPDQqTl/IVrTxbAjUfLF8wTBjrn33DSxuyqhfPlc=;
	b=aCp3Yat1GNdU0tuwv6UGf/LyJAuSc4TphaV6c1/3LX0rA094hK960Y03H5vfnIaq7p
	x1XSaKspyVxzUvSPA0ztWQ+QUUtTuIJjISsEX5ugE3cwj1R3GB02oELxGMN+pz1Gxej1
	I6OLk+RRCnTkyYznDpPm7Jz4YUt34raeaxr3gF75+aJy4uQqfB1SuGZB/sSuFFT0snwu
	R9QpzKu0TeEs9wK8EHF4d3XNCMmaNp4X3U+HFIRgbHYaZS6/YuEWo6/8EYJ4zjuGgCCN
	rCm9riFemE7ktUtH2h/p2hGT3FFkW5FNKQtUAYGy0Pbp1AQF6tAT+2kBA9Xmbs+ACBic
	YFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=skDNPDQqTl/IVrTxbAjUfLF8wTBjrn33DSxuyqhfPlc=;
	b=VNsmrR1eWNdOruMyEKM30JrnyGdNR2EPNuH+ioJDqJsRKMnnIwKuTwit9NmANmDi27
	vmKjezvAAMv0Ko6b9K4PoRz4/ZNI4PcivxUkKh2qf9GrBrzdYgy/pv5oyTC7Y3Ly3bfD
	puhcxEKaEGRdouOqoJt6GtVxbfwk+DjkkLCA5US7pfxTyW6mAYFanx5EPOivhZpuAd2I
	QEFZCINgd2u5NDx4h+PbRRbulHTmJENlyguzgQg3fqr5lzoPBcVU19hjEU4xnappwEBt
	ra/+3fwQ0BN3M/qCkeXohnH9C9Q62G+9+Sbx0G97lGh9InFZA/lv/KCqlYHlJSlpI1Gu
	AXSA==
X-Gm-Message-State: AGRZ1gJCpu2Ohw2gwzfZRJofo+u6tidOvZEqr4lb0RrqkRTpU1Nh6Uju
	Hw1rpzRWPfvUfc25pWf5wp7MXKZURQ/L5bCqb3M0rw==
X-Google-Smtp-Source: AJdET5dSqg9dElQc1KcTTYdKOVRXrr3Tyze5F0eLbflK5Ls+zsA2rlpCmABDpf51rCchy4ZsXGjrH1Ydz4Ib7tQGTNI=
X-Received: by 2002:a02:c18:: with SMTP id
	g24-v6mr7533141jad.131.1541098414387; 
	Thu, 01 Nov 2018 11:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <20181101185042.17669-1-zertsekel@gmail.com>
In-Reply-To: <20181101185042.17669-1-zertsekel@gmail.com>
From: Kosta Zertsekel <zertsekel@gmail.com>
Date: Thu, 1 Nov 2018 20:53:22 +0200
Message-ID: <CADxo8WJje6cZdGk1eaK-P5uZP+fC-O_DqqtgugCd2Hmvikrajg@mail.gmail.com>
To: straka.derek@gmail.com, yocto@yoctoproject.org
Subject: Re: [PATCH] nginx: module: add ngx-http-auth-pam-module
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
X-List-Received-Date: Thu, 01 Nov 2018 18:53:35 -0000
Content-Type: text/plain; charset="UTF-8"

Guys,

I sent the commit to discuss if this is the right way to include NGINX
module in the customization layer.
It actully compiles OK and works in run-time on target.
But, again, I'm looking for the **right** way to do it.
I'll be happy to get some feedback.

Thanks,
--- Kosta Z

