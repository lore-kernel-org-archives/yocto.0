Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3169E00C8F; Wed, 23 Aug 2017 05:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E44E00C2B
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 05:40:26 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id n5so18659itb.0
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 05:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FIdmOJv3OZD4o6hSc4VdcmN4d77bnjeecsrxdK4PLG8=;
	b=0JbVPhDzDfFWjaM1zU7cfj5fWP79sbI0aR1+de1CX+UYi/L6RvBPDCIfaozNSqLzRi
	Ad1BOd2WVUQRhX06higcDEuiwOlySBywMfmOCa+LAmIpS/IBeN0LkAD7pLOsxv0TRZDp
	5NY8JmLbYNv1z/wAF58wKBMZopsTfmdTWi9yLP9ddE6ySC1j9mq8SZwYYbynuVeefgPZ
	c6ciJQoEqRxgpfhQj3lGSfz/HJOX46AjT+4S3gvUO9X3JEGRZhlt7DS6jFOQ1m58DrcP
	4wzk1ZeC9TqqjaRCkJ8Qktmpa6qp2ZigQ039k+kbB0+mb75WpaopQDDFoTHTYBcVIWGF
	mPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FIdmOJv3OZD4o6hSc4VdcmN4d77bnjeecsrxdK4PLG8=;
	b=fg4CkEZhPpwGfE7tu5c2jV6fGoz1bM1Kzc/FNZoAmdP15PjkIwqXPWwoUQyRs/Y3Bl
	hVjANJM4V8tUEQRJ/1zPxJRfIfEfPVTsGJgv64EDhFjmdrACHQNuynHDvymRoF8qX903
	GKKHcUPywJFYis2Fu99jr8uIxHsiuH4jsNEk5no/NIeG4PrM5JXgP1FnoyB4GIGl2uRQ
	3i4x3gWUD+Rd3qqw3C/IPtZSWWyko+dVpUWdFdG1oqzJrtbV4QJPkiP33lUDxup1qKgt
	G5GUQLuLGz6eMtxb0ROj+sWRmIVeBdpYCbxIEv9Tg6imUpxOzrGpN8Qen/MeX80+m/Yc
	y5HA==
X-Gm-Message-State: AHYfb5gj4+1JKXCxL82odNN9NPgkOMH1GnJT9cdKx/vR0Xf7tt2j7XCm
	ApXbOE9zNioZ6/ipxDF5E/PrD0IuO//W
X-Received: by 10.36.94.196 with SMTP id h187mr2848674itb.71.1503492025788;
	Wed, 23 Aug 2017 05:40:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Wed, 23 Aug 2017 05:39:55 -0700 (PDT)
In-Reply-To: <CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 23 Aug 2017 15:39:55 +0300
Message-ID: <CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
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
X-List-Received-Date: Wed, 23 Aug 2017 12:40:28 -0000
Content-Type: multipart/alternative; boundary="001a11437ae81ecf9e05576b04f5"

--001a11437ae81ecf9e05576b04f5
Content-Type: text/plain; charset="UTF-8"

On 23 August 2017 at 14:51, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Jussi,
>
> Let me start giving you all the hints. So you can see where I lead. You
> made few mistakes, so DNF won't work as such/is (by default) in Pyro 2.3.1.
>
> I investigated a bit (I already wrote that I am quite familiar with DNF
> and its concepts).
>
> For the starters: Your DNF repo on Pyro 2.3.1 is in the following
> directory (I built full SATO image for target qemux86-64), transcript from
> my bare metal F26 follows:
>
> [user@localhost poky]$ cd build/tmp/deploy/rpm
> [user@localhost rpm]$ ls -al
> total 564
> drwxr-xr-x. 5 user user   4096 Aug 22 13:33 .
> drwxr-xr-x. 5 user user   4096 Aug 22 13:28 ..
> drwxr-xr-x. 2 user user 462848 Aug 22 13:32 core2_64
> drwxr-xr-x. 2 user user  16384 Aug 22 13:32 noarch
> drwxr-xr-x. 2 user user  81920 Aug 22 13:32 qemux86_64
> [user@localhost rpm]$ cd noarch
> [user@localhost noarch]$ ls -al | wc -l
> 189
> [user@localhost noarch]$ ls -al *.xml
> ls: cannot access '*.xml': No such file or directory
> [user@localhost noarch]$
>
> As we see here, there are three .rpm repos on the server (let say, I am
> starting client qemux86-64). If you do the same, and built it for sato (or
> minimal, does not matter), you'll have the same. None of these .rpm repos
> have file which MUST be present there: repomd.xml???
>
> Where is this file? How to generate it, for/per each local server repo,
> one instance of repomd.xml???
>

