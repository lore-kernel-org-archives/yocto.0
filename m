Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF20AE00A39; Thu, 24 Aug 2017 00:33:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.179 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69C65E008D2
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 00:33:09 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id p8so7157157wrf.5
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 00:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VSCghHbguiTUAAVgfEyKRUmwWJk5rPsC28x1fXMCTwg=;
	b=GHOWX9dENt/M2izb1m1hBlKR3PcMpIoyendL8Ji3dzja8Tejolbs8rSIij6RUNlzBe
	J2ssJqdiqIGOkR4EeGOxULDdNE1kb1W8mgjTUlNerhkOVc/96qVtS4WjXaY3XPNmQ0iZ
	OfLzqlaoNq/w0ZiHST+mj+ybbV7s2QuaJTSUSj8JRlfZJuH7/rPcn2UgG4iKUm5wREfW
	XjITodhVH8eJMkOfBb7aR0bKEf5JCtZv7wyXep2nM6P28fKNeCATil+lWer0cTp26VFw
	RyMbfvZPFPhq1OoWtvR8Bu+Rb396m+y/W1eWUZ8d6xOZZBsHdri1QzgOJbT0GcpEFQF8
	YfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VSCghHbguiTUAAVgfEyKRUmwWJk5rPsC28x1fXMCTwg=;
	b=Iua1nB8n6o7SjBGQEczb/atFxuISAo4Yqo9IYFFN0vFc9+QzR7TS4gWjO/71zYCyYV
	86yoaQBGlUZQwknZ4/nPL2Rbxo8MvGFTdcswv5x1/qcIIlUBjWcS7yT7O3M8opz1vGwD
	AUsfErtPuVys16H0G1x37NgC0Id20N+j5at2rs6+TvNVGMLpZjc246pMOGDcJU5kvMZC
	2h8ydDzt7YyDFA1dF6cUax5+KxitiABlsq3ww0ADNGZGsJHSviCEXsuYUmNFSVHHoStl
	NuAPNd37H774gtOmxQNFI1PjxqtUHLGLryPeeRQOmN5q9vJQ0/cUD1k8ALlkYMEu+Et+
	4wWQ==
X-Gm-Message-State: AHYfb5hPdoRFwD5wXcNoezxkL/b61GLWQg3Q3qwrlh8FILGDrKzwLi+h
	1I2rFse/LNT0KnVH+mRgTxIMoqSz8g==
X-Received: by 10.223.166.41 with SMTP id k38mr3138345wrc.284.1503559988169;
	Thu, 24 Aug 2017 00:33:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.138.18 with HTTP; Thu, 24 Aug 2017 00:33:07 -0700 (PDT)
In-Reply-To: <CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
	<CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 24 Aug 2017 09:33:07 +0200
Message-ID: <CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 24 Aug 2017 07:33:10 -0000
Content-Type: multipart/alternative; boundary="f403045cf006fe5a1705577ad64e"

--f403045cf006fe5a1705577ad64e
Content-Type: text/plain; charset="UTF-8"

Hello Jussi,

I would like to thank you very much for the useful reply. It was a bit
different with me, but most boiled down as you said/explained (the
difference are in client/server IP addresses, but everything else is almost
the same - I guess, I do not have complete set of .rpms on my server side).

I issued the following comand on client (qemux86-64): dnf list all | wc -l,
and got the following response:
*Repository 'oe-packages' is missing name in configuration, using id.*
Last metadata expiration check: 0:42:56 ago on Thu Aug 24 06:13:31 2017 UTC
*7909*

Regarding the command's answer, I have two questions to ask: one easy, and
one tough. ;-)

Easy one. What is the reason for this message: *Repository 'oe-packages' is
missing name in configuration, using id*???

Tough one: 7909 packages overall on server. Could you (YOCTO maintainers),
please, keep DNF (for .rpm packages) onwards indefinitely in YOCTO, and
make/create master YOCTO download servers, the same what Fedora distro does
for almost two decades (with YUM, prior DNF)?

The positive answer on the second question will make (for many thousand
people using .rpms in YOCTO) life much easier, won't it?!

Thank you,
Zoran Stojsavljevic

On Wed, Aug 23, 2017 at 2:39 PM, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

