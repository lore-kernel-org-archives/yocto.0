Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81AECE007A2; Tue,  1 Nov 2016 16:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA863E0070F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 16:26:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id uA1NQiT2006621
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 1 Nov 2016 16:26:44 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 1 Nov 2016 16:26:44 -0700
To: "Bystricky, Juro" <juro.bystricky@intel.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <0b4748f5-05bb-57c9-402b-64ca67a9bd73@windriver.com>
	<6E51916E4A1F32428260031F4C7CD2B6118ABB51@ORSMSX112.amr.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <f38f2aab-fe06-3832-080e-ab2261c4a0dd@windriver.com>
Date: Tue, 1 Nov 2016 18:26:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118ABB51@ORSMSX112.amr.corp.intel.com>
Subject: Re: meta-mingw
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
X-List-Received-Date: Tue, 01 Nov 2016 23:26:47 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 11/1/16 5:58 PM, Bystricky, Juro wrote:
> Most likely the error is caused by the change from TARGET_ARCH -> SDK_SYS
> Try this: https://lists.yoctoproject.org/pipermail/yocto/2016-October/032306.html

Thank you.  This does in fact fix the problem.

--Mark

>> -----Original Message-----
>> From: Mark Hatle [mailto:mark.hatle@windriver.com]
>> Sent: Tuesday, November 1, 2016 3:41 PM
>> To: Yocto Project <yocto@yoctoproject.org>
>> Cc: Bystricky, Juro <juro.bystricky@intel.com>
>> Subject: meta-mingw
>>
>> I was trying to build meta-mingw (master) with oe-core (morty).  I'm
>> getting a
>> failure:
>>
>> | ERROR: Function failed: do_configure (log file is located at
>> .../nativesdk-mingw-w64-runtime/3.1.0-r0/temp/log.do_configure.208815)
>> ERROR: Task
>> (/.../oe-core/meta-mingw/recipes-devtools/mingw-w64/nativesdk-mingw-w64-
>> runtime_3.1.0.bb:do_configure)
>> failed with exit code '1'
>>
>> The more detailed log shows that it was unable to find the compiler.
>>
>> Any suggestions from anyone?


