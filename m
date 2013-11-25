Return-Path: <tobias.henkel@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4193E00476
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 23:36:45 -0800 (PST)
Received: from duffman.bmw-carit.intra (duffman.bmw-carit.intra
	[192.168.101.67])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: tobias.henkel)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 85FB94009C
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 07:07:04 +0100 (CET)
Message-ID: <5292FE0B.7020403@oss.bmw-carit.de>
Date: Mon, 25 Nov 2013 08:36:43 +0100
From: Tobias Henkel <tobias.henkel@oss.bmw-carit.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <000501cee9ab$65f6de00$31e49a00$@xstreamworship.com>
In-Reply-To: <000501cee9ab$65f6de00$31e49a00$@xstreamworship.com>
Subject: Re: Java on Yocto 1.5 on i.MX6
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
X-List-Received-Date: Mon, 25 Nov 2013 07:36:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2013 07:55 AM, Darcy Watkins wrote:
> Anyone build and running openjdk-7 in the yocto 1.5 environment on i.MX6?
>
> I tried adding meta-java layer and ran 'bitbake openjdk-7' and it blows up
> in do_configure classpath-native.  The log file is attached to my post at
> Freescale community.
>
> https://community.freescale.com/message/364691#364691
>
> I want to run this on my Wandboard-Quad.
>
> Thanks in advance.
>
I also had trouble with classpath-native after upgrading my build 
machine to Fedora 19.
The jamvm crashes with segfaults during the configure step in 
classpath-native.

My (internal) fix for this was to copy the cacao-initial recipe (with 
dependent files) from
https://github.com/openembedded/openembedded/blob/master/recipes/cacao/cacao-initial_0.98.bb
into my layer and add PREFERRED_PROVIDER_virtual/java-initial = 
"cacao-initial" to the local.conf.

For getting this to work I also had to add "vm.mmap_min_addr=0" to 
/etc/sysctl.conf

Cheers,
Tobias

