Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe003.messaging.microsoft.com [65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A152E00346
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 14:43:08 -0700 (PDT)
Received: from mail194-tx2-R.bigfish.com (10.9.14.247) by
	TX2EHSOBE015.bigfish.com (10.9.40.35) with Microsoft SMTP Server id
	14.1.225.23; Mon, 13 Aug 2012 21:43:07 +0000
Received: from mail194-tx2 (localhost [127.0.0.1])	by
	mail194-tx2-R.bigfish.com (Postfix) with ESMTP id 23D7E3A0234;
	Mon, 13 Aug 2012 21:43:07 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail194-tx2 (localhost.localdomain [127.0.0.1]) by mail194-tx2
	(MessageSwitch) id 1344894185746566_29563;
	Mon, 13 Aug 2012 21:43:05 +0000 (UTC)
Received: from TX2EHSMHS012.bigfish.com (unknown [10.9.14.248])	by
	mail194-tx2.bigfish.com (Postfix) with ESMTP id AA040380197;
	Mon, 13 Aug 2012 21:43:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS012.bigfish.com
	(10.9.99.112) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 13 Aug 2012 21:43:05 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Mon, 13 Aug 2012 16:43:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH] u-boot: correct path to config
	files
Thread-Index: AQHNd0pQ2Rbq5VxZqEWhP91hHCa0eZdYkEmAgAAKLwCAAAPogA==
Date: Mon, 13 Aug 2012 21:43:04 +0000
Message-ID: <CAEsOVNcMgPDEKfxmd4N=uD9BFdTkicgqCroX9HQog6B44wcZPw@mail.gmail.com>
References: <1344638917-31571-1-git-send-email-vladimir_zapolskiy@mentor.com>
	<CAEsOVNeTyGhiZXr63p0wixgFM=WXwyMbq-Vk7MXQcba7Qe6wwQ@mail.gmail.com>
	<5029718C.6020005@mentor.com>
In-Reply-To: <5029718C.6020005@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH] u-boot: correct path to config files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Aug 2012 21:43:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3C78A9565E8D0544824E7E17B3462AD5@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 13, 2012 at 4:28 PM, Vladimir Zapolskiy
<vladimir_zapolskiy@mentor.com> wrote:
> On 13.08.2012 23:52, McClintock Matthew-B29882 wrote:
>>
>> On Fri, Aug 10, 2012 at 5:48 PM, Vladimir Zapolskiy
>> <vladimir_zapolskiy@mentor.com>  wrote:
>>>
>>> The trivial change fixes u-boot compilation task, boot_format utility
>>> installs
>>> board configuration files into a subdirectory of STAGING_DATADIR_NATIVE=
.
>>>
>>> Signed-off-by: Vladimir Zapolskiy<vladimir_zapolskiy@mentor.com>
>>> Cc: Matthew McClintock<msm@freescale.com>
>>> ---
>>>   recipes-kernel/u-boot/u-boot_git.bb |    2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/recipes-kernel/u-boot/u-boot_git.bb
>>> b/recipes-kernel/u-boot/u-boot_git.bb
>>> index 8ced122..4dfb723 100644
>>> --- a/recipes-kernel/u-boot/u-boot_git.bb
>>> +++ b/recipes-kernel/u-boot/u-boot_git.bb
>>> @@ -59,7 +59,7 @@ do_compile () {
>>>                                  cp ${S}/${board}/u-boot.bin
>>> ${S}/${board}/${UBOOT_TARGET}.bin
>>>                          else
>>>                                  ${STAGING_BINDIR_NATIVE}/boot_format \
>>> -
>>> ${STAGING_DATADIR_NATIVE}/${BOOTFORMAT_CONFIG} \
>>> +
>>> ${STAGING_DATADIR_NATIVE}/boot_format/${BOOTFORMAT_CONFIG} \
>>
>>
>> What is this applying against? The current versions of boot-format in
>> meta-fsl-ppc master install to /usr/share/... and this patch seems to
>> break things.
>>
>
> My mistake, the change is against a local clone of boot-format.
>
> Certainly there should be a prior (and trivial) fix against
> boot-format/Makefile source, which sets the installation directory.
>
> I can make the fix, if you want to proceed with this.

I guess, you are saying it's "correct" to put the files in
/usr/share/boot-format instead of /usr/share? That seems sensible...

-M

>
>
>>>                                          ${S}/${board}/u-boot.bin -spi
>>> ${S}/${board}/${UBOOT_TARGET}.bin
>>>                          fi
>>>                  fi
>>> --
>>> 1.7.10.4
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


