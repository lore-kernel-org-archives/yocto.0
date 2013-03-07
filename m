Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CE192E014A1
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 16:31:23 -0800 (PST)
Received: by mail-ee0-f41.google.com with SMTP id c13so6120917eek.14
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 16:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=cwWaqImS2PZfZ625bYvT5DJMbNqsKL+QwcofItC/C3E=;
	b=C6yVT6LWbmX6AFXZDseq4ffJKwPphTdp/QHC20c21Z9PzRqN/dlNxc7iqeGTmM9iCi
	t8Zw9PDVGVGk6oYq9oQEjb4lg4Cvx3Eg1Ly822XL8gBDzKvees58JSjq0TglpHF8miYt
	2APKTF1W7MkrW2cR9ZbTDT87givGNPaghxirs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=cwWaqImS2PZfZ625bYvT5DJMbNqsKL+QwcofItC/C3E=;
	b=OU2NoJKffxKQ3Iu/MzCz4+Vh4izznCbzCuIBJlczkGlinod/MkTr6C0hj4ZA7pSRxv
	CzWbKLgfxAGdUg1glW50aBVy6ELFZahohwZzarC1mikv6WF9kCCucCsJbUeK6zezXWEC
	BnTuvO4SFONE0xwjpwOzIzKpf4a8CT6FFxfHjiFF6M5VVfsezowpocTVrI7Qqb2teu4U
	oJ4cptd8Xom6hcNxtmGeD7QNDFGdq234dHVdPjXqgwY+PQiETR9Q/5g2t+Xc+fBW9KKP
	/IGptMFB4w2IUfRkhog65Fq6rxMWeniVYaH7Pi7ULuoFM0UQxbwmM0FdvwkNwiioB53t
	S5jg==
MIME-Version: 1.0
X-Received: by 10.14.200.137 with SMTP id z9mr86781011een.20.1362616281877;
	Wed, 06 Mar 2013 16:31:21 -0800 (PST)
Received: by 10.223.43.200 with HTTP; Wed, 6 Mar 2013 16:31:21 -0800 (PST)
In-Reply-To: <CAHUNapRO3tUygFJp888R3thLDtBUyE7+zH00Wts-kTh4YHppog@mail.gmail.com>
References: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
	<CAHUNapRO3tUygFJp888R3thLDtBUyE7+zH00Wts-kTh4YHppog@mail.gmail.com>
Date: Wed, 6 Mar 2013 16:31:21 -0800
Message-ID: <CA+gsK-oB10wvxnFmFgrad354MNP_Kw+yZajzsHuep4rEVZM4TA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQmSBvdoKPDA2KwmK5Y0a3DMIVLY2MB9gQmf7uXleaBAWVr0+GRrcIAY1s/XfHPJeKYDhSYR
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: Question about file systems
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
X-List-Received-Date: Thu, 07 Mar 2013 00:31:24 -0000
Content-Type: multipart/alternative; boundary=047d7b343b8272838804d74ad36d

--047d7b343b8272838804d74ad36d
Content-Type: text/plain; charset=ISO-8859-1

There is a major difference between ext3 and ext4 which is called "delayed
(block) allocation." Delayed allocation of blocks increases the risk of
data loss in certain circumstances. While ext3 typically syncs cache to
disk every 5s, it can take 2min with ext4.





