Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B065E01547
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 04:00:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5HB085R008596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 04:00:08 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Mon, 17 Jun 2013 04:00:08 -0700
Message-ID: <51BEEC3B.7060807@windriver.com>
Date: Mon, 17 Jun 2013 19:00:11 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <loom.20130616T115549-619@post.gmane.org>
	<51BE98F8.3040903@windriver.com>
	<loom.20130617T071650-37@post.gmane.org>
	<51BE9DF5.1090200@windriver.com>
	<loom.20130617T110444-837@post.gmane.org>
In-Reply-To: <loom.20130617T110444-837@post.gmane.org>
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
X-List-Received-Date: Mon, 17 Jun 2013 11:00:10 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 06/17/2013 05:10 PM, Jack wrote:
> ChenQi <Qi.Chen@...> writes:
>
>> On 06/17/2013 01:19 PM, jack wrote:
>>> ChenQi <Qi.Chen <at> ...> writes:
>>>
>>>> On 06/16/2013 07:45 PM, Jack wrote:
>>>>> Hi,
>>>>>
>>>>> In my imageو starting udev take a long time about 6 seconds whereas
> the time
>>>> If the performance is important, what about using udev-cache to speed up
>>>> the boot process?
>>>>
>>> How should I use udev-cache ?
>>>
>> To add udev-cache to your image, add the following line to your local.conf.
>> IMAGE_INSTALL_append += "udev-cache"
> I add this line to my local.conf but starting udev take about 6 seconds in
> boot process yet. What solution do you propose ?
>
I've just filed a bug for the udev-cache.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4738

The patch is still under review. If you want to use it now, please visit 
the following link and take the patch.
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ChenQi/udev-cache-fix

I've made some simple tests myself. With udev-cache enabled, the udev 
takes less than 1s to start (not the first boot).

//Chen Qi
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


