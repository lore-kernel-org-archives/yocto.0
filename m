Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E52DE01358
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 12:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=7xHcho4gOEu5KiCuKBOJ0CtEMKqGdLRT8PL9P9/bFRE=; 
	b=mV0MrK1/CCVjHfHme4UM0pSHtNpcSa4kpa/jgLM3hLlXHVkR6IVQgvklIIFAWS2U4/Kidx3X/wwgpW2TZ9lmX2/HGzqVPucXea4EyWbYDlHmvHY3+vZ0KcEYAKdb6/MnnOXmMkNiFUVnR0patdkR2uIGt9mQfy4v/FJKpqN3OFg=;
Received: from [82.113.183.55] (port=53466
	helo=macbook-pro.crosscountrywifi.co.uk)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1VGwGU-002MZE-Ac; Tue, 03 Sep 2013 20:27:50 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
Date: Tue, 3 Sep 2013 20:27:49 +0100
Message-Id: <37E33B85-31BA-4F04-9A47-2C482ACACBB9@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 19:27:56 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F6DFFA6C-BB87-4C43-9722-2C41F7F65F0C"

--Apple-Mail=_F6DFFA6C-BB87-4C43-9722-2C41F7F65F0C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On 3 Sep 2013, at 02:04, Elvis Dowson wrote:

> Hi,
>=20
> On Sep 3, 2013, at 3:29 AM, Christian Gagneraud <chgans@gna.org> =
wrote:
>=20
>>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>>> is probably better as you'll potentially double the write speed to =
disk.
>>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write =
speed
>>> near to 1GBs. Write endurance is possibly a concern, but I've not =
had
>>> any issues using them on a local build machine. I would probably =
look at
>>> some higher end models if I was going to run a lot of builds. A lot =
less
>>> noise than hard drives ;-)
>>=20
>> Thanks for the info, i will have a look at RAID-1, as you can see, I =
know absolutely nothing about RAID! ;)
>>=20
>> Does SSD really help with disk throughput? Then what's the point of =
using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk =
bottleneck shouldn't be such a problem anymore (basically, on disk, you =
should only have your yocto source tree and your download directory?).
>=20
> I use a Gigabyte Z77X-UP5TH motherboard=20
>=20
> http://www.gigabyte.us/press-center/news-page.aspx?nid=3D1166
>=20
> which has support for RAID in BIOS, at boot up, and Thunderbolt =
connected to an Apple 27" Thunderbolt display. I've got two SSDs in a =
RAID1 configuration (striped).
>=20
> If you can wait for some more time, they'll be releasing a version of =
the motherboard for the new haswell chips as well, but it's not probably =
going to increase performance.=20
>=20
> I use a 3770K i7 quad-core processor, 16GB RAM, with a liquid cooled =
solution running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I =
end up shaving only 2 minutes off build times, so I just run it at =
3.8GHz.
>=20
> A core-image-minimal build takes around 22 minutes for me, for a =
Xilinx ZC702 machine configuration (Dual ARM Cortex A9 processor + =
FPGA).

That's basically the spec I run (water cooling also keeps the noise =
down!). I generally get build times of just over 50 minutes for my =
system which has 'X' / GLES / Boost with something like 5500 tasks. Much =
better than the 10+ hours on a VM on the 4 year old MacBook Pro!

