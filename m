Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E68E2E00C71; Wed, 16 Jan 2019 23:50:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8097E00C46
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 23:50:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0H7nhP9002923
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Jan 2019 23:49:53 -0800
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 16 Jan 2019 23:49:32 -0800
To: "Burton, Ross" <ross.burton@intel.com>, Joshua Watt <jpewhacker@gmail.com>
References: <1547631395-435805-1-git-send-email-changqing.li@windriver.com>
	<CAJdd5GbEiSAaRw0Fonftxf465-QigYF-p7SpG0y3dWbfe1Jkrw@mail.gmail.com>
	<CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <d7c19b0c-f858-c301-7276-d1f3e3e69101@windriver.com>
Date: Thu, 17 Jan 2019 15:49:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
X-Originating-IP: [128.224.162.228]
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] mingw32-common: change mingw sdk to .zip type
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
X-List-Received-Date: Thu, 17 Jan 2019 07:50:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ross and Joshua,  thanks for your comments,  I will send a v2 later.

On 1/16/19 9:17 PM, Burton, Ross wrote:
> Just in case you hadn't noticed, that this depends on a corresponding
> patch to oe-core, which I've comments on.
>
> Ross
>
> On Wed, 16 Jan 2019 at 13:14, Joshua Watt <jpewhacker@gmail.com> wrote:
>>
>>
>> On Wed, Jan 16, 2019, 3:37 AM <changqing.li@windriver.com wrote:
>>> From: Changqing Li <changqing.li@windriver.com>
>>>
>>> Current sdk type is tar.xz, but for mingw sdk, since we
>>> have symlink under the sdk folder, 7zip which used to
>>> extract tar.xz cannot handle it, refer 7zip upstream bug:
>>> https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
>>> so change to .zip type
>>>
>>> Also tried to use option --dereference of tar which use means:
>>> "follow symlinks; archive and dump the files they point to"
>>> with this option, when archive it will deal with symlink to hard link,
>>> but windows not support hard link, so drop this solution,
>>> and use .zip for windows.
>>>
>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>> ---
>>>   conf/machine-sdk/include/mingw32-common.inc | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
>>> index 9011ded..dbad50a 100644
>>> --- a/conf/machine-sdk/include/mingw32-common.inc
>>> +++ b/conf/machine-sdk/include/mingw32-common.inc
>>> @@ -46,3 +46,8 @@ GCCPIE_mingw32 = ""
>>>   # wine and wineserver are required to test MinGW SDKs
>>>   HOSTTOOLS += "${@'wine wineserver' if (bb.utils.contains_any('IMAGE_CLASSES', 'testsdk', True, False, d) or any(x in (d.getVar("BBINCLUDED") or "") for x in ["testsdk.bbclass"])) else ''}"
>>>
>>> +# mingw sdk use .zip type
>>> +SDK_TAR_TYPE = "zip"
>>> +SDK_TAR_DEPENDS = "zip-native"
>>> +SDK_TAR_CMD ?= "zip -r  ${SDKDEPLOYDIR}/${TOOLCHAIN_OUTPUTNAME}.${SDK_TAR_TYPE} ."
>>> +
>>
>> You will also need to update the QA tests, since right now they expecting a tar file (lib/oeqa/sdkmingw/testsdk.py)
>>
>>> --
>>>
>>> 2.7.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
BRs

Sandy(Li Changqing)


