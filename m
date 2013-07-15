Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C04BCE01482
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2013 05:18:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r6FCI7HL000616
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 15 Jul 2013 05:18:07 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.157) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Mon, 15 Jul 2013 05:18:07 -0700
Message-ID: <51E3E87E.1030300@windriver.com>
Date: Mon, 15 Jul 2013 08:18:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <6E525492-7C48-4AE0-8F90-C910E194FD41@keylevel.com>
	<CADkTA4NYXP4O_gGMVkOtZ-xo76vJKRtAz0ZMWSbD21jv+UevRQ@mail.gmail.com>
	<CAJTo0La6GSuc6T6h1ztt_0cEekuEo4-9xV-Hq4o3raKi1MKx9w@mail.gmail.com>
In-Reply-To: <CAJTo0La6GSuc6T6h1ztt_0cEekuEo4-9xV-Hq4o3raKi1MKx9w@mail.gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: CONFIG_HID_APPLE
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
X-List-Received-Date: Mon, 15 Jul 2013 12:18:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-07-15 4:46 AM, Burton, Ross wrote:
> On 13 July 2013 03:30, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>> On Fri, Jul 12, 2013 at 4:39 PM, Chris Tapp <opensource@keylevel.com> wrote:
>>> Can CONFIG_HID_APPLE=m please be added to the kernel defconfigs? Apple keyboards don't work without it.
>>
>> That's not something that most boards need. So it belongs in a feature
>> fragment that can
>> be activated via a custom layer (KERNEL_FEATURES), or the entire
>> fragment can exist in
>> recipe space (via a bbappend).
>
> Though arguably it should be enabled for the generic x86 configuration.

We don't really want to do "kitchen sink" configurations. That's what
the fragments and KERNEL_FEATURES are for.

Let's just say that as many people don't have apply keyboard lying around,
as do. And if you were doing an x86 apple platform BSP, you'd add the
config at the board level, where it belongs.

Cheers,

Bruce

>
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


