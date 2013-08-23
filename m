Return-Path: <reeve.yang@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FE9E00343
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 13:36:02 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id n6so822160lbi.8
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 13:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PD9mTeledl6MbUeIXKKcpeDETcoDbQdrc22zELiixHw=;
	b=NiRDA0GicLBnKOg2d+IjK7jIA/cRZ4K01+NSBBmJUJGQYyHU1KP9lP/+GN+MIs8sCE
	MTQmo0CVY8iMjeXJNv1QqotnEsIwoS4eQ87zXhpHicAsIvuqt8GYA4qhH3dj+rEuYEeN
	ytFGqLHQ4KiPrylV2ahWyTPdw+f30KuQUgNbzxEDBEBvk0w0ac0HPeVJ7uha+VE11eR2
	EW8ZyMBvXu+TCmwJFmogs2gWKjibE4UrhF43vgN1NK/4GPWYibmkrEhE44CGRpbYSvvC
	aezr1lSftT6djr0dqGuw1Q0fPI8EwvtGShQF4VbfAnYo/ejdBbRxu093+nh81GqHBCE5
	H5dw==
MIME-Version: 1.0
X-Received: by 10.152.22.65 with SMTP id b1mr109517laf.46.1377290161604; Fri,
	23 Aug 2013 13:36:01 -0700 (PDT)
Received: by 10.152.120.35 with HTTP; Fri, 23 Aug 2013 13:36:01 -0700 (PDT)
In-Reply-To: <521670B4.5080905@mlbassoc.com>
References: <CAGNTBAWeb_JRGvJ4B1awDeHhE+KOSPk1Ea-G_R7JqqOX=CpafQ@mail.gmail.com>
	<521666EE.8070403@mlbassoc.com> <521670B4.5080905@mlbassoc.com>
Date: Fri, 23 Aug 2013 13:36:01 -0700
Message-ID: <CAGNTBAXZhYXU01RiiF-CDdpc+64uFwSq-ZaM2tQjwGHdweMV8w@mail.gmail.com>
From: Reeve Yang <reeve.yang@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: an error when adding "snappy" package
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
X-List-Received-Date: Fri, 23 Aug 2013 20:36:06 -0000
Content-Type: multipart/alternative; boundary=089e0158b92ad5cc1404e4a35a81

--089e0158b92ad5cc1404e4a35a81
Content-Type: text/plain; charset=ISO-8859-1

Hi Gary, the uri.inc is just my include file to point to local package
storage location, and "native" extend I have taken it out.

Yeah, I figured it out this is rpm specific. If I change the
site-packages/smart/backends/rpm/pm.py, line 280 to:

                self.rpmout = reader(open(rpmoutpath), errors = "ignore")

The error would be gone and my tarball is created successfully. My question
is, why yocto assume default encoding is ascii? Is there anyway for me to
specify the encoding in "utf8"?

Thanks.
- Reeve


