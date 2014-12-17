Return-Path: <costin.c.constantin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66BCEE0072A; Wed, 17 Dec 2014 07:38:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09E58E00344
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 07:38:28 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Dec 2014 07:38:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,594,1413270000"; d="scan'208";a="649185667"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2014 07:38:26 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.126]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.209]) with mapi id
	14.03.0195.001; Wed, 17 Dec 2014 15:38:25 +0000
From: "Constantin, Costin C" <costin.c.constantin@intel.com>
To: Philip Balister <philip@balister.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] how to set static ip in linux
Thread-Index: AQHQGgtJolPXa2ISvU+FI+HwyU1bXpyT5ysu
Date: Wed, 17 Dec 2014 15:38:24 +0000
Message-ID: <2B8B4B6BB45F5242AFEC714E022A4B4A27685170@IRSMSX101.ger.corp.intel.com>
References: <2B8B4B6BB45F5242AFEC714E022A4B4A27680D8A@IRSMSX101.ger.corp.intel.com>,
	<54919BEB.7070909@balister.org>
In-Reply-To: <54919BEB.7070909@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: Re: how to set static ip in linux
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
X-List-Received-Date: Wed, 17 Dec 2014 15:38:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

... or easier, you can directly use the poky_dir/meta/recipes-core/init-ifu=
pdown/init-ifupdown-1.0/interfaces to=0A=
set up interfaces. An eg. would be:=0A=
=0A=
auto eth0=0A=
iface eth0 inet static=0A=
        address 192.168.1.100=0A=
        netmask 255.255.255.0=0A=
        network 192.168.1.0=0A=
        gateway 192.168.1.1=0A=
=0A=
I personally used the already mentioned method for convenience, because i h=
ad a lot to work with install script=0A=
lately ... =0A=
=0A=
Costin Constantin=0A=
Yocto QA team=0A=
=0A=
________________________________________=0A=
From: Philip Balister [philip@balister.org]=0A=
Sent: Wednesday, December 17, 2014 5:06 PM=0A=
To: Constantin, Costin C; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] how to set static ip in linux=0A=
=0A=
I'd install a custom /etc/network/interfaces file via a bbappend or=0A=
similar method. There is numerous examples in google of how to set up  a=0A=
static Ip via the interfaces file.=0A=
=0A=
Philip=0A=
=0A=
On 12/16/2014 05:08 AM, Constantin, Costin C wrote:=0A=
> Hello Sachin=0A=
>=0A=
> The easiest way to do this is by modifying the install script. Here is ho=
w:=0A=
> Suppose you cloned poky into a local dir. on your HDD drive. I use Ubuntu=
 for this but you can use whatever certified OS (Fedora, Centos, OpenSuse) =
just:=0A=
>=0A=
> $ cd your_local_poky_dir=0A=
> $ gedit meta/recipes-core/initrdscripts/files/init-install.sh=0A=
> ...=0A=
> #before the line containing "umount /tgt_root"   add the following=0A=
> # interface=3D$(ls /sys/class/net | grep eth)=0A=
> # echo "ifconfig $interface your_desired_ip netmask 255.255.255.0 up" >> =
/tgt_root/etc/profile=0A=
> #eg.:=0A=
> interface=3D$(ls /sys/class/net | grep eth)=0A=
> echo "ifconfig $interface 10.10.10.10 netmask 255.255.255.0 up" >> /tgt_r=
oot/etc/profile=0A=
> #after this comes=0A=
> umount /tgt_root=0A=
> ...=0A=
>=0A=
> Regards,=0A=
>=0A=
> Costin Constantin=0A=
> Yocto QA team=0A=
>=0A=
>=0A=
>=0A=

