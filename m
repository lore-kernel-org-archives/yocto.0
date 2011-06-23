Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A6934C8005F
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 21:47:00 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5N2kh0Y012365
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Jun 2011 19:46:43 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.254) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 22 Jun 2011 19:46:43 -0700
Message-ID: <4E02A911.9060701@windriver.com>
Date: Wed, 22 Jun 2011 22:46:41 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110613 Thunderbird/3.1.11
MIME-Version: 1.0
To: NiQingliang <niqingliang@insigma.com.cn>
References: <1308794126.28060.20.camel@localhost.localdomain>
In-Reply-To: <1308794126.28060.20.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: the mpc8315's compile option
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
X-List-Received-Date: Thu, 23 Jun 2011 02:47:00 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-22 9:55 PM, NiQingliang wrote:
> mpc8315's core is e300c3, why use "tune-ppc603e.inc"?

The 603e represented a lowest common denominator tune file
when the BSP was introduced, and it was available in poky at
the time.

We simply haven't revisited the tuning for the BSP yet, since
what we have works at the moment.

>
> I think there should be an file named "tune-ppce300c3.inc"? I can find
> it in openembedded.

I'd definitely like to see patches that provide better tuning for this
BSP. So patches are welcome. Although at the moment, I'm not aware
of any plans to revisit the tuning.

Perhaps you'd like to log this as an enhancement request in the
yocto bugzilla ? That way we can be sure that it isn't forgotten.

Cheers,

Bruce

>
>


