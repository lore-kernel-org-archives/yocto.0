Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712EEE004D1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 01:35:05 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so1566998iab.35
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 01:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=/PvXqiaxBS6udAoxg8aa2TjuTaqKBDxpa3QT9VjEvZo=;
	b=EbMRJ/Gw/IprKswrQ7Mj80nwmgY4yVpJq24Y8SQMecK3vyGZTb3TtKcLfjJiMM784J
	OopMs18FcsfA4mId71qxH7+z/yC1t4+TI87CclFrx3bqDudiLUEn12bMhkENByKRCMao
	RQB2Lwx3HknvVjQccHVqBfJL5LaYrKGI84+6k=
MIME-Version: 1.0
Received: by 10.231.83.135 with SMTP id f7mr1419449ibl.90.1316075704909; Thu,
	15 Sep 2011 01:35:04 -0700 (PDT)
Received: by 10.231.158.72 with HTTP; Thu, 15 Sep 2011 01:35:04 -0700 (PDT)
In-Reply-To: <CAFqH_53thaUBy3Qd_ZBmSefoHa9ijLWs9p-Qe+dg6JCP_PR3jg@mail.gmail.com>
References: <CAFqH_53qx7d13w-AcNErp5qm9HmhOOkPU62pD03Xv222YMO8YQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D6B8@shsmsx502.ccr.corp.intel.com>
	<CAFqH_520LDVehR==BXrmLxG_9y=Dsh5NydND1KCkG4QKOd6bdQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D755@shsmsx502.ccr.corp.intel.com>
	<CAFqH_53thaUBy3Qd_ZBmSefoHa9ijLWs9p-Qe+dg6JCP_PR3jg@mail.gmail.com>
Date: Thu, 15 Sep 2011 10:35:04 +0200
Message-ID: <CAFqH_51jJjMvVMJpr6a6RazvnToB7reXVNU-+6c86FqzuFvFzA@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error Creating Project with Eclipse IDE
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Sep 2011 08:35:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2011/9/6 Enric Balletb=C3=B2 i Serra <eballetbo@gmail.com>:
> 2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
>> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>>> Hi Lianhao,
>>>
>>> 2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
>>>> Hi Enric,
>>>>
>>>> Which version of the Yocto eclipse plug-in did you use?
>>>
>>> I'm using version 1.0 from
>>> http://www.yoctoproject.org/downloads/eclipse-plugin/1.0 with latest
>>> yocto mainline from git.
>>
>> I believe the latest changes in Yocto mainline is not compatible with th=
e 1.0 plugin due to some file/variable name changes in the Yocto mainline.
>
> Ah ok, that could explain my problem, thanks
>>
>> -Lianhao
>>
>>>
>>>> Have you configure the plug-in as mentioned in manual section 4.1.3?
>>>
>>> Yes, I followed these steps I will review the steps to see if I'm
>>> missing something ...
>>>
>>> Cheers,
>>> =C2=A0 Enric
>>>>
>>>> Best Regards,
>>>> -Lianhao
>>>>
>>>> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>>>>> Hi all,
>>>>>
>>>>> Following
>>>>> http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.htm
>>>>> (chapter 4.2), when I=E2=80=99m creating a New Project I=E2=80=99m ge=
tting the message:
>>>>>
>>>>> =C2=A0 Error Creating Project
>>>>> =C2=A0 Project cannot be created
>>>>> =C2=A0 Reason: Internal Error: java.lang.NullPointerException I'm
>>>>> running Eclipse Helios (Version: Helios Service Release 2, Build
>>>>> id: 20110301-1815) on Ubuntu 10.10 machine.
>>>>>
>>>>> Any clue with this ?
>>>>>
>>>>> Thanks in advance,
>>>>> =C2=A0 =C2=A0Enric
>>>>
>>
>>
>>
>

I see the same error using 1.1_M3.final tag from git repositories, is
this problem solved anywhere ? Maybe in master ?

Thanks,
  Enric