>=20
> Here are the modifications that I've done to my system, to tweak SSD =
performance, for Ubuntu-12.10, for a RAID1 array.
>=20
> SSD performance tweaks (for non RAID0 arrays)
>=20
> Step 01.01: Modify /etc/fstab.
>=20
> $ sudo gedit /etc/fstab
>=20
> Increase the life of the SSD by reducing how much the OS writes to the =
disk. If you don't need to knowwhen each file or directory was last =
accessed, add the following two options to the /etc/fstab file:
>=20
> noatime, nodiratime
>=20
> To enable TRIM support to help manage disk performance over the long =
term, add the following option to the /etc/fstab file:
>=20
> discard
>=20
> The /etc/fstab file should look like this:
>=20
> # / was on /dev/sda1 during installation
> UUID=3Dxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /               ext4    =
discard,noatime,nodiratime,errors=3Dremount-ro 0       1
>=20
> Move /tmp to RAM
>=20
> # Move /tmp to RAM
> none            /tmp            tmpfs       =
defaults,noatime,nodiratime,noexec,nodev,nosuid 0      0
>=20
> See: Guide software RAID/LVM TRIM support on Linux for more details.
>=20
> Step 01.02: Move the browser's cache to a tmpfs in RAM
>=20
> Launch firefox and type the following in the location bar:
>=20
> about:config
>=20
> Right click and enter a new preference configution by selecting the =
New->String option.
>=20
> Preference name: 	browser.cache.disk.parent_directory
> string value:		/tmp/firefox-cache
>=20
> See: Running Ubuntu and other Linux flavors on an SSD =AB Brizoma.
>=20
>=20
> Best regards,
>=20
> Elvis Dowson

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_F6DFFA6C-BB87-4C43-9722-2C41F7F65F0C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On 3 Sep 2013, at 02:04, Elvis Dowson wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><meta =
http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Sep 3, 2013, at 3:29 AM, Christian Gagneraud =
&lt;<a href=3D"mailto:chgans@gna.org">chgans@gna.org</a>&gt; =
wrote:</div><br><blockquote type=3D"cite"><blockquote type=3D"cite">Isn't =
RAID-5 going to be slower, especially if it's software? RAID 1<br>is =
probably better as you'll potentially double the write speed to =
disk.<br>I use a couple of Vertex SSDs in RAID 1 giving a theoretical =
write speed<br>near to 1GBs. Write endurance is possibly a concern, but =
I've not had<br>any issues using them on a local build machine. I would =
probably look at<br>some higher end models if I was going to run a lot =
of builds. A lot less<br>noise than hard drives =
;-)<br></blockquote><br>Thanks for the info, i will have a look at =
RAID-1, as you can see, I know absolutely nothing about RAID! =
;)<br><br>Does SSD really help with disk throughput? Then what's the =
point of using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, =
the disk bottleneck shouldn't be such a problem anymore (basically, on =
disk, you should only have your yocto source tree and your download =
directory?).<br></blockquote></div><br></div><div>I use a Gigabyte =
Z77X-UP5TH motherboard&nbsp;</div><div><br></div><div><a =
href=3D"http://www.gigabyte.us/press-center/news-page.aspx?nid=3D1166">htt=
p://www.gigabyte.us/press-center/news-page.aspx?nid=3D1166</a></div><div><=
br></div><div>which has support for RAID in BIOS, at boot up, and =
Thunderbolt connected to an Apple 27" Thunderbolt display. I've got two =
SSDs in a RAID1 configuration (striped).</div><div><br></div><div>If you =
can wait for some more time, they'll be releasing a version of the =
motherboard for the new haswell chips as well, but it's not probably =
going to increase performance.&nbsp;</div><div><br></div><div>I use a =
3770K i7 quad-core processor, 16GB RAM, with a liquid cooled solution =
running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I end up =
shaving only 2 minutes off build times, so I just run it at =
3.8GHz.</div><div><br></div><div>A core-image-minimal build takes around =
22 minutes for me, for a Xilinx ZC702 machine configuration (Dual ARM =
Cortex A9 processor + =
FPGA).</div></div></blockquote><div><br></div><div>That's basically the =
spec I run (water cooling also keeps the noise down!). I generally get =
build times of just over 50 minutes for my system which has 'X' / GLES / =
Boost with something like 5500 tasks. Much better than the 10+ hours on =
a VM on the 4 year old MacBook Pro!</div><br><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div><br></div><div>Here =
are the modifications that I've done to my system, to tweak SSD =
performance, for Ubuntu-12.10, for a RAID1 =
array.</div><div><br></div><div><div style=3D"margin: 0px; font-size: =
12px; font-family: 'Lucida Grande'; "><b>SSD performance tweaks (for non =
RAID0 arrays)</b></div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
">Step 01.01: Modify /etc/fstab.</div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; ">$ sudo gedit /etc/fstab</div><div style=3D"margin: =
0px; font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; ">Increase the life of the SSD by reducing how much the =
OS writes to the disk. If you don't need to knowwhen each file or =
directory was last accessed, add the following two options to the =
/etc/fstab file:</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; ">noatime, =
nodiratime</div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; min-height: 15px; "><br></div><div style=3D"margin: =
0px; font-size: 12px; font-family: 'Lucida Grande'; ">To enable TRIM =
support to help manage disk performance over the long term, add the =
following option to the /etc/fstab file:</div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">discard</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
">The /etc/fstab file should look like this:</div><div style=3D"margin: =
0px; font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; "># / was on /dev/sda1 during installation</div><div =
style=3D"margin: 0px; font-size: 10px; font-family: Monaco; =
">UUID=3Dxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx / &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; ext4&nbsp; &nbsp; =
discard,noatime,nodiratime,errors=3Dremount-ro 0 &nbsp; &nbsp; &nbsp; =
1</div><div style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; ">Move /tmp to =
RAM</div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; min-height: 15px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; "># Move /tmp to =
RAM</div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; ">none&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /tmp&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tmpfs &nbsp; &nbsp; &nbsp; =
defaults,noatime,nodiratime,noexec,nodev,nosuid 0&nbsp; &nbsp; &nbsp; =
0</div><div style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; ">See: <a =
href=3D"http://www.ocztechnologyforum.com/forum/showthread.php?82648-softw=
are-RAID-LVM-TRIM-support-on-Linux">Guide software RAID/LVM TRIM support =
on Linux</a> for more details.</div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; ">Step 01.02: Move the browser's cache to a tmpfs in =
RAM</div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; min-height: 15px; "><br></div><div style=3D"margin: =
0px; font-size: 12px; font-family: 'Lucida Grande'; ">Launch firefox and =
type the following in the location bar:</div><div style=3D"margin: 0px; =
font-size: 12px; font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin: 0px; font-size: 10px; font-family: =
Monaco; "><a href=3D"about:config">about:config</a></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
min-height: 15px; "><br></div><div style=3D"margin: 0px; font-size: =
12px; font-family: 'Lucida Grande'; ">Right click and enter a new =
preference configution by selecting the New-&gt;String option.</div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
min-height: 15px; "><br></div><div style=3D"margin: 0px; font-size: =
10px; font-family: Monaco; ">Preference name: <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>browser.cache.disk.parent_directory</div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">string value:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>/tmp/firefox-cache</div><div style=3D"margin: 0px; font-size: =
12px; font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
">See: <a =
href=3D"http://brizoma.wordpress.com/2012/08/04/running-ubuntu-and-other-l=
inux-flavors-on-an-ssd/">Running Ubuntu and other Linux flavors on an =
SSD =AB Brizoma</a>.</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; =
"><br></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div></div></blockquote></div><br><div =
apple-content-edited=3D"true">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris =
Tapp</div><div><br></div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
</span><br class=3D"Apple-interchange-newline">
</div>
<br></body></html>=

--Apple-Mail=_F6DFFA6C-BB87-4C43-9722-2C41F7F65F0C--
