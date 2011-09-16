Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6BFFE00506
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 23:58:17 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so3176545iab.35
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 23:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=ThPqn429aBB14vNGv6LsBPOayBzmggWMiTk0nFi0gGY=;
	b=fvPoqHQvZ2pPOIDb6Rn3L4sfGta+jGBRCx/o/kXrNN6cvz4fWM+Mw9dHJgo6oO9xOu
	ViDjNeOKjkpL7H1OxbpicTLDDq1wzUFWOiE4QP4i/vMSCpi0+93VKjuxDj6c5hUoW2/4
	5Aa6k1So6wwol3HuLakZe9/Z4+X6IA44h9VjQ=
MIME-Version: 1.0
Received: by 10.231.45.73 with SMTP id d9mr3296547ibf.64.1316156296813; Thu,
	15 Sep 2011 23:58:16 -0700 (PDT)
Received: by 10.231.158.72 with HTTP; Thu, 15 Sep 2011 23:58:16 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16E703EB@ORSMSX101.amr.corp.intel.com>
References: <CAFqH_53qx7d13w-AcNErp5qm9HmhOOkPU62pD03Xv222YMO8YQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D6B8@shsmsx502.ccr.corp.intel.com>
	<CAFqH_520LDVehR==BXrmLxG_9y=Dsh5NydND1KCkG4QKOd6bdQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D755@shsmsx502.ccr.corp.intel.com>
	<CAFqH_53thaUBy3Qd_ZBmSefoHa9ijLWs9p-Qe+dg6JCP_PR3jg@mail.gmail.com>
	<CAFqH_51jJjMvVMJpr6a6RazvnToB7reXVNU-+6c86FqzuFvFzA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16E703EB@ORSMSX101.amr.corp.intel.com>
Date: Fri, 16 Sep 2011 08:58:16 +0200
Message-ID: <CAFqH_51sZFsP_pqZ=quEed54YK06yWq8ZLjZPwM+NMHZn_2nbg@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Fri, 16 Sep 2011 06:58:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2011/9/15 Zhang, Jessica <jessica.zhang@intel.com>:
> Hi Eric,
>
> The eclipse 1.0 works with Yocto 1.0 release. =C2=A0For the latest Yocto =
mainline, we'd advise you to update to eclipse Indigo, 1.1_M3.final is upda=
ted for Indigo. =C2=A0We're working on the document including how to config=
ure Indigo at the moment for the upcoming Yocto Oct. release. =C2=A0Below i=
s the section talks about how to configure your Indigo to work with Yocto p=
lug-in. =C2=A0After doing this, you can just use the yocto eclipse of maste=
r. =C2=A0Hope this will get you going.
>
> Thanks,
> Jessica
>
> 1. =C2=A0 =C2=A0 =C2=A0Start the Eclipse IDE.
> 2. =C2=A0 =C2=A0 =C2=A0Select "Install New Software" from the "Help" pull=
-down menu.
> 3. =C2=A0 =C2=A0 =C2=A0Select Indego - http://download.eclipse.org/releas=
es/indego from the "Work with:" pull-down menu.
> 4. =C2=A0 =C2=A0 =C2=A0Expand the box next to Programming Languages and s=
elect the Autotools Support for CDT (incubation) and C/C++ Development Tool=
s boxes.
> 5. =C2=A0 =C2=A0 =C2=A0Complete the installation and restart the Eclipse =
IDE.
> 6. =C2=A0 =C2=A0 =C2=A0Select "Install New Software" from the "Help" pull=
-down menu.
> 7. =C2=A0 =C2=A0 =C2=A0After the Eclipse IDE restarts, click the "Availab=
le Software Sites" link.
> 8. =C2=A0 =C2=A0 =C2=A0Check the box next to http://download.eclipse.org/=
tm/updates/3.3 and click "OK".
> 9. =C2=A0 =C2=A0 =C2=A0Select http://download.eclipse.org/tm/updates/3.3 =
from the "Work with:" pull-down menu.
> 10. =C2=A0 =C2=A0 Check the box next to TM and RSE Main Features.
> 11. =C2=A0 =C2=A0 Expand the box next to TM and RSE Optional Add-ons and =
select every item except RSE Unit Tests and RSE WinCE Services (incubation)=
.
> 12. =C2=A0 =C2=A0 Complete the installation and restart the Eclipse IDE.
> 13. =C2=A0 =C2=A0 After the Eclipse IDE restarts, click the "Available So=
ftware Sites" link.
> 14. =C2=A0 =C2=A0 Check the box next to http://download.eclipse.org/tools=
/cdt/releases/indego and click "OK".
> 15. =C2=A0 =C2=A0 Select http://download.eclipse.org/tools/cdt/releases/i=
ndego from the "Work with:" pull-down menu.
> 16. =C2=A0 =C2=A0 Check the box next to CDT Main Features.
> 17. =C2=A0 =C2=A0 Expand the box next to CDT Optional Features and select=
 C/C++ Remote Launch and Target Communication Framework (incubation).
> 18. =C2=A0 =C2=A0 Complete the installation and restart the Eclipse IDE.
>
>

Hi Jessica,

Thanks for the instructions, they work.

Best regards,
  Enric

>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Enric Balletb=C3=B2 i Serra
> Sent: Thursday, September 15, 2011 1:35 AM
> To: Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Error Creating Project with Eclipse IDE
>
> 2011/9/6 Enric Balletb=C3=B2 i Serra <eballetbo@gmail.com>:
>> 2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
>>> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>>>> Hi Lianhao,
>>>>
>>>> 2011/9/6 Lu, Lianhao <lianhao.lu@intel.com>:
>>>>> Hi Enric,
>>>>>
>>>>> Which version of the Yocto eclipse plug-in did you use?
>>>>
>>>> I'm using version 1.0 from
>>>> http://www.yoctoproject.org/downloads/eclipse-plugin/1.0 with latest
>>>> yocto mainline from git.
>>>
>>> I believe the latest changes in Yocto mainline is not compatible with t=
he 1.0 plugin due to some file/variable name changes in the Yocto mainline.
>>
>> Ah ok, that could explain my problem, thanks
>>>
>>> -Lianhao
>>>
>>>>
>>>>> Have you configure the plug-in as mentioned in manual section 4.1.3?
>>>>
>>>> Yes, I followed these steps I will review the steps to see if I'm
>>>> missing something ...
>>>>
>>>> Cheers,
>>>> =C2=A0 Enric
>>>>>
>>>>> Best Regards,
>>>>> -Lianhao
>>>>>
>>>>> Enric Balletb=C3=B2 i Serra wrote on 2011-09-06:
>>>>>> Hi all,
>>>>>>
>>>>>> Following
>>>>>> http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.htm
>>>>>> (chapter 4.2), when I=E2=80=99m creating a New Project I=E2=80=99m g=
etting the message:
>>>>>>
>>>>>> =C2=A0 Error Creating Project
>>>>>> =C2=A0 Project cannot be created
>>>>>> =C2=A0 Reason: Internal Error: java.lang.NullPointerException I'm
>>>>>> running Eclipse Helios (Version: Helios Service Release 2, Build
>>>>>> id: 20110301-1815) on Ubuntu 10.10 machine.
>>>>>>
>>>>>> Any clue with this ?
>>>>>>
>>>>>> Thanks in advance,
>>>>>> =C2=A0 =C2=A0Enric
>>>>>
>>>
>>>
>>>
>>
>
> I see the same error using 1.1_M3.final tag from git repositories, is
> this problem solved anywhere ? Maybe in master ?
>
> Thanks,
> =C2=A0Enric
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

