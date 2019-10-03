Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B1C6E00D8D; Thu,  3 Oct 2019 05:24:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E515E00D8D
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 05:24:29 -0700 (PDT)
Received: by mail-vs1-f67.google.com with SMTP id d3so1573990vsr.1
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2019 05:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pzbW1OEz3jgL3mEla3fMLo3bOpuVktb9UbtaEBKXJME=;
	b=mqf2jtDOCkpjxD9sA3+8T++BpBwJ0DLy7QZokBbzq+9Z3i+QxPRNMXT2vENwhY52S6
	tn8FH4kYPsZYl3s22MxSPEwYtHHXrbJYQbSBgwzw6k9pFXSbLFJ8iaWyuxwQ5e+ddwv5
	emwnrQ7noStwDFl2aaZgmIebSVhR9ygk24JMSUvomCdJN2qrD0roDKV6m2quIPkOlQu8
	E1ReX1+ZP5CLwlcC7Vq/jo4X9dB9ejtMs6lHWfMk1Zi9FFZdmU6z6AsfhJw3VvcaDu9f
	R7UlnBaliZrT88fEPgH46ZNWK6i0Y2Imzma4vj7VtN7LNmhU3/PJNBAGU9ks/U7PhIwR
	aCiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pzbW1OEz3jgL3mEla3fMLo3bOpuVktb9UbtaEBKXJME=;
	b=gCUGudtdk668uthCct7olfvb929UplGbIShfCbH5iLFxGCGBiYlS8Hw5MXmjZt0te4
	WoMFdOBPxwj3w+I/vcJdHrOufue6LxnRosSJ2FoLPk71P5s9NP9GUCR55tlnQG480k9X
	zPd54iqTuaqm8kG5f5SNSybuUbVlFsW/xwWaBjirI/CE+PkpVeFzvHxf8tL5jvhqtXKc
	5r6QwsKfl5gqi6JSSznLYDLRMR7tF11+CySh+EZ3R7j/U/CqzOuTcIKKb4t8GRzuvF9M
	MoTuH03kg0ROGa8VS5TM50mm7oPlGP/rR6NNuBJkWcudwDFY31jEDI2MYhgAY5DUn3JL
	lPeA==
X-Gm-Message-State: APjAAAWRyjhFvjwUXqorvbaTkH85kPKtBBZUZcEE6tZVKwxKclmRI/34
	wqCSOkMZ/3c4LEbVqjoGkmIIP9TihsMbWtsIzWFcXLMU
X-Google-Smtp-Source: APXvYqyhNHMnoi3Sp1RObIvgjSBe6YNevOABM3O9k/JYhnw4VG0REYXFqi4Dx40Eujoj+YTBWkmYECBzJbgiqn74bY0=
X-Received: by 2002:a67:d29d:: with SMTP id z29mr4771430vsi.222.1570105468236; 
	Thu, 03 Oct 2019 05:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
	<35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
	<CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
In-Reply-To: <CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 3 Oct 2019 14:24:15 +0200
Message-ID: <CAKRytNy7w-5N8fAz9N-fF3iggMvW0KgXUS5Dm1XA9NBD7ewePw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Cannot use "LICENSE_CREATE_PACKAGE = 1" when building the image with mdns
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
X-List-Received-Date: Thu, 03 Oct 2019 12:24:31 -0000
Content-Type: multipart/alternative; boundary="000000000000b1b9ac059400aa0d"

--000000000000b1b9ac059400aa0d
Content-Type: text/plain; charset="UTF-8"

I resend this email because it's not visible in yocto mailing list.



Hi thank you for the answer.

In my rootfs I have this nsswitch.conf:
-------------------------------------------------------
# /etc/nsswitch.conf
#
# Example configuration of GNU Name Service Switch functionality.
# If you have the `glibc-doc' and `info' packages installed, try:
# `info libc "Name Service Switch"' for information about this file.

passwd:         compat
group:          compat
shadow:         compat

hosts:          files myhostname  mdns dns
networks:       files

protocols:      db files
services:       db files
ethers:         db files
rpc:            db files

