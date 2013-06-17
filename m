Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A09E01547
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:26:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5H5QBxE007824
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:26:11 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Sun, 16 Jun 2013 22:26:10 -0700
Message-ID: <51BE9DF5.1090200@windriver.com>
Date: Mon, 17 Jun 2013 13:26:13 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <loom.20130616T115549-619@post.gmane.org>
	<51BE98F8.3040903@windriver.com>
	<loom.20130617T071650-37@post.gmane.org>
In-Reply-To: <loom.20130617T071650-37@post.gmane.org>
X-Originating-IP: [128.224.162.233]
Subject: Re: Modify udev
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
X-List-Received-Date: Mon, 17 Jun 2013 05:26:11 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 06/17/2013 01:19 PM, jack wrote:
> ChenQi <Qi.Chen@...> writes:
>
>> On 06/16/2013 07:45 PM, Jack wrote:
>>> Hi,
>>>
>>> In my imageو starting udev take a long time about 6 seconds whereas the time
>> If the performance is important, what about using udev-cache to speed up
>> the boot process?
>>
> How should I use udev-cache ?
>
To add udev-cache to your image, add the following line to your local.conf.
IMAGE_INSTALL_append += "udev-cache"
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


