Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 177C3E0072A; Wed, 17 Dec 2014 07:06:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 30B67E00344
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 07:06:21 -0800 (PST)
Received: (qmail 13339 invoked by uid 1003); 17 Dec 2014 15:06:20 -0000
Received: from unknown (HELO ?192.168.1.109?) (philip@opensdr.com@71.171.45.99)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	17 Dec 2014 15:06:20 -0000
Message-ID: <54919BEB.7070909@balister.org>
Date: Wed, 17 Dec 2014 10:06:19 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Constantin, Costin C" <costin.c.constantin@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2B8B4B6BB45F5242AFEC714E022A4B4A27680D8A@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <2B8B4B6BB45F5242AFEC714E022A4B4A27680D8A@IRSMSX101.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 17 Dec 2014 15:06:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

I'd install a custom /etc/network/interfaces file via a bbappend or
similar method. There is numerous examples in google of how to set up  a
static Ip via the interfaces file.

Philip

On 12/16/2014 05:08 AM, Constantin, Costin C wrote:
> Hello Sachin
> 
> The easiest way to do this is by modifying the install script. Here is how:
> Suppose you cloned poky into a local dir. on your HDD drive. I use Ubuntu for this but you can use whatever certified OS (Fedora, Centos, OpenSuse) just:
> 
> $ cd your_local_poky_dir
> $ gedit meta/recipes-core/initrdscripts/files/init-install.sh
> ...
> #before the line containing "umount /tgt_root"   add the following
> # interface=$(ls /sys/class/net | grep eth)
> # echo "ifconfig $interface your_desired_ip netmask 255.255.255.0 up" >> /tgt_root/etc/profile
> #eg.:
> interface=$(ls /sys/class/net | grep eth)
> echo "ifconfig $interface 10.10.10.10 netmask 255.255.255.0 up" >> /tgt_root/etc/profile
> #after this comes
> umount /tgt_root
> ...
> 
> Regards,
> 
> Costin Constantin
> Yocto QA team
> 
> 
> 

