Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E97E00AB0; Mon, 21 Jan 2019 17:29:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 424B2E0090E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 17:29:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0M1SigO016836
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 21 Jan 2019 17:28:55 -0800
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Mon, 21 Jan 2019 17:28:34 -0800
To: Joshua Watt <jpewhacker@gmail.com>, <yocto@yoctoproject.org>
References: <CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
	<1547718545-238633-1-git-send-email-changqing.li@windriver.com>
	<1547718545-238633-2-git-send-email-changqing.li@windriver.com>
	<3f77d5c6f2d3be211c92b9fdfa3fa36ecf490aa1.camel@gmail.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <6fdcbdf5-b0fa-4071-4c6a-76bb0ba008a4@windriver.com>
Date: Tue, 22 Jan 2019 09:28:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <3f77d5c6f2d3be211c92b9fdfa3fa36ecf490aa1.camel@gmail.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [meta-mingw][PATCH V2] testsdk: enhance extract sdk part
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
X-List-Received-Date: Tue, 22 Jan 2019 01:29:23 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 1/21/19 10:47 PM, Joshua Watt wrote:
> Just FYI, I haven't forgot about this patch. I want to wait until the
> dependent OE-core patch is at least in the master-next branch before I
> apply this to the MinGW master-next branch. If you want to give me a
> ping when the OE-core patch shows up in master-next, it would be very
> helpful.
>
> Thanks

Yes, I will do it.

>
> On Thu, 2019-01-17 at 17:49 +0800, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Current sdk type is tar.xz, but for mingw sdk, since we
>> have symlink under the sdk folder, 7zip which used to
>> extract tar.xz cannot handle it, refer 7zip upstream bug:
>> https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
>> so oe-core have add support of change SDK type to .zip, so correct
>> the extract function.
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>>   lib/oeqa/sdkmingw/testsdk.py | 11 +++++++++--
>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/lib/oeqa/sdkmingw/testsdk.py
>> b/lib/oeqa/sdkmingw/testsdk.py
>> index 85fe3c6..173cfd9 100644
>> --- a/lib/oeqa/sdkmingw/testsdk.py
>> +++ b/lib/oeqa/sdkmingw/testsdk.py
>> @@ -12,7 +12,7 @@ class TestSDKMinGW(TestSDK):
>>           """
>>           Get the name of the SDK file
>>           """
>> -        return
>> d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.xz")
>> +        return
>> d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.${SDK_ARCHIVE_TYPE}")
>>   
>>       def extract_sdk(self, tcname, sdk_dir, d):
>>           """
>> @@ -23,7 +23,14 @@ class TestSDKMinGW(TestSDK):
>>           try:
>>               # TODO: It would be nice to try and extract the SDK in
>> Wine to make
>>               # sure it is well formed
>> -            subprocess.check_output(['tar', '-xf', tcname, '-C',
>> sdk_dir])
>> +
>> +            # TODO: Extract SDK according to SDK_ARCHIVE_TYPE, need
>> to change if
>> +            # oe-core support other types.
>> +            if d.getVar("SDK_ARCHIVE_TYPE") == "zip":
>> +                subprocess.check_output(['unzip', '-d', sdk_dir,
>> tcname])
>> +            else:
>> +                subprocess.check_output(['tar', '-xf', tcname, '-C',
>> sdk_dir])
>> +
>>           except subprocess.CalledProcessError as e:
>>               bb.fatal("Couldn't install the SDK:\n%s" %
>> e.output.decode("utf-8"))
>>   
>> -- 
>> 2.7.4
>>
-- 
BRs

Sandy(Li Changqing)


