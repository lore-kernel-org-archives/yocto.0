Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB201E01199
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 23:18:12 -0700 (PDT)
Received: by wibhm2 with SMTP id hm2so1550758wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 23:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=VZuIxKeGlmco5pTBIz6HgurmxP6V8ci8JSRRB38trCw=;
	b=bn0nfdtnejmA2NK8+GWUiha6DW3kVftMsh9fXbG+ePHHiLPVho8v2RGyuf/lfS0d7D
	WXnbLl04pEkQ3WhC8pRFbL/Zxa7o6ULKnlYGMJbDUq3aBPES0vE2vqa4mr7/q4igVT1d
	njSNR2oZ/gUbhct1bWz0exFp/EQ6MwGXwq+PrPTLqCeenbtbaA/TFncZ5yl6pi6Zi+So
	nFSxw8vr4ODPpox9PB5aYg2E35BnX3OzHaSarVQN7CK9gtFbyVAXBZrid/DoYDojLCvw
	XNbftK92+ynt3vsVMHkMfoO7tULNCkE2lsrWzrIoLJdeq8ZzTC22+VoDYNr0ewiRQUE4
	TMZw==
Received: by 10.181.13.208 with SMTP id fa16mr2511966wid.11.1349245091568;
	Tue, 02 Oct 2012 23:18:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:17:41 -0700 (PDT)
In-Reply-To: <CANmVirjogLPbktEA2cCEmak7VOUh7PiEd3TWDZC6ZaT20C5W5g@mail.gmail.com>
References: <CANmVirjogLPbktEA2cCEmak7VOUh7PiEd3TWDZC6ZaT20C5W5g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:17:41 -0700
Message-ID: <CAMKF1soQpVP2qCQcOgmtF6=6-AFNkp-21VYnaAeEMq-BxsWB+Q@mail.gmail.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel Stop in Freeing init memory: 228K
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 06:18:13 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 30, 2012 at 8:58 AM, Raul Rosetto Munoz
<munoz0raul@gmail.com> wrote:
>   bridge-utils \
>         nodejs \
>         cloud9 \
>         connman"

check what deps are added because of cloud9 are there any init
conflicts that come in.
bitbake -g might be helpful.

