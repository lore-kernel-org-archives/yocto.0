Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B04AE002AB
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 18:48:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6R1mOOO015570
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Jul 2012 18:48:24 -0700 (PDT)
Received: from [128.224.162.164] (128.224.162.164) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 26 Jul 2012 18:48:24 -0700
Message-ID: <5011F36D.3050706@windriver.com>
Date: Fri, 27 Jul 2012 09:48:29 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1343207401.git.kai.kang@windriver.com>
	<501193D3.3070107@intel.com>
In-Reply-To: <501193D3.3070107@intel.com>
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] update packages' maintainer
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
X-List-Received-Date: Fri, 27 Jul 2012 01:48:25 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年07月27日 03:00, Saul Wold wrote:
> On 07/25/2012 02:13 AM, Kang Kai wrote:
>> Hi Saul,
>>
>> I take over the packages belongs to Xiaofeng Yan.
>> Update ltp qmmp and liburi-perl, and mingetty check date too.
>>
>> Regards,
>> Kai
>>
>> The following changes since commit 
>> 0ffb02eec2beaea27ff0ec9d3d31b0a09e675a4c:
>>
>> documentation: Updated the h6 style to use a larger font (2012-07-24 
>> 10:35:34 +0100)
>>
>> are available in the git repository at:
>> git://git.pokylinux.org/poky-contrib kangkai/update-maintainer
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/update-maintainer
>>
>> Kang Kai (2):
>> maintainers.inc: update some packages' maintainer info
>> upstream_tracking.inc: update some packages
>>
>> meta-yocto/conf/distro/include/maintainers.inc | 18 +++++++++---------
>> .../conf/distro/include/upstream_tracking.inc | 15 ++++++++-------
>> 2 files changed, 17 insertions(+), 16 deletions(-)
>>
> Merged into Poky/Master
>
> Thanks
> Sau!
>

Hi Saul,


> (BTW, please use the poky@yoctoproject.org in the future)

Thanks.
Do you mean that send the patch for *meta-yocto* to 
poky@yoctoproject.org, right?
Then what patches should be send to yocto@yoctoproject.org? or it is 
just for discuss not for review patches?

Regards,
Kai

>
>
>


