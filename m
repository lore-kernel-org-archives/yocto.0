Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5595DE00524; Wed, 24 May 2017 10:35:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C10E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 10:35:27 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id p85so9753734vkd.3
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 10:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3gPw3LL1BVeJtJXXAMTbnRG5d5odb4KwZmn92Xolz10=;
	b=AGq3h6li9lsfuNL9k/OALL40ioUmFjCOV8PxQro5AjDy6qrDV74y1xtNa8PYesymgN
	lefWlhaTQBFt3tKbQYa+m/n9PK73RwcLuZd+gLcE8o4/6aUZzhTA3E6okTgjMjo5yzEj
	lbgTyPU29i3ea8/NHrOPRtY9sT3nIEAydyTyoDCGDZLIiCA6fwQ2KbRwnaAMLkP3cWDf
	JoOAwrLc3JrYawUrumEK98H/KKvpPfI+5OKqt7H2JRheO2g63oULzmG//Lg9J6yCMrGF
	f67WpQp+CJALNoj0Ys4h4Y4f+Ck4nKASntZGZK+MtUZdaWaxZYpi2HsxifiWZIPve8mn
	GBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3gPw3LL1BVeJtJXXAMTbnRG5d5odb4KwZmn92Xolz10=;
	b=GGMxY/ZC+cyEt62wB+PCbQEJG0P8LtMq90V+gjKBAHH9Y3xi4q/EUuangNgODYx7MB
	pqHOtZXF/E6r/b4C7rz0tdt/jEDww89W2fMqKjeM0y7w1v58wmHs4EfiQVyT8YbIblSf
	mXB/l71MqtvngKCE69jlhpEGbJghDANT20YFT8AEnHHf71Jxk46ZJT5X/BBEcjcPoRwR
	8IoaWkjz6vrrDQQDJEuC2+hPPRWHW9tY8TsMcCBzj0bhGO6vvLWp5UZvZSVR0TaU9LO2
	9s+IY+ztX9dpDaLPJ0ckhY4hDw9udcfi8SWmw3/iflIf8XCmqZI+Ad9rDym0EE5gMP/U
	fZ4Q==
X-Gm-Message-State: AODbwcC4kQTbT4oyjHfvbOKUchanUfA3PB4hxD+trd/95i1H0OtMdxH0
	DJfqaqxQrsYdd3yfimERnkYLkxU2Qw==
X-Received: by 10.31.72.2 with SMTP id v2mr14311711vka.72.1495647327102; Wed,
	24 May 2017 10:35:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Wed, 24 May 2017 10:35:26 -0700 (PDT)
In-Reply-To: <b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
	<1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
	<CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
	<b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 24 May 2017 13:35:26 -0400
Message-ID: <CAHUNapTN9E6ast5GK2rPKm2e0zdy1AF3sgHYX+j2UzEyGLbDJQ@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Wed, 24 May 2017 17:35:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Romain,

On Wed, May 24, 2017 at 11:05 AM, Romain Perier
<romain.perier@collabora.com> wrote:
> Le 24/05/2017 =C3=A0 16:55, Trevor Woerner a =C3=A9crit :
>> On Wed, May 24, 2017 at 10:46 AM, Romain Perier
>> <romain.perier@collabora.com> wrote:
>>> Le 22/05/2017 =C3=A0 18:08, Trevor Woerner a =C3=A9crit :
>>>> u-boot 2017.05 was released May 10. Wouldn't it be better to update
>>>> oe-core's u-boot to 2017.05 then just add any differences in
>>>> meta-rockchip?
>>> Good idea yes. I will bump u-boot-common_${PV} and u-boot_2017.01 to
>>> v2017.05 in poky (and then propose changes in meta-rockchip)
>> Changes to u-boot should be sent to openembedded-core; poky gets
>> updated from there (not vice versa).
> Even, if I Cc: the ML oe-core and yocto ? (so I have to do the changes
> in oe-core directly, I mean the repo. right ?)

Yes. The "home" of the u-boot recipe is in openembedded-core. Please
send any updates/changes to the u-boot recipe to the openembedded-core
mailing list [http://lists.openembedded.org/mailman/listinfo/openembedded-c=
ore].
CC'ing it to other lists would not be polite since most OE/Yocto lists
receive quite a lot of traffic already and this would be a
non-relevant email to them.

Poky is derived from a bunch of sources, primarily openembedded-core,
plus some small additions of its own. Only when you want to change one
of these small additions would you send a patch to the poky mailing
list directly (which isn't the case with u-boot).

