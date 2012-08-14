Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 26C20E002AC
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 00:47:46 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.298.4;
	Tue, 14 Aug 2012 09:47:44 +0200
Message-ID: <502A0308.6080203@enea.com>
Date: Tue, 14 Aug 2012 09:49:28 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
In-Reply-To: <CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
X-Originating-IP: [172.16.140.132]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Tue, 14 Aug 2012 07:47:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/07/2012 12:39 AM, McClintock Matthew-B29882 wrote:
> On Jul 6, 2012 5:35 PM, "David Nystr=C3=B6m" <David.Nystrom@enea.com<mail=
to:David.Nystrom@enea.com>> wrote:
>> Yes this was my suggestion, since you might not want to change the nativ=
esdk kernel headers for all machines in all BSP layers, if the distro is us=
ing multiple BSP layers, which it probably should be able to do.
>> Setting this  with machine overrides in distro.conf  is possible but qui=
te  messy IMHO.
>> Furthermore , the nativesdk is set by ?=3D in machine.conf, any distro.c=
onf  wanting to alter this to a global setting can easily override with  =
=3D
> I actually agree and was hoping to move everything possible out of distro=
.conf files. And make it easy as possible for folks to use meta-fsl-ppc in =
their own distro.
>
> -M


Hi, it looks like this was merged to the denzil branch, and=20
PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to=20
distro.conf.
Any reason for this ?

>
>>
>> Sent from Android
>>
>>
>> -----Original Message-----
>> From: McClintock Matthew-B29882 [B29882@freescale.com<mailto:B29882@free=
scale.com>]
>> Received: Friday, 06 Jul 2012, 17:48
>> To: David Nystr=C3=B6m [David.Nystrom@enea.com<mailto:David.Nystrom@enea=
.com>]
>> CC: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org> [yocto@yoctopr=
oject.org<mailto:yocto@yoctoproject.org>]; raj.khem@gmail.com<mailto:raj.kh=
em@gmail.com> [raj.khem@gmail.com<mailto:raj.khem@gmail.com>]
>> Subject: Re: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq=
-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
>>
>>
>>
>> On Fri, Jul 6, 2012 at 5:49 AM, David Nystr=C3=B6m <David.Nystrom@enea.c=
om<mailto:David.Nystrom@enea.com>> wrote:
>>> So that about a disto refusing this and possibly other BSP layers ?
>>> Should the disto.conf  select of nativesdk be made machine specific on =
all machines in meta-fsl-ppc ? And one added target after a meta-fsl-ppc re=
base would break stuff, I guess.
>> I don't quite follow... you are suggesting we have
>>
>> PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D
>> "linux-qoriq-sdk-headers-nativesdk"
>>
>> in the machine.conf files instead?
>>
>> -M
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto


