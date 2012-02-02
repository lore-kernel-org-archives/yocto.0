Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD90E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 09:06:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q12H6reJ026434
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 2 Feb 2012 09:06:53 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 2 Feb 2012 09:06:53 -0800
Message-ID: <4F2AC2AB.6030204@windriver.com>
Date: Thu, 2 Feb 2012 11:06:51 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
In-Reply-To: <4F2AB4FF.5070208@gmail.com>
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 17:06:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2/2/12 10:08 AM, jfabernathy wrote:
> On 02/01/2012 10:59 PM, jfabernathy wrote:
>> Am I the only one seeing this dead link?  I'm building from master and
>> can't get to this link that draws the error:
>>
>> http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2
>>
>> I'm building crownbay bsp with core-image-sato.
>>
>> Jim A
>>
> I can't seem to build anything that requires something from
> cgit.freedesktop.org.  The whole site seems to be down.  Is there a mirror?

Using the standard poky distribution configuration, you should be connecting to 
our mirrors.

meta-yocto/conf/distro/poky.conf has the settings.  All of the upstream packages 
should be mirrored there.  If they are not, then please let us know and we'll 
work on resolving any missing files.

--Mark

> JIm A
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


