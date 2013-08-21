Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8053E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:16:37 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id t58so520784wes.24
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4RmX7o4G2PvJ1cCeYe+UF4HgJOVYjGZWjEFstdC2Plo=;
	b=eRkoIMelWajTcwnUjqRUsaUhQ1OgNDK7V6/ApCB8pahxx4GXGmYmq9An5b06X3cRaB
	r9Hn3JXmPhaeFHvMyPdM0pF5OFWwZQzFFKwZqrblu2TY3bxoxcfoTOKzGrUYlVD3STPg
	mwHQw/ttDA5EvxIBzuepNKwgGhjxl2Ctw3zseg6ay3ShkBcy+IgnjzgxYq6I8+XWujoj
	QMGZzhTDVu8Ep0y2k6VZGnFeayJFhgBeCwJ4HDYCdVu8NUQBQB3uhlqV2Rjm8vrhRZGt
	QTAKMAQ3xvm5t0H66w1zpOVJj2ydD/dr3QSRHmDOxwGQrUGdGzG8UvFwfw9twHkykNkT
	TIig==
X-Gm-Message-State: ALoCoQkhgI4/nBEUqyua+1WOn0hBdriFa/CYJKwXIQDScojBbsENmarWAMKGR0n0pt5XQzF1bxCJ
X-Received: by 10.194.235.138 with SMTP id um10mr6280588wjc.30.1377098196222; 
	Wed, 21 Aug 2013 08:16:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Wed, 21 Aug 2013 08:16:16 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxGgq4EjVZjr=1K6qTveoer6NedsRs0DyXDfBUdHvfz+6Q@mail.gmail.com>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
	<11658953.R2RoUsbsuX@helios>
	<CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
	<1680213.YPjXP0RsTC@helios>
	<CAHLvMfb9FStHeLgHTzTGf13XWDqbLeoQi6BKXW=f5UV1S1w0EA@mail.gmail.com>
	<CAK18fxGgq4EjVZjr=1K6qTveoer6NedsRs0DyXDfBUdHvfz+6Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Aug 2013 18:16:16 +0300
Message-ID: <CAK18fxH5SSckoMy1Td3-6E_oNs-jnkCU37AzTzAnUT0JyW2OkA@mail.gmail.com>
To: Rich Bayliss <richbayliss@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Wed, 21 Aug 2013 15:16:40 -0000
Content-Type: multipart/alternative; boundary=089e01419accce9ba104e476a8e2

--089e01419accce9ba104e476a8e2
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 5, 2013 at 1:12 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
>
> On Mon, Aug 5, 2013 at 2:51 AM, Rich Bayliss <richbayliss@gmail.com>wrote:
>
>> Sorry Paul - I am new to all this. I have checked and I am using Poky
>> (1.4)
>>
>> Rich
>>
>> On 4 August 2013 23:35, Paul Eggleton <paul.eggleton@linux.intel.com>
>> wrote:
>> > On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:
>> >> On 2 August 2013 13:47, Paul Eggleton <paul.eggleton@linux.intel.com>
>> wrote:
>> >> > On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
>> >> >> I am trying to build for Raspberry Pi including "read-only-rootfs"
>> in
>> >> >> my image features. My aim is to have my SD Card read-only and at
>> some
>> >> >> point add a read-write overlay to certain directories. This should
>> >> >> enable my system to boot fresh each time, and have some persistent
>> >> >> storage for user files etc.
>> >> >>
>> >> >> However, after building my image I can SSH into the system and issue
>> >> >> "touch test" to create a file in my home directory, then after a
>> >> >> reboot it is still there. That isn't very read-only :)
>> >> >>
>> >> >> Am I missing something, or is this working incorrectly?
>> >> >
>> >> > It sounds like it's working incorrectly. Since meta-raspberrypi
>> constructs
>> >> > the SD card image using its own custom class I wonder if it has
>> anything
>> >> > to do with that. Andrei, do you know anything about this?
>> >> >
>> >> > BTW, are you using sysvinit or systemd in this image?
>> >>
>> >> I am using the standard sysvinit/systemd - I haven't specified either,
>> >> so whichever is default.
>> >
>> > Except the default depends upon what DISTRO you are using. Which DISTRO
>> are
>> > you using - "poky" or something else?
>> >
>> > Cheers,
>> > Paul
>> >
>> > --
>> >
>> > Paul Eggleton
>> > Intel Open Source Technology Centre
>>
>
> Will check on this tomorrow. I've been on the roads these days.
>

