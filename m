Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D84CFE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:01:15 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfc21 with SMTP id fc21so1478951vbb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xrvd0GzEQ+SyH/Pr1dT0U6gdyR8663htR8GNrJs6b/Y=;
	b=x+/6Z4Ayb+7BMF+A8UslNQUHISfXimJBPjqjChvFM8sGphUPEPCtiw2q5RYge7ZVxb
	IbRcPAOFi7a0oq8hFWKxK6wVn1tqwfqK0hncq8NUEvioWhtDSMXHxsEOH8JEoayQZpCi
	aXr4WW4w4htpkzIZqUb/tiKiat34axPSB6Ads=
MIME-Version: 1.0
Received: by 10.52.28.238 with SMTP id e14mr10500943vdh.96.1326898874936; Wed,
	18 Jan 2012 07:01:14 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 07:01:14 -0800 (PST)
In-Reply-To: <4F16DC5D.9070903@mlbassoc.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com>
Date: Wed, 18 Jan 2012 10:01:14 -0500
Message-ID: <CANFv2E=TfkMKujYLDyF=NWAr63criYqi++mAnf=h9oVu0kz6CA@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: build failure on ubuntu 64bits development system
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jan 2012 15:01:16 -0000
Content-Type: multipart/alternative; boundary=20cf307ac30517eeb304b6ceb842

--20cf307ac30517eeb304b6ceb842
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 18, 2012 at 9:51 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-01-18 07:42, James Abernathy wrote:
>
>>
>>
>> On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy <jfabernathy@gmail.com<mailto:
>> jfabernathy@gmail.com>**> wrote:
>>
>>
>>
>>
>>    On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy <
>> jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>**> wrote:
>>
>>        I just built a new development pc and installed Ubuntu 11.10 x64.
>>  I wonder if there are any new requirements to building Yocto in that
>> environment?  I got an error right
>>        off, but then it complete the first 63 task and stopped
>> successfully.  error below:
>>
>>        jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>>        Pseudo is not present but is required, building this first before
>> the main build
>>        Parsing recipes: 100% |#############################**####################|
>> Time: 00:00:25
>>        Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037
>> targets, 22 skipped, 0 masked, 0 errors.
>>        ERROR: Execution of event handler 'run_buildstats' failed
>>        Traceback (most recent call last):
>>           File "run_buildstats(e)", line 18, in
>> run_buildstats(e=<bb.event.**BuildStarted object at 0x4c338d0>)
>>           File "buildstats.bbclass", line 21, in set_device(e=<bb.event.*
>> *BuildStarted object at 0x4c338d0>)
>>        UnboundLocalError: local variable 'rdev' referenced before
>> assignment
>>
>>
>>        Any ideas?
>>
>>        JIm A
>>
>>
>>    I went back and tried using the tarballs for poky edison and
>> cedartrail bsp and the errors don't occur.  So I'm guessing the issue isn't
>> related to Ubuntu 32 vs. 64 bit.
>>
>>
>> I spoke too soon. Same error in edison tarballs.  I looked at the code
>> and I can see an place were rdev could go un assigned. If you fell out of
>> the for loop without passing any of
>> the if conditions, rdev would be unassigned.  That must be what is
>> happening in Ubuntu 11.10 x64
>>
>> Anybody building with Ubuntu 11.10 x64?  This doesn't happen on x32
>>
>> Jim A
>>
>>
>> def set_device(e):
>>     tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>>     try:
>>         os.remove(bb.data.getVar('**DEVFILE', e.data, True))
>>     except:
>>         pass
>>     ##############################**##############################**
>> ################
>>     # We look for the volume TMPDIR lives on. To do all disks would make
>> little
>>     # sense and not give us any particularly useful data. In theory we
>> could do
>>     # something like stick DL_DIR on a different partition and this would
>>     # throw stats gathering off. The same goes with SSTATE_DIR. However,
>> let's
>>     # get the basics in here and work on the cornercases later.
>>     ##############################**##############################**
>> ################
>>     device=os.stat(tmpdir)
>>     majordev=os.major(device.st_**dev)
>>     minordev=os.minor(device.st_**dev)
>>     for line in open("/proc/diskstats", "r"):
>>         if majordev == int(line.split()[0]) and minordev ==
>> int(line.split()[1]):
>>            rdev=line.split()[2]
>>     file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>>     file.write(rdev)
>>     file.close()
>>
>
> Can you show what the differences are between /proc/diskstats
> on the two systems?  That's obviously what's causing the error.
>
> --

