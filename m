Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE6C6E00E9A; Mon, 29 Aug 2016 07:07:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C2BE00B47
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 07:07:35 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id g62so98262991ith.1
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 07:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CYpuhbUW/3u28AZsevjlq1OeiZ3JL9dZ/EsGk/XgNo8=;
	b=lFWyli373qE6JmRiYnTvmQ4vNoFdCRx5b3aLeFdzwdBYZ6tHwGxPsWhDQe+WAwGo3I
	6PD1/5bypCeNEunefGtPV4iNE4zwapIMoIIs+9o2Sf18Nw7RLWLULaehr8l+uUpdZCJB
	Fc1CPPrXrhSZZfm7Yzta+HdWz/mPUEKFPSC6sny4WC1S3pZc3lOGtnjqRnZ8ywX6zDuU
	o7RJw6+OeGDHN7dwKkMAbZJ6cjhWeQQYZ28pI2eOKM6ahHsneiVgXTEwNMk3yEWMdNCE
	TMgOwTZqXH6l662j0rtj+EJR+F0EvOEffQbfkQFoO8nF7FTldeoBiincDWzMdxWLfE2I
	j/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CYpuhbUW/3u28AZsevjlq1OeiZ3JL9dZ/EsGk/XgNo8=;
	b=B5sdUh/KcqsFigrfMLT+QtwVxCEjjmXu1ainQRM6GDEKYGG/5y/xDz2EJwPIBRsjdt
	/WnUSAhyly49/Zqt05K7/K3J/U13+hULqJ78jKEOhcvv5tOWQRsNgGOvHGRXhWYqWJdz
	l74MJsRB1bTWm3T7+wuAFJFhJpMYav/jTSAnKZ6VfYAPupKkqPURZAoifCnQIK1g4vDl
	AuVugBaIekgZx6viO6R4qmWy9QhEBJ9dRJu8qGnwhY1wclB0mvtpDFtcOs6flOde7eIQ
	2goKtkRyDKF7+yDBNgakaKGACpcUQ0wFKVCok5/6VqYHkMnuAlLlMI3zj+3gMwMWVebK
	Fk8A==
X-Gm-Message-State: AE9vXwNrPgDIr1NFn31hldg1WUYi7KPFsX3y7OvuCEgZiN5pXPR8iM/2RjabUjYmUeA+N8p3mMxOmNpLSZHasA==
X-Received: by 10.36.88.83 with SMTP id f80mr17116032itb.36.1472479654361;
	Mon, 29 Aug 2016 07:07:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.175.169 with HTTP; Mon, 29 Aug 2016 07:07:33 -0700 (PDT)
In-Reply-To: <CALwQEroevj9bs_adtYoSFWoPCOtpAw1t4Xi6LP-dDyT-zP3reg@mail.gmail.com>
References: <CALwQErovo9JQV7apy+-Qnk9Dv5SDArmS+793GuwWoznF-gWAcQ@mail.gmail.com>
	<CALwQEroevj9bs_adtYoSFWoPCOtpAw1t4Xi6LP-dDyT-zP3reg@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
Date: Mon, 29 Aug 2016 19:37:33 +0530
Message-ID: <CALwQErog-d+5hbeGRJEFi8f3Xp7tzxW7S9i2y52h5eWOedNrcA@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: [meta-selinux] Regarding "systemd" support with refpolicy-minimum v20151208
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
X-List-Received-Date: Mon, 29 Aug 2016 14:07:37 -0000
Content-Type: multipart/alternative; boundary=001a1144bf22bcc332053b3662e3

--001a1144bf22bcc332053b3662e3
Content-Type: text/plain; charset=UTF-8

Hi,


Patch set for systemd and related fixes for refpolicy-minimum v2.20151208
from https://lists.yoctoproject.org/pipermail/yocto/2016-August/031763.html
to https://lists.yoctoproject.org/pipermail/yocto/2016-August/031771.html

Verified core-image-selinux build with refpolicy-minimum and systemd as
init manager, below are reference logs.

refpolicy-minimum with patch set: http://paste.ubuntu.com/23107423/

refpolicy-minimum without patch set: http://paste.ubuntu.com/23107437/

Please advise !


Thanks
Shrikant


On Fri, Jul 29, 2016 at 2:54 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> Hi,
>
>
> Request for comment set from: https://lists.yoctoproject.
> org/pipermail/yocto/2016-July/031362.html to https://lists.yoctoproject.
> org/pipermail/yocto/2016-July/031369.html
>
> checked on below build config. with refpolicy-minimum using systemd as
> init manager.
>
> These are comparative boot logs.
> refpolicy-minimum without RFC set: http://paste.ubuntu.com/21383917/
>
> refpolicy-minimum with RFC set: http://paste.ubuntu.com/21383939/
>
>
>
> Build Configuration:
> BB_VERSION        = "1.31.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky-selinux"
> DISTRO_VERSION    = "2.1+snapshot-20160729"
> TUNE_FEATURES     = "arm armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-poky
> meta-yocto-bsp    = "master:039f47ad197a9a53109c9f3deadd9c35e62c056d"
> meta-selinux      = "master:d0f889259b610c3365962775c6e96a7cba407177"
>
>
>
> Please advice, It will be a great help !
>
>
> Thanks
> Shrikant
>
>
> On Fri, Jul 1, 2016 at 7:13 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
> wrote:
>
>> Hi,
>>
>> Using refpolicy-minimum v20151208 with systemd as init manager,
>>
>> I am facing few issues during enforcing mode,
>> 1. systemd service status check, start & stop
>> 2. auditd logfile error, so it is mixing with the boot log.
>> 3. also other avc denials related to tmpfs & other types etc..
>>
>>
>> setup details:poky and meta-selinux: both at master head & systemd
>> enabled.
>> with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all
>> ii.allow_mount_anyfile
>>
>> captured the avc denial to fix the systemd execution well, attached
>> SELinux-Modules.txt :- the allow rules generated using audit tools.
>> I am trying to merge these module into actual refpolicy modules, so we
>> get the out of box experience for smooth systemd execution.
>> Observed policy store seems corrupted some time, when start inserting the
>> prepared policy modules allow rules into actual refpolicy modules..
>>
>> Does anyone also faced similar issues?
>>
>> Any pointers or references will be a great help.
>>
>>
>> Thanks
>> Shrikant
>>
>>
>

