Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.1067.1615995683506312120
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Mar 2021 08:41:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=NRHD4fVH;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 5F3ADBD238;
	Wed, 17 Mar 2021 15:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 5F3ADBD238
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615995681;
	bh=tdvMgfP6CcN3TIhzWE2siJDrUWVgTNZ4+U1KS/ZWz1Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=NRHD4fVHWVWQq37Xg4EGp8t4zcs4GSvJY00pp8SYX5z+TMINmixrPXh/IlMWKhkX/
	 2DhemOkxdtqSFViF9ZDq66/lG03HNdyAXUpbPZTLMp1lhdNY9BtJfPLu/2W7y/Jo/m
	 Zl4exUtzVnqKm+Tp9RzHCdhTeDkD1iV7MOiyte8KQ2cwogBJ0DnzWoiMgYJ08vQEU3
	 ihIHtuP6i/xgBWa5YConHvQKM5/s37al7b8m9Fa5n4O2xzDIz6XdtGBFdo0pVjoDQp
	 9pL6sJomBeUNMMvcLUe+YgkeoYm5S0/ohg/n0luauMzjhd2LOZG4MaaiggaeEIovE6
	 PcgSQVXVxz1gQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kkizV8IRVdoY; Wed, 17 Mar 2021 15:41:17 +0000 (UTC)
Date: Wed, 17 Mar 2021 11:41:16 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 31F86BD053
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615995677;
	bh=tdvMgfP6CcN3TIhzWE2siJDrUWVgTNZ4+U1KS/ZWz1Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Fj2Qj7uwLYPMvdOpKSraHkpdpGJF9JABo+PgoAHpoDu11zWVbEb8/nmLiqGmJRxb4
	 JNyhvaUhpQD/Orj/4VNVP23wpPtR81xOag+Q1I38ENxSHu1WK5tZ09sVjZrrE8bboj
	 sC49HgjQzXxA8jCaQ3hbdKiWP6iyDyTY54OvgsLFqeQm5zMjvHKZupg1hABoDn0dt1
	 LnghDAINO5RTmF6QLnUk6KRqUfv6ar6/M0snhO88i1DstMJGClMpj0p6bdddznYmzt
	 g9ZVcHrnjPSJfZdZE4wjLiww6VB1y5eb5cMPBvOJBcTtYiPdgyimYHmq6YAn2Q7QKo
	 mQlC0lfqz/lmA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Josef Holzmayr <jester@theyoctojester.info>, Nicolas Dechesne
 <nicolas.dechesne@linaro.org>, akuster <akuster808@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>, "jchludzinski via lists.yoctoproject.org"
 <jchludzinski=vivaldi.net@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <902ab76c-de1-3e5b-2bef-3b5ed093b093@crashcourse.ca>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
 <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net>
 <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
 <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
 <166CDA589776C94C.8652@lists.yoctoproject.org>
 <166CDD724205027D.27789@lists.yoctoproject.org>
 <baac6e467b320e2678f9ee7f668b287b@vivaldi.net>
 <902ab76c-de1-3e5b-2bef-3b5ed093b093@crashcourse.ca>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <01a990c31a6a8eb9e60e3fad88f0eb67@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_4f175e8f4dd32710c457079be9daa61a"

--=_4f175e8f4dd32710c457079be9daa61a
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

There are 2 git repos: _openembedded-core_ and _meta-openembedded._

_openembedded-core_ has _oe-init-build-env_ to create the build
environment.
_meta-openembedded_ has the recipe for _spidev-test_

If I use _oe-init-build-env_ from _openembedded-core_ to create the env
vars then try: 

   $ bitbake -b spidev-test.bb 

I get into those licencing issues.  

How do I extricate myself from this conundrum?  

---John 

On 2021-03-16 14:43, Robert P. J. Day wrote: 

