Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1652E00BE6; Tue, 10 Jun 2014 09:05:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B5EDE00BAE
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 09:05:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5AG4cmm008500
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jun 2014 09:04:38 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 10 Jun 2014 09:04:38 -0700
Message-ID: <53972C83.2090100@windriver.com>
Date: Tue, 10 Jun 2014 12:04:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <888B7DC5D4899F46A9721989283666969C1E50A2A2@SAFEX1MAIL5.st.com>
In-Reply-To: <888B7DC5D4899F46A9721989283666969C1E50A2A2@SAFEX1MAIL5.st.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional Configuration Fragments
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
X-List-Received-Date: Tue, 10 Jun 2014 16:05:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-10 11:11 AM, Pierre Yves MORDRET wrote:
> On Monday 09 June 2014 09:56:20 Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>> On Monday 09 June 2014 12:41:36 Bruce Ashfield wrote:
>>> On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
>>>> Hello,
>>>>
>>>> I really don't know whether this is feasible or not, but I'm trying to
>>>> build a yocto image (custom image) with conditional configuration
>>>> fragments.
>>>>
>>>> Today I have 2 image type: one for deployment purpose and another for
>>>> debug purpose. Debug images is only a superset of deployment image with
>>>> additional debug capabilities: nothing else.
>>>>
>>>> However now I would like to add additional linux kernel features to this
>>>> debug image (ex: CONFIG_DEBUG_INFO=y).
>>>>
>>>> I want to add this feature into debug image, but NOT in deployment image.
>>>>
>>>> I was thinking to create a .bbappend to my linux .bb file, but again I
>>>> don't see how to use .bbappend in a conditional way (based on image name
>>>> for instance)
>>>>
>>>> Do you have any idea to perform such request ?
>>>
>>> Fragments are either just added to the SRC_URI or KERNEL_FEATURES via
>>> the normal variable assignment rules.
>>>
>>> So if you have something that you can test on (image/distro feature as
>>> an example), you can use anonymous python and do a conditional
>>> assignment.
>>>
>>> Others on the list may have more elegant suggestions!
>>
>> This can't work for what Pierre is asking for. You can't have a single recipe
>> built differently depending on what image is being built - our system does not
>> work that way. At a basic level, recipes create packages, and then the image
>> recipe selects which packages should go into the image.
>>
>> Given that the kernel does not produce named packages in our system, I'm not
>> sure we currently have a way to build two different kernel recipes and select
>> one in one image and another in another image (which is the way we normally
>> handle this kind of requirement with other recipes.) Probably the only way to
>> do this is to have two completely separate build directories.
>
> Many Thanks for your answers.
> Thus I was thinking of making 2 separate linux.bb, one for deployment and the other for debug (i.e. linux-debug.bb) and update PREFERRED_PROVIDER_virtual/kernel accordingly.
> But is there an automatic way to select proper .bb (linux.bb or linux-debug.bb) file like setting this variable(PREFERRED_PROVIDER_virtual/kernel) within the .bb image file ? Won't it work ?
>
> Another option which is coming on top of my mind:
> SRC_URI_append_<image-name> = " file://configuration_segment.cfg"
> Is it something realistic and working ?

The image name would have to be an OVERRIDE value for variables.
Last I checked it wasn't, but perhaps Paul can straighten out that
point as well :)

Cheers,

Bruce

>
> Please advise
> Many thanks in advance
>


