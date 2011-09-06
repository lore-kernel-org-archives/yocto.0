Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6488EE0128E
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 02:22:33 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iafi7 with SMTP id i7so10537754iaf.35
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2011 02:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Q9GhjdFNxT6dVhoZJgkVOa9iIxziK0BmC6UsKePWjVM=;
	b=gsKKwE+j7ICyWLJjxslVrtbPLxS6nljQn+EjD17Cp/c9Hgz/olOwji9JMd8jSX2M3U
	WiXUMf0+mcQ0jUg5jAAyblvy6RA6et6eBuaP8e1eXZPEDQngyxuaEmH7ty7aNB2wn8Bt
	TDtYrXWNaSJOwfTc6DlBJCDujW67YlNHv2c1I=
MIME-Version: 1.0
Received: by 10.231.6.165 with SMTP id 37mr9227609ibz.64.1315300951842; Tue,
	06 Sep 2011 02:22:31 -0700 (PDT)
Received: by 10.231.158.72 with HTTP; Tue, 6 Sep 2011 02:22:31 -0700 (PDT)
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F30C590D755@shsmsx502.ccr.corp.intel.com>
References: <CAFqH_53qx7d13w-AcNErp5qm9HmhOOkPU62pD03Xv222YMO8YQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D6B8@shsmsx502.ccr.corp.intel.com>
	<CAFqH_520LDVehR==BXrmLxG_9y=Dsh5NydND1KCkG4QKOd6bdQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D755@shsmsx502.ccr.corp.intel.com>
Date: Tue, 6 Sep 2011 11:22:31 +0200
Message-ID: <CAFqH_53thaUBy3Qd_ZBmSefoHa9ijLWs9p-Qe+dg6JCP_PR3jg@mail.gmail.com>
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
X-List-Received-Date: Tue, 06 Sep 2011 09:22:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>> Hi Lianhao,
>>
>> 2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
>>> Hi Enric,
>>>
>>> Which version of the Yocto eclipse plug-in did you use?
>>
>> I'm using version 1.0 from
>> http://www.yoctoproject.org/downloads/eclipse-plugin/1.0 with latest
>> yocto mainline from git.
>
> I believe the latest changes in Yocto mainline is not compatible with the=
 1.0 plugin due to some file/variable name changes in the Yocto mainline.

Ah ok, that could explain my problem, thanks
>
> -Lianhao
>
>>
>>> Have you configure the plug-in as mentioned in manual section 4.1.3?
>>
>> Yes, I followed these steps I will review the steps to see if I'm
>> missing something ...
>>
>> Cheers,
>> =C2=A0 Enric
>>>
>>> Best Regards,
>>> -Lianhao
>>>
>>> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>>>> Hi all,
>>>>
>>>> Following
>>>> http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.htm
>>>> (chapter 4.2), when I=E2=80=99m creating a New Project I=E2=80=99m get=
ting the message:
>>>>
>>>> =C2=A0 Error Creating Project
>>>> =C2=A0 Project cannot be created
>>>> =C2=A0 Reason: Internal Error: java.lang.NullPointerException I'm
>>>> running Eclipse Helios (Version: Helios Service Release 2, Build
>>>> id: 20110301-1815) on Ubuntu 10.10 machine.
>>>>
>>>> Any clue with this ?
>>>>
>>>> Thanks in advance,
>>>> =C2=A0 =C2=A0Enric
>>>
>
>
>