> On Tue, 16 Mar 2021, jchludzinski via lists.yoctoproject.org wrote:
> 
>> I tried to build spidev-test using the bitbake recipe: 
>> 
>> spidev-test.bb
>> 
>> I set:
>> ARCH=arm
>> BBPATH
>> CROSS_COMPILER=arm-linux-gnueabihf-
>> PATH
>> 
>> ... and then tried to build spidev-test:
>> 
>> $ bitbake -b spidev-test.bb
>> WARNING: Buildfile specified, dependencies will not be handled. If this is not what you want, do not use -b / --buildfile.
>> Loading cache: 100% |################################################################| Time: 0:00:00
>> Loaded 1433 entries from dependency cache.
>> 
>> Build Configuration:
>> BB_VERSION           = "1.49.2"
>> BUILD_SYS            = "x86_64-linux"
>> NATIVELSBSTRING      = "fedora-33"
>> TARGET_SYS           = "x86_64-oe-linux"
>> MACHINE              = "qemux86-64"
>> DISTRO               = "nodistro"
>> DISTRO_VERSION       = "nodistro.0"
>> TUNE_FEATURES        = "m64 core2"
>> TARGET_FPU           = ""
>> meta                 = "master:fa1e1fbc082e82e41ccfeae58af97fe048c9aac7"
>> 
>> Initialising tasks: 100% |###########################################################| Time: 0:00:00
>> Sstate summary: Wanted 6 Local 0 Network 0 Missed 6 Current 0 (0% match, 0% complete)
>> NOTE: Executing Tasks
>> WARNING: spidev-test-1.0-r0 do_populate_lic: Could not copy license file /home/fedora/openembedded-core/meta/files/common-lic
>> enses/GPL-2.0 to /home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1.0-r0/license-destdir/s
>> pidev-test/GPL-2.0: [Errno 2] No such file or directory: '/home/fedora/openembedded-core/meta/files/common-licenses/GPL-2.0'
>> ERROR: spidev-test-1.0-r0 do_populate_lic: QA Issue: spidev-test: LIC_FILES_CHKSUM points to an invalid file: /home/fedora/op
>> enembedded-core/meta/files/common-licenses/GPL-2.0 [license-checksum]
>> ERROR: spidev-test-1.0-r0 do_populate_lic: Fatal QA errors found, failing task.
>> ERROR: Logfile of failure stored in: /home/fedora/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1.0-
>> r0/temp/log.do_populate_lic.281153
>> ERROR: Task (/home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do_populate_lic) failed wi
>> th exit code '1'
>> NOTE: Tasks Summary: Attempted 3 tasks of which 0 didn't need to be rerun and 1 failed.
>> 
>> Summary: 1 task failed:
>> /home/fedora/junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do_populate_lic
>> Summary: There were 2 WARNING messages shown.
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>> What's this about licences?
> 
> in current OE, there is no "GPL-2.0" license file, there is
> "GPL-2.0-only" and "GPL-2.0-or-later" and a bunch of others, so i
> think you need to pick one of those.
> 
> rday
> 
> 

--=_4f175e8f4dd32710c457079be9daa61a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Ge=
neva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">There are 2 git repos: <span style=3D"tex=
t-decoration: underline;"><em><strong>openembedded-core</strong></em></span=
> and <span style=3D"text-decoration: underline;"><em><strong>meta-openembe=
dded.</strong></em></span></span><br /><br /><span style=3D"font-size: 12pt=
;"><span style=3D"text-decoration: underline;"><em><strong>openembedded-cor=
e</strong></em></span> has <span style=3D"text-decoration: underline;"><em>=
<strong>oe-init-build-env</strong></em></span> to create the build environm=
ent.</span><br /><span style=3D"font-size: 12pt;"><span style=3D"text-decor=
ation: underline;"><em><strong>meta-openembedded</strong></em></span> has t=
he recipe for <span style=3D"text-decoration: underline;"><em><strong>spide=
v-test</strong></em></span></span><br /><br /><span style=3D"font-size: 12p=
t;">If I use <span style=3D"text-decoration: underline;"><em><strong>oe-ini=
t-build-env</strong></em></span> from <span style=3D"text-decoration: under=
line;"><em><strong>openembedded-core</strong></em></span> to create the env=
 vars then try:</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /><span style=3D"font-size: 12pt;"><strong>&nbsp; &nbsp;<span style=3D=