on the x64 system it's:
jim@ubuntu:~/poky-edison-6.0/build$ cat /proc/diskstats
   1       0 ram0 0 0 0 0 0 0 0 0 0 0 0
   1       1 ram1 0 0 0 0 0 0 0 0 0 0 0
   1       2 ram2 0 0 0 0 0 0 0 0 0 0 0
   1       3 ram3 0 0 0 0 0 0 0 0 0 0 0
   1       4 ram4 0 0 0 0 0 0 0 0 0 0 0
   1       5 ram5 0 0 0 0 0 0 0 0 0 0 0
   1       6 ram6 0 0 0 0 0 0 0 0 0 0 0
   1       7 ram7 0 0 0 0 0 0 0 0 0 0 0
   1       8 ram8 0 0 0 0 0 0 0 0 0 0 0
   1       9 ram9 0 0 0 0 0 0 0 0 0 0 0
   1      10 ram10 0 0 0 0 0 0 0 0 0 0 0
   1      11 ram11 0 0 0 0 0 0 0 0 0 0 0
   1      12 ram12 0 0 0 0 0 0 0 0 0 0 0
   1      13 ram13 0 0 0 0 0 0 0 0 0 0 0
   1      14 ram14 0 0 0 0 0 0 0 0 0 0 0
   1      15 ram15 0 0 0 0 0 0 0 0 0 0 0
   7       0 loop0 0 0 0 0 0 0 0 0 0 0 0
   7       1 loop1 0 0 0 0 0 0 0 0 0 0 0
   7       2 loop2 0 0 0 0 0 0 0 0 0 0 0
   7       3 loop3 0 0 0 0 0 0 0 0 0 0 0
   7       4 loop4 0 0 0 0 0 0 0 0 0 0 0
   7       5 loop5 0 0 0 0 0 0 0 0 0 0 0
   7       6 loop6 0 0 0 0 0 0 0 0 0 0 0
   7       7 loop7 0 0 0 0 0 0 0 0 0 0 0
   8       0 sda 33076 23382 1115462 1829656 31802 9209 2849176 624296 0
190664 2454576
   8       1 sda1 32289 23295 1108604 1827592 27505 9200 2848960 560828 0
131548 2388540
   8       2 sda2 429 24 3618 1224 18 9 216 64 0 1260 1288
   8       3 sda3 2 0 20 108 0 0 0 0 0 108 108
   8       5 sda5 191 63 1900 460 0 0 0 0 0 436 456
   8      16 sdb 32063 23153 1112192 1760580 25981 8723 2780656 549424 0
134176 2310272
   8      17 sdb1 31842 23153 1110554 1759984 21702 8723 2780656 501512 0
88724 2261696
   8      18 sdb2 2 0 12 52 0 0 0 0 0 52 52
   8      21 sdb5 47 0 250 228 0 0 0 0 0 228 228
  11       0 sr0 0 0 0 0 0 0 0 0 0 0 0
   9       0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0
   9       1 md1 235 0 1880 0 0 0 0 0 0 0 0

On the x32 system it's:
  im@ubuntu-workstation:~$ cat /proc/diskstats
  1       0 ram0 0 0 0 0 0 0 0 0 0 0 0
  1       1 ram1 0 0 0 0 0 0 0 0 0 0 0
  1       2 ram2 0 0 0 0 0 0 0 0 0 0 0
  1       3 ram3 0 0 0 0 0 0 0 0 0 0 0
  1       4 ram4 0 0 0 0 0 0 0 0 0 0 0
  1       5 ram5 0 0 0 0 0 0 0 0 0 0 0
  1       6 ram6 0 0 0 0 0 0 0 0 0 0 0
  1       7 ram7 0 0 0 0 0 0 0 0 0 0 0
  1       8 ram8 0 0 0 0 0 0 0 0 0 0 0
  1       9 ram9 0 0 0 0 0 0 0 0 0 0 0
  1      10 ram10 0 0 0 0 0 0 0 0 0 0 0
  1      11 ram11 0 0 0 0 0 0 0 0 0 0 0
  1      12 ram12 0 0 0 0 0 0 0 0 0 0 0
  1      13 ram13 0 0 0 0 0 0 0 0 0 0 0
  1      14 ram14 0 0 0 0 0 0 0 0 0 0 0
  1      15 ram15 0 0 0 0 0 0 0 0 0 0 0
  7       0 loop0 0 0 0 0 0 0 0 0 0 0 0
  7       1 loop1 0 0 0 0 0 0 0 0 0 0 0
  7       2 loop2 0 0 0 0 0 0 0 0 0 0 0
  7       3 loop3 0 0 0 0 0 0 0 0 0 0 0
  7       4 loop4 0 0 0 0 0 0 0 0 0 0 0
  7       5 loop5 0 0 0 0 0 0 0 0 0 0 0
  7       6 loop6 0 0 0 0 0 0 0 0 0 0 0
  7       7 loop7 0 0 0 0 0 0 0 0 0 0 0
  8       0 sda 335 3 2704 284 0 0 0 0 0 284 284
  8       1 sda1 167 0 1336 152 0 0 0 0 0 152 152
  8      16 sdb 360 3 2904 480 0 0 0 0 0 376 480
  8      17 sdb1 165 0 1320 120 0 0 0 0 0 120 120
  8      18 sdb2 29 0 232 212 0 0 0 0 0 212 212
  8      32 sdc 5605 15794 503606 680328 578 1698 19480 35292 0 20740 715608
  8      33 sdc1 5274 15763 500722 678628 565 1698 19480 34748 0 20068
