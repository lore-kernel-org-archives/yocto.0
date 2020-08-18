Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.68005.1597762534392719873
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Aug 2020 07:55:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 07IEsCAV032268
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 18 Aug 2020 07:54:32 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 18 Aug
 2020 07:54:21 -0700
Subject: Re: [yocto] pkg-config dependencies?
To: Khem Raj <raj.khem@gmail.com>, Rob Prowel <rprowel@comcast.net>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
 <CAMKF1sqy8O3qd=n4NqggA60gO7V-+8VQnY_ERX-vMOYNG-oYqg@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <f82fc98a-efb6-6613-4c48-35f403fe6f0a@windriver.com>
Date: Tue, 18 Aug 2020 10:54:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqy8O3qd=n4NqggA60gO7V-+8VQnY_ERX-vMOYNG-oYqg@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-08-17 6:59 p.m., Khem Raj wrote:
> did you look at
> https://github.com/kraj/meta-openwrt/blob/master/recipes-networking/ipset/ipset_6.38.bb

And do you know about the layer index:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=ipset

../Randy

> 
> On Mon, Aug 17, 2020 at 10:14 AM Rob Prowel <rprowel@comcast.net> wrote:
>>
>> I'm trying to add the ipset utility to my arm build so that I can group
>> IP/ports for use in tc and netfilter.  I was able to update the vendor
>> supplied iptools2 recipe to install tc and iptables, but ipset is a
>> fresh recipe, not included in another existing layer.
>>
>> I'm adding the following in its bb file:
>>
>> # -----------------------------------------------------------------
>> SRC_URI =  "file://ipset-7.6.tar.bz2"
>> SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"
>>
>>
>> inherit pkgconfig
>>
>> S = "${WORKDIR}/ipset-7.6"
>>
>> RDEPENDS_${PN} += "libmnl"
>>
>> FILES_${PN} =  ""
>> # list will be populated once I know what the package wants to install
>>
>> do_configure(){
>>           ./configure --prefix=/ --host=arm-linuxeabi
>> }
>>
>> do_compile(){
>>           make DESTDIR=${D}
>> }
>>
>> do_install(){
>>           oe_runmake install DESTDIR=${D}
>> }
>>
>> # -----------------------------------------------------------------
>>
>> problem is that it depends on libmnl (which already exists as a lower
>> layer recipe), and the ipset configure script barfs on pkg-config with
>> the following message.
>>
>> | checking whether ln -s works... yes
>> | checking for libmnl... no
>> | configure: error: Package requirements (libmnl >= 1) were not met:
>> |
>> | No package 'libmnl' found
>> |
>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>> | installed software in a non-standard prefix.
>> |
>> | Alternatively, you may set the environment variables libmnl_CFLAGS
>> | and libmnl_LIBS to avoid the need to call pkg-config.
>> | See the pkg-config man page for more details.
>> | WARNING: exit code 1 from a shell command.
>>
>>
>> the PKG_CONFIG_PATH variable seems correct under devshell, but there is
>> no libmnl.pc file in there.  How do I force libmnl to create and stage a
>> proper pkg-config .pc file where it needs to be?
>>
>>
>>
>>
>> 


-- 
# Randy MacLeod
# Wind River Linux
