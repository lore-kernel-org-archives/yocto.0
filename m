Return-Path: <francis.meyvis@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A6934C803E4
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 00:38:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so7902214vws.35
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2011 22:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=FiErHpjoLJ7GgoMsJIFBiwTU3W4FOCTZ9IupIEsPdkM=;
	b=lBttas+KlqPWfR9VTmgYNFwTXNYxQZb9MojfUM7CKyzUaXn3/RqdEECwug+mHqG4P3
	KwJ7YJOw7hUHKdrisaZuZGzUKBOq2VDbzvTAuvzhQJUEfRz8wi6PRzJaClpLjQ4Y8CRu
	JKlW9X8X0MZxGV25B55C0F976HS2PhNWsNZ6w=
MIME-Version: 1.0
Received: by 10.52.75.163 with SMTP id d3mr4879067vdw.236.1312263531104; Mon,
	01 Aug 2011 22:38:51 -0700 (PDT)
Received: by 10.52.106.170 with HTTP; Mon, 1 Aug 2011 22:38:50 -0700 (PDT)
Received: by 10.52.106.170 with HTTP; Mon, 1 Aug 2011 22:38:50 -0700 (PDT)
In-Reply-To: <4E3625B7.6000507@windriver.com>
References: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>
	<4E3612A6.7040602@windriver.com> <1312169430.2357.34.camel@elmorro>
	<4E3625B7.6000507@windriver.com>
Date: Tue, 2 Aug 2011 07:38:50 +0200
Message-ID: <CAHts6WSRmSDhi3uE-my2-Rj-pWjJPJ+T2OSxNX5JvpwmDF2n3w@mail.gmail.com>
From: Francis Meyvis <francis.meyvis@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: kernel panic - not syncing: No init found
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
X-List-Received-Date: Tue, 02 Aug 2011 05:38:52 -0000
Content-Type: multipart/alternative; boundary=bcaec50163bd9f88e604a97f29e2

--bcaec50163bd9f88e604a97f29e2
Content-Type: text/plain; charset=UTF-8

Hello,

When I mounted the root image on loop back device, I actually ran the init
program. It executed and complained about missing params. I tried with the
5, like for network connected inittab. Then init complained there was no
/dev/initctl. So combining this with the replies I got, I think the latest
/sbin/init on yocto master does not support a default run level? I think the
architecture of my root image is for x86 cause my pc could exec it.

Any suggestions on how to continue?

Groetjes,
Francis
On Aug 1, 2011 6:04 AM, "Bruce Ashfield" <bruce.ashfield@windriver.com>
wrote:
> On 11-07-31 11:30 PM, Tom Zanussi wrote:
>> On Sun, 2011-07-31 at 19:42 -0700, Bruce Ashfield wrote:
>>> On 11-07-31 3:44 PM, Francis Meyvis wrote:
>>>> Hello,
>>>>
>>>> I probably miss something trivial.
>>>> I cloned the git://git.yoctoproject.org/poky.git
>>>> I build on a 64 bit machine a qemux86-64
>>>> (. ./oe-init-build-env qemux86-64 and changing the conf/local.conf)
>>>> I build the core-image-sato& core-image-minimal.
>>>> Then I try to run with
>>>> runqemu qemux86-64 core-image-sato ext3
>>>>
>>>> But both sato and minimal give me this message:
>>>> Kernel panic - not syncing: No init found.
>>>>
>>>> As runqemu showed me the full command line I tried to add the --append
>>>> command line option
>>>> init=/sbin/init and /sbin/init.sysvinit
>>>> But that did not help (there's a message saying Failed to execute
>>>> /sbin/init. Attempting defaults...)
>>>> I verified by mounting these ext3 images on a loop device that there's
>>>> really a /sbin/init present.
>>>>
>>>> Can somebody tell what I'm doing wrong?
>>>
>>> Can you send a full bootlog, or paste it somewhere accessible ? It's
hard
>>> to say what's with the information you've given.
>>>
>>> Is this the latest yocto master ?
>>>
>>> If you are seeing that message it typically means that the the
>>> device that is being used as the root isn't ready (fixed by
>>> rootwait/rootdelay) or isn't supported (i.e. NFS root without
>>> the right ethernet device). Changing what init is, won't change
>>> the result if either one of those is the case.
>>>
>>
>> I'm also seeing this on both sugarbay and jasperforest with the latest
>> master. rootwait doesn't help.
>>
>> rtc_cmos 00:07: setting system clock to 2010-01-02 05:35:34 UTC
>> (1262410534)
>> Freeing unused kernel memory: 720k freed
>> Failed to execute /init
>> Kernel panic - not syncing: No init found. Try passing init= option to
>> kernel.
>> See Linux Documentation/init.txt for guidance.
>> Pid: 1, comm: swapper Not tainted 3.0.0-rc7-yocto-standard+ #1
>> Call Trace:
>> [<ffffffff81541b77>] panic+0x9b/0x191
>> [<ffffffff81540862>] init_post+0xc0/0xc0
>> [<ffffffff8188bcef>] kernel_init+0x17b/0x17b
>> [<ffffffff8154b234>] kernel_thread_helper+0x4/0x10
>> [<ffffffff8188bb74>] ? start_kernel+0x377/0x377
>> [<ffffffff8154b230>] ? gs_change+0xb/0xb
>>
>> I thought initially it had something to do with the -live image changes,
>> but reverting the two -live patches didn't help.
>>
>> The problem seems to coincide with the tune file changes, but that may
>> be a red herring.
>
> Nope. I don't think it's a red herring:
>
> Both of these:
>
> Freeing unused kernel memory: 720k freed
> Failed to execute /init
>
> Indicate that the device came up and init was loaded, the kernel
> passed control to userspace and then things went bad. i.e. you just
> ran init of the wrong arch or something incompatible with the
> kernel support, etc.
>
> Since I'm having no trouble with old rootfs and new kernels, that's
> another sign. I'm assuming that old userspace's boot for you ?
>
> Bruce
>
>>
>> Tom
>>
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> BTW is there any way to not have to run qemu with root permissions?
>>>> I ran the android emulator and it does not require me to be root.
>>>> Should I configure something on my Ubuntu machine to get qemu to
function?
>>>>
>>>> Thanks,
>>>> francis
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--bcaec50163bd9f88e604a97f29e2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>When I mounted the root image on loop back device, I actually ran the in=
it program. It executed and complained about missing params. I tried with t=
he 5, like for network connected inittab. Then init complained there was no=
 /dev/initctl. So combining this with the replies I got, I think the latest=
 /sbin/init on yocto master does not support a default run level? I think t=
