Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A71E2E0044A
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 07:52:07 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.298.4;
	Tue, 21 Aug 2012 16:52:04 +0200
Message-ID: <5033A10E.1030000@enea.com>
Date: Tue, 21 Aug 2012 16:54:06 +0200
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
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<5031E600.8030208@enea.com>
	<CAMKF1spkpnDye4NxNpTSKsC6CVebTfm1_1roW5viO=xMZz50ug@mail.gmail.com>
	<CAEsOVNfb=KeN_WGWfuyPT6MTiY9S9nEkz6pn5G6xp+-Jroeh5g@mail.gmail.com>
	<CAMKF1srF6AYbJzCGN989kweBmcz6Y-BGvyCiAhHGTPDoOYESYQ@mail.gmail.com>
	<CAEsOVNfcBKAHut3Mw3tCb93TgkwW6uQE5J1DVSSez65oczNvMg@mail.gmail.com>
	<CAEsOVNfBgOGgmZm4BehTAm28v703d7Ao9ehkE2GD+dwxKswtOw@mail.gmail.com>
In-Reply-To: <CAEsOVNfBgOGgmZm4BehTAm28v703d7Ao9ehkE2GD+dwxKswtOw@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 Aug 2012 14:52:08 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/20/2012 09:50 PM, McClintock Matthew-B29882 wrote:
> Adding David back...
>
> -M
>
> On Mon, Aug 20, 2012 at 2:42 PM, Matthew McClintock <msm@freescale.com> wrote:
>> On Mon, Aug 20, 2012 at 2:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> I just checked and we do have a few obscure bits in our kernel tree's
>>>> header files. Nothing that 99.9% would use but it seems reasonable to
>>>> include these...
>>> Do you want applications for sdk host to be built using these obscure bits ?
>>> if yes I would like to know why?
>>>
>>> since then you are creating a scenariou where nativesdk is dependent on target
>>> kernel and we need to fix it so that nativesdk can be common again.
>>>
>>> if patches you are carrying are good for nativesdk headers can they be made
>>> available for other kernels like linux-yocto e.g. ?
>>>
>>> right now if we do this we are pretty much saying fsl machine layer can really
>>> not mix with other BSPs. Many people use yocto commonly on more than one kind
>>> of CPU and this does not scale.
>> Hmm I think I was just confused. We don't need any modifications for
>> the headers for nativesdk foo (that is the x86 tools in
>> meta-toolchain).
>>
>> So, I think everything is OK as is.. if you look at meta-toolchain you
>> will see it includes our kernel's headers for cross compiling.
>>
>> -M

Oh, sorry for the misunderstanding

I was under the impression that linux-libc-headers-nativesdk was 
installed under
/opt/poky/1.2/sysroots/<target-sysroot>/..., which it obviously is not.

Br,
David

