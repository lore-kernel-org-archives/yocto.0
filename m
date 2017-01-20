Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB3BE009CF; Thu, 19 Jan 2017 22:16:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091F4E009CD
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:16:14 -0800 (PST)
Received: by mail-ua0-f173.google.com with SMTP id y9so53901218uae.2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 22:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5R3ZJmtPDWvDg4GdjkK4rqszFrcIwx8YTELzEDTOG+o=;
	b=2SNcu4mL8xpe2v8ONO3Yi5nGB8P6uBL5huT9WKuQi7louoaFlNrgp6coEoAL7nSCk+
	iI0qEvRsZaV4FMVcAEmQIWWsHs5sqIMz7NPgmHtdcOGGuYPsblUTN0ERpQDqKMe+noDn
	GMV+F/M7fW6s5jTlmM4r2sW6wN576Fu1Mia+AaI81udapQ1epFxNvJkCTjMBf/05LDJ9
	XDnmMEu2hiuyMo+yMRWpiBNR16jdGeEycwbWK+eRTyy3g659/vHT6cct8vBWSl99KLV+
	kJ+ivf7SH9w334+MwKmR1V13WtUEax4PK/dm4Pxm0nG8JZFLk+aPinSb+k7HIa8HE/Ik
	I5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5R3ZJmtPDWvDg4GdjkK4rqszFrcIwx8YTELzEDTOG+o=;
	b=WtjXz9ksVIkk4b2/8ahJ5S8IAo5ojBUifN6MyqdLasCuHnpW6/kWkscq8kUhnssPAj
	jiYqkx5ySvLzWQ0co6bHvxk/EKBOo6TspKR9uzu3h11ZaJ68QLTuTk4GXk05Wd3q+ab/
	HqxGn93iVIo6vtuhnSWH5hDCWxSCFs3aBNCgTh5DcweGomPQ3KkLIFLvUSdWWdSoAF1R
	wu+mdgW4ZPTb1nSzKxcZcItIPd5xEPs4+KAn8a3SnX2L98S6gHw0qvsyN4/fEd4erxh1
	FDewB33eyui6VSia1JBEsbbey4ntMsT6Hl4atQWQXu18AnabuJTpWpfDJ6VnNj7MtzSo
	5IDA==
X-Gm-Message-State: AIkVDXI5UGGoDZCCnA4FIbE+izBduSl9p8kGvZ7HiWecEWd5yqp4pIuO9nS8HKPXp70RLgeQKxjzYOdyKu22awbV
X-Received: by 10.176.68.100 with SMTP id m91mr7107181uam.119.1484892974204;
	Thu, 19 Jan 2017 22:16:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.69.226 with HTTP; Thu, 19 Jan 2017 22:15:33 -0800 (PST)
In-Reply-To: <40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
From: Michael Gloff <mgloff@emacinc.com>
Date: Fri, 20 Jan 2017 00:15:33 -0600
Message-ID: <CALXw4G6VmPJqb6tc+148SADpX-SauFR9GneZ51eBoMdfmcK=AA@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Fri, 20 Jan 2017 06:16:19 -0000
Content-Type: multipart/alternative; boundary=94eb2c08b91e420a27054680961d

--94eb2c08b91e420a27054680961d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Mike,

On Thu, Jan 19, 2017 at 3:18 AM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> On 18-01-17 16:10, colin.helliwell@ln-systems.com wrote:
>
>> We have a configuration for our embedded system which is working via
>> SysV, but
>> we=E2=80=99re investigating moving over to systemd.
>>
>> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has techn=
ological arguments
>> for/against
>> then I=E2=80=99d be interested =E2=80=93 but I wanted to investigate it =
anyway.
>>
>
> Just one. systemd is a bit larger. So it will increase the boot time if
> your platform is I/O limited (many embedded systems are).
>
> The good thing I noticed is that it shuts down a lot faster than
> initscripts. (I don't understand why I can boot my system in 2 seconds, b=
ut
> shutdown takes over 5 seconds...)
>

The 5+ seconds may be from sendsigs on shutdown or reboot:
     echo "Sending all processes the TERM signal..."
     killall5 -15
     sleep 5
     echo "Sending all processes the KILL signal..."
     killall5 -9

Reducing to 1 or 2 seconds should be sufficient.

Michael Gloff



>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Products
> Materiaalweg 4, NL-5681 RJ Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
>

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c08b91e420a27054680961d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mike,<br><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Thu, Jan 19, 2017 at 3:18 AM, Mike Looijmans <span dir=3D"ltr">=
&lt;<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looij=
mans@topic.nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 18-01-17 16:10, <a href=3D"mailto:colin.helliwell@ln-syste=
ms.com" target=3D"_blank">colin.helliwell@ln-systems.com</a> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
We have a configuration for our embedded system which is working via SysV, =
but<br>
we=E2=80=99re investigating moving over to systemd.<br>
<br>
Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has technolo=
gical arguments for/against<br>
then I=E2=80=99d be interested =E2=80=93 but I wanted to investigate it any=
way.<br>
</blockquote>
<br>
Just one. systemd is a bit larger. So it will increase the boot time if you=
r platform is I/O limited (many embedded systems are).<br>
<br>
The good thing I noticed is that it shuts down a lot faster than initscript=
s. (I don&#39;t understand why I can boot my system in 2 seconds, but shutd=
own takes over 5 seconds...)<br></blockquote><div><br></div><div>The 5+ sec=
onds may be from sendsigs on shutdown or reboot:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 echo &quot;Sending all processes the TERM signal...&quot;<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 killall5 -15<br>=C2=A0=C2=A0=C2=A0=C2=A0<span style=3D"colo=
r:rgb(255,0,0)"> sleep 5</span><br>=C2=A0=C2=A0=C2=A0=C2=A0 echo &quot;Send=
ing all processes the KILL signal...&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 kill=
all5 -9<br><br></div><div>Reducing to 1 or 2 seconds should be sufficient.<=
br><br></div><div>Michael Gloff<br></div><div><br></div><div>=C2=A0<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
Kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
TOPIC Products<br>
Materiaalweg 4, NL-5681 RJ Best<br>
Postbus 440, NL-5680 AK Best<br>
Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=3D"+31=
499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blan=
k">mike.looijmans@topicproducts.c<wbr>om</a><br>
Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=
=3D"_blank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<span class=3D"g=
mail-HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
</font></span>=C2=A0<br></blockquote><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><span class=3D"gmail-HOEnZb"><font color=3D"#888888">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--94eb2c08b91e420a27054680961d--
