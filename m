Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50845E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:43:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfk13 with SMTP id fk13so3339602vcb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 06:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=M/puuP/eTqS2+4lR/w9yHXCZ08rhRzBazKZ7lHd5Qs4=;
	b=SG3TphL+UDsYCiZcKcpN7oHeQz8g43q0dl9gYdPlA00/usFkv/esNBJhzznVPQyB68
	zdAXvvnhM76EyiKSD/pWJyC4DzKVxR1ueHw/4oroprRnZwUlhcNRBu6uQu3z3dDWXX2c
	wYOcFi9nvZOqKMXerKeTsWBlqY4vnk+cDd7sY=
MIME-Version: 1.0
Received: by 10.220.157.83 with SMTP id a19mr14126361vcx.54.1326897772977;
	Wed, 18 Jan 2012 06:42:52 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 06:42:52 -0800 (PST)
In-Reply-To: <CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
Date: Wed, 18 Jan 2012 09:42:52 -0500
Message-ID: <CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 18 Jan 2012 14:43:35 -0000
Content-Type: multipart/alternative; boundary=f46d043c07be695c9d04b6ce76e1

--f46d043c07be695c9d04b6ce76e1
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy <jfabernathy@gmail.com>wrote:

>
>
> On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy <jfabernathy@gmail.com>wrote:
>
>> I just built a new development pc and installed Ubuntu 11.10 x64.  I
>> wonder if there are any new requirements to building Yocto in that
>> environment?  I got an error right off, but then it complete the first 63
>> task and stopped successfully.  error below:
>>
>> jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>> Pseudo is not present but is required, building this first before the
>> main build
>> Parsing recipes: 100% |#################################################|
>> Time: 00:00:25
>> Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets,
>> 22 skipped, 0 masked, 0 errors.
>> ERROR: Execution of event handler 'run_buildstats' failed
>> Traceback (most recent call last):
>>   File "run_buildstats(e)", line 18, in
>> run_buildstats(e=<bb.event.BuildStarted object at 0x4c338d0>)
>>   File "buildstats.bbclass", line 21, in
>> set_device(e=<bb.event.BuildStarted object at 0x4c338d0>)
>> UnboundLocalError: local variable 'rdev' referenced before assignment
>>
>>
>> Any ideas?
>>
>> JIm A
>>
>
> I went back and tried using the tarballs for poky edison and cedartrail
> bsp and the errors don't occur.  So I'm guessing the issue isn't related to
> Ubuntu 32 vs. 64 bit.
>
>
I spoke too soon. Same error in edison tarballs.  I looked at the code and
I can see an place were rdev could go un assigned. If you fell out of the
for loop without passing any of the if conditions, rdev would be
unassigned.  That must be what is happening in Ubuntu 11.10 x64

Anybody building with Ubuntu 11.10 x64?  This doesn't happen on x32

Jim A


def set_device(e):
    tmpdir = bb.data.getVar('TMPDIR', e.data, True)
    try:
        os.remove(bb.data.getVar('DEVFILE', e.data, True))
    except:
        pass

############################################################################
    # We look for the volume TMPDIR lives on. To do all disks would make
little
    # sense and not give us any particularly useful data. In theory we
could do
    # something like stick DL_DIR on a different partition and this would
    # throw stats gathering off. The same goes with SSTATE_DIR. However,
let's
    # get the basics in here and work on the cornercases later.

############################################################################
    device=os.stat(tmpdir)
    majordev=os.major(device.st_dev)
    minordev=os.minor(device.st_dev)
    for line in open("/proc/diskstats", "r"):
        if majordev == int(line.split()[0]) and minordev ==
int(line.split()[1]):
           rdev=line.split()[2]
    file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
    file.write(rdev)
    file.close()


> Jim A
>
>

