Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65996E00C52; Wed, 14 Nov 2018 07:32:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C261E00A9B
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 07:32:40 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id z13so11788972lfe.11
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 07:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XOg1nbdSUDp/HwjYoAI52Ql6ey6fXz8urBZpG9hQcss=;
	b=FWaR9rPVaWErdQB2dPXPd2FVfUlsrTeyPv2soy5OyK2SbsZlwOckYTMCiyyFsijnd+
	vjuincfS+XiPDbJdNE24dnj0c35z3LJAeXCUov/0YxnxitYHagPB1ux1/5x/2b8OBqmA
	BM6/XSoOJ9ly/FdH3OLAM7c3WZGE/Hc4ygOASRCbUeQvR1Gxmose2jtD4XLzZv/J0tBR
	SJgS71z0BTrTS4EgEWPQ9SQMu5Hz9FRVSKmBCgcIiEdf+Ovvvl0gegDAVNuAQVYZH3c4
	MZjKV9Ov/q20qe2EPwbRtmE7u0TpuagAbKBLp7OScyJDlkASOCBN9RX5OXdtVMPd9dJi
	emkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XOg1nbdSUDp/HwjYoAI52Ql6ey6fXz8urBZpG9hQcss=;
	b=lqy9w5ip9/t3ZkDj22gT773r9q7EgWXcfMDkGNibiFid59rotQAqPyTYKcekgjPZJJ
	qnwnNqj77T2IQrRhNw5iS2R+2jEkMSkEijw2urpntWyqWFZz89wdRorV/kWgCYrr0ubM
	xdXtZrjtfJKtLZAsbK0JYBbIjDQFZT0jW58FDgy1e66G41GyhZYnKq95SGZ7gwwJndhz
	0QrlWphQIkMjkySfPJ2fEvFRkR8yr5en6BvGFkgvOIp+vS8/nuZ38jpfeWM/Q3i+YdG8
	VWU4qaNGAQHTy2WWzdiuEqQJ2Q5IFMsDirXsqGWFq8JfkOTCsd3XViclkVWF+JwoKnXo
	qAKQ==
X-Gm-Message-State: AGRZ1gImx9NUtoZl0yVQfwvUmDeDca+4MQ4N2azT6OYwVMUtR9ZPZUkV
	BT9/zVkk0TaKFJx/DckGIuISU3rRkJJwVVzhsqg=
X-Google-Smtp-Source: AJdET5ecI1/1koBA4hOPQ/tU9UpMONlnjWCRol5yQz/VydElCNz5e3rVqrGcBmjYkyQZZazDMFTpA3F8KXJLAJuvobo=
X-Received: by 2002:a19:5d42:: with SMTP id p2mr1385422lfj.83.1542209559057;
	Wed, 14 Nov 2018 07:32:39 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzHtJ8kqjLGQOh2zTqcP5TD3azHXz0+6RqqnggvA4NpB6Q@mail.gmail.com>
	<CAO5Uq5SvADCTKbJZ0J6d8Nu7_td=o_Vo3qi_W1DUhRvEqyXFdQ@mail.gmail.com>
	<CACKFPN3pc7GKBBGCEGaw-0do56v+c5GMuCS9Kq7=QT9Z=micjw@mail.gmail.com>
In-Reply-To: <CACKFPN3pc7GKBBGCEGaw-0do56v+c5GMuCS9Kq7=QT9Z=micjw@mail.gmail.com>
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Wed, 14 Nov 2018 15:32:27 +0000
Message-ID: <CABj1EzGsvFOW25Ha3G_PN1fPiVnJeGVO8xFSGOF=mk-WLqnHpQ@mail.gmail.com>
To: dimtass@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: wic creates invalid image
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
X-List-Received-Date: Wed, 14 Nov 2018 15:32:41 -0000
Content-Type: multipart/alternative; boundary="000000000000efda71057aa1a4b7"

--000000000000efda71057aa1a4b7
Content-Type: text/plain; charset="UTF-8"

