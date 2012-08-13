Return-Path: <Vladimir_Zapolskiy@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B356E00718
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 14:28:53 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1T12Bw-0001Ig-53 from Vladimir_Zapolskiy@mentor.com ;
	Mon, 13 Aug 2012 14:28:52 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Mon, 13 Aug 2012 14:28:52 -0700
Received: from [172.30.5.162] (137.202.0.76) by SVR-IES-FEM-01.mgc.mentorg.com
	(137.202.0.104) with Microsoft SMTP Server (TLS) id 14.1.289.1;
	Mon, 13 Aug 2012 22:28:49 +0100
Message-ID: <5029718C.6020005@mentor.com>
Date: Tue, 14 Aug 2012 00:28:44 +0300
From: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <1344638917-31571-1-git-send-email-vladimir_zapolskiy@mentor.com>
	<CAEsOVNeTyGhiZXr63p0wixgFM=WXwyMbq-Vk7MXQcba7Qe6wwQ@mail.gmail.com>
In-Reply-To: <CAEsOVNeTyGhiZXr63p0wixgFM=WXwyMbq-Vk7MXQcba7Qe6wwQ@mail.gmail.com>
X-Originating-IP: [137.202.0.76]
X-OriginalArrivalTime: 13 Aug 2012 21:28:52.0025 (UTC)
	FILETIME=[A267D290:01CD799A]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH] u-boot: correct path to config files
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
X-List-Received-Date: Mon, 13 Aug 2012 21:28:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13.08.2012 23:52, McClintock Matthew-B29882 wrote:
> On Fri, Aug 10, 2012 at 5:48 PM, Vladimir Zapolskiy
> <vladimir_zapolskiy@mentor.com>  wrote:
>> The trivial change fixes u-boot compilation task, boot_format utility installs
>> board configuration files into a subdirectory of STAGING_DATADIR_NATIVE.
>>
>> Signed-off-by: Vladimir Zapolskiy<vladimir_zapolskiy@mentor.com>
>> Cc: Matthew McClintock<msm@freescale.com>
>> ---
>>   recipes-kernel/u-boot/u-boot_git.bb |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-kernel/u-boot/u-boot_git.bb b/recipes-kernel/u-boot/u-boot_git.bb
>> index 8ced122..4dfb723 100644
>> --- a/recipes-kernel/u-boot/u-boot_git.bb
>> +++ b/recipes-kernel/u-boot/u-boot_git.bb
>> @@ -59,7 +59,7 @@ do_compile () {
>>                                  cp ${S}/${board}/u-boot.bin  ${S}/${board}/${UBOOT_TARGET}.bin
>>                          else
>>                                  ${STAGING_BINDIR_NATIVE}/boot_format \
>> -                                       ${STAGING_DATADIR_NATIVE}/${BOOTFORMAT_CONFIG} \
>> +                                       ${STAGING_DATADIR_NATIVE}/boot_format/${BOOTFORMAT_CONFIG} \
>
> What is this applying against? The current versions of boot-format in
> meta-fsl-ppc master install to /usr/share/... and this patch seems to
> break things.
>

My mistake, the change is against a local clone of boot-format.

Certainly there should be a prior (and trivial) fix against
boot-format/Makefile source, which sets the installation directory.

I can make the fix, if you want to proceed with this.

>>                                          ${S}/${board}/u-boot.bin -spi ${S}/${board}/${UBOOT_TARGET}.bin
>>                          fi
>>                  fi
>> --
>> 1.7.10.4
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

