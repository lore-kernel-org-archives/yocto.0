Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7440DE00E2C; Fri, 28 Oct 2016 07:26:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E42E00E1F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 07:26:38 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 28 Oct 2016 07:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,410,1473145200"; d="scan'208";a="184982332"
Received: from mlopezva-mobl2.zpn.intel.com (HELO [10.219.5.40])
	([10.219.5.40])
	by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2016 07:26:38 -0700
To: Sona Sarmadi <sona.sarmadi@enea.com>,
	Scott Rifenbark <srifenbark@gmail.com>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
From: Mariano Lopez <mariano.lopez@linux.intel.com>
Message-ID: <0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
Date: Fri, 28 Oct 2016 09:28:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
Subject: Re: cve-checker tool
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
X-List-Received-Date: Fri, 28 Oct 2016 14:26:42 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/27/2016 06:03 AM, Sona Sarmadi wrote:
>
>> -----Original Message-----
>> From: Sona Sarmadi
>> Sent: den 27 oktober 2016 10:57
>> To: Scott Rifenbark <srifenbark@gmail.com>; 'mariano.lopez@intel.com'
>> <mariano.lopez@intel.com>; yocto@yoctoproject.org
>> Subject: cve-checker tool
>>
>> Hi guys,
>>
>> I have some questions regarding cve-check tool. I don't find anything
>> about this tool in Yocto
>> 2.2 release, dose documentation mention this tool and how to use it?

Currently we don't have documentation about it, I'll work on it along 
with Scott. Thanks for updating "How do I?" as Khem suggested.

>>
>> Is this tool planned to be integrated with daily build so the Yocto project
>> can detect Not addressed CVEs automatically?
>>
>> Mariano:
>> Does this tool look at CVE tag inside the recipe as well or only checks the
>> package version?

If there is a version affected by a CVE it will look for a patch that 
solves that particular CVE using the the metadata in the patch format. 
For example, the current bind version is affected by CVE-2016-1285, but 
there is patch for that, so the cve-check class will find this and will 
generate a log file saying the vulnerability has been addressed.

After the previous example I know you are familiar with the CVE tag, if 
someone stumble in the thread, here is more information on the CVE tag 
needed:
http://openembedded.org/wiki/Commit_Patch_Message_Guidelines#CVE_Patches

>>
>> Can this tool be used together with "meta-security-isafw" and get a fancy
>> report?

When I was working on this it was the transition to python3 so, 
meta-security-isafw didn't behave as expected. To be honest I haven't 
checked again but it will be a good test. I'll try to do this during the 
weekend.

> There are some useful info in the cve-check.bbclass:
>
> #In order to use this class just inherit the class in the
> # local.conf file and it will add the cve_check task for
> # every recipe. The task can be used per recipe, per image,
> # or using the special cases "world" and "universe". The
> # cve_check task will print a warning for every unpatched
> # CVE found and generate a file in the recipe WORKDIR/cve
> # directory. If an image is build it will generate a report
> # in DEPLOY_DIR_IMAGE for all the packages used.
>
> I see following logs are generated:
> ./unzip/1_6.0-r5/cve/cve.log
> ./gnutls/3.5.3-r0/cve/cve.log
> ./glibc/2.24-r0/cve/cve.log
> ./glibc-initial/2.24-r0/cve/cve.log
> ./foomatic-filters/4.0.17-r1/cve/cve.log
> ./bzip2/1.0.6-r5/cve/cve.log
> ./libxml2/2.9.4-r0/cve/cve.log
> ./perl/5.22.1-r0/cve/cve.log
> ./expat/2.2.0-r0/cve/cve.log
> ./flex/2.6.0-r0/cve/cve.log
>
> //Sona

Just remember that those logs are created for patched and unpatched CVEs.

-- 
Mariano Lopez