>
>
> On 23 August 2017 at 14:51, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Hello Jussi,
>>
>> Let me start giving you all the hints. So you can see where I lead. You
>> made few mistakes, so DNF won't work as such/is (by default) in Pyro 2.3.1.
>>
>> I investigated a bit (I already wrote that I am quite familiar with DNF
>> and its concepts).
>>
>> For the starters: Your DNF repo on Pyro 2.3.1 is in the following
>> directory (I built full SATO image for target qemux86-64), transcript from
>> my bare metal F26 follows:
>>
>> [user@localhost poky]$ cd build/tmp/deploy/rpm
>> [user@localhost rpm]$ ls -al
>> total 564
>> drwxr-xr-x. 5 user user   4096 Aug 22 13:33 .
>> drwxr-xr-x. 5 user user   4096 Aug 22 13:28 ..
>> drwxr-xr-x. 2 user user 462848 Aug 22 13:32 core2_64
>> drwxr-xr-x. 2 user user  16384 Aug 22 13:32 noarch
>> drwxr-xr-x. 2 user user  81920 Aug 22 13:32 qemux86_64
>> [user@localhost rpm]$ cd noarch
>> [user@localhost noarch]$ ls -al | wc -l
>> 189
>> [user@localhost noarch]$ ls -al *.xml
>> ls: cannot access '*.xml': No such file or directory
>> [user@localhost noarch]$
>>
>> As we see here, there are three .rpm repos on the server (let say, I am
>> starting client qemux86-64). If you do the same, and built it for sato (or
>> minimal, does not matter), you'll have the same. None of these .rpm repos
>> have file which MUST be present there: repomd.xml???
>>
>> Where is this file? How to generate it, for/per each local server repo,
>> one instance of repomd.xml???
>>
>
> repomd.xml is created into TMPDIR/deploy/rpm/repodata/ when you run
> "bitbake package-index" as the documentation suggested.
>
> I don't have Pyro but I've just tried this on master and it seems to work
> fine (the docs might need updating on the baseurl format though).
>
> ** On the server:
> ~/src/poky/build/tmp/deploy/rpm$ python -m SimpleHTTPServer
> Serving HTTP on 0.0.0.0 port 8000 ...
>
> ** On target qemu:
> root@qemux86-64:~# cat /etc/yum.repos.d/oe-packages.repo
> [oe-packages]
> baseurl=http://192.168.7.3:8000/
> root@qemux86-64:~# dnf makecache
> Repository 'oe-packages' is missing name in configuration, using id.
> Last metadata expiration check: 0:06:49 ago on Wed Aug 23 12:23:22 2017.
> Metadata cache created.
> root@qemux86-64:~# dnf --nogpgcheck install libinput-bin
> Repository 'oe-packages' is missing name in configuration, using id.
> Last metadata expiration check: 0:10:09 ago on Wed Aug 23 12:23:22 2017.
> Dependencies resolved.
> ============================================================
> ============================================================
> ====================
>  Package                            Arch                           Version
>                          Repository                         Size
> ============================================================
> ============================================================
> ====================
> Installing:
>  libinput-bin                       core2_64
> 1.8.1-r0                         oe-packages                        12 k
>
> Transaction Summary
> ============================================================
> ============================================================
> ====================
> Install  1 Package
>
> Total download size: 12 k
> Installed size: 19 k
> Is this ok [y/N]: y
> Downloading Packages:
> libinput-bin-1.8.1-r0.core2_64.rpm
>                                    323 kB/s |  12 kB     00:00
> ------------------------------------------------------------
> ------------------------------------------------------------
> --------------------
> Total
>                                   134 kB/s |  12 kB     00:00
> Running transaction check
> Transaction check succeeded.
> Running transaction test
> Transaction test succeeded.
> Running transaction
>   Preparing        :
>                                                              1/1
>   Installing       : libinput-bin-1.8.1-r0.core2_64
>                                                               1/1
>   Verifying        : libinput-bin-1.8.1-r0.core2_64
>                                                               1/1
>
> Installed:
>   libinput-bin.core2_64 1.8.1-r0
>
>
> Complete!
> root@qemux86-64:~#
>
>
>
>>
>> I think, I am actually helping you to understand the issues with Pyro
>> 2.3.1 and DNF. ;-)
>>
>> Thank you,
>> Zoran Stojsavljevic
>>
>> On Wed, Aug 23, 2017 at 9:42 AM, Jussi Kukkonen <jussi.kukkonen@intel.com
>> > wrote:
>>
>>> On 23 August 2017 at 09:56, Zoran Stojsavljevic <
>>> zoran.stojsavljevic@gmail.com> wrote:
>>>
>>>> Privet Aleks,
>>>>
>>>> Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.
>>>>
>>>> All Cool. Did not know that this is the policy, to have real names on
>>>> YOCTO list. I removed nobody from it, and added my real name and real @. I
>>>> removed user nobody from the YOCTO @ list.
>>>>
>>>> The/Your answer is too general. I somehow well know DNF service, but in
>>>> FEDORA light. For fedora I do know what I need to do, and where/what are
>>>> the options and which plug-ins to use/add, and ho to remove, upgrade, and
>>>> configure.
>>>>
>>>> I tried all of this in the lieu of the following pointers:
>>>> https://docs.fedoraproject.org/en-US...ositories.html
>>>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html>
>>>> https://docs.fedoraproject.org/en-US...y_Options.html
>>>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.html>
>>>>
>>>> And made on my target (which is connected with my server with
>>>> simplistic Apache (it is one machine, which carries F26 on bare metal INTEL
>>>> CORE) on server, client runs as qemux86_64 YOCTO emulator).
>>>>
>>>
>>> The answer is generic because the question is quite generic.
>>>
>>> Some things you could mention to make it easier for someone to help you:
>>> * explain the steps you took to setup (maybe copy-paste your repo file
>>> from the target), mention what "dnf makecache" says
>>> * mention whether you've verified that manually downloading a rpm from
>>> your server works on image
>>> * most importantly explain what exactly fails and how.
>>>
>>>
>>> Thanks,
>>>  Jussi
>>>
>>
>>
>

