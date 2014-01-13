Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33B8E00841
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 18:08:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0D28heE019473
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 12 Jan 2014 18:08:43 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Sun, 12 Jan 2014 18:08:43 -0800
Message-ID: <52D34AA9.5080905@windriver.com>
Date: Mon, 13 Jan 2014 10:08:41 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>, <yocto@yoctoproject.org>
References: <2423322.zFb14inlks@koontz> <20140112133857.GE16995@jama>
	<4558388.sNptYpytgT@koontz>
In-Reply-To: <4558388.sNptYpytgT@koontz>
Subject: Re: Constant linux-yocto rebuild
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
X-List-Received-Date: Mon, 13 Jan 2014 02:08:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit


On 01/12/2014 10:08 PM, Søren Holm wrote:
>
> Wow - that was a quick response.
>
> Is it the two by Mike Crowe ?

Yes, I think so.

>
> And do they get into dora at some point?
>

yes, I think they will be yocto 1.5.2.

// Robert

> Søndag den 12. januar 2014 14:38:57 skrev Martin Jansa:
>> On Sun, Jan 12, 2014 at 02:19:51PM +0100, Søren Holm wrote:
>>> Hi
>>>
>>> I'm having a weird issue with dora. After having rebuild everything from
>>> scratch I usually rebuild some of my own applications and rebuild the
>>> image
>>> recipe to create the image. This all works great. But then after some
>>> number of rebuild linux-yoc suddenly gets rebuild every time. Even two
>>> consequtive builds of my image recipe give me two linux-yocto rebuild.
>>>
>>> Any hint on what might happen or what I can do to debug it?
>>
>> You need patch 3 and 4 from
>> http://lists.openembedded.org/pipermail/openembedded-core/2014-January/08807
>> 4.html
>

