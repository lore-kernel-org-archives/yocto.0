Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74740E00CDE; Tue, 22 Jan 2019 13:08:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.30.210.183 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com
	(mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18A74E00CC9
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 13:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-type:in-reply-to:mime-version:date:message-id:from:references:cc:to:
	subject:from; bh=DCWUJM3txCHNvzcrUQD9FHvi8ELMOcpMeQ04hjFeyu0=;
	b=SUjx86FsxFZHg937LHRRNMjirMp/ljAtIaA9DPHkp04pi5vJRKVDD8GEmfzENwoEuYXimEdYwB2CM
	E1d3osd5Ni7ZQwnzZuIgdock08aCO0CwcHS05TG7poh74N9O4GKY3RtJ8H2sD3guSHC3wHd7faCyaf
	Sa67xZ67LAD/1Hm0=
X-HalOne-Cookie: 77c257daa794f2a9cde4b1cf1cd77e35e29989b2
X-HalOne-ID: dee738f1-1e89-11e9-888b-d0431ea8a290
Received: from [192.168.100.118] (unknown [82.196.108.68])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id dee738f1-1e89-11e9-888b-d0431ea8a290;
	Tue, 22 Jan 2019 21:08:31 +0000 (UTC)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
	<CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
	<CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
	<CAGAf8LyfbCqc5AeaDhxOAEwhL_KOe7mkE68d3afgv4DFJPVPmg@mail.gmail.com>
	<CAP71WjwvZPmn2zrMsvX6Cipm4zu4kROme-PVZFHueG_44dJPkg@mail.gmail.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <fc2bbe75-1300-14c5-aa35-621bc01f5bbb@berginkonsult.se>
Date: Tue, 22 Jan 2019 22:08:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAP71WjwvZPmn2zrMsvX6Cipm4zu4kROme-PVZFHueG_44dJPkg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Tue, 22 Jan 2019 21:08:36 -0000
Content-Type: multipart/alternative;
	boundary="------------AA131EA8711C1F7E396BAC28"
Content-Language: en-US

--------------AA131EA8711C1F7E396BAC28
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Zoran,

I'm not sure I got your question correct but I'll try to give you a 
super simple network config for systemd-networkd using dhcp.

Add the file '/etc/systemd/network/10-dhcp.network' with the following 
content:

     	[Match]
	Name=*

	[Network]
	DHCP=yes

Then I hope you will get your interface up with DHCP.

Regards,
/Peter



On 2019-01-22 17:45, Nicolas Dechesne wrote:
> On Tue, Jan 22, 2019 at 5:38 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>> Hello Nicolas,
>>
>> I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
>> do not use mtd neither flash rootfs (as mounted on flash), although in
>> the BBB DUT's flash I have embedded Debian stretch. I use different
>> ash scripts in U-Boot to bring only ramboot.
>>
>> Here is the proof:
>> root@beaglebone:~# df
>> Filesystem           1K-blocks      Used Available Use% Mounted on
>> devtmpfs                213596         0    213596   0% /dev
>> tmpfs                   251260         0    251260   0% /dev/shm
>> tmpfs                   251260      8428    242832   3% /run
>> tmpfs                   251260         0    251260   0% /sys/fs/cgroup
>> tmpfs                   251260         0    251260   0% /tmp
>> tmpfs                   251260       116    251144   0% /var/volatile
>>
>> But this email thread, my best guess, addresses your concerns:
>> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html
>>
>> There is also how to build image with initramfs ONLY, in this thread,
>> written by me:
>> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html
> thanks, that exactly what I was looking for.
>
>> I hope this helps.
>>
>> Zoran
>> _______
>>
>>
>> On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne
>> <nicolas.dechesne@linaro.org> wrote:
>>> hi,
>>>
>>> On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
>>> <zoran.stojsavljevic@gmail.com> wrote:
>>>> Hello Lukasz,
>>>>
>>>> Thank you very much for the advises. I did what you have suggested, and this does work.
>>>>
>>>> And it solves my basic problem (NO GO for some reason when I had network manager).
>>>>
>>>> I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my various pass-through VBox VMs (several designs) via my notebook host to test them, how different designs VMs connect and interact with DUT.
>>> can you share how you built your initramfs?  Are you saying that you
>>> are booting an initramfs which then mounts the rootfs where you have
>>> core-image-minimal?
>>>
>>>> Lukasz and Peter,
>>>>
>>>> I also will investigate more about systemd service in order to get more inside info about how to properly configure the service.
>>>>
>>>> Thank you,
>>>> Zoran
>>>> _______
>>>>
>>>> Here is the transcript after I built new YOCTO BBB DUT initramfs build:
>>>>
>>>> root@beaglebone:~# uname -a
>>>> Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GNU/Linux
>>>> root@beaglebone:~# systemctl restart systemd-networkd
>>>> root@beaglebone:~# ps -elf | grep dhc
>>>> 0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:00 grep dhc
>>>> root@beaglebone:~# ifconfig eth0 down
>>>> root@beaglebone:~# dhclient -4 eth0 -v
>>>> Internet Systems Consortium DHCP Client 4.4.1
>>>> Copyright 2004-2018 Internet Systems Consortium.
>>>> All rights reserved.
>>>> For info, please visit https://www.isc.org/software/dhcp/
>>>>
>>>> [11982.445947] net eth0: initializing cpsw version 1.12 (0)
>>>> [11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=4a101000.mdio:00, irq=POLL)
>>>> Listening on LPF/eth0/64:cf:d9:ff:67:05
>>>> Sending on   LPF/eth0/64:cf:d9:ff:67:05
>>>> Sending on   Socket/fallback
>>>> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
>>>> [11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow control off
>>>> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
>>>> DHCPOFFER of 192.168.15.95 from 192.168.15.2
>>>> DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
>>>> DHCPACK of 192.168.15.95 from 192.168.15.2
>>>> suspect value in domain_name option - discarded
>>>> chown: unrecognized option '--reference=/etc/resolv.conf'
>>>> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>>>>
>>>> Usage: chown [-Rh]... USER[:[GRP]] FILE...
>>>> chmod: unrecognized option '--reference=/etc/resolv.conf'
>>>> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>>>>
>>>> Usage: chmod [-R] MODE[,MODE]... FILE...
>>>> bound to 192.168.15.95 -- renewal in 40023 seconds.
>>>> root@beaglebone:~#
>>>>
>>>> On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.com> wrote:
>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Zoran Stojsavljevic
>>>>> Sent: Monday, January 21, 2019 7:56 AM
>>>>>
>>>>> [...]
>>>>>
>>>>>> While downloading initramfs on the target system, while bringing kernel up, the following
>>>>>> happened (actual log):
>>>>>> [    0.000000] Kernel command line: console=ttyO0,115200n8 root=/dev/ram0 ip=dhcp
>>>>>> ... [snap]...
>>>>>> [  114.064032] Sending DHCP requests ...... timed out!
>>>>>> [  190.652571] IP-Config: Auto-configuration of network failed
>>>>>> [  190.663158] Freeing unused kernel memory: 1024K
>>>>>> [  190.668661] Run /init as init process
>>>>>> System time before build time, advancing clock.
>>>>>> Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
>>>>>> Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or directory
>>>>>> [!!!!!!] Failed to mount API filesystems, freezing.
>>>>>> Freezing execution.
>>>>>> [  192.984442] random: crng init done
>>>>>> I have two questions (please, could you provide to me some help here):
>>>>>> [1] How to fix this run-time bug (what I should do in the configuration)?
>>>>>>      I found some interesting explanation about possible solution (PACKAGECONFIG):
>>>>>>      https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html
>>>>> Probably you are missing CONFIG_CGROUPS in your kernel configuration.
>>>>> Please read README file in the systemd sources folder - it describes all options
>>>>> required to be enabled in kernel configuration.
>>>>>
>>>>>> [2] I would like also to include networkctl service (should I do something specific to
>>>>>>      enable it, or this is done by default enabling systemd)?
>>>>> Please add following to your conf/local.conf file:
>>>>> PACKAGECONFIG_append_pn-systemd = " networkd"
>>>>>
>>>>> Best regards,
>>>>> Lukasz Zemla
>>>>>
>>>>> ***
>>>>> The information in this email is confidential and intended solely for the individual or entity to whom it is addressed.  If you have received this email in error please notify the sender by return e-mail, delete this email, and refrain from any disclosure or action based on the information.
>>>>> ***
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto


--------------AA131EA8711C1F7E396BAC28
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Zoran,<br>
      <br>
      I'm not sure I got your question correct but I'll try to give you
      a super simple network config for systemd-networkd using dhcp.<br>
      <br>
      Add the file '/etc/systemd/network/10-dhcp.network' with the
      following content:<br>
      <br>
      <pre>    	[Match]
	Name=*</pre>
      <pre>	[Network]
	DHCP=yes</pre>
      Then I hope you will get your interface up with DHCP.<br>
      <br>
      Regards,<br>
      /Peter<br>
      <br>
      <br>
      <br>
      On 2019-01-22 17:45, Nicolas Dechesne wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAP71WjwvZPmn2zrMsvX6Cipm4zu4kROme-PVZFHueG_44dJPkg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Jan 22, 2019 at 5:38 PM Zoran Stojsavljevic
<a class="moz-txt-link-rfc2396E" href="mailto:zoran.stojsavljevic@gmail.com">&lt;zoran.stojsavljevic@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hello Nicolas,

I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
do not use mtd neither flash rootfs (as mounted on flash), although in
the BBB DUT's flash I have embedded Debian stretch. I use different
ash scripts in U-Boot to bring only ramboot.

Here is the proof:
root@beaglebone:~# df
Filesystem           1K-blocks      Used Available Use% Mounted on
devtmpfs                213596         0    213596   0% /dev
tmpfs                   251260         0    251260   0% /dev/shm
tmpfs                   251260      8428    242832   3% /run
tmpfs                   251260         0    251260   0% /sys/fs/cgroup
tmpfs                   251260         0    251260   0% /tmp
tmpfs                   251260       116    251144   0% /var/volatile

But this email thread, my best guess, addresses your concerns:
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html">https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html</a>

There is also how to build image with initramfs ONLY, in this thread,
written by me:
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html">https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
thanks, that exactly what I was looking for.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
I hope this helps.

Zoran
_______


On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne
<a class="moz-txt-link-rfc2396E" href="mailto:nicolas.dechesne@linaro.org">&lt;nicolas.dechesne@linaro.org&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">
hi,

On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
<a class="moz-txt-link-rfc2396E" href="mailto:zoran.stojsavljevic@gmail.com">&lt;zoran.stojsavljevic@gmail.com&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">
Hello Lukasz,

Thank you very much for the advises. I did what you have suggested, and this does work.

And it solves my basic problem (NO GO for some reason when I had network manager).

I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my various pass-through VBox VMs (several designs) via my notebook host to test them, how different designs VMs connect and interact with DUT.
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">
can you share how you built your initramfs?  Are you saying that you
are booting an initramfs which then mounts the rootfs where you have
core-image-minimal?

</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">
Lukasz and Peter,

I also will investigate more about systemd service in order to get more inside info about how to properly configure the service.

Thank you,
Zoran
_______

Here is the transcript after I built new YOCTO BBB DUT initramfs build:

root@beaglebone:~# uname -a
Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GNU/Linux
root@beaglebone:~# systemctl restart systemd-networkd
root@beaglebone:~# ps -elf | grep dhc
0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:00 grep dhc
root@beaglebone:~# ifconfig eth0 down
root@beaglebone:~# dhclient -4 eth0 -v
Internet Systems Consortium DHCP Client 4.4.1
Copyright 2004-2018 Internet Systems Consortium.
All rights reserved.
For info, please visit <a class="moz-txt-link-freetext" href="https://www.isc.org/software/dhcp/">https://www.isc.org/software/dhcp/</a>

[11982.445947] net eth0: initializing cpsw version 1.12 (0)
[11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=4a101000.mdio:00, irq=POLL)
Listening on LPF/eth0/64:cf:d9:ff:67:05
Sending on   LPF/eth0/64:cf:d9:ff:67:05
Sending on   Socket/fallback
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
[11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow control off
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
DHCPOFFER of 192.168.15.95 from 192.168.15.2
DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
DHCPACK of 192.168.15.95 from 192.168.15.2
suspect value in domain_name option - discarded
chown: unrecognized option '--reference=/etc/resolv.conf'
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chown [-Rh]... USER[:[GRP]] FILE...
chmod: unrecognized option '--reference=/etc/resolv.conf'
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chmod [-R] MODE[,MODE]... FILE...
bound to 192.168.15.95 -- renewal in 40023 seconds.
root@beaglebone:~#

On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <a class="moz-txt-link-rfc2396E" href="mailto:Lukasz.Zemla@woodward.com">&lt;Lukasz.Zemla@woodward.com&gt;</a> wrote:
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">
From: <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of Zoran Stojsavljevic
Sent: Monday, January 21, 2019 7:56 AM

[...]

</pre>
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">While downloading initramfs on the target system, while bringing kernel up, the following
happened (actual log):
[    0.000000] Kernel command line: console=ttyO0,115200n8 root=/dev/ram0 ip=dhcp
... [snap]...
[  114.064032] Sending DHCP requests ...... timed out!
[  190.652571] IP-Config: Auto-configuration of network failed
[  190.663158] Freeing unused kernel memory: 1024K
[  190.668661] Run /init as init process
System time before build time, advancing clock.
Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or directory
[!!!!!!] Failed to mount API filesystems, freezing.
Freezing execution.
[  192.984442] random: crng init done
I have two questions (please, could you provide to me some help here):
[1] How to fix this run-time bug (what I should do in the configuration)?
    I found some interesting explanation about possible solution (PACKAGECONFIG):
    <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html">https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html</a>
</pre>
              </blockquote>
              <pre class="moz-quote-pre" wrap="">
Probably you are missing CONFIG_CGROUPS in your kernel configuration.
Please read README file in the systemd sources folder - it describes all options
required to be enabled in kernel configuration.

</pre>
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">[2] I would like also to include networkctl service (should I do something specific to
    enable it, or this is done by default enabling systemd)?
</pre>
              </blockquote>
              <pre class="moz-quote-pre" wrap="">
Please add following to your conf/local.conf file:
PACKAGECONFIG_append_pn-systemd = " networkd"

Best regards,
Lukasz Zemla

***
The information in this email is confidential and intended solely for the individual or entity to whom it is addressed.  If you have received this email in error please notify the sender by return e-mail, delete this email, and refrain from any disclosure or action based on the information.
***
</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
          </blockquote>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------AA131EA8711C1F7E396BAC28--
