Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D66E009DC; Fri, 27 Apr 2018 19:21:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D90F5E008BF
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 19:21:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3S2KZu1012880
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 Apr 2018 19:20:56 -0700
Received: from [128.224.20.59] (128.224.20.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 27 Apr 2018 19:20:41 -0700
To: Andre McCurdy <armccurdy@gmail.com>, Damien LEFEVRE <lefevre.da@gmail.com>
References: <CA+FhBv87F=hTjo5R3kt1KiK4oghwxEgxBGh5NEAUdHFoLLjvbQ@mail.gmail.com>
	<CAJ86T=Ui20qYO0p_WFpZSjJAK6an2-i_bmhM+Oyp+avWbt5fiA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <35bcadb3-3ceb-94a1-fd5b-80da39e62c11@windriver.com>
Date: Fri, 27 Apr 2018 22:20:46 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=Ui20qYO0p_WFpZSjJAK6an2-i_bmhM+Oyp+avWbt5fiA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: LINUX_VERSION issue in recipe
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
X-List-Received-Date: Sat, 28 Apr 2018 02:21:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 4/27/2018 5:34 PM, Andre McCurdy wrote:
> On Fri, Apr 27, 2018 at 3:44 AM, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>> Hi,
>>
>> This must be a stupid basic question. I have the following recipe append:
>>
>> keymaps_1.0.bbappend
>> -----------------------------------------------------------------------------
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> SRC_URI_append = " file://keymaps.service \
>>                     file://keymap.sh \
>> "
>>
>> do_install_append() {
>>      install -d ${D}${sysconfdir}
>>      ln -sf /usr/share/keymaps/i386/qwerty/fi.map.gz
>> ${D}${sysconfdir}/keymap-${LINUX_VERSION}.map.gz
>>
>>      install -d ${D}${systemd_system_unitdir}
>>      install -m 0644 ${WORKDIR}/keymaps.service ${D}${systemd_system_unitdir}
>> }
>>
>> FILES_${PN} += " ${sysconfdir}/* \
>>                   ${systemd_system_unitdir}/* \
>> "
>>
>> inherit systemd
>> SYSTEMD_SERVICE_${PN} = "${PN}.service"
>> -----------------------------------------------------------------------------
>>
>> The LINUX_VERSION is not expanded and the final symlink name becomes
>> /etc/keymap-.map.gz.
>>
>> What's correct way to get the linux version in the recipe files?
> 
> In general, there isn't a correct way to do that. The LINUX_VERSION
> variable is defined within the kernel recipe and other recipes won't
> have access to it.
> 
> A core concept in OE is that recipes build independently of each
> other. In this case, since the keymaps recipe has no direct dependency
> on the kernel, you should not expect the keymaps recipe to be rebuilt
> (or affected in any way) when the kernel or kernel version changes.

Yep. Unless you inherit the kernel build classes there's no
easy way to do this. But if the kernel classes are inherited,
then some of the variables like KERNEL_VERSION become available
to use .. but of course, you've just tightly coupled things to
the kernel.

Cheers,

Bruce

> 
> The keymaps init script ( meta/recipes-bsp/keymaps/files/keymap.sh )
> detects the kernel version dynamically at runtime. If you need a
> kernel version specific symlink in your target rootfs, maybe you could
> create it at runtime from your keymaps service file?
> 

