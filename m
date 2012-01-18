Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 346B8E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:25:20 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfc21 with SMTP id fc21so1511390vbb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 07:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vu54HvJUpgAuil1LKJd6A653uixTTHrEeZtNzUvR4q4=;
	b=vzIRVpertIwEKTb/CKDNY6piGOyGz/G1yPprOJZ1jr3hacmKD6Zbv8b6uxr2OrInxb
	go3Ga29avGoTa4uSRG2VBEFNkdoAiCeBXCxfuL3gGveJAgkyhfA+792sT0bZYU+i0dtH
	VXolYk/aUIVC5k+GyFUalM4iFosa2QjTK5WCY=
MIME-Version: 1.0
Received: by 10.52.20.165 with SMTP id o5mr10590801vde.79.1326900318991; Wed,
	18 Jan 2012 07:25:18 -0800 (PST)
Received: by 10.52.180.69 with HTTP; Wed, 18 Jan 2012 07:25:18 -0800 (PST)
In-Reply-To: <4F16E20C.9010909@ti.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com> <4F16DDCD.2020701@ti.com>
	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>
	<4F16E20C.9010909@ti.com>
Date: Wed, 18 Jan 2012 10:25:18 -0500
Message-ID: <CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: William Mills <wmills@ti.com>
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
X-List-Received-Date: Wed, 18 Jan 2012 15:25:20 -0000
Content-Type: multipart/alternative; boundary=20cf307c9fd02a73bc04b6cf0e45

--20cf307c9fd02a73bc04b6cf0e45
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 18, 2012 at 10:15 AM, William Mills <wmills@ti.com> wrote:

>
>
> On 01/18/2012 10:04 AM, James Abernathy wrote:
>
>>
>>
>> ---------- Forwarded message ----------
>> From: *William Mills* <wmills@ti.com <mailto:wmills@ti.com>>
>> Date: Wed, Jan 18, 2012 at 9:57 AM
>> Subject: Re: [yocto] build failure on ubuntu 64bits development system
>> To: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>
>>
>>
>>
>> On 01/18/2012 09:51 AM, Gary Thomas wrote:
>>
>>    On 2012-01-18 07 <tel:2012-01-18%2007>:42, James Abernathy wrote:
>>
>>
>>
>>        On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy
>>        <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>>        <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>**>__>
>>
>>        wrote:
>>
>>
>>
>>        On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy
>>        <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>>        <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>**>__>
>>
>>        wrote:
>>
>>        I just built a new development pc and installed Ubuntu 11.10
>>        x64. I wonder if there are any new requirements to building
>>        Yocto in that environment? I got an error right
>>        off, but then it complete the first 63 task and stopped
>>        successfully. error below:
>>
>>        jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>>        Pseudo is not present but is required, building this first
>>        before the main build
>>        Parsing recipes: 100%
>>        |#############################**__####################| Time:
>> 00:00:25
>>
>>        Parsing of 797 .bb files complete (0 cached, 797 parsed). 1037
>>        targets, 22 skipped, 0 masked, 0 errors.
>>        ERROR: Execution of event handler 'run_buildstats' failed
>>        Traceback (most recent call last):
>>        File "run_buildstats(e)", line 18, in
>>        run_buildstats(e=<bb.event.__**BuildStarted object at 0x4c338d0>)
>>
>>        File "buildstats.bbclass", line 21, in
>>        set_device(e=<bb.event.__**BuildStarted object at 0x4c338d0>)
>>
>>        UnboundLocalError: local variable 'rdev' referenced before
>>        assignment
>>
>>
>>        Any ideas?
>>
>>        JIm A
>>
>>
>>        I went back and tried using the tarballs for poky edison and
>>        cedartrail bsp and the errors don't occur. So I'm guessing the
>>        issue isn't related to Ubuntu 32 vs. 64 bit.
>>
>>
>>        I spoke too soon. Same error in edison tarballs. I looked at the
>>        code and I can see an place were rdev could go un assigned. If
>>        you fell out of the for loop without passing any of
>>        the if conditions, rdev would be unassigned. That must be what
>>        is happening in Ubuntu 11.10 x64
>>
>>        Anybody building with Ubuntu 11.10 x64? This doesn't happen on x32
>>
>>        Jim A
>>
>>
>>        def set_device(e):
>>        tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>>        try:
>>        os.remove(bb.data.getVar('__**DEVFILE', e.data, True))
>>        except:
>>        pass
>>        ##############################**__############################**
>> ##__################
>>
>>        # We look for the volume TMPDIR lives on. To do all disks would
>>        make little
>>        # sense and not give us any particularly useful data. In theory
>>        we could do
>>        # something like stick DL_DIR on a different partition and this
>>        would
>>        # throw stats gathering off. The same goes with SSTATE_DIR.
>>        However, let's
>>        # get the basics in here and work on the cornercases later.
>>        ##############################**__############################**
>> ##__################
>>        device=os.stat(tmpdir)
>>        majordev=os.major(device.st___**dev)
>>        minordev=os.minor(device.st___**dev)
>>
>>        for line in open("/proc/diskstats", "r"):
>>        if majordev == int(line.split()[0]) and minordev ==
>>        int(line.split()[1]):
>>        rdev=line.split()[2]
>>        file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>>        file.write(rdev)
>>        file.close()
>>
>>
>>    Can you show what the differences are between /proc/diskstats
>>    on the two systems? That's obviously what's causing the error.
>>
>>
>> If your build dir is encyptfs or a fuse device or anything that is not a
>> direct block device you will get this error. This is to be fixed in
>> 1.1.1 but encyptfs will still have other problems.
>>
>> I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft RAID 0.
>> I picked btrfs as the file system for no particular reason. Should I go
>> back to ext4 or is RAID 0 the problem?
>>
>
> No, I would not do that yet.  I would think software RAID would present a
> block device so would not trigger this error.
>
> I was hoping to use RAID 0 for speed. I have a I7 2700K on a DZ68DB with 2
6Gb/s ports matched to 2 6Gb/s 7200 hard drives.  Since the builds take so
long, I was looking for an edge.

