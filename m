Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E7A6E00DD9; Mon,  9 Jul 2018 11:35:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AE8E00AC5
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 11:35:52 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id y207-v6so37725897oie.13
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 11:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IAK3en/AgF0TfwpFUE458gfzT0cOxt2sg1xM0Sb4X5Q=;
	b=KSa6wixLNblEHjmxdq9cf4F9/CUsCDeQm9IkTxGEKpNETeiqstQH4PpaCc7RFOszqR
	ytBywE2/Zzcm5GxN6Io6Ltc/fb2UMqrlDvF5rjZ3fV3Bj9IptLkswosJCfZgmfKSU2Hm
	Mr45Q4tqN0fkLQYC1oV/pLz+UybtV22NrtwVT8aMSvfP0wqxzjCqZwLvmyjvD7PaNTAS
	dwgl/CDH/JLW46Jd2/1bL4DKBKOKijWQZRefyCaCwA70qOlocqyaZz8Mf1dyr4cU7smY
	Lvdd0CbPG1Aq2VWsBXl+K3xVRzwAGouKEKWYvQmVyVvFE+xXrPrnF9Wg9TLGjuNviuIh
	9Y/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IAK3en/AgF0TfwpFUE458gfzT0cOxt2sg1xM0Sb4X5Q=;
	b=E2EQfLda3xagI4lyhximlKZEzTiNavHzYL6K7SeFzrlvGFrN3P9ea6NUl8+ZWX2GBO
	SagzKXWHnDtvOpT67wxZ4kzTCIviouNGR+VNRI+8c4la3qVdCUmQzmdX5l04iR/azRU/
	mLf8z2wbjJLE+utijFbA4dKUJSpQp2cCbSpgxrmH/NxXvgEcxLucoVuKJuZOs6SbxAjT
	8op8GlWWUukk47znnqnNE0CLOr0rMmeXYgUnT3RqosgFuq2oxJxhhEJQLFfPJnUxqWj5
	AXUMrP8PFLMh0jQtpRex/9H2uKpDbK/Ka0cMn8ZCJ+rZfW0rC+Rf6m3/YyK17VfhEeXz
	J/wA==
X-Gm-Message-State: APt69E2cAqwXm06hFbMMUAtKlcYYKbDBr6XJhi3hL3c88QaILEIubF1M
	mQbPsBjOwG4EZqpZw3oE4MIaFzeUpQIrlp9j7No=
X-Google-Smtp-Source: AAOMgpcvXscV9lVuGF+uiWCwY9z+xWsERHnZ6SrfJD+TorS/eHhJ3fZUob7tDZVWZVYF9jZvJF0DtjrR3XAPuYXBGkA=
X-Received: by 2002:aca:e80c:: with SMTP id
	f12-v6mr25678014oih.38.1531161352020; 
	Mon, 09 Jul 2018 11:35:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 11:35:51 -0700 (PDT)
In-Reply-To: <CANNYZj-FRfjjX8N=wRO+J0U4v98yidwXKSoLvLCaaaunXaNBxg@mail.gmail.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>
	<MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CANNYZj-_YFCV7D+aY8kswVzs1Z0-Wjej7LDQiL0qvEiF9mnnSQ@mail.gmail.com>
	<MWHPR19MB11839AC75D87A6A0C38FE263C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CANNYZj-FRfjjX8N=wRO+J0U4v98yidwXKSoLvLCaaaunXaNBxg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jul 2018 20:35:51 +0200
Message-ID: <CANNYZj_ZfAxDd+hfR31AMwZ_UvoT_Bi3zN9tL6aTDSS4E27=PA@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 18:35:53 -0000
Content-Type: text/plain; charset="UTF-8"

Ah, so are you attempting to build 32 bit apps against a 64 bit
openssl from poky? I'd say you need to either enable multilib and
build the apps against lib32-openssl:

https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#combining-multiple-versions-library-files-into-one-image

or make a super-minimal image which doesn't pull in 64 bit openssl.

Alex

2018-07-09 20:16 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com>:
> The error message you've provided is caused by an openssl header
> referring to another header file that doesn't exist. It does not come
> from application code, but is due to openssl being incorrectly
> configured.
>
> Alex
>
> 2018-07-09 20:08 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com>:
>> You may have missed one of my emails (still included here below) w.r.t.
>> where the issue came from.  It's coming from application code outside of
>> Yocto that is built as 32-bit apps, while Poky/BSP are built in 64-bit.
>>
>>
>>
>> ________________________________
>> From: Alexander Kanavin <alex.kanavin@gmail.com>
>> Sent: Monday, July 9, 2018 7:31 AM
>> To: Raymond Yeung
>> Cc: Burton, Ross; yocto@yoctoproject.org
>> Subject: Re: [yocto] How to remove openssl from sysroots
>>
>> Just fix the build issue. Look into how opensslconf.h gets created and where
>> the -32 suffix comes from and why the included file is absent.
>>
>> Seriously - that is less effort than trying to make Yocto do what it really
>> was not designed for, and certainly takes less than one week to resolve.
>>
>> Also, you do not have to use core-image-minimal or -sato, or any of the
>> standard images, if they pull in things that you do not want. Write your own
>> image recipe, and specify there precisely what you want.
>>
>> Alex
>>
>> 2018-07-09 2:32 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com>:
>>
>>
>> + yocto mailing list.
>>
>> ________________________________
>> From: Raymond Yeung <rksyeung@hotmail.com>
>> Sent: Sunday, July 8, 2018 5:31 PM
>> To: Burton, Ross
>> Subject: Re: [yocto] How to remove openssl from sysroots
>>
>>
>> We're not going to integrate everything into one homogeneous package.  Poky
>> and BSP would be together.  Then, we've application codes that we'd build in
>> the same old way with SCONs the way we do before.  The two parts would link
>> together.
>>
>>
>> And we do have a number of 3rd party vendor packages beside openssl.
>> Currently, the issue with openssl is that, we run into build issue with the
>> version we got in 2016 release.  See this:
>>
>>
>>
>>
>> In file included from
>> /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/openssl/evp.h:66:0,
>>
>>                  from src/infra/utils/obf/cv_obfuscate.c:20:
>>
>> /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/openssl/opensslconf.h:41:36:
>> fatal error: openssl/opensslconf-32.h: No such file or directory
>>
>>
>> We plan to use 64-bit kernel, and 32-bit applications.  Perhaps that
>> explains the issue above.  We don't want to spend a lot of effort doing
>> porting simply because we adopt Yocto.  So ideally, if we could remove
>> what's in Yocto, we could integrate our apps with our own openssl; no
>> changes, including upgrade, would be needed.  We'd upgrade when we're ready.
>>
>> Another question from my team is why the "minimal" package includes
>> connectivity, which includes openssl?
>>
>> Raymond
>>
>>
>>

