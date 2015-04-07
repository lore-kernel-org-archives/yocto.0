Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C8E1E0083E; Tue,  7 Apr 2015 07:55:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA7AE00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 07:55:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t37EthfC018223
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 7 Apr 2015 07:55:43 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Tue, 7 Apr 2015 07:55:42 -0700
Message-ID: <5523EFF9.1030808@windriver.com>
Date: Tue, 7 Apr 2015 09:55:53 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <maninder1.s@samsung.com>
References: <1615523338.521981428401744312.JavaMail.weblogic@epmlwas08a>
In-Reply-To: <1615523338.521981428401744312.JavaMail.weblogic@epmlwas08a>
Cc: Vaneet Narang <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [prelink-cross][PATCH 1/1] debug message for dependencies not found
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
X-List-Received-Date: Tue, 07 Apr 2015 14:55:50 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 4/7/15 5:15 AM, Maninder Singh wrote:
> Hi Mark,
> 
> We have checked the commit on cross_prelik_staging, it is correct But i did one typo error Please correct following:-
> Just change Reviewed-by: Ajeet Yadav <ajeet.v@samsung.com>
> to
> Reviewed-by: Ajeet Yadav <ajeet.y@samsung.com> for voth patches.
> Typo arror for ajeet.v ---> ajeet.y

Fixed in the commit message.  I'm going to let this sit in the staging for a bit
longer, then merge it to the cross_prelink branch and eventually Yocto Project/OE.

--Mark

> Thanks
> Maninder Singh
>> This and the other patch have been merged onto the cross_prelink_staging branch.
> 
>> Please test that I merged it properly.  (Everything passed my basic testing, but
>> I haven't run it against any ARM/HF libraries or similar.)
> 
>> --Mark
> 
> On 4/6/15 4:07 AM, Maninder Singh wrote:
>> Hi,
>> Same mail sent earlier Changing subject line, By mistake shared subject line of other patch.
>>
>> prelink gives below error message for failure dependency:
>> ./prelink: /test_binary: Could not find one of the dependencies
>>
>> This provides name of dependent library which is missing like below:
>> ./prelink: /test_binary: Could not find one of the dependencies:
>> ./prelink-rtld: error while loading shared libraries: libB.so: cannot open shared object file: No such file or directory
>> where libB.so is missing dependecy
>>
>> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
>> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
>> Reviewed-by: Ajeet Yadav <ajeet.v@samsung.com>
>> Reviewed-by: Geon-ho Kim <gh007.kim@samsung.com>
>> ---
>>  src/gather.c |    4 ++--
>>  1 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/src/gather.c b/src/gather.c
>> index 5ccd243..4a3f428 100644
>> --- a/src/gather.c
>> +++ b/src/gather.c
>> @@ -240,8 +240,8 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>>           if (q != NULL)
>>             {
>>               error (0, 0,
>> -                "%s: Could not find one of the dependencies",
>> -                ent->filename);
>> +                "%s: Could not find one of the dependencies:\n%s",
>> +                ent->filename, line);
>>               goto error_out;
>>             }
>>         }
>> --
>>
>>
>> Thanks 
>> Maninder Singh
>>


