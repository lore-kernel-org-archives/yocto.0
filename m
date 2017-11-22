Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDBA4E00D04; Wed, 22 Nov 2017 07:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9634E00CF7
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:54:25 -0800 (PST)
Received: by mail-pl0-f47.google.com with SMTP id 61so962983plf.4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=i7RPi/0AnnqPo9iq0+m7GwM3suVPVGMrZjC7MBN0Xbw=;
	b=pCcTlJC9WqRbENApO2Z0b5YaXiXz9Vpz+tdJp5CFnMsl8l4ybWjp0AqTCOz8i1lVQD
	Mqlar3Z1J5AnxeNZXBUSyRnOMYKioRaySI8Ju7bNM5Hy5pkJWfcn8JImt23baazdy3/T
	0UVwphJLoAflynaC7JRYB8N6TbY2w5Kp1HW5wdmMDVqKmXXYzzH3+9h4VTGu7aBiSZc/
	9xmR8tm4T8C75+Xbu8qQ1F3k4VHmoOK3Yz8hp34ixX66ZEIxnnatlfm2zWy+kEmxWrhh
	C50FfGBSPiuFs7XmH/57Lb8v6Xqn9PI1niqxmY9NCv5xn0xvnwzohjytVdvJVkYdoJaf
	AKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=i7RPi/0AnnqPo9iq0+m7GwM3suVPVGMrZjC7MBN0Xbw=;
	b=DwDiIR3qYjXrnfrExolMrvaBNcvqzakLYqNGES08FsYui/P6NajbtEBxUCW5DRrWsO
	EHHaZ6PbW6x69WNDK3yRMT70Buqns1wdvntjAYyMHusgkbIKRJY7OhWNRL31nc5GSpwd
	Ytm57Zt7S/1SB+sMc6ic4JBh5cDzAe7RSQdEoT/yj1P2Lv2bc7CkZssXMMN3C3QSCG0d
	6ksnnsuPOOLmN8DwDr3fe8OecE2cgxoCjqKs8fMho7hJg1eEkEme/0wey31bLFV8Zmua
	5yj2+sYOdhsULmwvtUuoB6cLoOXS2spFUxG5Lm/wC0390iTX6CHtU9pX+97rydpR/uZA
	7SPQ==
X-Gm-Message-State: AJaThX5DbQovHhdMegxn6cavowS4jHQOHR3O/+AynRYpuiXeCr1RlkBX
	0puEg4D8zbNZAioLuxyCHPiFtq0k3BOBLrO4uzw=
X-Google-Smtp-Source: AGs4zMZHpxld+ITmCJO4ShfxSTV94Y70en7QtOlKM0GLRgfeLiX+Fnzb3BblEDUuu1RTvKld6irHKiqRKwVYyxC5f84=
X-Received: by 10.84.252.4 with SMTP id x4mr20909590pll.99.1511366064985; Wed,
	22 Nov 2017 07:54:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Wed, 22 Nov 2017 07:53:54 -0800 (PST)
In-Reply-To: <CAKmWj-3WZc=K4KRwW3qO3zXUYK7qibkMdWwbE=baNiKhN9nKjg@mail.gmail.com>
References: <CAKmWj-13qwhLX54szaK5gvxdHfJOKS7Xa98UxiSibLJkxSDRnw@mail.gmail.com>
	<4a1624fa-f533-6f25-bcb7-88d035657d4f@prevas.dk>
	<CAKmWj-3WZc=K4KRwW3qO3zXUYK7qibkMdWwbE=baNiKhN9nKjg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Nov 2017 07:53:54 -0800
Message-ID: <CAMKF1srPncHcBc5pu_2HgouUJbyBPb=yjKtT7BsqH9Re+5Bk7A@mail.gmail.com>
To: Paul Knopf <pauldotknopf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: When are file checksums gathered from files, for tasks? During recipe parsing?
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
X-List-Received-Date: Wed, 22 Nov 2017 15:54:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2017 at 5:51 AM, Paul Knopf <pauldotknopf@gmail.com> wrote:
> This recipe is not an image recipe. It is a recipe that packages up our
> image for deployment/updates in the field. Your method assumes I am editi=
ng
> the image recipe.

there are post/pre processing hooks for Extra operations on final
image, if you were to use those to achieve the tasks specific for your
deployment/field-update, it will fit well into workflow and you can
leverage the dependency mechanisms stated above

then you could combine this with some extra image specific tasks to
operate on rootfs during image creation.

In short, perhaps you should think about getting this done during the
final image creation instead of creating another recipe.

>
> On Wed, Nov 22, 2017 at 4:01 AM, Martin Hundeb=C3=B8ll <mnhu@prevas.dk> w=
rote:
>>
>> Hi Paul,
>>
>> On 2017-11-22 09:10, Paul Knopf wrote:
>>>
>>> I have a recipe that depends on a deployed output from an image.
>>>
>>> ----------------------------------------------------------
>>> SRC_URI +=3D
>>> "file://${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz;subdi=
r=3Dupdate"
>>> do_fetch[depends] +=3D "my-image:do_build"
>>> ----------------------------------------------------------
>>>
>>> Will the hash for "do_fetch" be computed after "my-image:do_build" is
>>> executed?
>>
>>
>> The "dependency" hash is based on the hash of the my-image recipe, so th=
at
>> if you change the my-image.bb, then the hash of your dependent recipe
>> changes too.
>>
>>> If not, how would you propose I do something like this?
>>
>>
>> Don't put deployed images in SRC_URI, and don't put task dependencies in
>> do_fetch, as that messes with do_fetchall, should you ever need to run t=
hat.
>>
>> Look at what other recipes are doing when using images from
>> DEPLOY_DIR_IMAGE. A reworked example from one of our recipes:
>>
>>   do_image[depends] +=3D "my-image:do_image_complete"
>>
>>   IMAGE_PREPROCESS_COMMAND +=3D "image_prepare"
>>   image_prepare() {
>>     install ${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz
>> ${IMAGE_ROOTFS}/
>>   }
>>
>>
>> I hope that helps!
>>
>> // Martin
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

