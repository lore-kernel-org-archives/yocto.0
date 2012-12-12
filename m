Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06361E0140A
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 09:13:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBCHDvkQ013574
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 09:13:57 -0800 (PST)
Received: from msp-dhcp53.wrs.com (172.25.34.53) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 12 Dec 2012 09:13:57 -0800
Message-ID: <50C8BB57.90008@windriver.com>
Date: Wed, 12 Dec 2012 11:13:59 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
	<A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
	<CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
	<2D72F639-44DB-41E5-A1E0-223072FC1AA3@coote.org>
In-Reply-To: <2D72F639-44DB-41E5-A1E0-223072FC1AA3@coote.org>
Subject: Re: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 17:13:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/12 6:07 AM, Tim Coote wrote:
> ok. Thanks.
>
> just spotted the split between rpm / rpm5 and yum. I suppose that the knock on is managing multiple repos for different update managers.
>
> don't suppose you know if there are material differences from a packaging/dependency point of view between rpm4 and rpm5?

Generated packages are more or less compatible.  The only big difference is that 
all RPM5 packages are 'self-signed' to integrity purposes.  Self-signing is 
better then simply md5sums.  (They of course can also be signed with a specific 
key to indicate trust as well.)

But the primary difference is in cross compiling and support for the activities 
that we need when cross-constructing root filesystems and such.  There is also 
an aspect of 'control' behind this.  We have input into the RPM5 development, in 
RPM4 we have absolutely no influence and they have removed everything that 
helped in a cross-compiled environment after the split.

> is there an eta for smart in the mainstream core?

Hopefully the next version of the integration patches should be sent up today. 
We're really trying to get the code in by next week.

--Mark

> On 12 Dec 2012, at 11:43, "Burton, Ross" <ross.burton@intel.com> wrote:
>
>> On 12 December 2012 11:31, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
>>> Am I right in thinking that yum isn't in the standard recipes?
>>
>> Yum, no.  Zypper is in oe-core and is used when you construct a RPM-based image.
>>
>> (note that Zypper is being replaced by Smart in oe-core master)
>>
>> Ross
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


