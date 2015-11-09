Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C013E006F3; Mon,  9 Nov 2015 06:43:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93FE1E00473
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 06:43:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tA9Eh7U1005448
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Nov 2015 06:43:07 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Mon, 9 Nov 2015 06:43:07 -0800
To: <maninder1.s@samsung.com>
References: <1576099213.193511446895444014.JavaMail.weblogic@ep2mlwas06c>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <5640B0FA.7030703@windriver.com>
Date: Mon, 9 Nov 2015 08:43:06 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1576099213.193511446895444014.JavaMail.weblogic@ep2mlwas06c>
Cc: Vaneet Narang <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	PANKAJ MISHRA <pankaj.m@samsung.com>
Subject: Re: [prelink-cross][PATCH 1/1] rtld.c: LD_PRELOAD bugfix
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
X-List-Received-Date: Mon, 09 Nov 2015 14:43:13 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/7/15 5:24 AM, Maninder Singh wrote:
> Hi,
> Ping....

I'd gotten a msg after this to hold off and wait for an update.  Is this the
updated version of the fix?

--Mark

>> This patch do following things:-
>> 1. 	Fixes bug of adding preloaded libs in search scope of dependent 
>> 	libraries which results in search scope of few symbols becomes 
>> 	same for executable and library, so conflict doesn't occur for 
>> 	those symbols and hence resulted in less number of conflicts.
>> 2. 	Reduce code redundancy.
>> 3. 	Buffer Overflow fix.
>>
>> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
>> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
>> Reviewed-by: Doha Hwang <doha.hwang@samsung.com>
>> ---
>> trunk/src/rtld/rtld.c |   27 ++++++++++++++++-----------
>> 1 files changed, 16 insertions(+), 11 deletions(-)
>>
>> diff --git a/trunk/src/rtld/rtld.c b/trunk/src/rtld/rtld.c
>> index 50461b6..8af5052 100644
>> --- a/trunk/src/rtld/rtld.c
>> +++ b/trunk/src/rtld/rtld.c
>> @@ -606,7 +606,7 @@ load_dsos (DSO *dso, int host_paths)
>> {
>>   struct dso_list *dso_list, *dso_list_tail, *cur_dso_ent, *new_dso_ent;
>>   struct stat64 st;
>> -  int total_preload = 0;
>> +  int total_preload = 0, temp_total_preload = 0;
>>   char * libname[MAX_PRELOADED_LIBS] = {NULL};
>>
>>   /* Assume it's static unless we find DT_NEEDED entries */
>> @@ -632,19 +632,19 @@ load_dsos (DSO *dso, int host_paths)
>>
>>   if(dso->ehdr.e_type == ET_EXEC && ld_preload) {
>>       char *next_lib =  ld_preload;
>> -      libname[total_preload] = ld_preload;
>> -      total_preload++;
>> -      next_lib=strchr(ld_preload,':');
>> -      while(next_lib!=NULL){
>> -	  *next_lib = '\0';
>> -	  next_lib++;
>> -	  libname[total_preload] = next_lib;
>> -	  total_preload++;
>> -	  next_lib=strchr(next_lib,':');
>> -      }
>> +      while(*next_lib != '\0' && (total_preload < MAX_PRELOADED_LIBS)){
>> +        libname[total_preload++] = next_lib;
>> +        next_lib=strchrnul(next_lib,':');
>> +        if(*next_lib == '\0')
>> +          break;
>> +        *next_lib = '\0';
>> +        next_lib++;
>> +     }
>> +    temp_total_preload = total_preload;
>>   }
>>   else {
>>       total_preload = 0;
>> +      temp_total_preload = 0;
>>   }
>>   while (cur_dso_ent != NULL)
>>     {
>> @@ -666,6 +666,11 @@ load_dsos (DSO *dso, int host_paths)
>> 	{
>> 	  int ndx, maxndx;
>> 	  maxndx = data->d_size / cur_dso->shdr[cur_dso->dynamic].sh_entsize;
>> +      if(!(cur_dso->ehdr.e_type == ET_EXEC))
>> +        total_preload = 0;
>> +      else
>> +        total_preload = temp_total_preload;
>> +
>> 	  for (ndx = 0; ndx < maxndx + total_preload; ++ndx)
>> 	    {
>>
>> -- 
>> 1.7.1