--f403045cf006fe5a1705577ad64e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello Jussi,<br><br></div>I would like to thank =
you very much for the useful reply. It was a bit different with me, but mos=
t boiled down as you said/explained (the difference are in client/server IP=
 addresses, but everything else is almost the same - I guess, I do not have=
 complete set of .rpms on my server side).<br><br></div>I issued the follow=
ing comand on client (qemux86-64): dnf list all | wc -l, and got the follow=
ing response:<br><div><u><i><b>Repository &#39;oe-packages&#39; is missing =
name in configuration, using id.</b></i></u></div><div>Last metadata expira=
tion check: <span class=3D"gmail-aBn" tabindex=3D"0"><span class=3D"gmail-a=
QJ">0:42:56</span></span> ago on Thu Aug 24 06:13:31 2017 UTC</div><div><sp=
an style=3D"color:rgb(255,0,0)"><u><i><b>7909</b></i></u></span></div><div>=
<span style=3D"color:rgb(255,0,0)"><u><i><b><br></b></i></u></span></div><d=
iv><span style=3D"color:rgb(0,0,0)">Regarding the command&#39;s answer, I h=
ave two questions to ask: one easy, and one tough. ;-)</span></div><div><sp=
an style=3D"color:rgb(0,0,0)"><br></span></div><div><span style=3D"color:rg=
b(0,0,0)">Easy one. What is the reason for this message: </span><u><i>Repos=
itory &#39;oe-packages&#39; is missing name in configuration, using id</i><=
/u>???</div><div><br></div><div>Tough one: 7909 packages overall on server.=
 Could you (YOCTO maintainers), please, keep DNF (for .rpm packages) onward=
s indefinitely in YOCTO, and make/create master YOCTO download servers, the=
 same what Fedora distro does for almost two decades (with YUM, prior DNF)?=