repomd.xml is created into TMPDIR/deploy/rpm/repodata/ when you run
"bitbake package-index" as the documentation suggested.

I don't have Pyro but I've just tried this on master and it seems to work
fine (the docs might need updating on the baseurl format though).

** On the server:
~/src/poky/build/tmp/deploy/rpm$ python -m SimpleHTTPServer
Serving HTTP on 0.0.0.0 port 8000 ...

** On target qemu:
root@qemux86-64:~# cat /etc/yum.repos.d/oe-packages.repo
[oe-packages]
baseurl=http://192.168.7.3:8000/
root@qemux86-64:~# dnf makecache
Repository 'oe-packages' is missing name in configuration, using id.
Last metadata expiration check: 0:06:49 ago on Wed Aug 23 12:23:22 2017.
Metadata cache created.
root@qemux86-64:~# dnf --nogpgcheck install libinput-bin
Repository 'oe-packages' is missing name in configuration, using id.
Last metadata expiration check: 0:10:09 ago on Wed Aug 23 12:23:22 2017.
Dependencies resolved.
============================================================================================================================================
 Package                            Arch                           Version
                         Repository                         Size
============================================================================================================================================
Installing:
 libinput-bin                       core2_64                       1.8.1-r0
                        oe-packages                        12 k

Transaction Summary
============================================================================================================================================
Install  1 Package

Total download size: 12 k
Installed size: 19 k
Is this ok [y/N]: y
Downloading Packages:
libinput-bin-1.8.1-r0.core2_64.rpm
                                 323 kB/s |  12 kB     00:00
--------------------------------------------------------------------------------------------------------------------------------------------
Total
                                134 kB/s |  12 kB     00:00
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :
                                                             1/1
  Installing       : libinput-bin-1.8.1-r0.core2_64
                                                            1/1
  Verifying        : libinput-bin-1.8.1-r0.core2_64
                                                            1/1

Installed:
  libinput-bin.core2_64 1.8.1-r0


Complete!
root@qemux86-64:~#



>
> I think, I am actually helping you to understand the issues with Pyro
> 2.3.1 and DNF. ;-)
>
> Thank you,
> Zoran Stojsavljevic
>
> On Wed, Aug 23, 2017 at 9:42 AM, Jussi Kukkonen <jussi.kukkonen@intel.com>
> wrote:
>
>> On 23 August 2017 at 09:56, Zoran Stojsavljevic <
>> zoran.stojsavljevic@gmail.com> wrote:
>>
>>> Privet Aleks,
>>>
>>> Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.
>>>
>>> All Cool. Did not know that this is the policy, to have real names on
>>> YOCTO list. I removed nobody from it, and added my real name and real @. I
>>> removed user nobody from the YOCTO @ list.
>>>
>>> The/Your answer is too general. I somehow well know DNF service, but in
>>> FEDORA light. For fedora I do know what I need to do, and where/what are
>>> the options and which plug-ins to use/add, and ho to remove, upgrade, and
>>> configure.
>>>
>>> I tried all of this in the lieu of the following pointers:
>>> https://docs.fedoraproject.org/en-US...ositories.html
>>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html>
>>> https://docs.fedoraproject.org/en-US...y_Options.html
>>> <https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.html>
>>>
>>> And made on my target (which is connected with my server with simplistic
>>> Apache (it is one machine, which carries F26 on bare metal INTEL CORE) on
>>> server, client runs as qemux86_64 YOCTO emulator).
>>>
>>
>> The answer is generic because the question is quite generic.
>>
>> Some things you could mention to make it easier for someone to help you:
>> * explain the steps you took to setup (maybe copy-paste your repo file
>> from the target), mention what "dnf makecache" says
>> * mention whether you've verified that manually downloading a rpm from
>> your server works on image
>> * most importantly explain what exactly fails and how.
>>
>>
>> Thanks,
>>  Jussi
>>
>
>