On Wed, Mar 6, 2013 at 10:20 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Tue, Mar 5, 2013 at 9:20 PM, Paul D. DeRocco <pderocco@ix.netcom.com>
> wrote:
> > So I guess the questions are these: Are ext2, ext3 and ext4 all equally
> > likely to need to do an "fsck" after a disorderly shutdown? Do they
> > typically take different amounts of time to do an "fsck"? Or is the
> > journaling of ext3 and ext4 something that should be avoided on a flash
> > drive at all costs, even though my app won't be doing much file access?
>
> With the embedded project I work on, I had started (roughly 7 years
> ago) by using ext2 on our flash drive. I too found that my users
> always "yanked the cable" instead of trying to perform any sort of
> orderly shutdown. Technically this device is meant to run 24/7, but I
> found that several of our field reps were convinced they had to
> power-cycle after every configuration change (which I still don't
> understand... do they do that on their own computers?).
>
> Anyway, with ext2 we would get irrecoverable disk corruption, or at
> least enough corruption that the bootup would halt, waiting (forever)
> for the user to "run fsck manually" (our device has a total of 4 LEDs
> on the front panel as the only feedback, and they don't "come alive"
> until user-space starts). So I switched to ext3 around (roughly) 5
> years ago and have not once seen an incident of a failed bootup due to
> disk corruption/fsck problems.
>
> Yes, it does make the duration of the bootup non-deterministic, but
> for our product bootup time is not a priority.
>
> I can't say as to whether ext4 should be used instead of ext3 or which
> is better or faster. All I can say is if your users are "yanking the
> cable" you may want to stay away from ext2. Also some sort of fsck is
> always run on the next bootup when power is cut off unexpectedly.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b343b8272838804d74ad36d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is a major difference between ext3 and ext4 which is=
 called &quot;delayed (block) allocation.&quot; Delayed allocation of block=
s increases the risk of data loss in certain circumstances. While ext3 typi=
cally syncs cache to disk every 5s, it can take 2min with ext4.<div>
<br></div><div><div><br></div><div><br></div></div></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Wed, Mar 6, 2013 at 10:20 AM=
, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com=
" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, Mar 5, 2013 at 9:2=
0 PM, Paul D. DeRocco &lt;<a href=3D"mailto:pderocco@ix.netcom.com">pderocc=
o@ix.netcom.com</a>&gt; wrote:<br>

</div><div class=3D"im">&gt; So I guess the questions are these: Are ext2, =
ext3 and ext4 all equally<br>
&gt; likely to need to do an &quot;fsck&quot; after a disorderly shutdown? =
Do they<br>
&gt; typically take different amounts of time to do an &quot;fsck&quot;? Or=
 is the<br>
&gt; journaling of ext3 and ext4 something that should be avoided on a flas=
h<br>
&gt; drive at all costs, even though my app won&#39;t be doing much file ac=
cess?<br>
<br>
</div>With the embedded project I work on, I had started (roughly 7 years<b=
r>
ago) by using ext2 on our flash drive. I too found that my users<br>
always &quot;yanked the cable&quot; instead of trying to perform any sort o=
f<br>
orderly shutdown. Technically this device is meant to run 24/7, but I<br>
found that several of our field reps were convinced they had to<br>
power-cycle after every configuration change (which I still don&#39;t<br>
understand... do they do that on their own computers?).<br>
<br>
Anyway, with ext2 we would get irrecoverable disk corruption, or at<br>
least enough corruption that the bootup would halt, waiting (forever)<br>
for the user to &quot;run fsck manually&quot; (our device has a total of 4 =
LEDs<br>
on the front panel as the only feedback, and they don&#39;t &quot;come aliv=
e&quot;<br>
until user-space starts). So I switched to ext3 around (roughly) 5<br>
years ago and have not once seen an incident of a failed bootup due to<br>
disk corruption/fsck problems.<br>
<br>
Yes, it does make the duration of the bootup non-deterministic, but<br>
for our product bootup time is not a priority.<br>
<br>
I can&#39;t say as to whether ext4 should be used instead of ext3 or which<=
br>
is better or faster. All I can say is if your users are &quot;yanking the<b=
r>
cable&quot; you may want to stay away from ext2. Also some sort of fsck is<=
br>
always run on the next bootup when power is cut off unexpectedly.<br>
<div class=3D"HOEnZb"><div class=3D"h5">___________________________________=
____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b=
></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b343b8272838804d74ad36d--
