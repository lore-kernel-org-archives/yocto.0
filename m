Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8DF8E0048B
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 21:41:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7L4fG8T026837
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 20 Aug 2011 21:41:16 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.19.102) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 20 Aug 2011 21:41:15 -0700
Message-ID: <4E508C69.4030501@windriver.com>
Date: Sun, 21 Aug 2011 00:41:13 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4E4C85B8.3000301@linux.intel.com> <4E4DFBE2.7090708@gmail.com>
In-Reply-To: <4E4DFBE2.7090708@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Sun, 21 Aug 2011 04:41:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-19 2:00 AM, Khem Raj wrote:
> On 8/17/2011 8:23 PM, Darren Hart wrote:
>> We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
>> with messages like:
>>
>> NOTE: preferred version 3.0+git% of linux-yocto not available (for item
>> virtual/kernel)
>>
>> I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
>> just released and I'd have to do it again tomorrow. For 2.6.37, the
>> LINUX_VERSION remained the same across point releases. I recommend we do
>> the same for 3.0. I really don't want to have to go through and update
>> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
>> point release comes out.
>>
>
> In my understanding 2.6 has now become 3 and .40 became .0 making it 3.0
> therefore versions should be 3.0+gitrXXXX 3.1+gitrXXXX etc. 3.0.1 is
> similar to naming scheme 2.6.39.1 in olden days

Correct. The 3rd digit is the domain of the -stable udpates, just
like the 4th digit used to be. So we'll expect 5 or 6 updates to this
for each supported kernel.

Cheers,

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


