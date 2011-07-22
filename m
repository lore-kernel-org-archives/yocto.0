Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46D5F4C800A1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 11:19:13 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 054B15AE66E; Fri, 22 Jul 2011 10:19:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 193A15AE66B;
	Fri, 22 Jul 2011 10:19:12 -0600 (MDT)
Message-ID: <4E29A300.4010000@mlbassoc.com>
Date: Fri, 22 Jul 2011 10:19:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
	<4E29A19C.2020707@linux.intel.com>
In-Reply-To: <4E29A19C.2020707@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
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
X-List-Received-Date: Fri, 22 Jul 2011 16:19:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/22/2011 10:13 AM, Saul Wold wrote:
> On 07/14/2011 09:56 PM, Kumar Gala wrote:
>> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
>> floating point.
>>
>> 'SPE' floating point is what exists on the e500v2 core.
>>
>> Signed-off-by: Kumar Gala<galak@kernel.crashing.org>
>> ---
>> meta-yocto/conf/machine/mpc8315e-rdb.conf | 2 +-
>> 1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> index 095d113..3f946a0 100644
>> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> @@ -2,7 +2,7 @@
>> #@DESCRIPTION: Machine configuration for running
>>
>> TARGET_ARCH = "powerpc"
>> -TARGET_FPU = "spe"
>> +TARGET_FPU = "hard"

This doesn't match the documentation:
   ./meta/conf/documentation.conf:TARGET_FPU[doc] = "Floating point option (mostly for FPU-less systems), can be 'soft' or empty
The file
   meta/classes/icecc.bbclass
seems to be the only place where TARGET_FPU="hard" means anything.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