So are there any recommendations at this point?  I'm assuming that the
default ext4 directly on the SATA drive is a fall back position.

Advice?

Jim A


> >  9       0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0
> >   9       1 md1 235 0 1880 0 0 0 0 0 0 0 0
>
> Your build dir is in md0 or md1 (wrt your other post)
>
>
>> JIm A
>>
>> ______________________________**___________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>> https://lists.yoctoproject.__**org/listinfo/yocto
>> <https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>> >
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>

--20cf307c9fd02a73bc04b6cf0e45
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Jan 18, 2012 at 10:15 AM, Willia=
m Mills <span dir=3D"ltr">&lt;<a href=3D"mailto:wmills@ti.com">wmills@ti.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im"><br>
<br>
On 01/18/2012 10:04 AM, James Abernathy wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
---------- Forwarded message ----------<br>
From: *William Mills* &lt;<a href=3D"mailto:wmills@ti.com" target=3D"_blank=
">wmills@ti.com</a> &lt;mailto:<a href=3D"mailto:wmills@ti.com" target=3D"_=
blank">wmills@ti.com</a>&gt;&gt;<br>
Date: Wed, Jan 18, 2012 at 9:57 AM<br>
Subject: Re: [yocto] build failure on ubuntu 64bits development system<br><=
/div><div class=3D"im">
To: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">=
gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" targe=
t=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
<br>
<br>
<br>
<br>
On 01/18/2012 09:51 AM, Gary Thomas wrote:<br>
<br></div><div class=3D"im">
 =A0 =A0On <a href=3D"tel:2012-01-18%2007" value=3D"+12012011807" target=3D=
"_blank">2012-01-18 07</a> &lt;tel:2012-01-18%2007&gt;:42, James Abernathy =
wrote:<br>
<br>
<br>
<br>
 =A0 =A0 =A0 =A0On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_bla=
nk">jfabernathy@gmail.com</a> &lt;mailto:<a href=3D"mailto:jfabernathy@gmai=
l.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<br></div>
 =A0 =A0 =A0 =A0&lt;mailto:<a href=3D"mailto:jfabernathy@gmail.com" target=
=3D"_blank">jfabernathy@gmail.com</a> &lt;mailto:<a href=3D"mailto:jfaberna=
thy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<u></u>&gt;__=
&gt;<div class=3D"im">
<br>
 =A0 =A0 =A0 =A0wrote:<br>
<br>
<br>
<br>
 =A0 =A0 =A0 =A0On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_bla=