netgroup:       nis
-------------------------------------------------------

I'm not familiar with this file.
Also changing "hosts: files myhostname  mdns dns" to "hosts: files
mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
still having the same problem.

What should I change to fix this issue?




Il mar 1 ott 2019, 11:29 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
scritto:

> Hi thank you for the answer.
>
> In my rootfs I have this nsswitch.conf:
> -------------------------------------------------------
> # /etc/nsswitch.conf
> #
> # Example configuration of GNU Name Service Switch functionality.
> # If you have the `glibc-doc' and `info' packages installed, try:
> # `info libc "Name Service Switch"' for information about this file.
>
> passwd:         compat
> group:          compat
> shadow:         compat
>
> hosts:          files myhostname  mdns dns
> networks:       files
>
> protocols:      db files
> services:       db files
> ethers:         db files
> rpc:            db files
>
> netgroup:       nis
> -------------------------------------------------------
>
> I'm not familiar with this file.
> Also changing "hosts: files myhostname  mdns dns" to "hosts: files
> mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
> still having the same problem.
>
> What should I change to fix this issue?
>
>
> Il lun 30 set 2019, 22:45 Khem Raj <raj.khem@gmail.com> ha scritto:
>
>>
>>
>> On 9/30/19 8:17 AM, Stefano Cappa wrote:
>> > I saw your last patch to upgrade mdns, so I'm sending this email also to
>> > you to try to get help.
>> >
>> > mdns is working correctly, however, when I try to build my image with
>> > "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
>> > here
>> https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
>>  I
>> > get this error message:
>> >
>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
>> > ['mdns'] have failed. If the intention is to defer them to first boot,
>> > then please place them into pkg_postinst_ontarget_${PN} ().
>> > Deferring to first boot via 'exit 1' is no longer supported.
>> > Details of the failure are in
>> >
>> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
>> > ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>> > ERROR: Logfile of failure stored in:
>> >
>> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
>> > ERROR: Task (MY CUSTOM LAYER
>> > PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit
>> > code '1'
>> > NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to
>> > be rerun and 1 failed.
>> >
>> > Do you have a solution? Why is it happening?
>> >
>>
>> see mdns recipe especially
>>
>> pkg_postinst_${PN} (), that function is not able to execute offline
>> during build. It could be that nsswitch.conf does not exist in your
>> image rootfs
>>
>> > thank u.
>>
>

--000000000000b1b9ac059400aa0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I resend this email because it&#39;s not visible in yocto=
 mailing list.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><br><div dir=3D"auto">Hi thank you for the answer.<div d=
ir=3D"auto"><br></div><div dir=3D"auto">In my rootfs I have this nsswitch.c=
onf:</div><div dir=3D"auto">-----------------------------------------------=
--------</div><div dir=3D"auto"># /etc/nsswitch.conf<br>#<br># Example conf=
iguration of GNU Name Service Switch functionality.<br># If you have the `g=
libc-doc&#39; and `info&#39; packages installed, try:<br># `info libc &quot=
;Name Service Switch&quot;&#39; for information about this file.<br><br>pas=
swd: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br>group: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0compat<br>shadow: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br><br>hosts=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files myhostname =C2=A0mdns dns<br>netw=
orks: =C2=A0 =C2=A0 =C2=A0 files<br><br>protocols: =C2=A0 =C2=A0 =C2=A0db f=
iles<br>services: =C2=A0 =C2=A0 =C2=A0 db files<br>ethers: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 db files<br>rpc: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0db =
files<br><br>netgroup: =C2=A0 =C2=A0 =C2=A0 nis<br></div><div dir=3D"auto">=
-------------------------------------------------------<br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I&#39;m not familiar with this file.<=
/div><div dir=3D"auto">Also changing &quot;hosts: files myhostname =C2=A0md=
ns dns&quot; to &quot;hosts: files mdns4_minimal [NOTFOUND=3Dreturn] dns&qu=
ot; (copied from a raspberry pi 3) I&#39;m still having the same=C2=A0probl=
em.<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">What should I ch=
ange to fix this issue?</div><div dir=3D"auto"><br style=3D"font-family:san=
s-serif;font-size:12.8px"></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Il mar 1 ott 2019, 11:29 Stefano Cappa &lt;<a hre=
f=3D"mailto:stefano.cappa.ks89@gmail.com">stefano.cappa.ks89@gmail.com</a>&=
gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"auto">Hi thank you for the answer.<div dir=3D"auto"><br></div><di=
v dir=3D"auto">In my rootfs I have this nsswitch.conf:</div><div dir=3D"aut=
o">-------------------------------------------------------</div><div dir=3D=
"auto"># /etc/nsswitch.conf<br>#<br># Example configuration of GNU Name Ser=
vice Switch functionality.<br># If you have the `glibc-doc&#39; and `info&#=
39; packages installed, try:<br># `info libc &quot;Name Service Switch&quot=
;&#39; for information about this file.<br><br>passwd: =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 compat<br>group: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compat<br>shadow=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br><br>hosts: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0files myhostname =C2=A0mdns dns<br>networks: =C2=A0 =C2=A0 =C2=A0=
 files<br><br>protocols: =C2=A0 =C2=A0 =C2=A0db files<br>services: =C2=A0 =
=C2=A0 =C2=A0 db files<br>ethers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 db files<br>r=
pc: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0db files<br><br>netgroup: =C2=
=A0 =C2=A0 =C2=A0 nis<br></div><div dir=3D"auto">--------------------------=
-----------------------------<br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I&#39;m not familiar with this file.</div><div dir=3D"auto">Also =
changing &quot;hosts: files myhostname =C2=A0mdns dns&quot; to &quot;hosts:=
 files mdns4_minimal [NOTFOUND=3Dreturn] dns&quot; (copied from a raspberry=
 pi 3) I&#39;m still having the same=C2=A0problem.<br></div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">What should I change to fix this issue?</div=
><div dir=3D"auto"><br></div><div></div></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il lun 30 set 2019, 22:45 Khe=
m Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" rel=3D"no=
referrer">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
<br>
On 9/30/19 8:17 AM, Stefano Cappa wrote:<br>
&gt; I saw your last patch to upgrade mdns, so I&#39;m sending this email a=
lso to<br>
&gt; you to try to get help.<br>
&gt; <br>
&gt; mdns is working correctly, however, when I try to build my image with<=
br>
&gt; &quot;LICENSE_CREATE_PACKAGE =3D &quot;1&quot;&quot; in my local.conf =
as described<br>
&gt; here=C2=A0<a href=3D"https://www.yoctoproject.org/docs/2.8/dev-manual/=
dev-manual.html#providing-license-text" rel=3D"noreferrer noreferrer norefe=
rrer" target=3D"_blank">https://www.yoctoproject.org/docs/2.8/dev-manual/de=
v-manual.html#providing-license-text</a>=C2=A0I<br>
&gt; get this error=C2=A0message:<br>
&gt; <br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of<br>
&gt; [&#39;mdns&#39;] have failed. If the intention is to defer them to fir=
st boot,<br>
&gt; then please place them into pkg_postinst_ontarget_${PN} ().<br>
&gt; Deferring to first boot via &#39;exit 1&#39; is no longer supported.<b=
r>
&gt; Details of the failure are in<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/=
mydevice-image/1.0-r0/temp/log.do_rootfs.<br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevi=
ce-image/1.0-r0/temp/log.do_rootfs.14586<br>
&gt; ERROR: Task (MY CUSTOM LAYER<br>
&gt; PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit=
<br>
&gt; code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn&#39;t nee=
d to<br>
&gt; be rerun and 1 failed.<br>
&gt; <br>
&gt; Do you have a solution? Why is it happening?=C2=A0<br>
&gt; <br>
<br>
see mdns recipe especially<br>
<br>
pkg_postinst_${PN} (), that function is not able to execute offline<br>
during build. It could be that nsswitch.conf does not exist in your<br>
image rootfs<br>
<br>
&gt; thank u.<br>
</blockquote></div>
</blockquote></div>

--000000000000b1b9ac059400aa0d--
