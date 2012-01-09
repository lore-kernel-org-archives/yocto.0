Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82814E0127D
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2012 20:36:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q094ZxZm018578
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jan 2012 20:35:59 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Sun, 8 Jan 2012 20:35:58 -0800
Message-ID: <4F0A6E8D.1050805@windriver.com>
Date: Mon, 9 Jan 2012 12:35:25 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<6d11d61757dd2d5f41496f929f46653e25b2870e.1325824274.git.zumeng.chen@windriver.com>
	<4F086A9E.3080306@linux.intel.com>
In-Reply-To: <4F086A9E.3080306@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] babeltrace: Integrated from version 0.8
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
X-List-Received-Date: Mon, 09 Jan 2012 04:36:00 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2012年01月07日 23:54, Darren Hart 写道:
>
> On 01/05/2012 10:11 PM, Zumeng Chen wrote:
>    
>> It provides trace read and write libraries, as well as a trace converter.
>>
>> Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
>> ---
>>   meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb |   30 +++++++++++++++++++++++
>>   1 files changed, 30 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
>>
>> diff --git a/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
>> new file mode 100644
>> index 0000000..86a9d01
>> --- /dev/null
>> +++ b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
>> @@ -0,0 +1,30 @@
>> +SUMMARY = "Babeltrace - Trace Format Babel Tower"
>> +DESCRIPTION = "Babeltrace provides trace read and write libraries in host side,\
>> +	       as well as a trace converter, which used to convert LTTng 2.0 \
>> +	       traces into human-readable log."
>>      
> In the previous patches you aligned the additional lines with column 0,
> here you indent with tabs and spaces. A quick survey of the existing
> sources suggest the DESCRIPTION field typically does not indent the
> subsequent lines.
>    
OK. fixed.
>    
>> +HOMEPAGE = "http://www.efficios.com/babeltrace/"
>> +BUGTRACKER = "n/a"
>> +
>> +LICENSE = "MIT&  GPLV2"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=8d1a03b3c17bdd158b3cbb34813b1423"
>> +
>> +inherit autotools
>> +
>> +DEPENDS = "gtk+ util-linux"
>> +
>> +SRCREV = "31e670293588d7882a232bc14b93d5e956fa43f4"
>> +PV = "0.8+git${SRCPV}"
>> +PR = "r0"
>> +
>> +SRC_URI += "git://git.efficios.com/babeltrace.git;protocol=git"
>> +
>>      
> This should be a "=" assignment, not "+=".
>    
fixed.
>    
>> +S = "${WORKDIR}/git"
>> +
>> +do_configure_prepend () {
>> +  ${S}/bootstrap
>>      
> Please use tabs for indentation here.
>    
fixed.
>    
>> +}
>> +
>> +# Due to liburcu not building on MIPS currently this recipe needs to
>> +# be limited also.
>> +# So here let us first suppport x86/arm/powerpc platforms now.
>> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>>      
> Again, I think you want to filter based on target arch.
>    