<br></div><div><div><br><span class=3D"gmail-aBn" tabindex=3D"0"><span clas=
s=3D"gmail-aQJ"></span></span></div><div>The positive answer on the second =
question will make (for many thousand people using .rpms in YOCTO) life muc=
h easier, won&#39;t it?!<br></div><div><br></div><div>Thank you,</div><div>=
Zoran Stojsavljevic<br></div></div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Wed, Aug 23, 2017 at 2:39 PM, Jussi Kukkonen <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@intel.com" target=3D"_b=
lank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote"><span class=3D"">On 23 August 2017 at 14:51, Zoran Stojsa=
vljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.c=
om" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div><div><div><div>Hello Jussi,<br><br></div>Let me start giving you all th=
e hints. So you can see where I lead. You made few mistakes, so DNF won&#39=
;t work as such/is (by default) in Pyro 2.3.1.<br><br></div>I investigated =
a bit (I already wrote that I am quite familiar with DNF and its concepts).=
<br><br></div>For the starters: Your DNF repo on Pyro 2.3.1 is in the follo=
wing directory (I built full SATO image for target qemux86-64), transcript =
from my bare metal F26 follows:<br><br>[user@localhost poky]$ cd build/tmp/=
deploy/rpm<span class=3D"m_3849679220206678367gmail-"><br>[user@localhost r=
pm]$ ls -al<br></span>total 564<br>drwxr-xr-x. 5 user user=C2=A0=C2=A0 4096=
 Aug 22 13:33 .<br>drwxr-xr-x. 5 user user=C2=A0=C2=A0 4096 Aug 22 13:28 ..=
<br>drwxr-xr-x. 2 user user 462848 Aug 22 13:32 core2_64<br>drwxr-xr-x. 2 u=
ser user=C2=A0 16384 Aug 22 13:32 noarch<br>drwxr-xr-x. 2 user user=C2=A0 8=
1920 Aug 22 13:32 qemux86_64<br>[user@localhost rpm]$ cd noarch<br>[user@lo=
calhost noarch]$ ls -al | wc -l<br>189<br>[user@localhost noarch]$ ls -al *=
.xml<br>ls: cannot access &#39;*.xml&#39;: No such file or directory<br>[us=
er@localhost noarch]$ <br><br></div><div>As we see here, there are three .r=
pm repos on the server (let say, I am starting client qemux86-64). If you d=
o the same, and built it for sato (or minimal, does not matter), you&#39;ll=
 have the same. None of these .rpm repos have file which MUST be present th=
ere: repomd.xml???</div><div><br></div><div>Where is this file? How to gene=
rate it, for/per each local server repo, one instance of repomd.xml???</div=
></div></blockquote><div><br></div></span><div>repomd.xml is created into T=
MPDIR/deploy/rpm/repodata/ when you run &quot;bitbake package-index&quot; a=
s the documentation suggested.<br></div><div><br></div><div>I don&#39;t hav=
e Pyro but I&#39;ve just tried this on master and it seems to work fine (th=
e docs might need updating on the baseurl format though).=C2=A0</div><div><=
br></div><div>** On the server:</div><div><div>~/src/poky/build/tmp/deploy/=
<wbr>rpm$ python -m SimpleHTTPServer</div><div>Serving HTTP on 0.0.0.0 port=
 8000 ...</div></div><div><br></div><div>** On target qemu:</div><div><div>=