--001a11437ae81ecf9e05576b04f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 23 August 2017 at 14:51, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<=
a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.sto=
jsavljevic@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div><div><div><div>Hello Jussi,<br><=
br></div>Let me start giving you all the hints. So you can see where I lead=
. You made few mistakes, so DNF won&#39;t work as such/is (by default) in P=
yro 2.3.1.<br><br></div>I investigated a bit (I already wrote that I am qui=
te familiar with DNF and its concepts).<br><br></div>For the starters: Your=
 DNF repo on Pyro 2.3.1 is in the following directory (I built full SATO im=
age for target qemux86-64), transcript from my bare metal F26 follows:<br><=
br>[user@localhost poky]$ cd build/tmp/deploy/rpm<span class=3D"gmail-"><br=
>[user@localhost rpm]$ ls -al<br></span>total 564<br>drwxr-xr-x. 5 user use=
r=C2=A0=C2=A0 4096 Aug 22 13:33 .<br>drwxr-xr-x. 5 user user=C2=A0=C2=A0 40=
96 Aug 22 13:28 ..<br>drwxr-xr-x. 2 user user 462848 Aug 22 13:32 core2_64<=
br>drwxr-xr-x. 2 user user=C2=A0 16384 Aug 22 13:32 noarch<br>drwxr-xr-x. 2=
 user user=C2=A0 81920 Aug 22 13:32 qemux86_64<br>[user@localhost rpm]$ cd =
noarch<br>[user@localhost noarch]$ ls -al | wc -l<br>189<br>[user@localhost=
 noarch]$ ls -al *.xml<br>ls: cannot access &#39;*.xml&#39;: No such file o=
r directory<br>[user@localhost noarch]$ <br><br></div><div>As we see here, =
there are three .rpm repos on the server (let say, I am starting client qem=
ux86-64). If you do the same, and built it for sato (or minimal, does not m=
atter), you&#39;ll have the same. None of these .rpm repos have file which =
MUST be present there: repomd.xml???</div><div><br></div><div>Where is this=
 file? How to generate it, for/per each local server repo, one instance of =
repomd.xml???</div></div></blockquote><div><br></div><div>repomd.xml is cre=
ated into TMPDIR/deploy/rpm/repodata/ when you run &quot;bitbake package-in=
dex&quot; as the documentation suggested.<br></div><div><br></div><div>I do=
n&#39;t have Pyro but I&#39;ve just tried this on master and it seems to wo=
rk fine (the docs might need updating on the baseurl format though).=C2=A0<=
/div><div><br></div><div>** On the server:</div><div><div>~/src/poky/build/=
tmp/deploy/rpm$ python -m SimpleHTTPServer</div><div>Serving HTTP on 0.0.0.=
0 port 8000 ...</div></div><div><br></div><div>** On target qemu:</div><div=
><div>root@qemux86-64:~# cat /etc/yum.repos.d/oe-packages.repo=C2=A0</div><=
div>[oe-packages]</div><div>baseurl=3D<a href=3D"http://192.168.7.3:8000/">=
http://192.168.7.3:8000/</a></div><div>root@qemux86-64:~# dnf makecache<br>=
</div><div>Repository &#39;oe-packages&#39; is missing name in configuratio=
n, using id.</div><div>Last metadata expiration check: 0:06:49 ago on Wed A=
ug 23 12:23:22 2017.</div><div>Metadata cache created.</div><div>root@qemux=
86-64:~# dnf --nogpgcheck install libinput-bin<br></div></div><div><div>Rep=
ository &#39;oe-packages&#39; is missing name in configuration, using id.</=
div><div>Last metadata expiration check: 0:10:09 ago on Wed Aug 23 12:23:22=
 2017.</div><div>Dependencies resolved.</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</div><div>=C2=A0Package =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Arch =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Version =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Repository =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size</div><d=
