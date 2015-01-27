Return-Path: <yani.dubin@taitradio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43667E0110B; Mon, 26 Jan 2015 20:54:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	*  3.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0F1E029D9
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 20:54:29 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id va2so11672715obc.2
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 20:54:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=zJS1hQB0dfuyvNklyuD/J/bgX2LT7Ji8k67xCxAgV44=;
	b=HqSU0ME3K+XaO2wPyD+v0o66HlxwROH3OVRpVclWA9urWOVVcI0tA8AAW8zHBdHRU3
	Ru49jhurjxoEk0fyBj0Y6l5DNZn9siAIGYTPepeVOXFPHNXKA7KEUgsPtli6Ld35JKun
	nixBNneXpzVhC4Fmp7TNNaDvu03eSIucLJHIQJWDK7vTf++7Fzog/3ENXj0apNKmHcI7
	ijbFrEzLPR3J6FNE3UPq7Mg0mVohySc6S/eoO/19dHjSyN+3LGqIL4uqM1PkxEuMfyS7
	F8JUtEdWpctnwC1GLc4AfQx1mY17x9fBF7/p5hTtvgpsqDTKcUbUjoR0dd+qXH7WQtNj
	gknA==
X-Gm-Message-State: ALoCoQmPNj3cKkzagHKgpP07zTgITxQv9+DxFD6fNmkFzQsF6VgSldHM3b0u6hRzzgl0M37esHmRCVIU1mcaPTPdAYkSLezRGAoah+k3y1HKE2kUfnkUnG0=
MIME-Version: 1.0
X-Received: by 10.182.130.231 with SMTP id oh7mr15030288obb.47.1422334468714; 
	Mon, 26 Jan 2015 20:54:28 -0800 (PST)
Received: by 10.202.228.7 with HTTP; Mon, 26 Jan 2015 20:54:28 -0800 (PST)
Date: Tue, 27 Jan 2015 17:54:28 +1300
Message-ID: <CAHSWo-jFj5Wk1xBvaaY7UegFjQ2XJn_PK0YFcy+pNeLW2ThMpQ@mail.gmail.com>
From: Yani Dubin <yani.dubin@taitradio.com>
To: yocto@yoctoproject.org
Subject: (IIO) ADC freeze on am335x processor on 3.14.26ltsi kernel
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
X-List-Received-Date: Tue, 27 Jan 2015 04:54:40 -0000
Content-Type: multipart/alternative; boundary=089e011778e7c28e8b050d9b0c34

--089e011778e7c28e8b050d9b0c34
Content-Type: text/plain; charset=UTF-8

Hi,

I have run up against a kernel bug on the dizzy branch where a read of an
ADC channel (IIO bus) on a Sitara (am335x) processor locks up the process
reading the /sys/bus/iio/devices/iio\:device0/in_voltage?_raw node. The
system remains stable, but the locked process does not respond to SIGKILL.
No kernel errors or debugging info in the logs - but I have taken no steps
to improve verbosity. fuser shows the files as being open by the crashed
process.

I did google the issue, but turned up nothing. This is very reproduceable,
and I have done my best to narrow it down on the dizzy timeline. In each
case I have used the same rootfs (built from dizzy tip), but just flashed a
different kernel.

The (yocto) changesets in question are:
36e42c0ddb7a40b3022e9b165560622479f1aa5c  - 3.14.26ltsi exhibits issue
446acfb5a474b23041b46c49732474f2d415160d   - 3.14.24 doesn't build
d7c61053da96d675c3912a45ee448c20ae91721b - 3.14.19 issue not present

The build error in question is "ERROR: Fetcher failure: Unable to find
revision fba2d0cdb745e0f807ce134fd9d1524b7bed9742 in branch meta even from
upstream".

These are 3 adjacent changesets on the dizzy branch - I gather that is as
much as I can narrow it down?

Should I be submitting this bug to yocto bugzilla (since it affects the
stable release, and I am using linux-yocto) or a linux kernel bug tracker /
mailing list? Or is there further information I should be getting (enabling
kernel debugging / increasing verbosity perhaps)? Should I do a build off
the unstable branch for comparison? (to see if this has a newer kernel,
with upstream fix which resolves the issue)

Meanwhile, I thought I would see if anyone else is experiencing this, or
has similar hardware and can see if they are also affected. This is a
custom board, but similar processor-wise to the Beaglebone Black.

Steps to reproduce:
cat /sys/bus/iio/devices/iio\:device0/in_voltage?_raw

