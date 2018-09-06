Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49ADBE00950; Thu,  6 Sep 2018 14:00:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
	[209.85.221.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF7CE00939
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 14:00:31 -0700 (PDT)
Received: by mail-vk1-f180.google.com with SMTP id q184-v6so69342vke.7
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 14:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=QTxbWpqg6Ngg8vcXWq3eWKPKI+r7XMFVtl+iLBcbCk4=;
	b=JUQ3fbJqKmku3Ozt5T95ZcBTwp4nxOa68bC12cYH5zW/lCiY0a5YrhRXvX/LCkTEYu
	EV9y5vHwhr/ovD0ikT/sTGM5bULDvvy7FKPf4ikHxkpIt3Q/qsRhJjeHBhtlhwEOMi1X
	FosioR60yCT9KmmaeYh5+OWjN8OLabD1rjFEF8C49OgPSv5PP0wHXftlbzcpZ8GVUT4e
	q6pk7ehDC9s4g81J0k4dSdYJtFiyhSX0kpgaqQW7Wia0aeQgh9r5sDN92Qg7ah3YsGoz
	Uy7r8gCLZV4ddpS4OBG0ecP1QwcoyXQEv+5kFvbOHrrUga9m9jlVyr+zbhdYx67L8ifx
	N9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=QTxbWpqg6Ngg8vcXWq3eWKPKI+r7XMFVtl+iLBcbCk4=;
	b=ag+sR93Lhz5xtbN1KOjRKwf3Wy2VlnwL6u/unYYLUgMWDJqxGViK5Lzub2KFrCGnOq
	2of2jZQv060XHYFjiOhDuKC6of4UQIPRb6jP0wPNlPD2fqJN2yl0XwHK3TrrcR1UqVOO
	VNZFIJCSPFR8/I13Du2VV/UIUFhqJsCEy0alMG58aa4FaMBbfipb1smqKHDQHcOyXmBJ
	qOpZ6ceAccF83NzbNDdr4L7VD92Kk5W6lK0tW0lI724W8AMFj/wbqpdHD8w1PmklJ/Z0
	PklyYhTFIaK2Y8PNpLLc/T4XjXPUn8TY+poGXNe/ihc2/SU32fQNMYa6xRqLYul43Hed
	yMxA==
X-Gm-Message-State: APzg51AwIp58/03+FItqSvzG1W28LToGk50RK3hRxTq4IyuOkYqi2xWT
	izUfYf/1maCj8cZJ78QwOIvh35ojxs5RK9f//O8=
X-Google-Smtp-Source: ANB0VdZXiiY22U0B7wwlLbrdhCGtsB/HKrP0/Bmnb0VOS7+zt2URv8r1pk5OqKEXJaYfyxbwObfT4Zgzik+/VnmfHYc=
X-Received: by 2002:a1f:15c3:: with SMTP id
	186-v6mr1582008vkv.83.1536267631116; 
	Thu, 06 Sep 2018 14:00:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2904:0:0:0:0:0 with HTTP;
	Thu, 6 Sep 2018 14:00:30 -0700 (PDT)
In-Reply-To: <CALNvYWOaXtrpM1Zu+W4QVOE1viDgBLfTgZBQ1AP4njWZ+t=SVA@mail.gmail.com>
References: <CACsVzKiq8gco767SGV_U-WiMNuvp-H+d_u030mBhzCPJzrkobw@mail.gmail.com>
	<CALNvYWOaXtrpM1Zu+W4QVOE1viDgBLfTgZBQ1AP4njWZ+t=SVA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 6 Sep 2018 14:00:30 -0700
Message-ID: <CAJ86T=WDxPryffxaPrKRgMZjDz7GRP=wUWQduHU_h4EzyR39sw@mail.gmail.com>
To: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: curl package config
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
X-List-Received-Date: Thu, 06 Sep 2018 21:00:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 6, 2018 at 12:10 PM, Erik Bot=C3=B6 <erik.boto@gmail.com> wrote=
:
> Hi,
>
> On Thu, Sep 6, 2018 at 8:01 PM Antonio Santagiuliana
> <santantonioswap@gmail.com> wrote:
>>
>> Hello
>> I am trying to enable the SMB protocol when building curl library by Yoc=
to
>> the original recipe is under meta/recipes-support/curl
>>
>> in my image's local.conf I have
>> IMAGE_INSTALL_append +=3D "curl-dev"
>>
>> curl is built correctly, but SMB is disabled
>>
>> So I tried to add a .bbappend file with same name as the recipe's name,
>> with this line only :
>> PACKAGECONFIG =3D "--enable-smb"

This is just the wrong syntax. PACKAGECONFIG is not a list of
configure options. It's a list of "features" to enable, which are then
translated into appropriate configure options (and dependencies) based
on rules defined in the recipe. Maybe look through some existing
recipes in oe-core to get some idea of how the process works.

>> but I still have SMB disaabled on curl.
>>
>> Which is the right way to enable it with PACKAGECONFIG?
>> or another way ?
>
>
> You just want to add "smb" to the variable PACKAGECONFIG in the bbappend.
> But since the original recipe uses ??=3D to assign the default PACKAGECON=
FIG
> value you probably want to either redefine the whole variable as the
> original recipe, but adding "smb"
> PACKAGECONFIG =3D "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} gnut=
ls
> libidn proxy threaded-resolver verbose zlib smb"
>
> I think it could work if you use _append as well, since I think that's ad=
ded
> after the ??=3D operator is evaluated. So you can also try (note the spac=
e
> before smb):
> PACKAGECONFIG_append =3D " smb"

Using _append like this to add values to PACKAGECONFIG is the
recommended way (ie don't try to use +=3D) for the reasons mentioned.

Redefining the entire variable isn't necessary or recommended (it
requires more maintenance to keep the .bbappend value in sync with any
changes in the base recipe).