"font-family: 'courier new', courier, monospace;">$ bitbake -b spidev-test.=
bb</span></strong></span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /><span style=3D"font-size: 12pt;">I get into those licencing issues.&=
nbsp;</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">How do I extricate myself from this conun=
drum?&nbsp;</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><span style=3D"font-size: 12pt;">---John</span></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /><br />On 2021-03-16 14:43, Robert P. J. Day wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">On Tue, 16 Mar 2021, jchludzinski via lists.yoctoproj=
ect.org wrote:<br /><br />
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">I tried to build spidev-test using the bitbake recipe=
:&nbsp;<br /><br />spidev-test.bb<br />&nbsp;<br />I set:<br />ARCH=3Darm<b=
r />BBPATH<br />CROSS_COMPILER=3Darm-linux-gnueabihf-<br />PATH<br /><br />=
... and then tried to build spidev-test:<br /><br />$ bitbake -b spidev-tes=
t.bb<br />WARNING: Buildfile specified, dependencies will not be handled. I=
f this is not what you want, do not use -b / --buildfile.<br />Loading cach=
e: 100% |################################################################| =
Time: 0:00:00<br />Loaded 1433 entries from dependency cache.<br /><br />Bu=
ild Configuration:<br />BB_VERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;=3D "1.49.2"<br />BUILD_SYS &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x86_64-linux"<br />NATIVELSBSTR=
ING &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "fedora-33"<br />TARGET_SYS &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "x86_64-oe-linux"<br=
 />MACHINE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;=3D "qemux86-64"<br />DISTRO &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "nodistro"<br />DIS=
TRO_VERSION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "nodistro.0"<br />TUNE_=
FEATURES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "m64 core2"<br />TAR=
GET_FPU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D ""<=
br />meta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D "master:fa1e1fbc082e82e41ccfeae58af97fe0=
48c9aac7"<br /><br />Initialising tasks: 100% |############################=
###############################| Time: 0:00:00<br />Sstate summary: Wanted =
6 Local 0 Network 0 Missed 6 Current 0 (0% match, 0% complete)<br />NOTE: E=
xecuting Tasks<br />WARNING: spidev-test-1.0-r0 do_populate_lic: Could not =
copy license file /home/fedora/openembedded-core/meta/files/common-lic<br /=
>enses/GPL-2.0 to /home/fedora/openembedded-core/build/tmp-glibc/work/qemux=
86_64-oe-linux/spidev-test/1.0-r0/license-destdir/s<br />pidev-test/GPL-2.0=
: [Errno 2] No such file or directory: '/home/fedora/openembedded-core/meta=
/files/common-licenses/GPL-2.0'<br />ERROR: spidev-test-1.0-r0 do_populate_=
lic: QA Issue: spidev-test: LIC_FILES_CHKSUM points to an invalid file: /ho=
me/fedora/op<br />enembedded-core/meta/files/common-licenses/GPL-2.0 [licen=
se-checksum]<br />ERROR: spidev-test-1.0-r0 do_populate_lic: Fatal QA error=
s found, failing task.<br />ERROR: Logfile of failure stored in: /home/fedo=
ra/openembedded-core/build/tmp-glibc/work/qemux86_64-oe-linux/spidev-test/1=
.0-<br />r0/temp/log.do_populate_lic.281153<br />ERROR: Task (/home/fedora/=
junk/meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do=
_populate_lic) failed wi<br />th exit code '1'<br />NOTE: Tasks Summary: At=
tempted 3 tasks of which 0 didn't need to be rerun and 1 failed.<br /><br /=
>Summary: 1 task failed:<br />&nbsp;&nbsp;/home/fedora/junk/meta-openembedd=
ed/meta-oe/recipes-kernel/spidev-test/spidev-test.bb:do_populate_lic<br />S=
ummary: There were 2 WARNING messages shown.<br />Summary: There were 2 ERR=
OR messages shown, returning a non-zero exit code.<br />What's this about l=
icences?</blockquote>
<br />&nbsp;&nbsp;in current OE, there is no "GPL-2.0" license file, there=
 is<br />"GPL-2.0-only" and "GPL-2.0-or-later" and a bunch of others, so i<=
br />think you need to pick one of those.<br /><br />rday<br /><br /><br />=
</blockquote>
</div>
</body></html>

--=_4f175e8f4dd32710c457079be9daa61a--
