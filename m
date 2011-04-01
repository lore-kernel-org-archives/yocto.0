Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFEB24C80BD8
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 05:15:34 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 437C81660342; Fri,  1 Apr 2011 04:15:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 716F5166033E;
	Fri,  1 Apr 2011 04:15:33 -0600 (MDT)
Message-ID: <4D95A5C5.70605@mlbassoc.com>
Date: Fri, 01 Apr 2011 04:15:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Li, Simon" <simon.li@intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
	<4D94AD2D.7060505@mlbassoc.com>
	<23F1A04A50711046AF124F3D4D1EB2ECC073F5FB@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECC073F5FB@pgsmsx507.gar.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile Qt library with bitbake?
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
X-List-Received-Date: Fri, 01 Apr 2011 10:15:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/01/2011 12:37 AM, Li, Simon wrote:
> Hi, Gary,
> Yes, it works. However, after build finished, I still cann't find any libQt* files.

Where did you look (what packages did you install)?

Just add this line to your config:
   IMAGE_FEATURES += "qt4-pkgs"
This should then build an image which has the QT4 package set.

You could also install them individually, but there are quite a few...

> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: Friday, April 01, 2011 12:35 AM
> To: Li, Simon
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to compile Qt library with bitbake?
>
> On 03/31/2011 12:52 AM, Li, Simon wrote:
>> To whom may concern,
>>
>> Since Qt library is not existed in the default build configuration, I have to port it by myself.
>>
>> Is there any plan to compile Qt in the Yocto? I cannot find Qt with zypper as well.
>>
>> If not, is there any document to describe how to complie Qt with bitbake?
>
> There are recipes for QT4 in the mainline Poky tree.  Just build via:
>     bitbake qt4-x11-free
>      -or-
>     bitbake qt4-embedded
>
> These work fine for me.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

