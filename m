Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a70.g.dreamhost.com (caiajhbdcaid.dreamhost.com
	[208.97.132.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C37E016DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 13:18:59 -0700 (PDT)
Received: from homiemail-a70.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a70.g.dreamhost.com (Postfix) with ESMTP id 53D0C76805C;
	Fri,  1 Nov 2013 13:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=aeonyx.ca; bh=nc8adbF
	qTTrVE7XxzbPXzmZbk9g=; b=jZAMokisj899BpMEpWjVXYqnXxpm6/dv4I3qAUh
	QPQHUvUM66ZlgcjNsdv8g67RkLGMKPzdNBEABjHFHLa0exaWbMxHWJ+uo0kwQ4Vr
	73aPq8jPfcjvFLMkAAfPd3GUK9/l3GqdtTpJfZ1IysAVRHdvfcoJ9w4gM0eKFfng
	NWNE=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a70.g.dreamhost.com (Postfix) with ESMTPSA id EAFB3768059; 
	Fri,  1 Nov 2013 13:18:58 -0700 (PDT)
Message-ID: <52740CB1.8090509@aeonyx.ca>
Date: Fri, 01 Nov 2013 16:18:57 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>, yocto@yoctoproject.org
References: <52740457.5020101@aeonyx.ca> <92224899.YSeEgxkEdL@koontz>
In-Reply-To: <92224899.YSeEgxkEdL@koontz>
Subject: Re: bbappend files and "ERROR: no recipes available for"
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
X-List-Received-Date: Fri, 01 Nov 2013 20:19:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi S=F8ren,

Thanks very much for the suggestion. It worked.


On the subject, I noticed you have to be careful when using "+=3D" and=20
"=3D+" to append to variables in bb files. Here is my bbappend file, with=
=20
the proper operator after the PACKAGES variable:

> # Cherrypick the firmware files that we need:
>
> PACKAGES =3D+ " ${PN}-rtl8168d-1"
>
> FILES_${PN}-rtl8168d-1 =3D " \
>   /lib/firmware/rtl_nic/rtl8168d-1.fw \
> "


Previously I had "+=3D", and my custom rtl8168 package file was not being=
=20
generated.

Regards,
Markus



On 11/01/2013 03:48 PM, S=F8ren Holm wrote:
> Hi
>
> Rename your bbappend-file to the exact name of the original recipe.
>
> 1.5 (dora) contains linux-firmware_git.bb in which case the bbappend sh=
ould be
> named linux-firmware_git.bbappend.
>
> Fredag den 1. november 2013 15:43:19 skrev Markus Svilans:
>> Dear list,
>>
>> I am working on a compact filesystem image, that contains firmware onl=
y
>> for the network hardware on the motherboard.
>>
>> Therefore, I created a linux-firmware.bbappend file, with the followin=
g
>>
>> contents:
>>> # Cherrypick the firmware files that we need for our hardware
>>>
>>> #FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>> PACKAGES +=3D "${PN}-rtl8168d-1"
>>>
>>> FILES_${PN}-rtl8168d-1 =3D " \
>>>
>>>    /lib/firmware/rtl_nic/rtl8168d-1.fw \
>>>
>>> "
>> However, running "bitbake linux-firmware" fails with this bbappend fil=
e
>>
>> present:
>>> ERROR: No recipes available for:
>>> /home/markus/yocto/genericx86-64-dora-10.0.0/meta-markus/recipes-kern=
el/li
>>> nux-firmware/linux-firmware.bbappend ERROR: Command execution failed:
>>> Exited with 1
>> Other bbappend files, such as for custom kernel config for linux-yocto=
,
>> worked without complaints.
>>
>> So far, I was following the instructions for using bbappend files here=
:
>> http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#using-=
bbappe
>> nd-files http://www.yoctoproject.org/docs/current/kernel-dev/kernel-de=
v.html
>>
>>
>>   From what I can see, I am setting up my linux-firmware.bbappend file
>> consistently with the instructions.
>>
>> What am I doing wrong here?
>>
>> Thanks very much
>> Markus
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


