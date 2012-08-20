Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2ED6AE013F7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 00:21:48 -0700 (PDT)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.298.4;
	Mon, 20 Aug 2012 09:21:45 +0200
Message-ID: <5031E600.8030208@enea.com>
Date: Mon, 20 Aug 2012 09:23:44 +0200
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
In-Reply-To: <CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
X-Originating-IP: [172.16.140.132]
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 20 Aug 2012 07:21:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/14/2012 09:26 PM, Khem Raj wrote:
> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=C3=B6m <david.nystrom@enea.=
com> wrote:
>> Hi, it looks like this was merged to the denzil branch, and
>> PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to
>> distro.conf.
>> Any reason for this ?
> why do you want nativesdk headers to come from BSP its a fsl-ppc bsp I
> dont expect it to have something special for SDK hosts which are
> usually x86 ? afterall these are for
> the SDK host and not for target. Moreover it means that this BSP will
> not play in the multi BSP environment something you never want.

My main concern is that meta-toolchain uses linux-libc-headers-nativesdk=20
for the meta-toolchain
tarball build, i.e. the meta-toolchain API may differ from the on-target=20
API in regards to kernel-headers, no ?

This might very well be true if kernel version of=20
linux-libc-headers-nativesdk !=3D linux-libc-headers

Br,
David




