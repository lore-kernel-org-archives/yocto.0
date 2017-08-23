Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4A60E00C89; Wed, 23 Aug 2017 04:51:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7462DE00A39
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 04:51:31 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id b189so13930152wmd.0
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 04:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u54PASgwrIreQQrH2DRADltVxKiteWS1siprWyP4igs=;
	b=mtYWdtItqJ8g4PHcpkUKzmdY7VHoX2urkZqk78WTMzGyAtqeigjVzcZyBJ3QNzeOQ0
	729tRAHa6qoX5UpiQgc4nhQOOuuOIXZOpO6+I4UxPegIBcEx+Vif8xEJZu22UEMlH7Uy
	iadH9E5iVDMYDEg30VyGp83XZmXSZgMWPDH6gcXVQCJMq0PsPHsKv4N/Usn3INVKk5qO
	FnET6Q7LYUMMIiAASgrifPJ1O7PQSfnu5LVBGH6hrv5JPA1wSgl98wxK0y9ftRFAqquJ
	034kLsf0gld8AusTBn/Q+jZY55hobFpSGZCAq2UgCaQ6iGoBOfOm0PREyWJX/yEC6aaQ
	QkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u54PASgwrIreQQrH2DRADltVxKiteWS1siprWyP4igs=;
	b=I8mG7UxEZ9WLIn+IYzKoXp2Wmi88wgylBkv88IGYYxmxqw9Ai49eAkphjvr05W01U2
	x9oJt+m/j9DIt/qvNfeTg88Q2QGiM2x7D2nNzEVjAa9hYbTiTYAR4Y5et7/OfXArGJxl
	XQ7kPHp0PVDCleCF/GXl2bQGFal/ER6JxvJhuaqDUvBHXdG0iBrsTgWgrnyO8O5Yj7AR
	wuHQl/ZAXm2O5+HPuqu3lVYW/KIMmlbygmbEUVnOAJ8TVUsO8x0xttAh6UCaakE8cezp
	BY3PvIYlZiYs+X3Ly4hEz1n6fPnis8Y26AJ8+fG5EMgtQk8397CYRtCvVKgZJEsmP17H
	hNcQ==
X-Gm-Message-State: AHYfb5ihT3XAz2ZngfjcWnnrdJ5xP0qDXTYSI0AuIYaP66ri8dmo3FUd
	ULG/rpEiWJRfpGk4x/QlNmFKcF1F2g==
X-Received: by 10.28.193.8 with SMTP id r8mr1526816wmf.170.1503489089997; Wed,
	23 Aug 2017 04:51:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.138.18 with HTTP; Wed, 23 Aug 2017 04:51:29 -0700 (PDT)
In-Reply-To: <CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 23 Aug 2017 13:51:29 +0200
Message-ID: <CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Wed, 23 Aug 2017 11:51:32 -0000
Content-Type: multipart/alternative; boundary="94eb2c0d46d4220f9105576a5553"

--94eb2c0d46d4220f9105576a5553
Content-Type: text/plain; charset="UTF-8"

Hello Jussi,

Let me start giving you all the hints. So you can see where I lead. You
made few mistakes, so DNF won't work as such/is (by default) in Pyro 2.3.1.

I investigated a bit (I already wrote that I am quite familiar with DNF and
its concepts).

For the starters: Your DNF repo on Pyro 2.3.1 is in the following directory
(I built full SATO image for target qemux86-64), transcript from my bare
metal F26 follows:

[user@localhost poky]$ cd build/tmp/deploy/rpm
[user@localhost rpm]$ ls -al
total 564
drwxr-xr-x. 5 user user   4096 Aug 22 13:33 .
drwxr-xr-x. 5 user user   4096 Aug 22 13:28 ..
drwxr-xr-x. 2 user user 462848 Aug 22 13:32 core2_64
drwxr-xr-x. 2 user user  16384 Aug 22 13:32 noarch
drwxr-xr-x. 2 user user  81920 Aug 22 13:32 qemux86_64
[user@localhost rpm]$ cd noarch
[user@localhost noarch]$ ls -al | wc -l
189
[user@localhost noarch]$ ls -al *.xml
ls: cannot access '*.xml': No such file or directory
[user@localhost noarch]$

As we see here, there are three .rpm repos on the server (let say, I am
starting client qemux86-64). If you do the same, and built it for sato (or
minimal, does not matter), you'll have the same. None of these .rpm repos
have file which MUST be present there: repomd.xml???

Where is this file? How to generate it, for/per each local server repo, one
instance of repomd.xml???

I think, I am actually helping you to understand the issues with Pyro 2.3.1
and DNF. ;-)

Thank you,
Zoran Stojsavljevic