nk">jfabernathy@gmail.com</a> &lt;mailto:<a href=3D"mailto:jfabernathy@gmai=
l.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<br></div>
 =A0 =A0 =A0 =A0&lt;mailto:<a href=3D"mailto:jfabernathy@gmail.com" target=
=3D"_blank">jfabernathy@gmail.com</a> &lt;mailto:<a href=3D"mailto:jfaberna=
thy@gmail.com" target=3D"_blank">jfabernathy@gmail.com</a>&gt;<u></u>&gt;__=
&gt;<div class=3D"im">
<br>
 =A0 =A0 =A0 =A0wrote:<br>
<br>
 =A0 =A0 =A0 =A0I just built a new development pc and installed Ubuntu 11.1=
0<br>
 =A0 =A0 =A0 =A0x64. I wonder if there are any new requirements to building=
<br>
 =A0 =A0 =A0 =A0Yocto in that environment? I got an error right<br>
 =A0 =A0 =A0 =A0off, but then it complete the first 63 task and stopped<br>
 =A0 =A0 =A0 =A0successfully. error below:<br>
<br>
 =A0 =A0 =A0 =A0jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato<br>
 =A0 =A0 =A0 =A0Pseudo is not present but is required, building this first<=
br>
 =A0 =A0 =A0 =A0before the main build<br>
 =A0 =A0 =A0 =A0Parsing recipes: 100%<br></div>
 =A0 =A0 =A0 =A0|#############################<u></u>__####################=
| Time: 00:00:25<div class=3D"im"><br>
 =A0 =A0 =A0 =A0Parsing of 797 .bb files complete (0 cached, 797 parsed). 1=
037<br>
 =A0 =A0 =A0 =A0targets, 22 skipped, 0 masked, 0 errors.<br>
 =A0 =A0 =A0 =A0ERROR: Execution of event handler &#39;run_buildstats&#39; =
failed<br>
 =A0 =A0 =A0 =A0Traceback (most recent call last):<br>
 =A0 =A0 =A0 =A0File &quot;run_buildstats(e)&quot;, line 18, in<br></div>
 =A0 =A0 =A0 =A0run_buildstats(e=3D&lt;bb.event.__<u></u>BuildStarted objec=
t at 0x4c338d0&gt;)<div class=3D"im"><br>
 =A0 =A0 =A0 =A0File &quot;buildstats.bbclass&quot;, line 21, in<br></div>
 =A0 =A0 =A0 =A0set_device(e=3D&lt;bb.event.__<u></u>BuildStarted object at=
 0x4c338d0&gt;)<div class=3D"im"><br>
 =A0 =A0 =A0 =A0UnboundLocalError: local variable &#39;rdev&#39; referenced=
 before<br>
 =A0 =A0 =A0 =A0assignment<br>
<br>
<br>
 =A0 =A0 =A0 =A0Any ideas?<br>
<br>
 =A0 =A0 =A0 =A0JIm A<br>
<br>
<br>
 =A0 =A0 =A0 =A0I went back and tried using the tarballs for poky edison an=
d<br>
 =A0 =A0 =A0 =A0cedartrail bsp and the errors don&#39;t occur. So I&#39;m g=
uessing the<br>
 =A0 =A0 =A0 =A0issue isn&#39;t related to Ubuntu 32 vs. 64 bit.<br>
<br>
<br>
 =A0 =A0 =A0 =A0I spoke too soon. Same error in edison tarballs. I looked a=
t the<br>
 =A0 =A0 =A0 =A0code and I can see an place were rdev could go un assigned.=
 If<br>
 =A0 =A0 =A0 =A0you fell out of the for loop without passing any of<br>
 =A0 =A0 =A0 =A0the if conditions, rdev would be unassigned. That must be w=
hat<br>
 =A0 =A0 =A0 =A0is happening in Ubuntu 11.10 x64<br>
<br>
 =A0 =A0 =A0 =A0Anybody building with Ubuntu 11.10 x64? This doesn&#39;t ha=
ppen on x32<br>
<br>
 =A0 =A0 =A0 =A0Jim A<br>
