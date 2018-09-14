Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B5B0E0090C; Fri, 14 Sep 2018 10:23:13 -0700 (PDT)
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
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
	[209.85.217.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2FBEE00720
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 10:23:12 -0700 (PDT)
Received: by mail-vs1-f65.google.com with SMTP id v14-v6so738714vsv.10
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 10:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S+SqRKTor8gRlhmUkWTmDgEI5YcsgZAgKLo6id5Lc5k=;
	b=JzVOTOGa3RCj9m6CqEUF4ORqh9jtz7n4qWuSv9Pccp9zCkPSeShZpHh9eLy3zaiLbJ
	u7I83s3aOBj+put2fSSCDw9NGlSfzdsV9/sugYFrV6ecU/o+oZgoI1KADl5KbuI6NUHS
	pVp6LvCOkykjNTnOq9MTP08C2mXEAn4QstCARCzCZmboppEqpMlpbYM4YicgK+XEl4X+
	Jpb3Ah4uoa1XbNrnDo6DNPBE1vneT/WJo5Z3d3rga5ntTY+Z1ZNE3AwsePxPd4J6hXa+
	GBSqCYhasPWDmT1PssiuMya2Zvw0zpHHS+Xz8qnuyuED6gXhlGR0LA/P/izhU2Si1Ltd
	QxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S+SqRKTor8gRlhmUkWTmDgEI5YcsgZAgKLo6id5Lc5k=;
	b=jMUOk0oUDDAIWwm6QTUVzHbcta1ZoNoxBsnf1PMvhTBQhFvVLpvOVIUL6z3/dhb7Sl
	h8kyLnBbqaJDZfz8STc/WvGKVf7XUvbfLmd4lIOCqS2qdyb/REj1Zb3p3+ac5etR+vJo
	/uaKeHv1pl+cNiTyKbKAgR/FwsxPZUvt8iSINKFBEm2FMgbhHYrLxzG51sqhF3VupVH2
	oskhYPfEQyQccrEe+LlvVCXsQ1KcmRc7SGh9WxpYTdB2vFZbuW/GGOGy7O1HTOfA0V+v
	gybjZWd7nuf3AEj5sfgdkFlrnGPl4RNtk5ozY4xDeGi9R83L2CttjmUE9wFCrRIE+tux
	6Suw==
X-Gm-Message-State: APzg51Bti2SIv9HkBFwej5TWuhjE5iyVvCr4r7qthf8Kqvp0zq0gw0Nw
	Z58FS/kJtfc1ELsKis4YV6dw5VKPMGsKM6RhL+8=
X-Google-Smtp-Source: ANB0Vdb6Ui2RylFi/+Ec/r9i/5d+TFOm9hU0HPqOJQhEgzJjM2u/2o7odZPBbuf9B0mJRUGGvVUC//7oani920ownBs=
X-Received: by 2002:a67:3dc2:: with SMTP id
	p63-v6mr4353704vsi.51.1536945792111; 
	Fri, 14 Sep 2018 10:23:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2904:0:0:0:0:0 with HTTP; Fri, 14 Sep 2018 10:23:11
	-0700 (PDT)
In-Reply-To: <VI1PR01MB1070D437258E6D818CC7A980E0190@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
	<VI1PR01MB10709CA8B94B64B914109AB4E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJ86T=UssgCnWjnqzM5PWDumA+4472YZJMTO4dnhQTMvj=r8yA@mail.gmail.com>
	<VI1PR01MB1070D437258E6D818CC7A980E0190@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 14 Sep 2018 10:23:11 -0700
Message-ID: <CAJ86T=U3ez6-b3tMMayHeFMvzqW9DSwFyCjmcSZX=SBBxjKGUQ@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Fri, 14 Sep 2018 17:23:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 14, 2018 at 1:20 AM, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Thanks for feedback from you.
>
>> If you use BBCLASSEXTEND (ie "the second method") then that recipe naming rule doesn't apply.
> Looks like section's 6.83 current structure wouldn't reflect this fact well. Warning is placed directly below
> one-sentence and indented text describing to BBCLASSEXTEND-case

Yes, I agree. That part of the documentation could certainly be improved.

> krzysiek
>
> -----Original Message-----
> From: Andre McCurdy [mailto:armccurdy@gmail.com]
> Sent: Friday, 14. September 2018 01:05
> To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
> Cc: Burton, Ross <ross.burton@intel.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] inheriting native.bbclass explicitly
>
> On Thu, Sep 13, 2018 at 6:05 AM, Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com> wrote:
>> Current release's reference manual issues in native.bbclass chapter a warning:
>> "When creating a recipe, you must follow this naming convention:      native-myrecipe.bb
>> Not doing so can lead to subtle problems because code exists that depends on the naming convention."
>
> Looks like a mistake in the documentation. Native only recipes (ie recipes which use "inherit native" rather than BBCLASSEXTEND) should have "-native" as a suffix, not "native-" as a prefix.
>
>> Jethro release manual does not point it out.
>> Is this warning really out of relevance for certain past releases e.g. Jethro?
>>
>> Abstracting from question raised above how following two fit all together:
>> "When creating a recipe, you must follow this naming convention:      native-myrecipe.bb"
>> and
>> " The advantage of the second method is that you do not need to have
>> two separate recipes " (2.5.1 Release Reference Manual)
>
> If you use BBCLASSEXTEND (ie "the second method") then that recipe naming rule doesn't apply. ie a recipe using BBCLASSEXTEND should not have a "-native" suffix.
>
>> krzysiek
>>
>> -----Original Message-----
>> From: Burton, Ross [mailto:ross.burton@intel.com]
>> Sent: Thursday, 13. September 2018 14:00
>> To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] inheriting native.bbclass explicitly
>>
>> On 13 September 2018 at 12:39, Dudziak Krzysztof
>> <Krzysztof.Dudziak@gemalto.com> wrote:
>>> Thanks for hints.
>>> I don't want to have this package on target system.
>>> You sound like inheriting explicitly had some major drawback of wide scope.
>>
>> It won't be included in the image unless you add it to the image.
>>
>> Ross
>> ________________________________
>>  This message and any attachments are intended solely for the addressees and may contain confidential information. Any unauthorized use or disclosure, either whole or partial, is prohibited.
>> E-mails are susceptible to alteration. Our company shall not be liable for the message if altered, changed or falsified. If you are not the intended recipient of this message, please delete it and notify the sender.
>> Although all reasonable efforts have been made to keep this transmission free from viruses, the sender will not be liable for damages caused by a transmitted virus.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://emea01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
>> ts.yoctoproject.org%2Flistinfo%2Fyocto&amp;data=02%7C01%7CKrzysztof.Du
>> dziak%40gemalto.com%7Ced60588df01e4484015c08d619cd5ee6%7C37d0a9db7c464
>> 096bfe31add5b495d6d%7C1%7C0%7C636724767194372674&amp;sdata=8GXUXT5abR3
>> BHWxhzbCf0bbYxYqpU7x6r0ZXbQt7clw%3D&amp;reserved=0
> ________________________________
>  This message and any attachments are intended solely for the addressees and may contain confidential information. Any unauthorized use or disclosure, either whole or partial, is prohibited.
> E-mails are susceptible to alteration. Our company shall not be liable for the message if altered, changed or falsified. If you are not the intended recipient of this message, please delete it and notify the sender.
> Although all reasonable efforts have been made to keep this transmission free from viruses, the sender will not be liable for damages caused by a transmitted virus.

