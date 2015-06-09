Return-Path: <george.nita@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D988FE0096A; Tue,  9 Jun 2015 02:47:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 16840E00496
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 02:47:36 -0700 (PDT)
Received: from [192.168.14.151] (192.168.14.151) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2; Tue, 9 Jun 2015
	11:47:34 +0200
Message-ID: <5576B633.5090201@enea.com>
Date: Tue, 9 Jun 2015 12:47:31 +0300
From: George Nita <george.nita@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <555D9B06.3050603@enea.com>
	<1502347.ZKKJbWNJ0A@peggleto-mobl.ger.corp.intel.com>
	<555EF85D.5080209@enea.com>
In-Reply-To: <555EF85D.5080209@enea.com>
X-Originating-IP: [192.168.14.151]
Cc: yocto@yoctoproject.org
Subject: Re: smart 1.4.1 unsolved problem
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
X-List-Received-Date: Tue, 09 Jun 2015 09:47:40 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2015 12:35 PM, George Nita wrote:
> On 05/22/2015 11:43 AM, Paul Eggleton wrote:
>> Hi George,
>>
>> On Thursday 21 May 2015 11:44:54 George Nita wrote:
>>> I've reproduced the https://bugs.launchpad.net/smart/+bug/1238492 issue
>>>
>>> branch: dizzy
>>> target: p2041rdb
>>>
>>> Did any one hit this too?
>>
>> Did you enable runtime package management (i.e., is
>> "package-management" in
>> IMAGE_FEATURES (or indirectly via EXTRA_IMAGE_FEATURES)?) If you're
>> not sure,
>> you can use bitbake -e to check.
>>
>> If it isn't enabled, that would explain the behaviour because
>> smart/rpm think
>> that no packages are installed because there is no package database in
>> the
>> image.
>>
>> Cheers,
>> Paul
>>
>
> Hello Paul,
>
> IMAGE_FEATURES="debug-tweaks ssh-server-dropbear package-management"
>
>
> When committing the computed changeset smart attempts to install
> packages that are in the dependency list but are already installed, and
> fails because of it:
>
> root@p2041rdb:~# smart install -y bc
> Loading cache...
> Updating cache...               ########################################
> [100%]
>
> Computing transaction...
>
> Installing packages (7):
>    bc-1.06-r2.0@ppce500mc
>    busybox-1.22.1-r32.0@ppce500mc
>    busybox-syslog-1.22.1-r32.0@ppce500mc
>    busybox-udhcpc-1.22.1-r32.0@ppce500mc
>    libc6-2.20-r0.0@ppce500mc
>    update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0@ppce500mc
>    update-rc.d-0.7-r5.0@all
>
> 2.2MB of package files are needed. 4.4MB will be used.
>
> Fetching packages...
> ->
> http://172.21.3.25/.../update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0.ppce500mc.rpm
>
> update-alternatives-opkg-0.1... ########################################
> [ 14%]
> -> http://.../rpm/all/update-rc.d-0.7-r5.0.all.rpm
> ->
> http://172.21.3.25/~geni/rpm/.../busybox-udhcpc-1.22.1-r32.0.ppce500mc.rpm
> busybox-udhcpc-1.22.1-r32.0.p.. ########################################
> [ 28%]
> -> http://.../rpm/ppce500mc/bc-1.06-r2.0.ppce500mc.rpm
> bc-1.06-r2.0.ppce500mc.rpm      ########################################
> [ 42%]
> -> http://.../rpm/.../busybox-syslog-1.22.1-r32.0.ppce500mc.rpm
> busybox-syslog-1.22.1-r32.0.p.. ########################################
> [ 57%]
> update-rc.d-0.7-r5.0.all.rpm    ########################################
> [ 71%]
> -> http://.../rpm/ppce500mc/busybox-1.22.1-r32.0.ppce500mc.rpm
> busybox-1.22.1-r32.0.ppce500m.. ########################################
> [ 85%]
> -> http://.../rpm/ppce500mc/libc6-2.20-r0.0.ppce500mc.rpm
> libc6-2.20-r0.0.ppce500mc.rpm   ########################################
> [100%]
>
>
>
> Committing transaction...
> Preparing...                    ########################################
> [  0%]
> error: package
> update-alternatives-opkg-0.1.8+git0+eae0d8fa44-r0.0.ppce500mc is already
> installed
> error: package busybox-1.22.1-r32.0.ppce500mc is already installed
> error: package update-rc.d-0.7-r5.0.all is already installed
> ...
>
>
> This seems consistent with the reported issue
> https://bugs.launchpad.net/smart/+bug/1238492
>
>
>
> Thanks,
>
Hello,

Sorry, my error: I've removed the rpm-sys type channel, the one hosting 
installed packages. After recreating the rpm-sys type channel everything 
worked as expected.

-- 
Best regards,
George Nita

