Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A91B6E011B7
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 21:11:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7I4BWxs010311
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Aug 2011 21:11:32 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.44) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 17 Aug 2011 21:11:31 -0700
Message-ID: <4E4C90F2.7040904@windriver.com>
Date: Thu, 18 Aug 2011 00:11:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E4C85B8.3000301@linux.intel.com>
In-Reply-To: <4E4C85B8.3000301@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 18 Aug 2011 04:11:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-17 11:23 PM, Darren Hart wrote:
> We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
> with messages like:
>
> NOTE: preferred version 3.0+git% of linux-yocto not available (for item
> virtual/kernel)
>
> I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
> just released and I'd have to do it again tomorrow. For 2.6.37, the
> LINUX_VERSION remained the same across point releases. I recommend we do
> the same for 3.0. I really don't want to have to go through and update
> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
> point release comes out.

I made this change due to some other explicit requests about the
kernel version not being obvious. I don't really see this as a big
deal, I'm already updating SRCREVs, we are already updating the
SRCREVs in the meta-* layers .. so I fail to see how this is much
more load.

I'd argue that 2.6.37 was a mistake, and you shouldn't even need
to set the preferred version anymore once the latest kernel works
for your machines. It will always be selected and you shouldn't
need to force it. We only needed this during the transition phase,
and I'm about to change the default in meta-yocto .. so you definitely
won't need it.

Cheers,

Bruce

>


