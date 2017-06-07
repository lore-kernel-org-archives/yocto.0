Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16519E00BCC; Wed,  7 Jun 2017 03:46:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B494FE00B3D
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 03:46:37 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dIYTm-000FNA-L1; Wed, 07 Jun 2017 12:46:22 +0200
Received: from [2a02:168:68bb:0:1c21:76fb:57b:5890]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.89 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1dIYTm-000GO2-J6; Wed, 07 Jun 2017 12:46:22 +0200
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: "VanCutsem, Geoffroy" <geoffroy.vancutsem@intel.com>,
	Yocto List <yocto@yoctoproject.org>
References: <a35f0a1e-369d-2868-c785-d044e5436e0a@smart-home-technology.ch>
	<B23DE4404747DE4181D616A0059CCECE7C30D8BB@IRSMSX104.ger.corp.intel.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <023da786-5e3c-9bf8-8e35-e3fe052d188a@smart-home-technology.ch>
Date: Wed, 7 Jun 2017 12:46:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <B23DE4404747DE4181D616A0059CCECE7C30D8BB@IRSMSX104.ger.corp.intel.com>
Subject: Re: Building boost-python
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
X-List-Received-Date: Wed, 07 Jun 2017 10:46:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE



On 07.06.2017 11:59, VanCutsem, Geoffroy wrote:
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Jakob Hasse
>> Sent: Wednesday, June 7, 2017 11:48 AM
>> To: Yocto List <yocto@yoctoproject.org>
>> Subject: [yocto] Building boost-python
>>
>> Hello,
>>
>> One of my layers needs boost-python.
>> When I try to build boost-python with bitbake, it complains:
>>
>> ERROR: Nothing PROVIDES 'boost-python'
>>
>> How can I fix this?
>> Boost itself builds and I also included
>> PACKAGECONFIG_pn_boost = "python"
>> without any effect.
> I believe the correct spelling is:
> PACKAGECONFIG_pn-boost = "python"
> (note the hyphen instead of underscore)
Yes, I saw it somewhere else now with a hyphen, too, but even with the 
corrected local.conf, the problem still remains.
Bitbake quits with the same error message as before
>
>> My bblayers.conf is here:
>>
>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf #
>> changes incompatibly LCONF_VERSION = "6"
>>
>> BBPATH = "${TOPDIR}"
>> BBFILES ?= ""
>>
>> BBLAYERS ?= " \
>>     /usr/local/dey-2.0/sources/poky/meta \
>>     /usr/local/dey-2.0/sources/poky/meta-yocto \
>>     /usr/local/dey-2.0/sources/poky/meta-yocto-bsp \
>>     /usr/local/dey-2.0/sources/meta-openembedded/meta-oe \
>>     /usr/local/dey-2.0/sources/meta-openembedded/meta-python \
>> /usr/local/dey-2.0/sources/meta-openembedded/meta-networking \
>> /usr/local/dey-2.0/sources/meta-openembedded/meta-webserver \
>>     /usr/local/dey-2.0/sources/meta-qt5 \
>>     /usr/local/dey-2.0/sources/meta-swupdate \
>>     /usr/local/dey-2.0/sources/meta-fsl-arm \
>>     /usr/local/dey-2.0/sources/meta-fsl-demos \
>>     /usr/local/dey-2.0/sources/meta-digi/meta-digi-arm \
>>     /usr/local/dey-2.0/sources/meta-digi/meta-digi-dey \
>>     /usr/local/dey-2.0/sources/meta-java/ \
>>     /usr/local/dey-2.0/sources/meta-iot-cloud/ \
>>
>>     "
>> BBLAYERS_NON_REMOVABLE ?= " \
>>     /usr/local/dey-2.0/sources/poky/meta \
>>     /usr/local/dey-2.0/sources/poky/meta-yocto \
>>     "
>>
>> Any help is welcome!
>> Jakob
>>
>> --
>> Jakob Hasse
>> Software Developement
>>
>> E: jakob.hasse@smart-home-technology.ch
>> T: +41 44 552 02 66
>>
>> Smart Home Technology GmbH
>> www.smart-home-technology.ch
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