--001a1144bf22bcc332053b3662e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br><br></div>Patch s=
et for systemd and related fixes for refpolicy-minimum v2.20151208 from <a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2016-August/031763.h=
tml">https://lists.yoctoproject.org/pipermail/yocto/2016-August/031763.html=
</a> to <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2016-Augu=
st/031771.html">https://lists.yoctoproject.org/pipermail/yocto/2016-August/=
031771.html</a> <br><br></div>Verified core-image-selinux build with refpol=
icy-minimum and systemd as init manager, below are reference logs. <br></di=
v><br>refpolicy-minimum with patch set: <a href=3D"http://paste.ubuntu.com/=
23107423/">http://paste.ubuntu.com/23107423/</a> <br><br></div>refpolicy-mi=
nimum without patch set: <a href=3D"http://paste.ubuntu.com/23107437/">http=
://paste.ubuntu.com/23107437/</a><br><br></div><div>Please advise !<br><br>=
</div><div><br></div>Thanks<br></div>Shrikant<br><div><div><div><div><div><=
div><br><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Fri, Jul 29, 2016 at 2:54 PM, Shrikant Bobade <span dir=3D"ltr">&lt;<a =
href=3D"mailto:bobadeshrikant@gmail.com" target=3D"_blank">bobadeshrikant@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div><div><div>Hi,<br><br><br></div>Request for=
 comment set from: <a href=3D"https://lists.yoctoproject.org/pipermail/yoct=
o/2016-July/031362.html" target=3D"_blank">https://lists.yoctoproject.<wbr>=
org/pipermail/yocto/2016-July/<wbr>031362.html</a> to <a href=3D"https://li=
sts.yoctoproject.org/pipermail/yocto/2016-July/031369.html" target=3D"_blan=
k">https://lists.yoctoproject.<wbr>org/pipermail/yocto/2016-July/<wbr>03136=
9.html</a><br><br></div><div>checked on below build config. with refpolicy-=
minimum using systemd as init manager.<br><br></div><div>These are comparat=
ive boot logs.<br></div><div>refpolicy-minimum without RFC set: <a href=3D"=
http://paste.ubuntu.com/21383917/" target=3D"_blank">http://paste.ubuntu.co=
m/<wbr>21383917/</a> <br></div><div><br></div><div>refpolicy-minimum with R=
FC set: <a href=3D"http://paste.ubuntu.com/21383939/" target=3D"_blank">htt=
p://paste.ubuntu.com/<wbr>21383939/</a> <br></div><div><br><br><br>Build Co=
nfiguration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;1.31.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;u=
niversal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;qemuarm&quot;<br>DISTRO=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky-se=
linux&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;2.1+snapshot-2016=
0729&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv5 thu=
mb dsp&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;soft&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;master:<wbr>=
039f47ad197a9a53109c9f3deadd9c<wbr>35e62c056d&quot;<br>meta-selinux=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:<wbr>d0f889259b610c3365962775c6e9=
6a<wbr>7cba407177&quot;<br><br><br><br></div><div>Please advice, It will be=
 a great help !<br><br></div><div><br></div>Thanks<span class=3D""><font co=
lor=3D"#888888"><br></font></span></div><span class=3D""><font color=3D"#88=
8888">Shrikant<br><div><div><div><br></div></div></div></font></span></div>=
<div class=3D""><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Jul 1, 2016 at 7:13 PM, Shrikant Bobade <span dir=
=3D"ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.com" target=3D"_blank">=
bobadeshrikant@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Hi,<br><br></div>Using =
refpolicy-minimum v20151208 with systemd as init manager, <br><br>I am faci=
ng few issues during enforcing mode, <br>1. systemd service status check, s=
tart &amp; stop<br>
2. auditd logfile error, so it is mixing with the boot log. <br>3. also oth=
er avc denials related to tmpfs &amp; other types etc..<br><br><br>setup de=
tails:poky and meta-selinux: both at master head &amp; systemd enabled.<br>=
with these SELinux booleans enabled: i.systemd_tmpfiles_manage_all ii.allow=
_mount_anyfile <br><br>captured the avc denial to fix the systemd execution=
 well, attached SELinux-Modules.txt :- the allow rules generated using audi=
t tools.<br></div><div>I am trying to merge these module into actual refpol=
icy modules, so we get the out of box experience for smooth systemd executi=
on.<br></div><div>Observed policy store seems corrupted some time, when sta=
rt inserting the prepared policy modules allow rules into actual refpolicy =
modules..<br><br></div><div>Does anyone also faced similar issues? <br><br>=
</div><div>Any pointers or references will be a great help.<br></div><div><=
br><br></div><div>Thanks<span><font color=3D"#888888"><br></font></span></d=
iv><span><font color=3D"#888888"><div>Shrikant<br></div><div></div><br></fo=
nt></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div></div></div></div></di=
v></div></div></div>

--001a1144bf22bcc332053b3662e3--