Summary:
I managed to find the root of the problem. We used to have an old fstab
which i'm going to get rid of with a patch today - as the default one is
working ok and fixes this issue.

The problem was related to:
tmpfs                /run                 tmpfs
 mode=0755,nodev,nosuid,strictatime 0  0
We didn't have this specified in our fstab and would make udevd to keep the
device busy => remount fail.

Thank you for reporting this. And sorry for being late with investigation -
managed to get some vacation :)

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e01419accce9ba104e476a8e2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Aug 5, 2013 at 1:12 PM, Andrei Gherzan <span dir=3D"ltr">&l=
t;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">

<div><div class=3D"h5">On Mon, Aug 5, 2013 at 2:51 AM, Rich Bayliss <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:richbayliss@gmail.com" target=3D"_blank">r=
ichbayliss@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Sorry Paul - I am new to all this. I have checked and I am=
 using Poky (1.4)<br>


<br>
Rich<br>
<div><div><br>
On 4 August 2013 23:35, Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@l=
inux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt; wro=
te:<br>
&gt; On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:<br>
&gt;&gt; On 2 August 2013 13:47, Paul Eggleton &lt;<a href=3D"mailto:paul.e=
ggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a=
>&gt; wrote:<br>
&gt;&gt; &gt; On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:<br>
&gt;&gt; &gt;&gt; I am trying to build for Raspberry Pi including &quot;rea=
d-only-rootfs&quot; in<br>
&gt;&gt; &gt;&gt; my image features. My aim is to have my SD Card read-only=
 and at some<br>
&gt;&gt; &gt;&gt; point add a read-write overlay to certain directories. Th=
is should<br>
&gt;&gt; &gt;&gt; enable my system to boot fresh each time, and have some p=
ersistent<br>
&gt;&gt; &gt;&gt; storage for user files etc.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; However, after building my image I can SSH into the syste=
m and issue<br>
&gt;&gt; &gt;&gt; &quot;touch test&quot; to create a file in my home direct=
ory, then after a<br>
&gt;&gt; &gt;&gt; reboot it is still there. That isn&#39;t very read-only :=
)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Am I missing something, or is this working incorrectly?<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; It sounds like it&#39;s working incorrectly. Since meta-raspb=
errypi constructs<br>
&gt;&gt; &gt; the SD card image using its own custom class I wonder if it h=
as anything<br>
&gt;&gt; &gt; to do with that. Andrei, do you know anything about this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; BTW, are you using sysvinit or systemd in this image?<br>
&gt;&gt;<br>
&gt;&gt; I am using the standard sysvinit/systemd - I haven&#39;t specified=
 either,<br>
&gt;&gt; so whichever is default.<br>
&gt;<br>
&gt; Except the default depends upon what DISTRO you are using. Which DISTR=
O are<br>
&gt; you using - &quot;poky&quot; or something else?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br></div></div></blockquote><div><=
br></div></div></div><div>Will check on this tomorrow. I&#39;ve been on the=
 roads these days.=A0</div></div></div></div></blockquote><div><br></div>

<div style>Summary:</div><div style>I managed to find the root of the probl=
em. We used to have an old fstab which i&#39;m going to get rid of with a p=
atch today - as the default one is working ok and fixes this issue.=A0</div=
>

<div style><br></div><div style>The problem was related to:</div><div style=
>tmpfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/run =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
tmpfs =A0 =A0 =A0mode=3D0755,nodev,nosuid,strictatime 0 =A00<br></div><div =
style>We didn&#39;t have this specified in our fstab and would make udevd t=
o keep the device busy =3D&gt; remount fail.</div>

<div style><br></div><div style>Thank you for reporting this. And sorry for=
 being late with=A0investigation=A0- managed to get some vacation :)</div><=
div style>=A0<br></div></div>-- <br><div dir=3D"ltr"><div style=3D"text-ali=
gn:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--089e01419accce9ba104e476a8e2--