<br>
<br>
 =A0 =A0 =A0 =A0def set_device(e):<br>
 =A0 =A0 =A0 =A0tmpdir =3D bb.data.getVar(&#39;TMPDIR&#39;, e.data, True)<b=
r>
 =A0 =A0 =A0 =A0try:<br></div>
 =A0 =A0 =A0 =A0os.remove(bb.data.getVar(&#39;__<u></u>DEVFILE&#39;, e.data=
, True))<br>
 =A0 =A0 =A0 =A0except:<br>
 =A0 =A0 =A0 =A0pass<br>
 =A0 =A0 =A0 =A0##############################<u></u>__####################=
########<u></u>##__################<div class=3D"im"><br>
 =A0 =A0 =A0 =A0# We look for the volume TMPDIR lives on. To do all disks w=
ould<br>
 =A0 =A0 =A0 =A0make little<br>
 =A0 =A0 =A0 =A0# sense and not give us any particularly useful data. In th=
eory<br>
 =A0 =A0 =A0 =A0we could do<br>
 =A0 =A0 =A0 =A0# something like stick DL_DIR on a different partition and =
this<br>
 =A0 =A0 =A0 =A0would<br>
 =A0 =A0 =A0 =A0# throw stats gathering off. The same goes with SSTATE_DIR.=
<br>
 =A0 =A0 =A0 =A0However, let&#39;s<br>
 =A0 =A0 =A0 =A0# get the basics in here and work on the cornercases later.=
<br></div>
 =A0 =A0 =A0 =A0##############################<u></u>__####################=
########<u></u>##__################<br>
 =A0 =A0 =A0 =A0device=3Dos.stat(tmpdir)<br>
 =A0 =A0 =A0 =A0majordev=3Dos.major(device.st___<u></u>dev)<br>
 =A0 =A0 =A0 =A0minordev=3Dos.minor(device.st___<u></u>dev)<div class=3D"im=
"><br>
 =A0 =A0 =A0 =A0for line in open(&quot;/proc/diskstats&quot;, &quot;r&quot;=
):<br>
 =A0 =A0 =A0 =A0if majordev =3D=3D int(line.split()[0]) and minordev =3D=3D=
<br>
 =A0 =A0 =A0 =A0int(line.split()[1]):<br>
 =A0 =A0 =A0 =A0rdev=3Dline.split()[2]<br>
 =A0 =A0 =A0 =A0file =3D open(bb.data.getVar(&#39;DEVFILE&#39;, e.data, Tru=
e), &quot;w&quot;)<br>
 =A0 =A0 =A0 =A0file.write(rdev)<br>
 =A0 =A0 =A0 =A0file.close()<br>
<br>
<br>
 =A0 =A0Can you show what the differences are between /proc/diskstats<br>
 =A0 =A0on the two systems? That&#39;s obviously what&#39;s causing the err=
or.<br>
<br>
<br>
If your build dir is encyptfs or a fuse device or anything that is not a<br=
>
direct block device you will get this error. This is to be fixed in<br>
1.1.1 but encyptfs will still have other problems.<br>
<br>
I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft RAID 0.<br>
I picked btrfs as the file system for no particular reason. Should I go<br>
back to ext4 or is RAID 0 the problem?<br>
</div></blockquote>
<br>
No, I would not do that yet. =A0I would think software RAID would present a=
 block device so would not trigger this error.<div class=3D"im"><br></div><=
/blockquote><div>I was hoping to use RAID 0 for speed. I have a I7 2700K on=
 a DZ68DB with 2 6Gb/s ports matched to 2 6Gb/s 7200 hard drives.=A0 Since =
the builds take so long, I was looking for an edge.<br>
<br>So are there any recommendations at this point?=A0 I&#39;m assuming tha=
t the default ext4 directly on the SATA drive is a fall back position.<br><=
br>Advice?<br><br>Jim A<br><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
<div class=3D"im">
<br>
&gt; =A09 =A0 =A0 =A0 0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0<br>
&gt; =A0 9 =A0 =A0 =A0 1 md1 235 0 1880 0 0 0 0 0 0 0 0<br>
<br></div>
Your build dir is in md0 or md1 (wrt your other post)<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
JIm A<br>
<br>
______________________________<u></u>___________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
<a href=3D"https://lists.yoctoproject." target=3D"_blank">https://lists.yoc=
toproject.</a>__<u></u>org/listinfo/yocto<br>
&lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</a>&gt;<div class=
=3D"im"><br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></blockquote>
</blockquote></div><br>

--20cf307c9fd02a73bc04b6cf0e45--
