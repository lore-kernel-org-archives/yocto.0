Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9611FE016AC; Thu, 19 Jul 2018 06:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
	[209.85.208.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 527C8E016B0
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:18:32 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id l15-v6so7447268lji.6
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HrQWrf7S/YZyo3zdv1gGsZ2vdWPBVpgo70Uly1SAypU=;
	b=LPYFUigcnnQZBqGDAyXOFglHvsuvf7LOheEDszfwSJpXZxibC0yfLKCLaMnLV22Tdx
	kn8WNNzNZHaEfPd9a9vszQksdT4GQrTaSwUna/iCtZq2BS9UH5Sw12j8/++zWlYMNJDm
	uNMQ/coXkCAu4cQENeit2Ax/bl5GNYo/U8g/s6OKFTSBbsRq5k9m3mZzYPgc9GVVZwZr
	WgSCYhCOKLRczyeq10sRaw5EQOsw5o/neq7okXY98oSbbF8s1kkSasbQOX5qmlJCfTII
	wj7+V2Pei0VfqsCziFxAwNyra7auEP1gn497xik0iKrGZTlwfX8jVnMc+3pXq1YHg+Pj
	07sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HrQWrf7S/YZyo3zdv1gGsZ2vdWPBVpgo70Uly1SAypU=;
	b=sRtk9mJDRDsQT/5DdCZc858pT0mZvoBYlo74sG5DxGzjX0VMGfhx9iAbhLFgWr3o9Y
	FKzUuHccU/I3eo5n5DAUaf86mUwmdfrb+xV2TqkaT8Ali/y2RCugsq294ivEaqg/440E
	rTaCN4xvunXyOrNLxt4ix8TAdznp6296lVg3cGAflQ8qrVBj8yveSwO567HMT4GunTtd
	W3YS7oXbp63cyeyUpSYT6fDGiAMIrxkIzueKb3l63GyBuaYRB8W4llcGusYkVTKv+VQX
	ixWKK/HtGXfg2MiR+mTu3hQKmyb92zFlOIDeixcB/wxy1XXNjRT4epR6FDks2vKarUNq
	/xEA==
X-Gm-Message-State: AOUpUlGn6xEHuFlgddv7u1Hc9G+qv8njUa8ubFYYtQE3ovGVW/S8kXG7
	Izr++OJRBMa8im3p48MJjqJqwDNxHdNoGrky+5yTm3VKORc=
X-Google-Smtp-Source: AAOMgpdGzaukwQic79ypGPMruB92avEnfVODrfzGQTar6xl1JNv/O6l1krZcsWCcUY0tvewEXCdKKM+Wn/2mC75Idsg=
X-Received: by 2002:a2e:44c6:: with SMTP id
	b67-v6mr7636687ljf.102.1532006311597; 
	Thu, 19 Jul 2018 06:18:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 06:18:30
	-0700 (PDT)
In-Reply-To: <1532004653.3103.60.camel@genivi.org>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
	<1531996869.3103.16.camel@genivi.org>
	<CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
	<CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com>
	<1532004653.3103.60.camel@genivi.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 15:18:30 +0200
Message-ID: <CAGAf8LzMyG1tY8rALo2tHWfxVQaxK-p2N1TWuJd3V8Ev=arx2w@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Thu, 19 Jul 2018 13:18:37 -0000
Content-Type: text/plain; charset="UTF-8"

> :-)  I mentioned that in my original response.

I noticed after I sent my email. Sorry/apologies, I do too many
different tasks, so I get very often scrambled. :-(

> I will finish up that response later anyway so we can figure out a good strategy together.

Too many companies do this on their own, my best guess. VW, Audi, BMW,
Daimler Benz... And their partners.

Some better strategy (unification) would be well desired extras. :-)

Thank you,
Zoran
_______

On Thu, Jul 19, 2018 at 2:50 PM, Gunnar Andersson <gandersson@genivi.org> wrote:
> On Thu, 2018-07-19 at 14:44 +0200, Zoran Stojsavljevic wrote:
>> Actually, I ran into this:
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-
>> extended/socketcan
>
> :-)  I mentioned that in my original response.
>
>>
>> So here, I think, can-utils recipes should be revisited, cannelloni
>> recipe added, and also another application recipe added as well:
>> https://github.com/dschanoeh/socketcand/
>
> Great, you're answering some of the follow-up questions I had.  I need to
> task switch now, but I will finish up that response later anyway so we can
> figure out a good strategy together.
>
> - Gunnar
>
> --
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>