Hi Alex & Dimitris,
Thank you for the info.
I tried to use gpt partition table as you suggested, but the raspberry pi
compute module 3 I am using wouldn't boot, so i switched back to mbr/msdos.
Now that I understand the origin of the extra extended partition, I can
work around it.
best regards,
Donal

On Tue, 13 Nov 2018 at 19:29, Dimitris Tassopoulos <dimtass@gmail.com>
wrote:

> Hi Alex,
>
> If you don't want the extended partitions you need to create a gpt
> partition, you can do this by adding this to your wks file.
>
> bootloader --ptable gpt
>
> Regards,
> Dimitris
>
>
> On Tue, 13 Nov 2018, 20:23 Alex Kiernan <alex.kiernan@gmail.com wrote:
>
>> On Tue, Nov 13, 2018 at 7:13 PM Donal Morrissey
>> <donal.morrissey@gmail.com> wrote:
>> >
>> > Hi There,
>> > I have a problem with an image being created by wic. If I add more than
>> 4 partition definitions to the wks file, the generated image will include
>> an additional partition with no Fstype, and spanning the full length of the
>> additional partitions.
>> >
>> > Take the following wks file:
>> >
>> > part --source rawcopy --sourceparams="file=<long
>> path>/image-r0/uboot.env" --ondisk "mmcblk0" --align 4096 --no-table
>> > part --source bootimg-partition --ondisk "mmcblk0" --fstype=vfat
>> --label boot --align 4096 --active --fixed-size 40
>> > part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label primary
>> --align 4096 --fixed-size 147456k --exclude-path data/
>> > part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label secondary
>> --align 4096 --fixed-size 147456k --exclude-path data/
>> > part --ondisk "mmcblk0" --fstype=ext4 --label appdata1 --align 4096
>> --fixed-size 147456k
>> > part --ondisk "mmcblk0" --fstype=ext4 --label appdata2 --align 4096
>> --fixed-size 147456k
>> > bootloader --ptable msdos
>> >
>> > wic will create a .direct file with the following structure:
>> > Num     Start        End          Size      Fstype
>> >  1      12582912     54525951     41943040  fat16
>> >  2      54525952    205520895    150994944  ext4
>> >  3     205520896    356515839    150994944  ext4
>> >  4     360709632    666894335    306184704
>> >  5     360710144    511705087    150994944  ext4
>> >  6     515899392    666894335    150994944  ext4
>> >
>> > Note the start and end addresses of partition 4, it spans from the
>> start of partitions 5 (appdata1)  to the end of partition 6 (appdata2).
>> >
>> > If I modify the wks file and remove the entry for appdata2, the created
>> direct file is valid:
>> >
>> > Num     Start        End          Size      Fstype
>> >  1      12582912     54525951     41943040  fat16
>> >  2      54525952    205520895    150994944  ext4
>> >  3     205520896    356515839    150994944  ext4
>> >  4     356515840    507510783    150994944  ext4
>> >
>> > Any suggestions on what is going on here?
>> >
>>
>> I've not checked, but I'd assume it's switched to extended partitions,
>> since MBR only has 4 primary partitions.
>>
>> --
>> Alex Kiernan
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000efda71057aa1a4b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex &amp; Dimitris,<div>Thank you for the info.</div><=
div>I tried to use gpt partition table as you suggested, but the raspberry =
pi compute module 3 I am using wouldn&#39;t boot, so i switched back to mbr=
/msdos.</div><div>Now that I understand the origin of the extra extended pa=
rtition, I can work around it.</div><div>best regards,</div><div>Donal</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, 13 Nov 2018 =
at 19:29, Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com">dim=
tass@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"auto"><div>Hi Alex,<div dir=3D"auto"><br></div><div dir=3D"auto">If =
you don&#39;t want the extended partitions you need to create a gpt partiti=
on, you can do this by adding this to your wks file.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">bootloader --ptable gpt</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Dimitris</div>=
<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, 13 Nov 2018, 20=
:23 Alex Kiernan &lt;<a href=3D"mailto:alex.kiernan@gmail.com" target=3D"_b=
lank">alex.kiernan@gmail.com</a> wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">On Tue, Nov 13, 2018 at 7:13 PM Donal Morrissey<br>
&lt;<a href=3D"mailto:donal.morrissey@gmail.com" rel=3D"noreferrer" target=
=3D"_blank">donal.morrissey@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi There,<br>
&gt; I have a problem with an image being created by wic. If I add more tha=
n 4 partition definitions to the wks file, the generated image will include=
 an additional partition with no Fstype, and spanning the full length of th=