713364
  8      34 sdc2 2 0 4 0 0 0 0 0 0 0 0
  8      37 sdc5 162 31 1544 892 0 0 0 0 0 884 892
 11       0 sr0 0 0 0 0 0 0 0 0 0 0 0
jim@ubuntu-workstation:~$

The file system is BTRFS  on Software RAID 0 with 2 disks.

JIm A


> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf307ac30517eeb304b6ceb842
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Jan 18, 2012 at 9:51 AM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

On <a href=3D"tel:2012-01-18%2007" value=3D"+12012011807" target=3D"_blank"=
>2012-01-18 07</a>:42, James Abernathy wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy &lt;<a href=3D"mailto:jfab=
ernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a> &lt;mailto:<=
a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail=
.com</a>&gt;<u></u>&gt; wrote:<div>

<div><br>
<br>
<br>
<br>
 =A0 =A0On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy &lt;<a href=3D"mai=
lto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a> &lt;=
mailto:<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernat=
hy@gmail.com</a>&gt;<u></u>&gt; wrote:<br>


<br>
 =A0 =A0 =A0 =A0I just built a new development pc and installed Ubuntu 11.1=
0 x64. =A0I wonder if there are any new requirements to building Yocto in t=
hat environment? =A0I got an error right<br>
 =A0 =A0 =A0 =A0off, but then it complete the first 63 task and stopped suc=
cessfully. =A0error below:<br>
<br>
 =A0 =A0 =A0 =A0jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato<br>
 =A0 =A0 =A0 =A0Pseudo is not present but is required, building this first =
before the main build<br>
 =A0 =A0 =A0 =A0Parsing recipes: 100% |#############################<u></u>=
####################| Time: 00:00:25<br>
 =A0 =A0 =A0 =A0Parsing of 797 .bb files complete (0 cached, 797 parsed). 1=
037 targets, 22 skipped, 0 masked, 0 errors.<br>
 =A0 =A0 =A0 =A0ERROR: Execution of event handler &#39;run_buildstats&#39; =
failed<br>
 =A0 =A0 =A0 =A0Traceback (most recent call last):<br>
 =A0 =A0 =A0 =A0 =A0 File &quot;run_buildstats(e)&quot;, line 18, in run_bu=
ildstats(e=3D&lt;bb.event.<u></u>BuildStarted object at 0x4c338d0&gt;)<br>
 =A0 =A0 =A0 =A0 =A0 File &quot;buildstats.bbclass&quot;, line 21, in set_d=
evice(e=3D&lt;bb.event.<u></u>BuildStarted object at 0x4c338d0&gt;)<br>
 =A0 =A0 =A0 =A0UnboundLocalError: local variable &#39;rdev&#39; referenced=
 before assignment<br>
<br>
<br>
 =A0 =A0 =A0 =A0Any ideas?<br>
<br>
 =A0 =A0 =A0 =A0JIm A<br>
<br>
<br>
 =A0 =A0I went back and tried using the tarballs for poky edison and cedart=
rail bsp and the errors don&#39;t occur. =A0So I&#39;m guessing the issue i=
sn&#39;t related to Ubuntu 32 vs. 64 bit.<br>
<br>
<br>
I spoke too soon. Same error in edison tarballs. =A0I looked at the code an=
d I can see an place were rdev could go un assigned. If you fell out of the=
 for loop without passing any of<br>