On Wed, Aug 23, 2017 at 9:42 AM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> On 23 August 2017 at 09:56, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Privet Aleks,
>>
>> Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.
>>
>> All Cool. Did not know that this is the policy, to have real names on
>> YOCTO list. I removed nobody from it, and added my real name and real @. I
>> removed user nobody from the YOCTO @ list.
>>
>> The/Your answer is too general. I somehow well know DNF service, but in
>> FEDORA light. For fedora I do know what I need to do, and where/what are
>> the options and which plug-ins to use/add, and ho to remove, upgrade, and
>> configure.
>>
>> I tried all of this in the lieu of the following pointers:
>> https://docs.fedoraproject.org/en-US...ositories.html
>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html>
>> https://docs.fedoraproject.org/en-US...y_Options.html
>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.html>
>>
>> And made on my target (which is connected with my server with simplistic
>> Apache (it is one machine, which carries F26 on bare metal INTEL CORE) on
>> server, client runs as qemux86_64 YOCTO emulator).
>>
>
> The answer is generic because the question is quite generic.
>
> Some things you could mention to make it easier for someone to help you:
> * explain the steps you took to setup (maybe copy-paste your repo file
> from the target), mention what "dnf makecache" says
> * mention whether you've verified that manually downloading a rpm from
> your server works on image
> * most importantly explain what exactly fails and how.
>
>
> Thanks,
>  Jussi
>

--94eb2c0d46d4220f9105576a5553
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello Jussi,<br><br></div>Let me start=
 giving you all the hints. So you can see where I lead. You made few mistak=
es, so DNF won&#39;t work as such/is (by default) in Pyro 2.3.1.<br><br></d=
iv>I investigated a bit (I already wrote that I am quite familiar with DNF =
and its concepts).<br><br></div>For the starters: Your DNF repo on Pyro 2.3=
.1 is in the following directory (I built full SATO image for target qemux8=
6-64), transcript from my bare metal F26 follows:<br><br>[user@localhost po=
ky]$ cd build/tmp/deploy/rpm<br>[user@localhost rpm]$ ls -al<br>total 564<b=
r>drwxr-xr-x. 5 user user=C2=A0=C2=A0 4096 Aug 22 13:33 .<br>drwxr-xr-x. 5 =
user user=C2=A0=C2=A0 4096 Aug 22 13:28 ..<br>drwxr-xr-x. 2 user user 46284=
8 Aug 22 13:32 core2_64<br>drwxr-xr-x. 2 user user=C2=A0 16384 Aug 22 13:32=
 noarch<br>drwxr-xr-x. 2 user user=C2=A0 81920 Aug 22 13:32 qemux86_64<br>[=
user@localhost rpm]$ cd noarch<br>[user@localhost noarch]$ ls -al | wc -l<b=
r>189<br>[user@localhost noarch]$ ls -al *.xml<br>ls: cannot access &#39;*.=
xml&#39;: No such file or directory<br>[user@localhost noarch]$ <br><br></d=
iv><div>As we see here, there are three .rpm repos on the server (let say, =
I am starting client qemux86-64). If you do the same, and built it for sato=
 (or minimal, does not matter), you&#39;ll have the same. None of these .rp=
m repos have file which MUST be present there: repomd.xml???</div><div><br>=
</div><div>Where is this file? How to generate it, for/per each local serve=
r repo, one instance of repomd.xml???</div><div><br></div><div>I think, I a=
m actually helping you to understand the issues with Pyro 2.3.1 and DNF. ;-=
)<br></div><div><br></div><div>Thank you,</div><div>Zoran Stojsavljevic<br>=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On We=
d, Aug 23, 2017 at 9:42 AM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D=
"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D"">On 2=
3 August 2017 at 09:56, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=
=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavlj=
evic@gmail.com</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Privet Aleks,=
<div><br></div><div>Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas =
takaja politika.</div><div><br></div><div>All Cool. Did not know that this =
is the policy, to have real names on YOCTO list. I removed nobody from it, =
and added my real name and real @. I removed user nobody from the YOCTO @ l=
ist.</div><div><br></div><div>The/Your answer is too general. I somehow wel=
l know DNF service, but in FEDORA light. For fedora I do know what I need t=
o do, and where/what are the options and which plug-ins to use/add, and ho =
to remove, upgrade, and configure.</div><div><br></div><div>I tried all of =
this in the lieu of the following pointers:</div><div><a href=3D"https://do=
cs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-C=
onfiguring_DNF_and_DNF_Repositories.html" style=3D"color:rgb(0,0,0);font-fa=
mily:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sans-s=
erif,sans;font-size:11px;background-color:rgb(250,250,250)" target=3D"_blan=
k">https://docs.fedoraproject.org<wbr>/en-US...ositories.html</a></div><a h=
ref=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administr=
ators_Guide/sec-Setting_repository_Options.html" style=3D"color:rgb(0,0,0);=
font-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica=
,sans-serif,sans;font-size:11px;background-color:rgb(250,250,250)" target=
=3D"_blank">https://docs.fedoraproject.org<wbr>/en-US...y_Options.html</a><=
div><br></div><div>And made on my target (which is connected with my server=
 with simplistic Apache (it is one machine, which carries F26 on bare metal=
 INTEL CORE) on server, client runs as qemux86_64 YOCTO emulator).</div></d=
iv></div></div></blockquote><div><br></div></span><div>The answer is generi=
c because the question is quite generic.</div><div><br></div><div>Some thin=
gs you could mention to make it easier for someone to help you:</div><div>*=
 explain the steps you took to setup (maybe copy-paste your repo file from =
the target), mention what &quot;dnf makecache&quot; says</div><div>* mentio=
n whether you&#39;ve verified that manually downloading a rpm from your ser=
ver works on image</div><div>* most importantly explain what exactly fails =
and how.</div><div><br></div><div><br></div><div>Thanks,</div><div>=C2=A0Ju=
ssi</div></div></div></div>
</blockquote></div><br></div>

--94eb2c0d46d4220f9105576a5553--