iv>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Installing:</div=
><div>=C2=A0libinput-bin =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 core2_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.8.1-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-packages =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A012 k</div><div><br></div><div>Transaction Summary</div><div>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Install =C2=A01 Package</div><d=
iv><br></div><div>Total download size: 12 k</div><div>Installed size: 19 k<=
/div><div>Is this ok [y/N]: y</div><div>Downloading Packages:</div><div>lib=
input-bin-1.8.1-r0.core2_64.rpm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0323 kB=
/s | =C2=A012 kB =C2=A0 =C2=A0 00:00 =C2=A0 =C2=A0</div><div>--------------=
---------------------------------------------------------------------------=
---------------------------------------------------</div><div>Total =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 134 kB/s | =C2=A012=
 kB =C2=A0 =C2=A0 00:00 =C2=A0 =C2=A0=C2=A0</div><div>Running transaction c=
heck</div><div>Transaction check succeeded.</div><div>Running transaction t=
est</div><div>Transaction test succeeded.</div><div>Running transaction</di=
v><div>=C2=A0 Preparing =C2=A0 =C2=A0 =C2=A0 =C2=A0: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A01/1=C2=A0</div><div>=C2=A0 Installing =C2=A0 =C2=A0 =C2=A0=
 : libinput-bin-1.8.1-r0.core2_64 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1/1=C2=A0</div><div>=C2=A0 Verifying =C2=A0=
 =C2=A0 =C2=A0 =C2=A0: libinput-bin-1.8.1-r0.core2_64 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1/1=C2=A0</div><div><b=
r></div><div>Installed:</div><div>=C2=A0 libinput-bin.core2_64 1.8.1-r0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</div><div><br></div><div>Complete!</div><div>root@qemux86-64:~#=C2=
=A0</div></div><div><br></div><div>=C2=A0<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>I think, I a=
m actually helping you to understand the issues with Pyro 2.3.1 and DNF. ;-=
)<br></div><div><br></div><div>Thank you,</div><div>Zoran Stojsavljevic<br>=
</div></div><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Aug 23, 2017 at 9:4=
2 AM, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen=
@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On 23 August 2017 =
at 09:56, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran=
.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</=
a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Privet Ale=
ks,<div><br></div><div>Nezacem zlitsja/serditsja. Ja prosto ne znal cto u v=
as takaja politika.</div><div><br></div><div>All Cool. Did not know that th=
is is the policy, to have real names on YOCTO list. I removed nobody from i=
t, and added my real name and real @. I removed user nobody from the YOCTO =
@ list.</div><div><br></div><div>The/Your answer is too general. I somehow =
well know DNF service, but in FEDORA light. For fedora I do know what I nee=
d to do, and where/what are the options and which plug-ins to use/add, and =
ho to remove, upgrade, and configure.</div><div><br></div><div>I tried all =
of this in the lieu of the following pointers:</div><div><a href=3D"https:/=
/docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/se=
c-Configuring_DNF_and_DNF_Repositories.html" style=3D"color:rgb(0,0,0);font=
-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,san=
s-serif,sans;font-size:11px;background-color:rgb(250,250,250)" target=3D"_b=
lank">https://docs.fedoraproject.org<wbr>/en-US...ositories.html</a></div><=
a href=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Admini=
strators_Guide/sec-Setting_repository_Options.html" style=3D"color:rgb(0,0,=
0);font-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvet=
ica,sans-serif,sans;font-size:11px;background-color:rgb(250,250,250)" targe=
t=3D"_blank">https://docs.fedoraproject.org<wbr>/en-US...y_Options.html</a>=
<div><br></div><div>And made on my target (which is connected with my serve=
r with simplistic Apache (it is one machine, which carries F26 on bare meta=
l INTEL CORE) on server, client runs as qemux86_64 YOCTO emulator).</div></=
div></div></div></blockquote><div><br></div></span><div>The answer is gener=
ic because the question is quite generic.</div><div><br></div><div>Some thi=
ngs you could mention to make it easier for someone to help you:</div><div>=
* explain the steps you took to setup (maybe copy-paste your repo file from=
 the target), mention what &quot;dnf makecache&quot; says</div><div>* menti=
on whether you&#39;ve verified that manually downloading a rpm from your se=
rver works on image</div><div>* most importantly explain what exactly fails=
 and how.</div><div><br></div><div><br></div><div>Thanks,</div><div>=C2=A0J=
ussi</div></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div></div>

--001a11437ae81ecf9e05576b04f5--