the if conditions, rdev would be unassigned. =A0That must be what is happen=
ing in Ubuntu 11.10 x64<br>
<br>
Anybody building with Ubuntu 11.10 x64? =A0This doesn&#39;t happen on x32<b=
r>
<br>
Jim A<br>
<br>
<br>
def set_device(e):<br>
 =A0 =A0 tmpdir =3D bb.data.getVar(&#39;TMPDIR&#39;, e.data, True)<br>
 =A0 =A0 try:<br>
 =A0 =A0 =A0 =A0 os.remove(bb.data.getVar(&#39;<u></u>DEVFILE&#39;, e.data,=
 True))<br>
 =A0 =A0 except:<br>
 =A0 =A0 =A0 =A0 pass<br>
 =A0 =A0 ##############################<u></u>#############################=
#<u></u>################<br>
 =A0 =A0 # We look for the volume TMPDIR lives on. To do all disks would ma=
ke little<br>
 =A0 =A0 # sense and not give us any particularly useful data. In theory we=
 could do<br>
 =A0 =A0 # something like stick DL_DIR on a different partition and this wo=
uld<br>
 =A0 =A0 # throw stats gathering off. The same goes with SSTATE_DIR. Howeve=
r, let&#39;s<br>
 =A0 =A0 # get the basics in here and work on the cornercases later.<br>
 =A0 =A0 ##############################<u></u>#############################=
#<u></u>################<br>
 =A0 =A0 device=3Dos.stat(tmpdir)<br>
 =A0 =A0 majordev=3Dos.major(device.st_<u></u>dev)<br>
 =A0 =A0 minordev=3Dos.minor(device.st_<u></u>dev)<br>
 =A0 =A0 for line in open(&quot;/proc/diskstats&quot;, &quot;r&quot;):<br>
 =A0 =A0 =A0 =A0 if majordev =3D=3D int(line.split()[0]) and minordev =3D=
=3D int(line.split()[1]):<br>
 =A0 =A0 =A0 =A0 =A0 =A0rdev=3Dline.split()[2]<br>
 =A0 =A0 file =3D open(bb.data.getVar(&#39;DEVFILE&#39;, e.data, True), &qu=
ot;w&quot;)<br>
 =A0 =A0 file.write(rdev)<br>
 =A0 =A0 file.close()<br>
</div></div></blockquote>
<br>
Can you show what the differences are between /proc/diskstats<br>
on the two systems? =A0That&#39;s obviously what&#39;s causing the error.<s=
pan><font color=3D"#888888"><br>
<br>
--</font></span></blockquote><div>on the x64 system it&#39;s:<br>jim@ubuntu=
:~/poky-edison-6.0/build$ cat /proc/diskstats<br>=A0=A0 1=A0=A0=A0=A0=A0=A0=
 0 ram0 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0=A0 1 ram1 0 0 0 0 =
0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0=A0 2 ram2 0 0 0 0 0 0 0 0 0 0 0<br=
>

=A0=A0 1=A0=A0=A0=A0=A0=A0 3 ram3 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=
=A0=A0=A0=A0 4 ram4 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0=A0 5 r=
am5 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0=A0 6 ram6 0 0 0 0 0 0 =
0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0=A0 7 ram7 0 0 0 0 0 0 0 0 0 0 0<br>=A0=
=A0 1=A0=A0=A0=A0=A0=A0 8 ram8 0 0 0 0 0 0 0 0 0 0 0<br>

=A0=A0 1=A0=A0=A0=A0=A0=A0 9 ram9 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=
=A0=A0=A0 10 ram10 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0 11 ram1=
1 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0 12 ram12 0 0 0 0 0 0 0 0=
 0 0 0<br>=A0=A0 1=A0=A0=A0=A0=A0 13 ram13 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 =
1=A0=A0=A0=A0=A0 14 ram14 0 0 0 0 0 0 0 0 0 0 0<br>

=A0=A0 1=A0=A0=A0=A0=A0 15 ram15 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 7=A0=A0=A0=
=A0=A0=A0 0 loop0 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 7=A0=A0=A0=A0=A0=A0 1 loo=
p1 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 7=A0=A0=A0=A0=A0=A0 2 loop2 0 0 0 0 0 0 =
0 0 0 0 0<br>=A0=A0 7=A0=A0=A0=A0=A0=A0 3 loop3 0 0 0 0 0 0 0 0 0 0 0<br>
=A0=A0 7=A0=A0=A0=A0=A0=A0 4 loop4 0 0 0 0 0 0 0 0 0 0 0<br>
=A0=A0 7=A0=A0=A0=A0=A0=A0 5 loop5 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 7=A0=A0=
=A0=A0=A0=A0 6 loop6 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 7=A0=A0=A0=A0=A0=A0 7 =
loop7 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 8=A0=A0=A0=A0=A0=A0 0 sda 33076 23382=
 1115462 1829656 31802 9209 2849176 624296 0 190664 2454576<br>

=A0=A0 8=A0=A0=A0=A0=A0=A0 1 sda1 32289 23295 1108604 1827592 27505 9200 28=
48960 560828 0 131548 2388540<br>=A0=A0 8=A0=A0=A0=A0=A0=A0 2 sda2 429 24 3=
618 1224 18 9 216 64 0 1260 1288<br>=A0=A0 8=A0=A0=A0=A0=A0=A0 3 sda3 2 0 2=
0 108 0 0 0 0 0 108 108<br>=A0=A0 8=A0=A0=A0=A0=A0=A0 5 sda5 191 63 1900 46=
0 0 0 0 0 0 436 456<br>

=A0=A0 8=A0=A0=A0=A0=A0 16 sdb 32063 23153 1112192 1760580 25981 8723 27806=
56 549424 0 134176 2310272<br>=A0=A0 8=A0=A0=A0=A0=A0 17 sdb1 31842 23153 1=
110554 1759984 21702 8723 2780656 501512 0 88724 2261696<br>=A0=A0 8=A0=A0=
=A0=A0=A0 18 sdb2 2 0 12 52 0 0 0 0 0 52 52<br>

=A0=A0 8=A0=A0=A0=A0=A0 21 sdb5 47 0 250 228 0 0 0 0 0 228 228<br>=A0 11=A0=
=A0=A0=A0=A0=A0 0 sr0 0 0 0 0 0 0 0 0 0 0 0<br>=A0=A0 9=A0=A0=A0=A0=A0=A0 0=
 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0<br>=A0=A0 9=A0=A0=A0=A0=A0=
=A0 1 md1 235 0 1880 0 0 0 0 0 0 0 0<br><br>On the x32 system it&#39;s:<br>
=A0
im@ubuntu-workstation:~$ cat /proc/diskstats<br>
 =A0 1 =A0 =A0 =A0 0 ram0 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 1 ram1 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 2 ram2 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 3 ram3 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 4 ram4 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 5 ram5 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 6 ram6 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 7 ram7 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 8 ram8 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A0 9 ram9 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A010 ram10 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A011 ram11 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A012 ram12 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A013 ram13 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A014 ram14 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 1 =A0 =A0 =A015 ram15 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 0 loop0 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 1 loop1 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 2 loop2 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 3 loop3 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 4 loop4 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 5 loop5 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 6 loop6 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 7 =A0 =A0 =A0 7 loop7 0 0 0 0 0 0 0 0 0 0 0<br>
 =A0 8 =A0 =A0 =A0 0 sda 335 3 2704 284 0 0 0 0 0 284 284<br>
 =A0 8 =A0 =A0 =A0 1 sda1 167 0 1336 152 0 0 0 0 0 152 152<br>
 =A0 8 =A0 =A0 =A016 sdb 360 3 2904 480 0 0 0 0 0 376 480<br>
 =A0 8 =A0 =A0 =A017 sdb1 165 0 1320 120 0 0 0 0 0 120 120<br>
 =A0 8 =A0 =A0 =A018 sdb2 29 0 232 212 0 0 0 0 0 212 212<br>
 =A0 8 =A0 =A0 =A032 sdc 5605 15794 503606 680328 578 1698 19480 35292 0 20=
740 715608<br>
 =A0 8 =A0 =A0 =A033 sdc1 5274 15763 500722 678628 565 1698 19480 34748 0 2=
0068 713364<br>
 =A0 8 =A0 =A0 =A034 sdc2 2 0 4 0 0 0 0 0 0 0 0<br>
 =A0 8 =A0 =A0 =A037 sdc5 162 31 1544 892 0 0 0 0 0 884 892<br>
 =A011 =A0 =A0 =A0 0 sr0 0 0 0 0 0 0 0 0 0 0 0<br>
jim@ubuntu-workstation:~$<br><br>The file system is BTRFS=A0 on Software RA=
ID 0 with 2 disks.<br><br>JIm A<br><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<span><font color=3D"#888888"> <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>

--20cf307ac30517eeb304b6ceb842--
