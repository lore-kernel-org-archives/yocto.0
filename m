Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31703E00AC0; Wed,  5 Aug 2015 01:32:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4913 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Aug 2015 01:32:22 PDT
Received: from mx12-05.smtp.antispamcloud.com (mx12-05.smtp.antispamcloud.com
	[46.165.232.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01A47E00A97
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 01:32:22 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1ZMsq5-0004dH-V6
	for yocto@yoctoproject.org; Wed, 05 Aug 2015 09:10:27 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Wed, 5 Aug 2015 09:10:01 +0200
Message-ID: <55C1B6D4.6030003@topic.nl>
Date: Wed, 5 Aug 2015 09:10:12 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <20150708145002.GO5636@knopper.net>	<559D445A.4010308@linux.intel.com>	<20150708163604.GQ5636@knopper.net>	<559D5E4E.8020001@windriver.com>
	<20150804041502.GN10184@knopper.net>
In-Reply-To: <20150804041502.GN10184@knopper.net>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t0di
	2A4r9us+Fq8MBvFDhJj2aF4mEpmzPMn87botvVj0XGO3OyUFkhYyoQpt8aP/5GbjO41FyBEqIaDu
	dcVplPEV5fdZbBgAYjRktFsnBOu68dy9p6gE/g99Plm2mIQhBQ00JYCpdDQoJU79BjIi5W2Z3JKV
	mi72ocgY5kMQSjs70ALn042Wb7mIcbVJi7pqphHamFlRvlxL+MzCKMvMkk78ZQ0AiyqMiTY+IYva
	kPBr0z6bhalFEM/pjPCQA+BAlkniC5++pOyFfhmFBNq2PYR7Zn6OGQcTLcl+10S2CCSFSbZLiIzq
	6RHISf0BeR/9lxlAbFwXFyuSr4goiWKeWbtWBb39uS1TjWG2Inx+Ts2Q85bpu8v0MLjfVaUXUvFy
	TEwEAmRywCEMPg5NNGTMxTwq5H2HisnUiFGNBznFCJKEejk40iyx8hQPmbkJabHvUAAjMhPl4Vhd
	NvMNOfYY5VjTiEw2ui8TVPldBCj8jBAT9EIYxHyidUrHJfz9kNKga+jb5NA413zESMJef949r2h3
	KLwbXHjHpxz8VOWtxaqRRTlHFazPXt/x3tAgKOX3Wg==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJUb3OPwsHaH0Fvg5oXltHd/JUWjZ8+qhjyB23tbDuyLOYL8Ff78gYsez
	4Rl08xudmXi4esCQ0R1MchVjt7wblGlvhFgW0MjUMRkF5sMCDfftTXNFDzN17hnrWeZYOJvLq0Ic
	WjZ+XcEjj/7Pkld0zkmvziDInX9WdMov2kn2yXjdwv61T+KDYyYtREgszdyFwv8IxCB3p/oCKvxr
	eyISh3JGb7OS5oVgiO+kDxZrVPLz3MmEGC2PrUKqLq5WmHK+Nw==
X-Originating-IP: 88.159.208.100
X-Spampanel-Domain: topic.nl
X-Spampanel-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-Spampanel-Outgoing-Class: ham
X-Spampanel-Outgoing-Evidence: SB/global_tokens (0.00704690095811)
X-Recommended-Action: accept
Subject: Re: Selecting different kernel inside an image recipe
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
X-List-Received-Date: Wed, 05 Aug 2015 08:32:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFThere are several solutions:

- Pick one kernel as the "master" one. Create recipes for alternative kerne=
ls=20
as required, but blank the (R)PROVIDES so that they do not "provide" a kern=
el=20
and bitbake will treat them as yet another package to build. In the scripts=
=20
that you use to deploy the images, pick the kernel that you want.

- Create a new MACHINE for each alternative.

- Set up multiple build environments, share the sstate-cache and similar=20
directories. Each environment can then pick its own kernel etc.


On 04-08-15 06:15, Klaus Knopper wrote:
> Hello Bruce & list,
>
> I need to come back to the topic after quite some failed attempts to
> solve the problem of switching kernel configurations specific to an
> image recipe.
>
> On Wed, Jul 08, 2015 at 01:30:54PM -0400, Bruce Ashfield wrote:
>> On 2015-07-08 12:36 PM, Klaus Knopper wrote:
>>> Hello Leonardo,
>>>
>>> On Wed, Jul 08, 2015 at 10:40:10AM -0500, Leonardo Sandoval wrote:
>>>> On 07/08/2015 09:50 AM, Klaus Knopper wrote:
>>>>> Hello list,
>>>>>
>>>>> I'm trying to build variantions/brands of an image that only differ i=
n
>>>>> kernel configuration and kernel modules included, but everything else=
 stays
>>>>> the same, for the exact same board, as in the main image.
>>>>>
>>>>> Setting PREFERRED_PROVIDER_virtual/kernel =3D "different_kernel"
>>>>> right inside in the new image recipe does not have any effect, as tha=
t
>>>>> variable seems to be evaluated exclusively in the local.conf machine
>>>>> file, which is read by all recipes.
>>>>
>>>> This variable is commonly used inside configuration metadata (machine =
or
>>>> distro conf files). You may try it there.
>>>
>>> Please help me to understand your answer: You are saying that I do have
>>> to change the machine or distro config used for ALL recipes, to be able
>>> to use a different kernel configuration in ONE recipe, right?
>>>
>>> I was really trying to avoid that. :-(
>>>
>>> So it is really not possible to just select a different kernel config
>>> within a normal recipe without changing the global configuration?
>>
>> You really want a different kernel recipe to provide that different
>> kernel configuration.  Which looks to be what you are describing, and
>> you just want to switch the provider (again, what you are saying).
>
> Yes, and I had indeed already added a new kernel recipe, which builds
> the desired kernel as uImage when calling "bitbake kernel-recipename"
> directly, but it's ignored by the image recipes. All of them use only
> the kernel that's defined in build/conf/local.conf as
> PREFERRED_PROVIDER_virtual/kernel . Redefining the variable in the image
> recipes has no effect.
>
>> Changing the included kernel via that different kernel recipe/package
>> name, and setting it via the preferred provider is the same as any
>> bitbake variable.
>
> I thought so, but apparently I'mmissing something. It looks like
> PREFERRED_PROVIDER_virtual/kernel only works in local.conf, i.e. I need
> to fork the project or change the local.conf file each time I want to
> use a different kernel. Is this a known or desired behavior?
>
>> So you should be able to set it in any .conf file, and then have what
>> you want.
>
> So, can you confirm that it is not possible to set
> PREFERRED_PROVIDER_virtual/kernel inside an image recipe?
>
>> I've used layers with layer.conf files, and similar mechanisms
>> to do what you are trying in the past .. but the longer serving oe/bitba=
ke
>> folks may have a better example to point at.
>
> If there are examples for a more convenient way to switch kernels in a
> recipe rather than inside a .conf file, please point me to the right
> direction.
>
> Regards
> -Klaus
>



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
Telefax: +31 (0) 499 33 69 70
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






