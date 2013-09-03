Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79EE0E01420
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 18:04:09 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id jt11so5256388pbb.38
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 18:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=+jLy2SjN7rNT1r80P5WhmapDmMGmbbQ9gNRfOdx0WPI=;
	b=QI7k88zim0LD9+uItd4UEC2XDZJpe6QBJ2f7wMT127tkPbhYrIJLSRqMvZej4udAT0
	S2YX7WOItRwLiQ00w8brmkyZChUNXxh6FA01+j7f4NqyPk+G3fnIYgQoGHoem/i4Fc6J
	FJ6leNv88lA3Lq3qrVboVHlIvazn/LOxO4TvUjj5yWCphhSk1YeNvWMNYJrlR+eN+4jV
	2kRkx8pavn70q3PIwEjBlUFCBT+GsTFKoRuvdQZzZEJX5xSGJS2c97OHCi1fG4urrK7B
	faOAoi7iZIWWOcetJ2QmL4O/EhAERkk1WYfkvDZxNEfESGz57hGuhjMh5BDbdQAruS0l
	mltg==
X-Received: by 10.68.114.132 with SMTP id jg4mr28417518pbb.109.1378170249426; 
	Mon, 02 Sep 2013 18:04:09 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id a5sm18690083pbw.4.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 18:04:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <52251F60.9060804@gna.org>
Date: Tue, 3 Sep 2013 05:04:02 +0400
Message-Id: <B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
To: Christian Gagneraud <chgans@gna.org>
X-Mailer: Apple Mail (2.1498)
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
X-List-Received-Date: Tue, 03 Sep 2013 01:04:14 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_083952FE-6D37-4FA6-AFE2-2B87258408A5"

--Apple-Mail=_083952FE-6D37-4FA6-AFE2-2B87258408A5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi,

On Sep 3, 2013, at 3:29 AM, Christian Gagneraud <chgans@gna.org> wrote:

>> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
>> is probably better as you'll potentially double the write speed to =
disk.
>> I use a couple of Vertex SSDs in RAID 1 giving a theoretical write =
speed
>> near to 1GBs. Write endurance is possibly a concern, but I've not had
>> any issues using them on a local build machine. I would probably look =
at
>> some higher end models if I was going to run a lot of builds. A lot =
less
>> noise than hard drives ;-)
>=20
> Thanks for the info, i will have a look at RAID-1, as you can see, I =
know absolutely nothing about RAID! ;)
>=20
> Does SSD really help with disk throughput? Then what's the point of =
using ramdisk for TMPDIR/WORKDIR? If you "fully" work in RAM, the disk =
bottleneck shouldn't be such a problem anymore (basically, on disk, you =
should only have your yocto source tree and your download directory?).

I use a Gigabyte Z77X-UP5TH motherboard=20

http://www.gigabyte.us/press-center/news-page.aspx?nid=3D1166

which has support for RAID in BIOS, at boot up, and Thunderbolt =
connected to an Apple 27" Thunderbolt display. I've got two SSDs in a =
RAID1 configuration (striped).

If you can wait for some more time, they'll be releasing a version of =
the motherboard for the new haswell chips as well, but it's not probably =
going to increase performance.=20

I use a 3770K i7 quad-core processor, 16GB RAM, with a liquid cooled =
solution running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I =
end up shaving only 2 minutes off build times, so I just run it at =
3.8GHz.

A core-image-minimal build takes around 22 minutes for me, for a Xilinx =
ZC702 machine configuration (Dual ARM Cortex A9 processor + FPGA).

Here are the modifications that I've done to my system, to tweak SSD =
performance, for Ubuntu-12.10, for a RAID1 array.

SSD performance tweaks (for non RAID0 arrays)

Step 01.01: Modify /etc/fstab.

$ sudo gedit /etc/fstab

Increase the life of the SSD by reducing how much the OS writes to the =
disk. If you don't need to knowwhen each file or directory was last =
accessed, add the following two options to the /etc/fstab file:

noatime, nodiratime

To enable TRIM support to help manage disk performance over the long =
term, add the following option to the /etc/fstab file:

discard

The /etc/fstab file should look like this:

# / was on /dev/sda1 during installation
UUID=3Dxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /               ext4    =
discard,noatime,nodiratime,errors=3Dremount-ro 0       1

Move /tmp to RAM

# Move /tmp to RAM
none            /tmp            tmpfs       =
defaults,noatime,nodiratime,noexec,nodev,nosuid 0      0

See: Guide software RAID/LVM TRIM support on Linux for more details.

Step 01.02: Move the browser's cache to a tmpfs in RAM

Launch firefox and type the following in the location bar:

about:config

Right click and enter a new preference configution by selecting the =
New->String option.

Preference name: 	browser.cache.disk.parent_directory
string value:		/tmp/firefox-cache

See: Running Ubuntu and other Linux flavors on an SSD =AB Brizoma.


Best regards,

Elvis Dowson=

--Apple-Mail=_083952FE-6D37-4FA6-AFE2-2B87258408A5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
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
Cortex A9 processor + FPGA).</div><div><br></div><div>Here are the =
modifications that I've done to my system, to tweak SSD performance, for =
Ubuntu-12.10, for a RAID1 array.</div><div><br></div><div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
"><b>SSD performance tweaks (for non RAID0 arrays)</b></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
min-height: 15px; "><br></div><div style=3D"margin: 0px; font-size: =
12px; font-family: 'Lucida Grande'; ">Step 01.01: Modify =
/etc/fstab.</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; ">$ =
sudo gedit /etc/fstab</div><div style=3D"margin: 0px; font-size: 12px; =
font-family: 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin: 0px; font-size: 12px; font-family: 'Lucida Grande'; =
">Increase the life of the SSD by reducing how much the OS writes to the =
disk. If you don't need to knowwhen each file or directory was last =
accessed, add the following two options to the /etc/fstab =
file:</div><div style=3D"margin: 0px; font-size: 12px; font-family: =
'Lucida Grande'; min-height: 15px; "><br></div><div style=3D"margin: =
0px; font-size: 10px; font-family: Monaco; ">noatime, =
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
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_083952FE-6D37-4FA6-AFE2-2B87258408A5--
