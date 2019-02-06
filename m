Return-Path: <ken.sloat@ohmlinxelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9A1CE00BAF; Tue,  5 Feb 2019 16:09:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E129E00994
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 16:09:34 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id j1so4039259lfb.10
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 16:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ohmlinx-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yFvy5CM4wKe+LgkNGVfZPzNL74hRYCxd484s9maCp5w=;
	b=MCEtKZwXKhozGnEvFvQ5H0a62/mCoxOkBbk7XHgdLI0ifbszUJIX6lmvIojmYuHi0o
	qe5cg6NBC/249xTVDF3Lxri1Cfz3d0wCvncY/UuSJ6eV/AKxM7uQHSw58sJqHWlf1JhF
	P6oS0RZDV84WveHVbVbKMPuvwci6utcuqVkhT//Od6w8NgyDxjTUJYkpz92UdksRjaqy
	X4k9Cp0126f7tcxm0HJhPRFmkBgsLuX/sqXa7wIRE4ctxXoQg0tCS1hbirdBZW8Zz7jA
	yR/aq09qxP8u/wotBeyv7HOrKFoxz2IRXY8N05WUvoThm4uRq8ppYd+9/E5FO11rA8nI
	DqFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yFvy5CM4wKe+LgkNGVfZPzNL74hRYCxd484s9maCp5w=;
	b=TD7oKObZlVcpVHdmTYRk/UNg6380YnZvPJ4F3fZDs7uAV3mmS6Sdo99fSESbVXz9du
	xTv8pEQD9kHBOkEqtje//n5yXiOmXHrtfkW6zcqvjk5PHuZreQ1ul4o4j7ZDjOqzlMEz
	56y1HwY4h/g4JUsHSPMig7Mk+1hO12Uv17GYA0kSl5B8fiZW/SHSK9z+zPe1VibSwTHo
	UYAgLngzAMdAEpadwxS89qofo1HyTblZzlLv3ynI8I2DDQ80hqwcB3VGGTj934NmIbvc
	nicxpEKwu9S7/BBhGgMvJQW9VMoCteSngxW69umXGlCBPVN2nd4ZJi/EcbBw5Pc79mKh
	mznQ==
X-Gm-Message-State: AHQUAuY+mRNbLKMlA/8VDuMT1eRGB/w6G5eYLTwzjkFUX71MMoc26x7j
	MqaPW5L7IHiAqr0i0hP/UyhVdApAMr8pzffLf0HglQ==
X-Google-Smtp-Source: AHgI3IaGF+WFZtFjMzZRX6bChhHDwCdjVfQN5bVdQZEi/cnWRr201l8Hw+muiZ+1HECqMo4898mkfoVCyRqjBjcwfpU=
X-Received: by 2002:ac2:538a:: with SMTP id g10mr4922557lfh.70.1549411773143; 
	Tue, 05 Feb 2019 16:09:33 -0800 (PST)
MIME-Version: 1.0
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
	<4a1f4eae-e7cc-ccb3-40ec-1ad700243455@gmail.com>
In-Reply-To: <4a1f4eae-e7cc-ccb3-40ec-1ad700243455@gmail.com>
From: Ken Sloat <ken.sloat@ohmlinx.com>
Date: Tue, 5 Feb 2019 19:09:22 -0500
Message-ID: <CAPo_4QDWFPqZowhk+TGdOZRf_rNrhSvGZG3N+bPk-4PML1db4A@mail.gmail.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Cc: yocto@yoctoproject.org, Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Wed, 06 Feb 2019 00:09:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 4, 2019 at 10:50 AM Robert Berger
<yocto.user.mailinglist@gmail.com> wrote:
>
> Hi Ken,
>
> Is there any particular reason you don't use the sample[1] for an out of
> tree kernel module?
>
> [1]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod
>
> Regards,
>
> Robert

Hi Robert,

We are running an older version of Yocto (Morty) for a customer. I
redacted the recipe name for the example I posted, but the recipe is
basically an identical copy of another recipe from newer versions of
Poky not present in Morty.

I might try to debug this more at some point, but the FILES statement
seems to make it work. Thanks for all the help everyone, I really
appreciate it.