On Thu, Aug 22, 2013 at 1:12 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-08-22 13:30, Gary Thomas wrote:
>
>> On 2013-08-21 16:03, Reeve Yang wrote:
>>
>>> Hi Grus,
>>>
>>> I have been trying to add google snappy package into yocto (
>>> https://code.google.com/p/**snappy/ <https://code.google.com/p/snappy/>),
>>> here is my receipt file, nothing special:
>>>
>>> SUMMARY = "Snappy is a compression/decompression library."
>>> DESCRIPTION = "...."
>>> HOMEPAGE="https://code.google.**com/p/snappy<https://code.google.com/p/snappy>
>>> "
>>> SECTION = "console/utils"
>>> LICENSE = "BSD"
>>> LIC_FILES_CHKSUM = "file://COPYING;md5=**b2c8cef4261c6377dcae51b2903d70*
>>> *4b"
>>> PR = "r0"
>>> require ../uri.inc
>>>
>>
>> What's in this file (uri.inc)?
>>
>>  SRC_URI = "${URIPREFIX}/snappy-${PV}.**tar.gz"
>>> SRC_URI[md5sum] = "**c8f3ef29b5281e78f4946b2d739cea**4f"
>>> SRC_URI[sha256sum] = "**1fa82bc588bb93fa74dfc0e2e9b7d6**
>>> 3b6e2a20ede323ef42bf0af0f94767**6160"
>>> inherit autotools
>>> BBCLASSEXTEND = "native"
>>> do_compile() {
>>>      oe_runmake all
>>> }
>>> do_install() {
>>>      oe_runmake DESTDIR=${D} install
>>> }
>>> BBCLASSEXTEND = "native"
>>>
>>
>> Do you need this (is snappy-native used)?
>>
>
> Note: I had no trouble building and installing this into a IPK based
> image, so
> it may be something special with the RPM packaging (which I don't use).
>
>
>
>>
>>> The package was built successfully, but when I try to build
>>> core-image-lsb (my own image but similar), I got following error:
>>>
>>> |  528:Installing libsnappy1      ##############################**##########
>>> [ 44%]
>>> | Traceback (most recent call last):
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**site-packages/smart/backends/**rpm/pm.py",
>>> line 312, in __call__
>>> |     self._process_rpmout()
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**site-packages/smart/backends/**rpm/pm.py",
>>> line 297, in _process_rpmout
>>> |     output = self.rpmout.read()
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**codecs.py", line 477, in read
>>> |     newchars, decodedbytes = self.decode(data, self.errors)
>>> | UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position
>>> 740: ordinal not in range(128)
>>> |
>>> | Traceback (most recent call last):
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**site-packages/smart/backends/**rpm/pm.py",
>>> line 312, in __call__
>>> |     self._process_rpmout()
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**site-packages/smart/backends/**rpm/pm.py",
>>> line 297, in _process_rpmout
>>> |     output = self.rpmout.read()
>>> |   File "/home2/reeve-ws/yocto-dylan-**merge/build/tmp/sysroots/x86_**
>>> 64-linux/usr/lib/python2.7/**codecs.py", line 477, in read
>>> |     newchars, decodedbytes = self.decode(data, self.errors)
>>> | UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position
>>> 740: ordinal not in range(128)
>>> |
>>> | ERROR: Function failed: do_rootfs (see /home2/reeve-ws/yocto-dylan-**
>>> merge/build/tmp/work/rp-poky-**linux/core-image-ssr/1.0-r0/**temp/log.do_rootfs.2751
>>> for further information)
>>> ERROR: Task 7 (/home2/reeve-ws/yocto-dylan-**merge/meta-ericsson-ssr-rp/
>>> **recipes-core-image/core-image-**ssr.bb <http://core-image-ssr.bb> <
>>> http://core-image-ssr.bb>, do_rootfs) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 4128 tasks of which 4114 didn't need to
>>> be rerun and 1 failed.
>>> No currently running tasks (4128 of 4129)
>>>
>>> Can anyone help me out?
>>>
>>>
>>> ______________________________**_________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>>
>>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--089e0158b92ad5cc1404e4a35a81
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Gary, the uri.inc is just my include file to point to l=
ocal package storage location, and &quot;native&quot; extend I have taken i=
t out.<div><br></div><div>Yeah, I figured it out this is rpm specific. If I=
 change the site-packages/smart/backends/rpm/pm.py, line 280 to:</div>
<div><br></div><div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 self.rpmout =3D re=
ader(open(rpmoutpath), errors =3D &quot;ignore&quot;)</div><div><br></div><=
div style>The error would be gone and my tarball is created successfully. M=
y question is, why yocto assume default encoding is ascii? Is there anyway =
for me to specify the encoding in &quot;utf8&quot;?</div>
<div style><br></div><div style>Thanks.</div><div style>- Reeve</div><div c=
lass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Aug 22, 201=
3 at 1:12 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 2013-08-22 13:30, Gary Thomas wrote:<=
br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
On 2013-08-21 16:03, Reeve Yang wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Hi Grus,<br>
<br>
I have been trying to add google snappy package into yocto (<a href=3D"http=
s://code.google.com/p/snappy/" target=3D"_blank">https://code.google.com/p/=
<u></u>snappy/</a>), here is my receipt file, nothing special:<br>
<br>
SUMMARY =3D &quot;Snappy is a compression/decompression library.&quot;<br>
DESCRIPTION =3D &quot;....&quot;<br>
HOMEPAGE=3D&quot;<a href=3D"https://code.google.com/p/snappy" target=3D"_bl=
ank">https://code.google.<u></u>com/p/snappy</a>&quot;<br>
SECTION =3D &quot;console/utils&quot;<br>
LICENSE =3D &quot;BSD&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<u></u>b2c8cef4261c6377dcae=
51b2903d70<u></u>4b&quot;<br>
PR =3D &quot;r0&quot;<br>
require ../uri.inc<br>
</blockquote>
<br>
What&#39;s in this file (uri.inc)?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
SRC_URI =3D &quot;${URIPREFIX}/snappy-${PV}.<u></u>tar.gz&quot;<br>
SRC_URI[md5sum] =3D &quot;<u></u>c8f3ef29b5281e78f4946b2d739cea<u></u>4f&qu=
ot;<br>
SRC_URI[sha256sum] =3D &quot;<u></u>1fa82bc588bb93fa74dfc0e2e9b7d6<u></u>3b=
6e2a20ede323ef42bf0af0f94767<u></u>6160&quot;<br>
inherit autotools<br>
BBCLASSEXTEND =3D &quot;native&quot;<br>
do_compile() {<br>
=A0 =A0 =A0oe_runmake all<br>
}<br>
do_install() {<br>
=A0 =A0 =A0oe_runmake DESTDIR=3D${D} install<br>
}<br>
BBCLASSEXTEND =3D &quot;native&quot;<br>
</blockquote>
<br>
Do you need this (is snappy-native used)?<br>
</blockquote>
<br></div>
Note: I had no trouble building and installing this into a IPK based image,=
 so<br>
it may be something special with the RPM packaging (which I don&#39;t use).=
<div class=3D""><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
The package was built successfully, but when I try to build core-image-lsb =
(my own image but similar), I got following error:<br>
<br>
| =A0528:Installing libsnappy1 =A0 =A0 =A0##############################<u>=
</u>########## [ 44%]<br>
| Traceback (most recent call last):<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>site-packages/smart/backends=
/<u></u>rpm/pm.py&quot;, line 312, in __call__<br>
| =A0 =A0 self._process_rpmout()<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>site-packages/smart/backends=
/<u></u>rpm/pm.py&quot;, line 297, in _process_rpmout<br>
| =A0 =A0 output =3D self.rpmout.read()<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>codecs.py&quot;, line 477, i=
n read<br>
| =A0 =A0 newchars, decodedbytes =3D self.decode(data, self.errors)<br>
| UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xa1 in p=
osition 740: ordinal not in range(128)<br>
|<br>
| Traceback (most recent call last):<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>site-packages/smart/backends=
/<u></u>rpm/pm.py&quot;, line 312, in __call__<br>
| =A0 =A0 self._process_rpmout()<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>site-packages/smart/backends=
/<u></u>rpm/pm.py&quot;, line 297, in _process_rpmout<br>
| =A0 =A0 output =3D self.rpmout.read()<br>
| =A0 File &quot;/home2/reeve-ws/yocto-dylan-<u></u>merge/build/tmp/sysroot=
s/x86_<u></u>64-linux/usr/lib/python2.7/<u></u>codecs.py&quot;, line 477, i=
n read<br>
| =A0 =A0 newchars, decodedbytes =3D self.decode(data, self.errors)<br>
| UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xa1 in p=
osition 740: ordinal not in range(128)<br>
|<br>
| ERROR: Function failed: do_rootfs (see /home2/reeve-ws/yocto-dylan-<u></u=
>merge/build/tmp/work/rp-poky-<u></u>linux/core-image-ssr/1.0-r0/<u></u>tem=
p/log.do_rootfs.2751 for further information)<br>
ERROR: Task 7 (/home2/reeve-ws/yocto-dylan-<u></u>merge/meta-ericsson-ssr-r=
p/<u></u>recipes-core-image/<a href=3D"http://core-image-ssr.bb" target=3D"=
_blank">core-image-<u></u>ssr.bb</a> &lt;<a href=3D"http://core-image-ssr.b=
b" target=3D"_blank">http://core-image-ssr.bb</a>&gt;, do_rootfs) failed wi=
th exit code &#39;1&#39;<br>

NOTE: Tasks Summary: Attempted 4128 tasks of which 4114 didn&#39;t need to =
be rerun and 1 failed.<br>
No currently running tasks (4128 of 4129)<br>
<br>
Can anyone help me out?<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
</blockquote>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div></div>

--089e0158b92ad5cc1404e4a35a81--
