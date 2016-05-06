Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68006E00791; Fri,  6 May 2016 10:49:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6E1E006D3
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 10:49:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u46HnEwl021925
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 May 2016 10:49:14 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 6 May 2016 10:49:13 -0700
To: "Maxin B. John" <maxin.john@intel.com>, "Mihaylov, Emil"
	<emilmih@gmail.com>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
	<e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
	<20160506091048.GA11082@mbabyjoh-desk.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <76de089c-50fb-95dc-bc93-956102ecd13b@windriver.com>
Date: Fri, 6 May 2016 12:49:12 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160506091048.GA11082@mbabyjoh-desk.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Fri, 06 May 2016 17:49:20 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 5/6/16 4:10 AM, Maxin B. John wrote:
> Hi Emil,
> 
> On Thu, May 05, 2016 at 10:43:08AM -0700, Mihaylov, Emil wrote:
> 
>> hi Mark,
>>
>> my oracle-jse-jdk_1.7.0.bb
>>
>> looks like this
>>
>> -----------------------------------------------
>>
>> # Automatically choose java package based on target architecture
>> DEPENDS += "libav gtk+ libxslt libxtst"
> 
> From the error, I assume that you are using "RPM" as package manager in your 
> local.conf:
> 
> PACKAGE_CLASSES ?= "package_rpm"
> 
> Could you please try to build again with "ipk or deb" as mentioned in the README
> file in meta-oracle-java repo ?

This will like result in a package that installs -- but not one that works.

RPM has additional checking that ipk and deb do not.  (ipk and deb don't support
SONAME style dependencies due to design differences.)

So these recipes need to work in all three package formats, and most of the time
RPM finds run-time errors the others overlook due to this.

--Mark

> Best Regards,
> Maxin
> 