he architecture of my root image is for x86 cause my pc could exec it.</p>

<p>Any suggestions on how to continue? </p>
<p>Groetjes,<br>
Francis</p>
<div class=3D"gmail_quote">On Aug 1, 2011 6:04 AM, &quot;Bruce Ashfield&quo=
t; &lt;<a href=3D"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windr=
iver.com</a>&gt; wrote:<br type=3D"attribution">&gt; On 11-07-31 11:30 PM, =
Tom Zanussi wrote:<br>
&gt;&gt; On Sun, 2011-07-31 at 19:42 -0700, Bruce Ashfield wrote:<br>&gt;&g=
t;&gt; On 11-07-31 3:44 PM, Francis Meyvis wrote:<br>&gt;&gt;&gt;&gt; Hello=
,<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; I probably miss something trivial=
.<br>
&gt;&gt;&gt;&gt; I cloned the git://<a href=3D"http://git.yoctoproject.org/=
poky.git">git.yoctoproject.org/poky.git</a><br>&gt;&gt;&gt;&gt; I build on =
a 64 bit machine a qemux86-64<br>&gt;&gt;&gt;&gt; (. ./oe-init-build-env qe=
mux86-64 and changing the conf/local.conf)<br>
&gt;&gt;&gt;&gt; I build the core-image-sato&amp;   core-image-minimal.<br>=
&gt;&gt;&gt;&gt; Then I try to run with<br>&gt;&gt;&gt;&gt; runqemu qemux86=
-64 core-image-sato ext3<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; But both s=
ato and minimal give me this message:<br>
&gt;&gt;&gt;&gt; Kernel panic - not syncing: No init found.<br>&gt;&gt;&gt;=
&gt;<br>&gt;&gt;&gt;&gt; As runqemu showed me the full command line I tried=
 to add the --append<br>&gt;&gt;&gt;&gt; command line option<br>&gt;&gt;&gt=
;&gt; init=3D/sbin/init and /sbin/init.sysvinit<br>
&gt;&gt;&gt;&gt; But that did not help (there&#39;s a message saying Failed=
 to execute<br>&gt;&gt;&gt;&gt; /sbin/init. Attempting defaults...)<br>&gt;=
&gt;&gt;&gt; I verified by mounting these ext3 images on a loop device that=
 there&#39;s<br>
&gt;&gt;&gt;&gt; really a /sbin/init present.<br>&gt;&gt;&gt;&gt;<br>&gt;&g=
t;&gt;&gt; Can somebody tell what I&#39;m doing wrong?<br>&gt;&gt;&gt;<br>&=
gt;&gt;&gt; Can you send a full bootlog, or paste it somewhere accessible ?=
 It&#39;s hard<br>
