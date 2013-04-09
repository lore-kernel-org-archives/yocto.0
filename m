Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A810FE01473
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 07:16:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r39EGpxe006138
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Apr 2013 07:16:51 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 9 Apr 2013 07:16:51 -0700
Message-ID: <516422CC.6040202@windriver.com>
Date: Tue, 9 Apr 2013 10:16:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304081757170.3910@oneiric>
	<5163442A.7070801@windriver.com>
	<alpine.DEB.2.02.1304091011290.19035@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304091011290.19035@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what's the situation with MIPS support/BSPs/dev kits in yocto?
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
X-List-Received-Date: Tue, 09 Apr 2013 14:16:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-09 10:15 AM, Robert P. J. Day wrote:
> On Mon, 8 Apr 2013, Bruce Ashfield wrote:
>
>> On 13-04-08 5:59 PM, Robert P. J. Day wrote:
>>>
>>>     other than the canonical routerstation pro in the meta-yocto-bsp
>>> layer, is there any serious work being put into MIPS machines?  a
>>> quick google didn't seem to find anything, and the rs pro itself was
>>> end-of-lifed a while back (as i recall), so is there something else if
>>> one wants to use yocto on a MIPS dev kit?
>>
>> From: https://bugzilla.yoctoproject.org/show_bug.cgi?id=2444
>>
>> MIPS suggested refresh: http://www.ubnt.com/edgemax
>>
>> .. but I've yet to complete the due diligence on seeing if I can
>> actually purchase one :) That's going to happen shortly after yocto
>> 1.4 completes.
>
>    one final addition to the picture, the ERlite 3 seem to have some
> real horsepower, according to the specs:
>
>    http://www.ubnt.com/edgemax#EdgeMAXhardware
>
> * (Layer-3 base forwarding) 1,000,000 pps for 64-byte packets. Line
> rate (3 Gbps) across all three ports for 512-byte packets and higher
>
> * Dual-core MIPS64 processor with hardware acceleration for packet
> processing and encryption/decryption
>
> * 3 RJ-45 Gigabit Ethernet ports
>
> * 512 MB DDR2 RAM
>
> * 2 GB onboard flash storage
>
> * 1 RJ-45 serial console port
>
>    the full datasheet:
>
> http://www.ubnt.com/downloads/datasheets/edgemax/EdgeRouter_Lite_DS.pdf
>
> at $159 (CAD) which includes shipping, that strikes me as eminently
> affordable.

Indeed. And thanks for digging into this more, that's the leg work that
I was starting for 1.5, and now it is largely done. Having a new h/w
reference for MIPS has been near the top of the list for some time.

Bruce

>
> rday
>