root@qemux86-64:~# cat /etc/yum.repos.d/oe-packages.<wbr>repo=C2=A0</div><d=
iv>[oe-packages]</div><div>baseurl=3D<a href=3D"http://192.168.7.3:8000/" t=
arget=3D"_blank">http://192.168.7.3:<wbr>8000/</a></div><div>root@qemux86-6=
4:~# dnf makecache<br></div><div>Repository &#39;oe-packages&#39; is missin=
g name in configuration, using id.</div><div>Last metadata expiration check=
: 0:06:49 ago on Wed Aug 23 12:23:22 2017.</div><div>Metadata cache created=
.</div><div>root@qemux86-64:~# dnf --nogpgcheck install libinput-bin<br></d=
iv></div><div><div>Repository &#39;oe-packages&#39; is missing name in conf=
iguration, using id.</div><div>Last metadata expiration check: 0:10:09 ago =
on Wed Aug 23 12:23:22 2017.</div><div>Dependencies resolved.</div><div>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div=
>=C2=A0Package =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Arch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Version =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Repository =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Installing:</div><div>=
=C2=A0libinput-bin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 core2_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.8.1-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-packages =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A012 k<=
/div><div><br></div><div>Transaction Summary</div><div>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wb=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Install =C2=
=A01 Package</div><div><br></div><div>Total download size: 12 k</div><div>I=
nstalled size: 19 k</div><div>Is this ok [y/N]: y</div><div>Downloading Pac=
kages:</div><div>libinput-bin-1.8.1-r0.core2_<wbr>64.rpm =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0323 kB/s | =C2=A012 kB =C2=A0 =C2=A0 00:00 =C2=A0 =C2=
=A0</div><div>------------------------------<wbr>--------------------------=
----<wbr>------------------------------<wbr>------------------------------<=
wbr>--------------------</div><div>Total =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 134 kB/s | =C2=A012 kB =C2=A0 =C2=A0 00:00 =C2=
=A0 =C2=A0=C2=A0</div><div>Running transaction check</div><div>Transaction =
check succeeded.</div><div>Running transaction test</div><div>Transaction t=
est succeeded.</div><div>Running transaction</div><div>=C2=A0 Preparing =C2=
=A0 =C2=A0 =C2=A0 =C2=A0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01/1=C2=A0</di=
v><div>=C2=A0 Installing =C2=A0 =C2=A0 =C2=A0 : libinput-bin-1.8.1-r0.core2=
_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 1/1=C2=A0</div><div>=C2=A0 Verifying =C2=A0 =C2=A0 =C2=A0 =C2=A0: libin=
put-bin-1.8.1-r0.core2_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 1/1=C2=A0</div><div><br></div><div>Installed:</div=
><div>=C2=A0 libinput-bin.core2_64 1.8.1-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div><br></div><d=
iv>Complete!</div><div>root@qemux86-64:~#=C2=A0</div></div><span class=3D""=
><div><br></div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><br></div><div>I think, I am actually hel=
ping you to understand the issues with Pyro 2.3.1 and DNF. ;-)<br></div><di=
v><br></div><div>Thank you,</div><div>Zoran Stojsavljevic<br></div></div><d=
iv class=3D"m_3849679220206678367gmail-HOEnZb"><div class=3D"m_384967922020=
6678367gmail-h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 23, 2017 at 9:42 AM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@int=
el.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quot=
e"><span>On 23 August 2017 at 09:56, Zoran Stojsavljevic <span dir=3D"ltr">=
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zora=
n.stojsavljevic@gmail.com</a><wbr>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr">Privet Aleks,<div><br></div><div>Nezacem zlitsja/serdits=
ja. Ja prosto ne znal cto u vas takaja politika.</div><div><br></div><div>A=
ll Cool. Did not know that this is the policy, to have real names on YOCTO =
list. I removed nobody from it, and added my real name and real @. I remove=
d user nobody from the YOCTO @ list.</div><div><br></div><div>The/Your answ=
er is too general. I somehow well know DNF service, but in FEDORA light. Fo=
r fedora I do know what I need to do, and where/what are the options and wh=
ich plug-ins to use/add, and ho to remove, upgrade, and configure.</div><di=
v><br></div><div>I tried all of this in the lieu of the following pointers:=
</div><div><a href=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/S=
ystem_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html" s=
tyle=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida,&quot;lucida gra=
nde&quot;,arial,helvetica,sans-serif,sans;font-size:11px;background-color:r=
gb(250,250,250)" target=3D"_blank">https://docs.fedoraproject.org<wbr>/en-U=
S...ositories.html</a></div><a href=3D"https://docs.fedoraproject.org/en-US=
/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.=
html" style=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida,&quot;luc=
ida grande&quot;,arial,helvetica,sans-serif,sans;font-size:11px;background-=
color:rgb(250,250,250)" target=3D"_blank">https://docs.fedoraproject.org<wb=
r>/en-US...y_Options.html</a><div><br></div><div>And made on my target (whi=
ch is connected with my server with simplistic Apache (it is one machine, w=
hich carries F26 on bare metal INTEL CORE) on server, client runs as qemux8=
6_64 YOCTO emulator).</div></div></div></div></blockquote><div><br></div></=
span><div>The answer is generic because the question is quite generic.</div=
><div><br></div><div>Some things you could mention to make it easier for so=
meone to help you:</div><div>* explain the steps you took to setup (maybe c=
opy-paste your repo file from the target), mention what &quot;dnf makecache=
&quot; says</div><div>* mention whether you&#39;ve verified that manually d=
ownloading a rpm from your server works on image</div><div>* most important=
ly explain what exactly fails and how.</div><div><br></div><div><br></div><=
div>Thanks,</div><div>=C2=A0Jussi</div></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></span></div><br></div></div>
</blockquote></div><br></div>

--f403045cf006fe5a1705577ad64e--