&gt;&gt;&gt; to say what&#39;s with the information you&#39;ve given.<br>&g=
t;&gt;&gt;<br>&gt;&gt;&gt; Is this the latest yocto master ?<br>&gt;&gt;&gt=
;<br>&gt;&gt;&gt; If you are seeing that message it typically means that th=
e the<br>
&gt;&gt;&gt; device that is being used as the root isn&#39;t ready (fixed b=
y<br>&gt;&gt;&gt; rootwait/rootdelay) or isn&#39;t supported (i.e. NFS root=
 without<br>&gt;&gt;&gt; the right ethernet device). Changing what init is,=
 won&#39;t change<br>
&gt;&gt;&gt; the result if either one of those is the case.<br>&gt;&gt;&gt;=
<br>&gt;&gt;<br>&gt;&gt; I&#39;m also seeing this on both sugarbay and jasp=
erforest with the latest<br>&gt;&gt; master.  rootwait doesn&#39;t help.<br=
>
&gt;&gt;<br>&gt;&gt; rtc_cmos 00:07: setting system clock to 2010-01-02 05:=
35:34 UTC<br>&gt;&gt; (1262410534)<br>&gt;&gt; Freeing unused kernel memory=
: 720k freed<br>&gt;&gt; Failed to execute /init<br>&gt;&gt; Kernel panic -=
 not syncing: No init found.  Try passing init=3D option to<br>
&gt;&gt; kernel.<br>&gt;&gt; See Linux Documentation/init.txt for guidance.=
<br>&gt;&gt; Pid: 1, comm: swapper Not tainted 3.0.0-rc7-yocto-standard+ #1=
<br>&gt;&gt; Call Trace:<br>&gt;&gt;   [&lt;ffffffff81541b77&gt;] panic+0x9=
b/0x191<br>
&gt;&gt;   [&lt;ffffffff81540862&gt;] init_post+0xc0/0xc0<br>&gt;&gt;   [&l=
t;ffffffff8188bcef&gt;] kernel_init+0x17b/0x17b<br>&gt;&gt;   [&lt;ffffffff=
8154b234&gt;] kernel_thread_helper+0x4/0x10<br>&gt;&gt;   [&lt;ffffffff8188=
bb74&gt;] ? start_kernel+0x377/0x377<br>
&gt;&gt;   [&lt;ffffffff8154b230&gt;] ? gs_change+0xb/0xb<br>&gt;&gt;<br>&g=
t;&gt; I thought initially it had something to do with the -live image chan=
ges,<br>&gt;&gt; but reverting the two -live patches didn&#39;t help.<br>
&gt;&gt;<br>&gt;&gt; The problem seems to coincide with the tune file chang=
es, but that may<br>&gt;&gt; be a red herring.<br>&gt; <br>&gt; Nope. I don=
&#39;t think it&#39;s a red herring:<br>&gt; <br>&gt; Both of these:<br>
&gt; <br>&gt;    Freeing unused kernel memory: 720k freed<br>&gt;    Failed=
 to execute /init<br>&gt; <br>&gt; Indicate that the device came up and ini=
t was loaded, the kernel<br>&gt; passed control to userspace and then thing=
s went bad. i.e. you just<br>
&gt; ran init of the wrong arch or something incompatible with the<br>&gt; =
kernel support, etc.<br>&gt; <br>&gt; Since I&#39;m having no trouble with =
old rootfs and new kernels, that&#39;s<br>&gt; another sign. I&#39;m assumi=
ng that old userspace&#39;s boot for you ?<br>
&gt; <br>&gt; Bruce<br>&gt; <br>&gt;&gt;<br>&gt;&gt; Tom<br>&gt;&gt;<br>&gt=
;&gt;<br>&gt;&gt;&gt; Cheers,<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; Bruce<br>&gt;=
&gt;&gt;<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; BTW is there any way to no=
t have to run qemu with root permissions?<br>
&gt;&gt;&gt;&gt; I ran the android emulator and it does not require me to b=
e root.<br>&gt;&gt;&gt;&gt; Should I configure something on my Ubuntu machi=
ne to get qemu to function?<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Thanks,=
<br>
&gt;&gt;&gt;&gt; francis<br>&gt;&gt;&gt;&gt; ______________________________=
_________________<br>&gt;&gt;&gt;&gt; yocto mailing list<br>&gt;&gt;&gt;&gt=
; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">=
https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;&gt;&gt;<br>&gt;&g=
t;&gt; _______________________________________________<br>&gt;&gt;&gt; yoct=
o mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt;&gt;<br>&gt;=
&gt;<br>
&gt; <br></div>

--bcaec50163bd9f88e604a97f29e2--
