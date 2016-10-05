Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42BCAE00A7B; Tue,  4 Oct 2016 22:40:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25B2BE009F8
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 22:40:27 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id 192so211783104vkl.2
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 22:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=44KPaozl0i3/FM0dM9+5WH6zSuDL7eM1cVM5GNYOv0E=;
	b=Z6FBgb9wOjrqCIzbK8EndsvmgbNp/bwcnW9ggQYptqUWxgHyNK/fkacqNNCLFW+omt
	K3+Mzb/jy6dls3VQ8M37RN7hr1jhLDDwdW/iQlnz420SzAhXZsEEjz6LLqOe4qCOxFTH
	C53ole1RSTq0cTkY5JSiBKOegEaEeeiKOKAGAX0zPKN79azSttXoiWcgjlrNRbIK8Zfc
	q7CWhhw+axszMp4e9kdsrxGcGVLDElPWoF/STVl0h+4gvaWFPXdkV4A13idMMd9G4tve
	ZWn2WprXhREeo8gxTFgeNrOSn9wuSetoS92/b9JgL3eHm9tmu1+BXyXl5nO8mZG2GSpu
	6tTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=44KPaozl0i3/FM0dM9+5WH6zSuDL7eM1cVM5GNYOv0E=;
	b=BdZsyhFVOqKr7EhUlNgouHbF391fEQgT8vs7ecLFyl6V6WVgrJ6xB6VE+cXbB71EPk
	8iECW9ZxwESUkEmYngdaPrwQgo8OW0a8MzsD5sGDEAIHfkx2EJJj0YN/ScXa4G8KYyWo
	lY3aOu6sx1txSPs1ujsR6/jFGb0F5NBNliMgXHcua1di7pFvkBpvkkKxUAa/PL03Ifjl
	Vx0yfvXFizTCokvKtzo1OIKSLtmyg2wMrBD9xVYaoYPsac/Pj3k9daA1EZ4N4WqG3cL8
	fuJg0uNp9iw8KtzJOtamAoOxZpylC22yFV+9K7jDG+RHeZhrBIog9iTCODLHiSi6qXOF
	EuVQ==
X-Gm-Message-State: AA6/9RniscFA15CpM60liQ7vRtSPgnmd8WKCA50jJkyzl2Synbg7aCUaOUFIiktBhotXiofA4zDobttn0J6y9w==
X-Received: by 10.31.161.14 with SMTP id k14mr5407183vke.12.1475646027054;
	Tue, 04 Oct 2016 22:40:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Tue, 4 Oct 2016 22:40:26 -0700 (PDT)
In-Reply-To: <CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
References: <20160913020611.9265-1-net147@gmail.com>
	<20160916172859.GA27043@resin>
	<CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
	<CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 5 Oct 2016 07:40:26 +0200
Message-ID: <CALbNGRTMKFrs1VqCDwf6sLbJ5aYu+BFzZedxzAYH7y-6X6DYtg@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Wed, 05 Oct 2016 05:40:29 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 5, 2016 at 2:01 AM, Jonathan Liu <net147@gmail.com> wrote:
> Hi Trevor,
>
> See if the following helps:
> bitbake -c cleanall core-image-minimal && bitbake core-image-minimal
>
> Regards,
> Jonathan
>
Hi,

I would try a cleansstate for virtual/kernel too. In my meta.. fork I did:

* kick out huge parts of linux-raspberrypi-base.bbclass
* finally removed stamp file creation in sdcard_image-rpi.bbclass
* build from scratch

and did not see this message again - up to now...

Andreas