The particular drivers in use are:
CONFIG_TI_AM335X_ADC=y
CONFIG_MFD_TI_AM335X_TSCADC=y

Regards,
Yani.

-- 

------------------------------
This email, including any attachments, is only for the intended recipient. 
It is subject to copyright, is confidential and may be the subject of legal 
or other privilege, none of which is waived or lost by reason of this 
transmission.
If you are not an intended recipient, you may not use, disseminate, 
distribute or reproduce such email, any attachments, or any part thereof. 
If you have received a message in error, please notify the sender 
immediately and erase all copies of the message and any attachments.
Unfortunately, we cannot warrant that the email has not been altered or 
corrupted during transmission nor can we guarantee that any email or any 
attachments are free from computer viruses or other conditions which may 
damage or interfere with recipient data, hardware or software. The 
recipient relies upon its own procedures and assumes all risk of use and of 
opening any attachments.
------------------------------

--089e011778e7c28e8b050d9b0c34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>I have run up against a kernel bug on the =
dizzy branch where a read of an ADC channel (IIO bus) on a Sitara (am335x) =
processor locks up the process reading the /sys/bus/iio/devices/iio\:device=
0/in_voltage?_raw node. The system remains stable, but the locked process d=
oes not respond to SIGKILL. No kernel errors or debugging info in the logs =
- but I have taken no steps to improve verbosity. fuser shows the files as =
being open by the crashed process.<br><br> I did google the issue, but turn=
ed up nothing. This is very reproduceable, and I have done my best to narro=
w it down on the dizzy timeline. In each case I have used the same rootfs (=
built from dizzy tip), but just flashed a different kernel.<br><br>The (yoc=
to) changesets in question are:<br>36e42c0ddb7a40b3022e9b165560622479f1aa5c=
=C2=A0 - 3.14.26ltsi exhibits issue<br>446acfb5a474b23041b46c49732474f2d415=
160d=C2=A0=C2=A0 - 3.14.24 doesn&#39;t build<br>d7c61053da96d675c3912a45ee4=
48c20ae91721b - 3.14.19 issue not present<br><br>The build error in questio=
n is &quot;ERROR: Fetcher failure: Unable to find revision fba2d0cdb745e0f8=
07ce134fd9d1524b7bed9742 in branch meta even from upstream&quot;.<br><br>Th=
ese are 3 adjacent changesets on the dizzy branch - I gather that is as muc=
h as I can narrow it down?<br><br>Should I be submitting this bug to yocto =
bugzilla (since it affects the stable release, and I am using linux-yocto) =
or a linux kernel bug tracker / mailing list? Or is there further informati=
on I should be getting (enabling kernel debugging / increasing verbosity pe=
rhaps)? Should I do a build off the unstable branch for comparison? (to see=
 if this has a newer kernel, with upstream fix which resolves the issue)<br=
><br>Meanwhile, I thought I would see if anyone else is experiencing this, =
or has similar hardware and can see if they are also affected. This is a cu=
stom board, but similar processor-wise to the Beaglebone Black.<br clear=3D=
"all"></div><div><div><div><br></div><div>Steps to reproduce:<br>cat /sys/b=
us/iio/devices/iio\:device0/in_voltage?_raw<br><br></div><div>The particula=
r drivers in use are:<br>CONFIG_TI_AM335X_ADC=3Dy<br>CONFIG_MFD_TI_AM335X_T=
SCADC=3Dy<br><br></div><div>Regards,<br>Yani.</div></div></div></div>

<br>
<hr><font color=3D"#808080">This email, including any attachments, is only
 for the intended recipient. It is subject to copyright, is confidential
 and may be the subject of legal or other privilege, none of which is=20
waived or lost by reason of this transmission.</font><div><font color=3D"#8=
08080">If
 you are not an intended recipient, you may not use, disseminate,=20
distribute or reproduce such email, any attachments, or any part=20
thereof. If you have received a message in error, please notify the=20
sender immediately and erase all copies of the message and any=20
attachments.</font></div><div><font color=3D"#808080">Unfortunately, we=20
cannot warrant that the email has not been altered or corrupted during=20
transmission nor can we guarantee that any email or any attachments are=20
free from computer viruses or other conditions which may damage or=20
interfere with recipient data, hardware or software. The recipient=20
relies upon its own procedures and assumes all risk of use and of=20
opening any attachments.</font></div><div><hr></div>

--089e011778e7c28e8b050d9b0c34--
