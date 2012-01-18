Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6ED8E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:04:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfk13 with SMTP id fk13so3366412vcb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Xhmfmg2sy9Ug+yXftZNziYnZIRPympkX4hGe08RSCX8=;
	b=o/iRSsq73JytXA1LM5DqOF9BmPp5PZ+/eh4o7BSzLl8TnFNxmsn4L5uXkPawpO+VWJ
	A+D0YcnnrgY2GbE0JOazKhswEPvj61det/PA/yz+VO7VKjQdCR+B4Tlqwr2rhqsO4iLp
	O6BWx4A/Oi60RrmiMY+5VgbF/8gsmv2XO8V+Q=
MIME-Version: 1.0
Received: by 10.221.13.196 with SMTP id pn4mr14072968vcb.74.1326899044058;
	Wed, 18 Jan 2012 07:04:04 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 07:04:03 -0800 (PST)
In-Reply-To: <4F16DDCD.2020701@ti.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com> <4F16DDCD.2020701@ti.com>
Date: Wed, 18 Jan 2012 10:04:03 -0500
Message-ID: <CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 15:04:06 -0000
Content-Type: multipart/alternative; boundary=bcaec54fb9e02c844804b6cec258

--bcaec54fb9e02c844804b6cec258
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: William Mills <wmills@ti.com>
Date: Wed, Jan 18, 2012 at 9:57 AM
Subject: Re: [yocto] build failure on ubuntu 64bits development system
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org




On 01/18/2012 09:51 AM, Gary Thomas wrote:

> On 2012-01-18 07:42, James Abernathy wrote:
>
>>
>>
>> On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy <jfabernathy@gmail.com<mailto:
>> jfabernathy@gmail.com>**> wrote:
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
>
If your build dir is encyptfs or a fuse device or anything that is not a
direct block device you will get this error.  This is to be fixed in 1.1.1
but encyptfs will still have other problems.

I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft RAID 0. I
picked btrfs as the file system for no particular reason.  Should I go back
to ext4 or is RAID 0 the problem?

JIm A

______________________________**_________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>

--bcaec54fb9e02c844804b6cec258
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">William Mills</b> <span dir=3D"ltr">=
&lt;<a href=3D"mailto:wmills@ti.com">wmills@ti.com</a>&gt;</span><br>Date: =
Wed, Jan 18, 2012 at 9:57 AM<br>
Subject: Re: [yocto] build failure on ubuntu 64bits development system<br>T=
o: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</=
a>&gt;<br>Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
<br><br><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 01/18/2012 09:51 AM, Gary Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On <a href=3D"tel:2012-01-18%2007" value=3D"+12012011807" target=3D"_blank"=
>2012-01-18 07</a>:42, James Abernathy wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy &lt;<a href=3D"mailto:jfab=
ernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a> &lt;mailto:<=
a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail=
.com</a>&gt;<u></u>&gt; wrote:<br>

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
</blockquote>
<br>
Can you show what the differences are between /proc/diskstats<br>
on the two systems? =A0That&#39;s obviously what&#39;s causing the error.<b=
r>
<br>
</blockquote>
<br></div></div>
If your build dir is encyptfs or a fuse device or anything that is not a di=
rect block device you will get this error. =A0This is to be fixed in 1.1.1 =
but encyptfs will still have other problems.<div class=3D"HOEnZb"><div clas=
s=3D"h5">
<br>
I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft RAID 0. I p=
icked btrfs as the file system for no particular reason.=A0 Should I go bac=
k to ext4 or is RAID 0 the problem?<br><br>JIm A<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></div><br>

--bcaec54fb9e02c844804b6cec258--
