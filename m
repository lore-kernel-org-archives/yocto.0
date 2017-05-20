Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1002E00B4C; Sat, 20 May 2017 11:18:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2385AE0090E
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 11:18:04 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id 7so25329274wmo.1
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 11:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qKf1/CDNeP5CSaICFxrzpCiDQZaoqBICrxlLkqosfqc=;
	b=gIkv8G2yEGJw5PzDFbXEq5rrRJSUj4nlDwiHizrYrAlrA0zQFfu3LaSJn2VYFJf8hn
	w2k9OHLi0nSYVuH4NCB+UAf0qjGs3rpJyROsLkNuiOpf8Rk/BOLCPa0b+o7jJkr64v/7
	PDgvz3sms5BrzSyI2ieIr0T8fP5XambquGMmH2r522bhFEAzUFDgDRX0k+vvyMujhAw8
	j9wktVvbSFD+T1u733KT0vvxeYsfoG/K719LDeLYOWTRvqyyIKcKOS57YFlO+T4ADPZ7
	RdbB7F2cCOkhMjrmAM3gIMsencrlLne4GQKWMlNbJN9s5ygSXOsrH0aW9U21jXDgKey0
	G16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qKf1/CDNeP5CSaICFxrzpCiDQZaoqBICrxlLkqosfqc=;
	b=ZD1gF02WdToyQLXvvz8ZX5NLYf2pjvAt/fhig5GXtdUiRhrtRDeaHhL5pr+SRSVfUi
	YbeC0BEd7BqqpV9lU44MZI5MhU+lMlPZ7qLO9F40PRu3rUeS4cY4tyyCxi/loXMdXtUp
	r5sD8GkTbi7GIlgBvQkJIoJYVpiTLDkSTUc0VyLIvH3pVpVhs23eFGEiiP4YirDO3Z1Q
	7UsOJKKumlYEh/48JcQ86rHLY32Lo62TNXM8A6GwXjE2HGQwQY5DXYELOesA128cL+4A
	fym47qYm8mh5+fi5hB7rYRShswjVc4Ptq48dFq9fkV93QaNVv/hAgHF5mL+FP+xJ43zj
	+klw==
X-Gm-Message-State: AODbwcDz5ieobtmPxLCF02Tg59XwwFS7sKwZZEgrB8d+LcAKArUs25ul
	6P8GmqE6ZqrqDHc45hP+dEUYz2q3wA==
X-Received: by 10.80.137.56 with SMTP id e53mr11647144ede.67.1495304283868;
	Sat, 20 May 2017 11:18:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Sat, 20 May 2017 11:17:33 -0700 (PDT)
In-Reply-To: <A885119E-943C-4F4A-AA65-126C4C59FDEA@sierrawireless.com>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
	<65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>
	<C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>
	<CAMKF1so=4MOc8ZvKe9wkOGgrhZ2M6yhuaN+WAQY9VrzcH9+rNw@mail.gmail.com>
	<A885119E-943C-4F4A-AA65-126C4C59FDEA@sierrawireless.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 20 May 2017 11:17:33 -0700
Message-ID: <CAMKF1spg=-fEheWmLq=y_7RutrUf85B_UwhW_bePzuXinWCdOg@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What can I share between projects?
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
X-List-Received-Date: Sat, 20 May 2017 18:18:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, May 20, 2017 at 10:04 AM, Darcy Watkins
<dwatkins@sierrawireless.com> wrote:
> Thanks!  That's a good clarification.
>
> Now on other hand, I have experienced a few anomalies that are more at the
> final image build stage, especially when using RPM feed, and the PR service
> to auto bump them when rebuilt for dependencies.
>
> The image build recipes must then not have visibility all the way back into
> the sstate cache, but only as far as the version decorations used in the RPM
> feed, right?

They infact should. Since every image you are building follows exact
same process. It will recursively go down to package granularity and
PR is just one of inputs to determine rebuilding if its not
automatically set, if its set automatically then it will actually be
incremented for you

>
>
> ___
>
> Regards,
>
>
>
> Darcy
>
>
>
> Darcy Watkins ::  Senior Staff Engineer, Firmware
>
>
>
> SIERRA WIRELESS
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com ::
> www.inmotiontechnology.com
>
>
>
>
> On May 20, 2017, at 8:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Sat, May 20, 2017 at 8:16 AM, Darcy Watkins
> <dwatkins@sierrawireless.com> wrote:
>
> Are you saying that the sstate cache is smart enough to handle exact same
>
> package for same arch but just built using different layer stack?  (Say one
>
> case builds package A with a bbappend, but the other uses a bbappend from a
>
> different layer, and say they are at same bbappend revision).
>
>
> yes it should be, since it checksums the variables which are effective
> during build of a given package.