e additional partitions.<br>
&gt;<br>
&gt; Take the following wks file:<br>
&gt;<br>
&gt; part --source rawcopy --sourceparams=3D&quot;file=3D&lt;long path&gt;/=
image-r0/uboot.env&quot; --ondisk &quot;mmcblk0&quot; --align 4096 --no-tab=
le<br>
&gt; part --source bootimg-partition --ondisk &quot;mmcblk0&quot; --fstype=
=3Dvfat --label boot --align 4096 --active --fixed-size 40<br>
&gt; part --source rootfs --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --la=
bel primary --align 4096 --fixed-size 147456k --exclude-path data/<br>
&gt; part --source rootfs --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --la=
bel secondary --align 4096 --fixed-size 147456k --exclude-path data/<br>
&gt; part --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --label appdata1 --a=
lign 4096 --fixed-size 147456k<br>
&gt; part --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --label appdata2 --a=
lign 4096 --fixed-size 147456k<br>
&gt; bootloader --ptable msdos<br>
&gt;<br>
&gt; wic will create a .direct file with the following structure:<br>
&gt; Num=C2=A0 =C2=A0 =C2=A0Start=C2=A0 =C2=A0 =C2=A0 =C2=A0 End=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Size=C2=A0 =C2=A0 =C2=A0 Fstype<br>
&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 12582912=C2=A0 =C2=A0 =C2=A054525951=C2=A0=
 =C2=A0 =C2=A041943040=C2=A0 fat16<br>
&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 54525952=C2=A0 =C2=A0 205520895=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;=C2=A0 3=C2=A0 =C2=A0 =C2=A0205520896=C2=A0 =C2=A0 356515839=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;=C2=A0 4=C2=A0 =C2=A0 =C2=A0360709632=C2=A0 =C2=A0 666894335=C2=A0 =C2=
=A0 306184704<br>
&gt;=C2=A0 5=C2=A0 =C2=A0 =C2=A0360710144=C2=A0 =C2=A0 511705087=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;=C2=A0 6=C2=A0 =C2=A0 =C2=A0515899392=C2=A0 =C2=A0 666894335=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;<br>
&gt; Note the start and end addresses of partition 4, it spans from the sta=
rt of partitions 5 (appdata1)=C2=A0 to the end of partition 6 (appdata2).<b=
r>
&gt;<br>
&gt; If I modify the wks file and remove the entry for appdata2, the create=
d direct file is valid:<br>
&gt;<br>
&gt; Num=C2=A0 =C2=A0 =C2=A0Start=C2=A0 =C2=A0 =C2=A0 =C2=A0 End=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Size=C2=A0 =C2=A0 =C2=A0 Fstype<br>
&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 12582912=C2=A0 =C2=A0 =C2=A054525951=C2=A0=
 =C2=A0 =C2=A041943040=C2=A0 fat16<br>
&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 54525952=C2=A0 =C2=A0 205520895=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;=C2=A0 3=C2=A0 =C2=A0 =C2=A0205520896=C2=A0 =C2=A0 356515839=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;=C2=A0 4=C2=A0 =C2=A0 =C2=A0356515840=C2=A0 =C2=A0 507510783=C2=A0 =C2=
=A0 150994944=C2=A0 ext4<br>
&gt;<br>
&gt; Any suggestions on what is going on here?<br>
&gt;<br>
<br>
I&#39;ve not checked, but I&#39;d assume it&#39;s switched to extended part=
itions,<br>
since MBR only has 4 primary partitions.<br>
<br>
-- <br>
Alex Kiernan<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div></div>
</blockquote></div>

--000000000000efda71057aa1a4b7--
