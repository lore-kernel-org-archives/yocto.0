Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE6F2E00B3A
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:56:39 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9E17FF811F8; Tue, 18 Mar 2014 10:56:38 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E1A79F811F7;
	Tue, 18 Mar 2014 10:56:37 -0600 (MDT)
Message-ID: <53287AD3.5040505@mlbassoc.com>
Date: Tue, 18 Mar 2014 10:56:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>	<532871AE.4070709@mlbassoc.com>
	<CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
In-Reply-To: <CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Losing Ethernet after reboot
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
X-List-Received-Date: Tue, 18 Mar 2014 16:56:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-18 10:42, Rick Bianchi wrote:
> Sorry typing on the fly. Here is what is in interfaces:
> auto eth0
> iface eth0 inet dhcp

Are you using systemd or sysvinit?

I use sysvinit and have these init script settings that start the network:
root@everest-p36:~# ls -l /etc/rc*/S*networking
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d/S01networking -> ../init.d/networking
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d/S01networking -> ../init.d/networking
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d/S01networking -> ../init.d/networking
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d/S01networking -> ../init.d/networking

> 
> 
> On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     On 2014-03-18 10:10, Rick Bianchi wrote:
>     >
>     > I losing Ethernet after every reboot. What is the process to have it come up manually?
>     >
>     > Image: Dylan gumstix-console
>     >
>     > I have already added eth0 auto to my /etc/network/interfaces.
> 
>     Shouldn't this line read
>       auto eth0
>     not the other way around?
> 
>     > At the moment I need to run the following after every reboot:
>     >
>     > ifconfig eth0 up
>     > udhcpc eth0


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

