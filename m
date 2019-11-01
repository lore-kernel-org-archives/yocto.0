Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E9AE00DE6; Fri,  1 Nov 2019 09:48:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9AD5E00DAE
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 09:48:34 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id r22so3625458qtt.2
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 09:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kq3nmQnEbQxJVHhwXDnlMowwKnUB7ljtJ3/Rp9wiDck=;
	b=hZJ6UKE/yWqbIxu7VS1txjbvxY0BMLpYE9n4439eWKdoKZI/GrDsSr6lWlwWl1iFSk
	+OArMo0SjSlD5zquVPIvoN/c+flgwlAsk3xvnKGaddnN7fHpxsHBmw8E/HlzZLKTTxF6
	nvIvrqy+tkDAw1SUbP1jvsc6ch/kMsti47CMegJ/sKKP1S1g6FpIIQZ9uPJWFq2RabSn
	sBRhNoyEHww5ExkkH/m3gUd0US2C/32RA8FC3UkHkkTr3UYgjDUyCtCb3aykY6Inp1V9
	bo/1cPL+dLW/R9rp+yoQA8rAqd4P2cp2IHTMGf1MkPUYQpKpnA/8Cn+2W0KLdR9VyH1g
	N1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kq3nmQnEbQxJVHhwXDnlMowwKnUB7ljtJ3/Rp9wiDck=;
	b=sCPSWZJoUNca7xMqbLvp7vhk2h1HARmgrukt1Xwu/OOc1srwnPhu6jNeeoCV1W6Dlh
	SQSEj4heFnC0Jjumfg72EmJkM6Xs0R9Dn7Ci24bdToelhzWFbHzE+80rJiffjTAUSS1C
	4m0nCpB5MhyFXDRaIju55Zpv+PEBg03AGIjFkHHU970ylQNcfdibKPphVBydLKvNSmFZ
	O56obqgDHwx3Xb34IbIeC55w6hzVbmLZtdd7T+Ph6/Dx9lK+SlZWK1G9M2r3jIn62mDG
	5PsFiGgCWCPvx4DxvyaraCuxRdJMkNxGOEGsjDI+g86D8pfZP7ecVEZ79U034cfIR3OU
	SCQg==
X-Gm-Message-State: APjAAAUd8+PhkSPiOHqVTgPoHOgJm+y23M/ih201ftwIT6scDIY79GVl
	0ZVe2A9Gl0lyxO4z9u72Ud7QKkBXpkYNrI2Furw=
X-Google-Smtp-Source: APXvYqx6IMkoRfu4GEljYzCOO/nR11l+lqFPI6c2sSQX/wYlNlmeQomH6VjbRTWG/I2+va9v4uLdQoRvxhy4WAnXZDc=
X-Received: by 2002:ac8:2ddc:: with SMTP id q28mr269045qta.88.1572626913663;
	Fri, 01 Nov 2019 09:48:33 -0700 (PDT)
MIME-Version: 1.0
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
In-Reply-To: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Nov 2019 09:48:07 -0700
Message-ID: <CAMKF1so+V+tse4bOZi6YOt0+CwA9+i_K9P_YK-HVbZoNpxCKpw@mail.gmail.com>
To: Aaron Solochek <aaron.solochek@sri.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 16:48:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 1, 2019 at 9:37 AM Aaron Solochek <aaron.solochek@sri.com> wrote:
>
> I would like to get visual studio code on my NXP i.MX8. If someone is
> aware of a aarch64 rpm of it, that would be the easiest. Alternatively,
> if anyone knows how to build it using bitbake, I can build it myself.
>

I dont think we have recipe for it yet but you might want to look into
https://code.headmelted.com/

> Thank you.
>
> -Aaron
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

