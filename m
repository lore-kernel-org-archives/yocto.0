Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 291BFE00DA6; Fri,  2 Dec 2016 08:51:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4710CE00DA5
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 08:51:33 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id w33so256880400qtc.3
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 08:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=VE1rh3HWfS/X8LCcnCQ2HJ3ZdyuA3IMdoHNbq9+si3Q=;
	b=rvY5jX/zwcfS7pMLbagoAx8NbWyJYKAQdQTUJLhNt9LEBc3wIh/oDrng2mfM2/ogBv
	ZJbkwq9WdZ2numLLCHY6AgQBWBEZiHWbQmNIwQ8zlBmSCKojxD8SAp7N+70qb0aRx/1d
	uKMrS/hJA6UIwNz2P/drs5srhXoRmIG5n1FMN9GeN/eylH8ZeY1Zne3Ks/CHWMHl/tGU
	pNg5rp8wvjydePjj2ElyJCCcY9+UMMK4qJm2LgxeXtMpOpYGdkUVN4cIgyTX6fq2BrIJ
	IsmdsTN+60lJvXePOW/vE+u80eiHDtTPVuqlSHSOyCrASi2gW2g4ga6Mtr2V72/7rFH0
	cjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=VE1rh3HWfS/X8LCcnCQ2HJ3ZdyuA3IMdoHNbq9+si3Q=;
	b=TvChk3EvWvOJeG6Pkkv2k80TVhx53jrzWj5S1BrcxZ7cwZGPKyve8ovoZm2bc5QMOb
	XqBnxygn9hZhBLsePJ7aV6HN46eV8i6kk1ZaWowmu+73KIZaVzkQZyHoXUs6RSuoL0wN
	atuhyjBgG1eoAhkButa39LHpYa36WlmecX4Cse3VC/PkFOoOLbOZc666Q53Ff427vs0U
	+T7oLVmvGCoQ0zi7oTGTnPgSOYnCIxJ/25+hYUPUL8leGbZLUrH+PUN805GO6hnJCe+/
	+5BDjllnbENokDxTaCVdvPmpJGQ4KJnSW8RkC11TjL6PpHYqPuhGhH30wf7cCaG7+6gW
	+cRA==
X-Gm-Message-State: AKaTC00084nCr9o/ZE2YZl41MK3ljc0C5UhIGKfwLfKUZ1gcUNmw9+/gnU0Qzutzym9pp9NHfHgNvux1YbqbgA==
X-Received: by 10.200.55.145 with SMTP id d17mr38590618qtc.44.1480697493156;
	Fri, 02 Dec 2016 08:51:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 2 Dec 2016 08:51:32 -0800 (PST)
In-Reply-To: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
References: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 2 Dec 2016 14:51:32 -0200
Message-ID: <CAF3SDA47z8VNPgXpcC6AsceWkLmjmLbjt-2x_xyhzLXZqb5K8w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Fri, 02 Dec 2016 16:51:39 -0000
Content-Type: text/plain; charset=UTF-8

Rectifying: http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm;name=srpm;extract=rpm-5.4.15.tar.gz

2016-12-02 14:50 GMT-02:00 Daniel. <danielhilst@gmail.com>:
> Hi every
>
> I'm trying to build rpm-native and getting this error[1]
>
> Can anybody confirm if this link[2] is returning not found (404)?
>
> [1] https://gist.github.com/gkos/9a3596452bd00d6ebba5780e7987fd47
> [2] http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm%3bname=srpm%3bextract=rpm-5.4.15.tar.gz
>
> Regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

