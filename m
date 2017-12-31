Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C99DE00D69; Sun, 31 Dec 2017 09:05:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CAD2E00A84
	for <yocto@yoctoproject.org>; Sun, 31 Dec 2017 09:05:26 -0800 (PST)
Received: from [192.168.159.23] ([88.109.27.80]) by mrelayeu.kundenserver.de
	(mreue005 [212.227.15.163]) with ESMTPSA (Nemesis) id
	0LjweT-1f2XtY3VsH-00boGr; Sun, 31 Dec 2017 18:05:21 +0100
To: Andrew Stuart <andrew.stuart@supercoders.com.au>,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <13F990CF-EDDD-4DE1-B0B6-A4A310C996B4@supercoders.com.au>
	<CAGAf8LwzcmgW-y518ojeT+zcy5LGa=wheYfwp2dnC9-BHwcKTg@mail.gmail.com>
	<67432EFA-A4E5-41BD-AB01-108C67DB32C2@supercoders.com.au>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <66fe515c-74d5-dac0-2064-174a62d4b53e@2net.co.uk>
Date: Sun, 31 Dec 2017 17:05:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <67432EFA-A4E5-41BD-AB01-108C67DB32C2@supercoders.com.au>
X-Provags-ID: V03:K0:x2yG3j46/j33nERy32b50pGgN1fMRf6Kb3xfNCSFMRA8oKGr32b
	6mXk2DMHcPU88rvDph6RU0R1zTXZ3QSv87LZ2QBchq5G3lpSLc8AxZi2Cbsr6Jnd5VctdTR
	dO+quthVsRD/rUToTQQ9KyW06n0Go162SeLC6Dzf3hcEsGy1FeYQEN2fToEKvsSZqXtpL20
	4CREA475gptc+E6FgSIhA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:bB2HactuVDo=:lmKbCIEg7XfnEBqz9YIaSr
	F5ZPhhtHEdHopUKPB+xN9uXF/YH5qpnY+D0o/p5pq5oJkTbt8PotvLxIj7vKpsLafCLsw7WpM
	6/OaxvOaPBdD1bvRV1HEh7SaTXcTs4g7thYxZn+88/mFSSmweqydCssMEbhFZI5CtD/B41zoH
	frMozFxAdRn1MwhY0zbl2pffy30Z2z2Z2F4n563RmbSwV6Z59HQywNHTy53BPGXDL6a99BR29
	nJ9yZdOwBnWcfkHedYTSf+vtSDTMzxhoCz6IS76IKlCvmu1Rrnl5AY5B8ffFf7qmBR0BoIeLU
	LMfaoZm3Q+KoZOREytiSKLlLvpnGwXINGrlY6LUcWq2hhqgJ9q0UIOBh9FyfJIsgxeR0Z9NYy
	EMoK82mENmzkZ6ft8xVmom3jqm4An69DJ7P3KFtI+e9z08HFEb2xIbgkpd4HpyWill6qqWtw0
	/e7iuGlcfheYWsg/rhnU9y6o9B1V1TvgtmTYDeGhOSkSu4XKeJBLWM6fETxHev1tx98NI1sFH
	EknoC4lJ+SXnkxBKeo8SuSXP3RLPWXWPqScptg0eppcMboJegWAwjDx8xzUCm76U13JKA1SuA
	cSoefqdoAtnLxJUDZgWhKiqo9ouEWIgwwQt4ff12eAR6K/F9G7xjrGEO64GGezkBm7x/YDJ4P
	HIf11K60Q3GbOFJ7vii1JazGsHtz0OkZ+RvTWH05AOtMoS6coGA6PwH1inP0q0NNVth7UPEl6
	NIsUr5E7uD+4siKm9FgWYawn5jNcdGFELnUXr/hJvKborDmk4YWBE+Tm56c=
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to build pure initramfs run from ram Yocto with some packages in initramfs?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 31 Dec 2017 17:05:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Andrew,

On 30/12/17 20:25, Andrew Stuart wrote:
[snip]
> 
> # set the machine type in local.conf
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> MACHINE = "qemux86-64"
> 
> # for blank root password in ssh, in local.conf:
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> EXTRA_IMAGE_FEATURES = "debug-tweaks"
> 
> #for kernel to run on EC2, in local.conf:
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> DISTRO_FEATURES_append=" xen"
> 
> #for ability to boot on cloud servers:
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> DISTRO_FEATURES_append = " virtualization"
> 
> #for openssh server, in local.conf:
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> CORE_IMAGE_EXTRA_INSTALL += "openssh"
> IMAGE_INSTALL_append = " openssh"
> 
> #for ISC dhclient , in local.conf:
> vi /home/ubuntu/poky-rocko-18.0.0/build/conf/local.conf
> CORE_IMAGE_EXTRA_INSTALL += "dhcp-client"
> IMAGE_INSTALL_append = " dhcp-client"
> 
[snip]

For initramfs images, you should use PACKAGE_INSTALL in place of your
CORE_IMAGE_EXTRA_INSTALL and IMAGE_INSTALL lines:

PACKAGE_INSTALL_append = " openssh dhcp-client"

(see "Building an Initial RAM Filesystem (initramfs) Image" of the "The
Yocto Project Development Tasks Manual":

http://www.yoctoproject.org/docs/2.4/dev-manual/dev-manual.html#building-an-initramfs-image)

-- 
Chris Simmonds, Consultant, 2net Ltd
http://www.2net.co.uk
+44 (0)1962 869003

