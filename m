Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DC9E00F1F; Mon, 29 Aug 2016 06:10:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861A7E00F18
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:10:29 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u7TDAQDc007951; Mon, 29 Aug 2016 08:10:26 -0500
Received: from adi-pc-linux ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016082908102588-265426 ;
	Mon, 29 Aug 2016 08:10:25 -0500 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4MS=7NyodK3chia_1Ev-cr_jNvyMnUWKWSstZZxFMTb5Q@mail.gmail.com>
References: <20160829091905.1068-1-adrian.ratiu@ni.com>
	<CADkTA4MS=7NyodK3chia_1Ev-cr_jNvyMnUWKWSstZZxFMTb5Q@mail.gmail.com>
User-Agent: Notmuch/0.22.1 (https://notmuchmail.org) Emacs/25.1.50.1
	(x86_64-unknown-linux-gnu)
Date: Mon, 29 Aug 2016 16:09:03 +0300
Message-ID: <87shtnvi1c.fsf@adi-pc-linux.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 08/29/2016 08:10:26 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 08/29/2016 08:10:26 AM,
	Serialize complete at 08/29/2016 08:10:26 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-08-29_06:, , signatures=0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core][yocto-kernel-tools][PATCH] merge_configs.sh: fail loudly if make also fails
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
X-List-Received-Date: Mon, 29 Aug 2016 13:10:32 -0000
Content-Type: text/plain

On Mon, 29 Aug 2016, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> On Mon, Aug 29, 2016 at 5:19 AM, Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
> wrote:
>
>> merge_configs.sh calls make on the generated kernel config from
>> the defconfig + fragments to fill in any missing symbols. make
>> can fail and this can lead to nasty errors further on in the
>> build like generating an unbootable kernel image.
>>
>> Check the make return code and fail loudly if non-zero.
>>
>
> We don't want merge config to fail in a scenario like this. It is up to
> whatever
> calls merge_config to add that sort of logic. Which is what I do with the
> kernel
> audit phase of linux-yocto.

Why exactly don't we want to check for errors here? Anyone calling
merge_configs has no way of knowing if this make call failed if we don't
check its return code and pass the error up the call chain.

>
> If you do want to try and make it fail in a scenario like this, the patch
> needs to
> go to the linux kernel mailing list.

I don't understand how sending this patch to lkml helps because
yocto-kernel-tools is a yocto/oe project and is outside the kernel
codebase, no?

>
> Cheers,
>
> Bruce
>
>
>>
>> Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
>> ---
>>  tools/merge_config.sh | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/merge_config.sh b/tools/merge_config.sh
>> index 67d1314..5212f37 100755
>> --- a/tools/merge_config.sh
>> +++ b/tools/merge_config.sh
>> @@ -152,7 +152,10 @@ fi
>>  # alldefconfig: Fills in any missing symbols with Kconfig default
>>  # allnoconfig: Fills in any missing symbols with # CONFIG_* is not set
>>  make KCONFIG_ALLCONFIG=$TMP_FILE $OUTPUT_ARG $ALLTARGET
>> -
>> +if [ "$?" -ne 0 ]; then
>> +    echo "Make failed to fill missing config symbols. Exit." >&2
>> +    exit 1
>> +fi
>
>
>>  # Check all specified config values took (might have missed-dependency
>> issues)
>>  for CFG in $(sed -n "$SED_CONFIG_EXP" $TMP_FILE); do
>> --
>> 2.9.3
>>
>>
>
>
> -- 
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"

