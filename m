Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36EDBE00C29; Wed, 16 Jan 2019 05:17:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2B0E00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 05:17:46 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id w18so2872540ite.1
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 05:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XvYv7Owo5Lv8ABfk80R1+AJGCpuCHyxN8hCUlBItpcg=;
	b=1YLUyew4OdhgxClZmC5sIzOa/OUJHxav+evK6HQPOrVy8JaWj9y01pQtZX8OyAKIfe
	Gd8LBWcajWx7bPA5VWzAP0NcAR2Dj2ztoz8krSFYAuMtrRLYRJgNxokGQXhpxy29xA+7
	H3KnYODyusQ3WZ00vwywEhLkkiVK32r1w8wARNndNlLAdA6bcITyYkDrd5WedNX6GUT8
	RNYsQj2AdCgSvt/z9ONjfAw+GV5v0AevOHy9u4mfyWD5v57w3kIBfcULwUTfyXD5voDt
	ax/t78fyMQ+mHwecc/klMKJqR1cqbJRiG6vIOfl/q9k3lmAOC6PNg6WG3XwNHNzC4VMu
	BwLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XvYv7Owo5Lv8ABfk80R1+AJGCpuCHyxN8hCUlBItpcg=;
	b=nwnte4Let2mFc6i5TbIpXFBBXHM+qBSqeU2ybaAAIYd+oxTGhIITKp7dZ4yGAYPXZ/
	58aFekEvBj9N0QEgF8x0GujzN/dJVL3LDbfybmTfRW3Pd+MRJ/BADgB+Vu1iZ5Dar3bK
	TKw5vrcxRV5A1kPAJfY+yVGB/Up72UVlp6GCwWZpj1gJuIqOAIxBJTCmgKm1DJaDIsJi
	7t666m1v2MycGaSWRLJSRK/lVEoTGBmjb3obq0LssWgLmHHcYwUCXNZwkob43FGeixlt
	DdIZL4vTT3g2lWxU8BYMSEj1F0xluYBnmhi7AxPrWpMVKkpiwzDFXLt60vtgTXvpeCV3
	uzHQ==
X-Gm-Message-State: AJcUukdMaAtBeChog38cCK9S/nj+jp3GbXtwqjFIaqTScPI0Bdw3ceEN
	gNPQBk5McL38yJYNoYNg1HMy9dpkLtHUqZ3c7UVAzQ==
X-Google-Smtp-Source: ALg8bN72mo/RLUQAWeT+W+VevwydMMUGB0M/BI4dOJUZiq7gbriyhDRQX3EDiWT0KP32EYk33QXE9Xmr74k8hiZQiMI=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr5102388ite.26.1547644665811; 
	Wed, 16 Jan 2019 05:17:45 -0800 (PST)
MIME-Version: 1.0
References: <1547631395-435805-1-git-send-email-changqing.li@windriver.com>
	<CAJdd5GbEiSAaRw0Fonftxf465-QigYF-p7SpG0y3dWbfe1Jkrw@mail.gmail.com>
In-Reply-To: <CAJdd5GbEiSAaRw0Fonftxf465-QigYF-p7SpG0y3dWbfe1Jkrw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Jan 2019 13:17:34 +0000
Message-ID: <CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] mingw32-common: change mingw sdk to .zip type
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
X-List-Received-Date: Wed, 16 Jan 2019 13:17:47 -0000
Content-Type: text/plain; charset="UTF-8"

Just in case you hadn't noticed, that this depends on a corresponding
patch to oe-core, which I've comments on.

Ross

On Wed, 16 Jan 2019 at 13:14, Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
>
> On Wed, Jan 16, 2019, 3:37 AM <changqing.li@windriver.com wrote:
>>
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Current sdk type is tar.xz, but for mingw sdk, since we
>> have symlink under the sdk folder, 7zip which used to
>> extract tar.xz cannot handle it, refer 7zip upstream bug:
>> https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
>> so change to .zip type
>>
>> Also tried to use option --dereference of tar which use means:
>> "follow symlinks; archive and dump the files they point to"
>> with this option, when archive it will deal with symlink to hard link,
>> but windows not support hard link, so drop this solution,
>> and use .zip for windows.
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>>  conf/machine-sdk/include/mingw32-common.inc | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
>> index 9011ded..dbad50a 100644
>> --- a/conf/machine-sdk/include/mingw32-common.inc
>> +++ b/conf/machine-sdk/include/mingw32-common.inc
>> @@ -46,3 +46,8 @@ GCCPIE_mingw32 = ""
>>  # wine and wineserver are required to test MinGW SDKs
>>  HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
>>
>> +# mingw sdk use .zip type
>> +SDK_TAR_TYPE = "zip"
>> +SDK_TAR_DEPENDS = "zip-native"
>> +SDK_TAR_CMD ?= "zip -r  ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME}.${SDK_TAR_TYPE} ."
>> +
>
>
> You will also need to update the QA tests, since right now they expecting a tar file (lib/oeqa/sdkmingw/testsdk.py)
>
>> --
>>
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

