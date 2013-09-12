Return-Path: <B19406@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C19E013DA;
	Thu, 12 Sep 2013 04:34:06 -0700 (PDT)
Received: from mail84-tx2-R.bigfish.com (10.9.14.228) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.22; Thu, 12 Sep 2013 11:34:05 +0000
Received: from mail84-tx2 (localhost [127.0.0.1])	by mail84-tx2-R.bigfish.com
	(Postfix) with ESMTP id 157231E0170;
	Thu, 12 Sep 2013 11:34:05 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -6
X-BigFish: VS-6(z5109h5105hzbb2dI98dI9371Ic89bh1432I1418I4015Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hz8dhz1de098h1de097h186068h8275bh8275dhz2dh2a8h839h93fhd25he5bhf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h18e1h190ch1946h19b4h19c3h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1f5fh1fe8h1ff5h209eh1155h)
Received: from mail84-tx2 (localhost.localdomain [127.0.0.1]) by mail84-tx2
	(MessageSwitch) id 1378985642610241_6995;
	Thu, 12 Sep 2013 11:34:02 +0000 (UTC)
Received: from TX2EHSMHS015.bigfish.com (unknown [10.9.14.235])	by
	mail84-tx2.bigfish.com (Postfix) with ESMTP id 8E54812005C;
	Thu, 12 Sep 2013 11:34:02 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS015.bigfish.com
	(10.9.99.115) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Thu, 12 Sep 2013 11:34:02 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.3.158.2; Thu, 12 Sep 2013 11:34:01 +0000
Received: from [10.29.244.63] ([10.29.244.63])	by tx30smr01.am.freescale.net
	(8.14.3/8.14.0) with ESMTP id r8CBXxNv019258;
	Thu, 12 Sep 2013 04:34:00 -0700
Message-ID: <5231A5B3.2040804@freescale.com>
Date: Thu, 12 Sep 2013 08:29:55 -0300
From: Daiane Angolini <daiane.angolini@freescale.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: jojo <rjiejie@gmail.com>
References: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
	<CA+AhUGxEebNBYp64mBh3TbCrn2_n4GDsi1KB3O_Tk0mpwj7jMQ@mail.gmail.com>
	<8AFAD819783F4C2CB04F1D5A9CA05C48@gmail.com>
	<B009182FF2944A11AD49E18C5954CCBE@gmail.com>
In-Reply-To: <B009182FF2944A11AD49E18C5954CCBE@gmail.com>
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IFttZXRhLWZyZWVzY2FsZV0g5Zue5aSN77yaIGhvdyB0byBpbnN0YWxsIHB1bHNlYXVkaW8gY29tcGxldGVseQ==?=
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
X-List-Received-Date: Thu, 12 Sep 2013 11:34:07 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/12/2013 07:07 AM, jojo wrote:
> Hi,

Hi Jojo,

> I installed pulse audio server in IMX6QSD of FSL, but there is no outpu=
t
> of audio with HDMI :(

Please, double check if pulseaudio is in your DISTRO_FEATURES (i think=20
it's default, but I cannot remember exactly)

bitbake -e | grep ^DISTRO_FEATURES

How are you configuring HDMI audio? I know there is a doc in=20
imx-community with the audio configuration if you want to change it from=20
default to HDMI.


>
> how to track the log of the pulse audio ?
>
> Thanks,
>
> - Jojo
>
> =E5=9C=A8 2013=E5=B9=B47=E6=9C=8816=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C=
=EF=BC=8C=E4=B8=8B=E5=8D=8811:32=EF=BC=8Cjojo =E5=86=99=E9=81=93=EF=BC=9A
>
>> Hi,
>> Ok & i will have a try, thanks for your reply :)
>>
>> Thanks,
>>
>> - Jojo
>>
>> =E5=9C=A8 2013=E5=B9=B47=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94=
=EF=BC=8C=E4=B8=8B=E5=8D=886:45=EF=BC=8CErik Bot=C3=B6 =E5=86=99=E9=81=93=
=EF=BC=9A
>>
>>> Hi,
>>> On Fri, Jul 12, 2013 at 12:35 PM, jojo <rjiejie@gmail.com
>>> <mailto:rjiejie@gmail.com>> wrote:
>>>> Hi,
>>>> My yocto version/tag is dylan.
>>>> I have compiled fsl-image-gui to testing the the audio output, but i
>>>> can not find
>>>> anything about for pulseaudio server to start up daemon.
>>>>
>>>> I saw the build code in the path about for
>>>> "build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r0=
/image/"
>>>> and it really have built all things of pulseaudio. but when i create
>>>> the fsl-image-gui to start up, i just find "libpulse*" in the
>>>> rootfs.
>>>>
>>>> I think that something wrong with pulseaudio configure so that it do
>>>> not install completely by default.
>>>
>>> The pulseaudio daemon is packaged as pulseaudio-server, maybe the
>>> image doesn't install that package by default?
>>> Cheers,
>>> Erik Bot=C3=B6
>>>
>>>>
>>>> someone know about that how to install pulseaudio completely ?
>>>>
>>>> Thanks,
>>>>
>>>> - Jojo
>>>>
>>>>
>>>> _______________________________________________
>>>> meta-freescale mailing list
>>>> meta-freescale@yoctoproject.org <mailto:meta-freescale@yoctoproject.=
org>
>>>> https://lists.yoctoproject.org/listinfo/meta-freescale
>>>>
>>>
>>
>
>
>
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>


--=20
Daiane


