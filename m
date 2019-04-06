Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77F00E00D3D; Fri,  5 Apr 2019 17:24:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5912BE00D39
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 17:24:50 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id z9so964232pgu.10
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 17:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rInjHx25+oKOQhukBqVTCcJpBFQDmyDeGc3KRF83ycc=;
	b=cwR+RWCQyEGFKa684P21qlhAvwktzb0nDw8ku73ceHg6QhF33dC7BLsP0otfHv+G7s
	Zm7JP2pYMmUZ3uSPxDQYikF47ywJCu61c9asSBwcyRAEJzAl2R+GCu6WszVZgORbXB1H
	KG9cKBUV6q7g5TD/ryphb4veEoupNyIB77ftp05igt+KLnndgDq+8XY6UzDedYYhUZP0
	e+rSrkaYb7TFndVemaZExpKaV3VsqF/iNr1ankMlQk8L3oWgGRGDrOYD+82Y6oBysBtS
	AVwXbR0eQWZ7TKErCyujF0+a+XTa7MbXvCMJx5gx2nYmcDhRrhUz8Pm6Qay8KFTlsJyG
	J+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=rInjHx25+oKOQhukBqVTCcJpBFQDmyDeGc3KRF83ycc=;
	b=uBfbPIYchiDxipnN+s0shcU/5nkL0u77fW9aAGFKX31rtmXxQeiugenGNYDhPoolyH
	KSplx7ts4zCr+R/RAaNH/RkSiPqTwWUuqSZIHImSe3tSP8CDvIW9xIZj0XqAzH1sT5aA
	xmvI0sIVRUZZQLZoE7JX9VEb9/P9yoJzB2BkCthLoL3Aq7GIbiJOWRw67VCl4k2Noi5Q
	UOcqxOkn/e63wZdsWRzjg3t+E9sjt/w5w9vemMWzahP0oZZ8rLjowYWRbHwm9DuqQLwI
	UH2MxB7IubxJjtN9nXDGIA+ZfIHXx3kcNUlDdaRGIXPMulUkghiGN/d2VDE/CEEhkRIU
	e9yA==
X-Gm-Message-State: APjAAAU+lH64xEICjX7uL04NXBnF17OJZE3FBJp5f73WySzPoxgoFKVJ
	YEjZOkEkU1krlBLVaDGGux/8ypHEndc=
X-Google-Smtp-Source: APXvYqx8Lxj+wDaf2W+tlpV0OyFtTrx3FY2h+LGVoOBVjNrHXpR9yYRMpy/gwJJ6d0PI1Blz92E4oA==
X-Received: by 2002:a63:7e10:: with SMTP id z16mr8365004pgc.40.1554510289132; 
	Fri, 05 Apr 2019 17:24:49 -0700 (PDT)
Received: from [10.240.241.171] ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	l63sm34023076pfc.89.2019.04.05.17.24.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Apr 2019 17:24:48 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>
References: <1554416266-28620-1-git-send-email-akuster808@gmail.com>
	<1554416266-28620-2-git-send-email-akuster808@gmail.com>
	<20190405045951.GA28935@localhost>
	<623dd471-1e89-fdcb-fcc6-deab840731ab@gmail.com>
	<20190405081930.GA22318@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <945d1df4-2eff-645a-a707-833139b00def@gmail.com>
Date: Sat, 6 Apr 2019 05:54:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190405081930.GA22318@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: add DISTRO_FEATURE sssd
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
X-List-Received-Date: Sat, 06 Apr 2019 00:24:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/5/19 1:49 PM, Adrian Bunk wrote:
> On Fri, Apr 05, 2019 at 11:05:17AM +0530, akuster808 wrote:
>>
>> On 4/5/19 10:29 AM, Adrian Bunk wrote:
>>> On Fri, Apr 05, 2019 at 03:47:46AM +0530, Armin Kuster wrote:
>>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>>> ---
>>>>  recipes-security/sssd/sssd_1.16.4.bb | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security=
/sssd/sssd_1.16.4.bb
>>>> index 34bc8c8..d6a308c 100644
>>>> --- a/recipes-security/sssd/sssd_1.16.4.bb
>>>> +++ b/recipes-security/sssd/sssd_1.16.4.bb
>>>> @@ -16,7 +16,7 @@ SRC_URI[sha256sum] =3D "6bb212cd6b75b918e945c24e7c=
3f95a486fb54d7f7d489a9334cfa1a1f
>>>> =20
>>>>  inherit autotools pkgconfig gettext python-dir distro_features_chec=
k
>>>> =20
>>>> -REQUIRED_DISTRO_FEATURES =3D "pam"
>>>> +REQUIRED_DISTRO_FEATURES =3D "pam sssd"
>>>> ...
>>> Adding a distro feature for a leaf package is wrong.
>> Is it a naming issue or something else? I would like to understand so =
I
>> may avoid making the same mistake.
> This has nothing to do with naming.
> It is about getting rid of workarounds by fixing the root cause,
> instead of adding more and more layers of workarounds.
>
> A DISTRO_FEATURE is for cases where PACKAGECONFIG in many recipes shoul=
d=20
> be toggled with one setting, or the setting has to be the same in sever=
al
> recipes.
The definition is old and needs to be updated to modern time. There a
plenty of recipes that require libraries the we ended up using this
mechanism. Look at the X11 situations. The sssd requires PAM but there
is no PAM config option supported in the recipe so I should remove PAM
to then?
>
> DISTRO_FEATURES is not appropriate to guard a quick hack workaround for=

> breakage caused by another workaround.
Its being used in the case of mali support.=C2=A0 So I do see value in ab=
le
to use this mechanism in those cases.

I do have another option and that is to supply the previous libldb. This
I know is standard practice for other layers.
>
> The problem at hand is that libldb in meta-openembedded was upgraded to=
=20
> a version not compatible with the version of samba in meta-openembedded=
=2E

And that should not have been allowed IMHO.=C2=A0 What is even worse, one=
 can
not install libldb onto a system without seen the same issues so it
appears no one is using it.

>
> As workaroud the libldb shipped in samba was used and installed by=20
> the samba recipe.
>
> The proper fix would be to upgrade samba to 4.9 or 4.10,
> and use the external libldb again.
> This would make all problems caused by having two different versions
> of libldb disappear.
>
> If this is not possible, it is likely samba that should stop just=20
> shipping the (older versions of) the conflicting binaries for now.
>
> In a semi-related note, the current samba is a pretty outdated even for=

> the 4.8 branch and misses several CVE fixes.
Make you wonder if folks are using samba.
- armin
>
> cu
> Adrian
>