--f46d043c07be695c9d04b6ce76e1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Jan 18, 2012 at 9:30 AM, James A=
bernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com">jfa=
bernathy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br><br><div class=3D"gmail_quote">=
On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.co=
m</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I just built a new development pc and installed Ubuntu 11.10 x64.=A0 I wond=
er if there are any new requirements to building Yocto in that environment?=
=A0 I got an error right off, but then it complete the first 63 task and st=
opped successfully.=A0 error below:<br>


<br>jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato<br>Pseudo is not p=
resent but is required, building this first before the main build<br>Parsin=
g recipes: 100% |#################################################| Time: 0=
0:00:25<br>


Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037 targets, 22 =
skipped, 0 masked, 0 errors.<br>ERROR: Execution of event handler &#39;run_=
buildstats&#39; failed<br>Traceback (most recent call last):<br>=A0 File &q=
uot;run_buildstats(e)&quot;, line 18, in run_buildstats(e=3D&lt;bb.event.Bu=
ildStarted object at 0x4c338d0&gt;)<br>


=A0 File &quot;buildstats.bbclass&quot;, line 21, in set_device(e=3D&lt;bb.=
event.BuildStarted object at 0x4c338d0&gt;)<br>UnboundLocalError: local var=
iable &#39;rdev&#39; referenced before assignment<br><br><br>Any ideas?<br>


<br>JIm A<br>
</blockquote></div><br></div></div>I went back and tried using the tarballs=
 for poky edison and cedartrail bsp and the errors don&#39;t occur.=A0 So I=
&#39;m guessing the issue isn&#39;t related to Ubuntu 32 vs. 64 bit.<br>
<br></blockquote><div><br>I spoke too soon. Same error in edison tarballs.=
=A0 I looked at the code and I can see an place were rdev could go un assig=
ned. If you fell out of the for loop without passing any of the if conditio=
ns, rdev would be unassigned.=A0 That must be what is happening in Ubuntu 1=
1.10 x64<br>
<br>Anybody building with Ubuntu 11.10 x64?=A0 This doesn&#39;t happen on x=
32<br><br>Jim A<br><br><br>def set_device(e):<br>=A0=A0=A0 tmpdir =3D bb.da=
ta.getVar(&#39;TMPDIR&#39;, e.data, True)<br>=A0=A0=A0 try:<br>=A0=A0=A0=A0=
=A0=A0=A0 os.remove(bb.data.getVar(&#39;DEVFILE&#39;, e.data, True))<br>
=A0=A0=A0 except:<br>=A0=A0=A0=A0=A0=A0=A0 pass<br>=A0=A0=A0 ##############=
##############################################################<br>=A0=A0=A0=
 # We look for the volume TMPDIR lives on. To do all disks would make littl=
e <br>=A0=A0=A0 # sense and not give us any particularly useful data. In th=
eory we could do<br>
=A0=A0=A0 # something like stick DL_DIR on a different partition and this w=
ould<br>=A0=A0=A0 # throw stats gathering off. The same goes with SSTATE_DI=
R. However, let&#39;s<br>=A0=A0=A0 # get the basics in here and work on the=
 cornercases later. <br>
=A0=A0=A0 #################################################################=
###########<br>=A0=A0=A0 device=3Dos.stat(tmpdir)<br>=A0=A0=A0 majordev=3Do=
s.major(device.st_dev)<br>=A0=A0=A0 minordev=3Dos.minor(device.st_dev)<br>=
=A0=A0=A0 for line in open(&quot;/proc/diskstats&quot;, &quot;r&quot;):<br>
=A0=A0=A0=A0=A0=A0=A0 if majordev =3D=3D int(line.split()[0]) and minordev =
=3D=3D int(line.split()[1]):<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rdev=3Dline.=
split()[2]<br>=A0=A0=A0 file =3D open(bb.data.getVar(&#39;DEVFILE&#39;, e.d=
ata, True), &quot;w&quot;)<br>=A0=A0=A0 file.write(rdev)<br>
=A0=A0=A0 file.close()<br>=A0=A0=A0=A0 <br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Jim A<br>
<br>
</blockquote></div><br>

--f46d043c07be695c9d04b6ce76e1--
