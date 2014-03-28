Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA24DE00BAC
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 19:23:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2S2NY9K015631
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Mar 2014 19:23:34 -0700 (PDT)
Received: from [128.224.162.220] (128.224.162.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Thu, 27 Mar 2014 19:23:33 -0700
Message-ID: <5334DD22.5070806@windriver.com>
Date: Fri, 28 Mar 2014 10:23:30 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
	<CAPhnLPDwbCTBNg4aPHqYpakMwEz-wCyBYD-fr_ap97JC1fDWfg@mail.gmail.com>
In-Reply-To: <CAPhnLPDwbCTBNg4aPHqYpakMwEz-wCyBYD-fr_ap97JC1fDWfg@mail.gmail.com>
X-Originating-IP: [128.224.162.220]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Fri, 28 Mar 2014 02:23:41 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Beth,


于 2014年03月27日 05:30, Flanagan, Elizabeth 写道:
> A list of exactly what files you use for QA would be grand.
>
> We can use http://autobuilder.yoctoproject.org/pub/nightly/20140326-1/
> as our base.

We don't use all qemu-lsb , beagleboard-lsb, routerstationpro-lsb, and 
p1022ds-lsb artifacts.
For the image type, we don't need minimal-dev and sato-dev.

Thanks,
Yi


>
> -b
>
> On Wed, Mar 26, 2014 at 2:22 PM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> Hello Beth,
>>
>> On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>> I'd like to start looking at reducing the number of artifacts we're
>>> releasing both for our nightly builds (which is at 250,000 artifacts
>>> and .25 TB!) and releases.
>>>
>>> What I'm thinking is this:
>>>
>>> Reduce nightly:
>>> - Reduce ADT-REPO to just qemu* arches for all builds
>>> - If every QA team could provide me a list of what files they actually
>>> need I could reduce the published artifacts to *just* what is needed.
>>>
>>> Reduce releases:
>>> - Reduce ADT-REPO to just qemu
>>> - Don't release ipk/rpm/debs. Continue to release ipks through ADT
>>> - Don't release machines outside of BSP tarball /binary directory
>>>
>>> If folks who do QA could get me a list of all the files they use, we
>>> can start removing excess artifacts. I know this is a balance, but I'd
>>> really like us to start targeting our release artifacts to just the
>>> things we need.
>> I fully agree on that.
>>
>> Is there anything you need specifically from me?
>>
>> --
>> Otavio Salvador                             O.S. Systems
>> http://www.ossystems.com.br        http://code.ossystems.com.br
>> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>
>


