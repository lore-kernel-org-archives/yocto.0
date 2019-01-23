Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B567CE00CE8; Wed, 23 Jan 2019 05:19:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7492DE00CE4
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 05:19:39 -0800 (PST)
Received: by mail-oi1-f195.google.com with SMTP id u18so1719610oie.10
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 05:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hoCk9xEpcDtL9cNnzFX6oKp6A5a8aB/H7bCNAAMAfmY=;
	b=RmWlAJAg0YGyvrNeS/QPy7S0Ops76UK5vDod9Ypa0s7VgtP6KVdh8oGePzMwoKOfSh
	oOBprMJuX7omTM6JLPpNDDt5n5w+qpKdrqIs0UxsjgE+Bfb/IXMg7q1CopENh/gZATov
	wWiqDfzcEewjcTjDFZptY1v4L/3Lx0HjVPdH6XXrQ9cBgZ4+6CysBZalKdUZC8/Auif6
	gugKVWTC9LNYAVo1/XGPZiIo+B+Xokbbz7yRNQ+DuxoYSrKWESChAvkenr7rR+90lwje
	JA+CIAZhulqZ3/igtlscFKeIORa8dfPP3dkQluaPobBbUzMocRR2CXnqRVb2/1lQfwom
	p97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hoCk9xEpcDtL9cNnzFX6oKp6A5a8aB/H7bCNAAMAfmY=;
	b=htCnSn7qmJKjxbT97X0j2NFmfQWuDROkQT28nrNbVp/1uiXqaTJRFX7PgLQZ+mL5Po
	HYL9JoOHu5IGsSMCbCFEIioNzFU2L9F2v8W6Vvr7tEGBHlYioCHsN9SvwxRb4XmBhjWV
	xK9sVMZuKL8lHqDG1ZnKPWIq8sA8FLGpyzsrtCBHHrJwho6ag+MuATa/HnNafvKIT0mt
	jB16GgbZcWaDjrhTOucD83sTIUT4+kqar5DA8Eh84hkMtJPhlIjeDmBMP+xmQ6kOmZAu
	YZ8Nla8MTQPfEs+yYoS0AMHnERi971hlfoXeARG0acA4AKGqZLatLtxjqSD4qY7WIHux
	pZSQ==
X-Gm-Message-State: AJcUukd3bPW33I9g69dPCKltw34NGZnGReO7dGpdwNUUTV6+XnZgF059
	CefRZuKXktK1BwomHtQVACZiZsYIblSB/JQrCbQ=
X-Google-Smtp-Source: ALg8bN6FmNeUnzHff26ywCj/STWXJIR03e0F7dqcIFJE4ygKgwIfDmDXpAsr73HlNKW50C3rrovQCqFmJIhisw4FjWY=
X-Received: by 2002:a05:6808:34e:: with SMTP id
	j14mr1307053oie.32.1548249578609; 
	Wed, 23 Jan 2019 05:19:38 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
	<CAB6-VtLn85HFNZxY7jqbpJGJcLg4h1bCwKGFTxrcCzx5vJrDPw@mail.gmail.com>
	<CAEhQi8ma4YNf-JzoQPRc6xBYPdtaXnjN1SbJhfq9oeZhF2YZEA@mail.gmail.com>
In-Reply-To: <CAEhQi8ma4YNf-JzoQPRc6xBYPdtaXnjN1SbJhfq9oeZhF2YZEA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 23 Jan 2019 14:19:27 +0100
Message-ID: <CAEhQi8=w4E50T32MB28j21ZeErMVX+insKNoXVjOOw-WE_gZfQ@mail.gmail.com>
To: Einar Vading <yocto-ml@vading.se>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Wed, 23 Jan 2019 13:19:40 -0000
Content-Type: multipart/alternative; boundary="00000000000028219e05801ff24e"

--00000000000028219e05801ff24e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I found the issue and dnf is doing exactly what it should. The problem is
the shared library

readelf -d libx_media_1.0.so


Dynamic section at offset 0xf31c8 contains 40 entries:
  Tag        Type                         Name/Value
....
...
 0x000000000000000e (SONAME)             Library soname: [
libx_media_1.0_wtf.so]

So the SONAME of the file is actually set to libx_media_1.0_wtf.so but the
file is named libx_media_1.0.so and the executable that is part of the
package is linked against libx_media_1.0.so also.
I manage to figure this out when I was going
through /tmp/work/path/to/xmedia/1.0-r43/pkgdata/shlibs2 and I noticed that
in xmedia.lst file actually did not include the libx_media_1.0.so but
libx_media_1.0_wtf.so.
Thanks for your efforts.

BR
M=C3=A5ns Zigher

Den ons 23 jan. 2019 kl 13:01 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:

> Hi,
>
> Yes I noticed it so I tried that out but without any success but I will
> investigate that also to see if change it can in another result.
>
> BR
> M=C3=A5ns Zigher
>
> Den ons 23 jan. 2019 kl 12:33 skrev Einar Vading <yocto-ml@vading.se>:
>
>> This is a longshot but I am currently investigating an issue we have
>> with a packagegroup.
>>
>> I get a similar error but I can fix it by moving the package in my
>> RDEPENDS in the packagegroup.
>>
>> If you move your libx_media up or down in the packagegroup, does it help=
?
>>
>> For me i got:
>>     Error:
>>       Problem: conflicting requests
>>       - nothing provides libserved-utilsoversion needed by
>> packagegroup-base-1.0-r0.0.noarch
>>
>> When I had:
>>     RDEPENDS_${PN} =3D "\
>>         libdomain-somelib \
>>         libsomeotherlib \
>>         served-util \
>>     "
>>
>> But changing to:
>>     RDEPENDS_${PN} =3D "\
>>         libdomain-somelib \
>>         served-util \
>>         libsomeotherlib \
>>     "
>> Made it work.
>>
>> If you're down to trying anything you might as well try this =3D)
>>
>> // Einar
>>
>> On Wed, Jan 23, 2019 at 12:03 PM M=C3=A5ns Zigher <mans.zigher@gmail.com=
>
>> wrote:
>> >
>> > I have toke the rpm file that was produced. I found the file under the
>> build directory under
>> tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-rpms/imx8mq/temp/x_me=
dia-1.0-r44.imx8mq.rpm.
>> I used the following commands
>> > 7z x x_media-1.0-r44.imx8mq.rpm
>> > 7z x x_media-1.0-r44.imx8mq.cpio
>> >
>> > The result from this gave me the file tree where I then could run
>> > file usr/lib/libx_media_1.0.so
>> > usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
>> version 1 (SYSV), dynamically linked, stripped
>> >
>> > So I believe that I have concluded that the rpm include the file that
>> dnf is complaining about. I don't understand why dnf thinks that this
>> dependency is not meet when it clearly is part of the package. I have ad=
ded
>> verbose flags to the dnf call but dose not give any more information.
>> > I am not sure how I can proceed to find out what I have done wrong. Th=
e
>> recipe is a bit of a freak of nature because the binaries that I am
>> packaging is actually built using another toolchain but it is for the sa=
me
>> arch can dnf detect that?
>> >
>> > BR
>> > M=C3=A5ns Zigher
>> >
>> > Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher <mans.zigher@gmai=
l.com
>> >:
>> >>
>> >> Hi,
>> >>
>> >> I am struggling with a recipe which more or less just downloads
>> binaries and creating a package. We have previously been using ipkg but =
now
>> we have switched to rpm in our builds. One of the binaries in the packag=
es
>> is a library let's call it libx_media_1.0.so. This library is part of
>> the package that the recipe is producing. The library is placed under
>> /usr/lib/. When building the image I am getting the following error
>> >>
>> >> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
>> >> .....
>> >> ...
>> >> Error:
>> >>  Problem: package packagegroup-x-media-1.0-r11.noarch requires
>> x_media, but none of the providers can be installed
>> >>   - conflicting requests
>> >>   - nothing provides libx_media_1.0.so()(64bit) needed by
>> x_media-1.0-r44.imx8mq
>> >>
>> >> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>> >>
>> >> Here is the output from running the command file on the library
>> >>
>> >> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
>> version 1 (SYSV), dynamically linked, stripped
>> >>
>> >> I have also verified that the library is part of the produced rpm so
>> that is not the issue.
>> >>
>> >> Dose anyone have any suggestion on how to debug this problem? Because
>> I am out of ideas
>> >>
>> >> BR
>> >> M=C3=A5ns Zigher
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--00000000000028219e05801ff24e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi guys,<div><br></div><=
div>I found the issue and dnf is doing exactly what it should. The problem =
is the shared library</div><div><br></div><div><div>readelf -d <a href=3D"h=
ttp://libx_media_1.0.so">libx_media_1.0.so</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div><br></div><div>Dynamic section at offset 0xf31c8 co=
ntains 40 entries:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 Tag=C2=A0 =C2=A0 =C2=A0 =C2=A0 Type=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Name/Value=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</div><div>....</div><div>...=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br></div><div>=C2=A00x000000000000000e (SONAME)=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Library soname: [<a href=3D"http://li=
bx_media_1.0_wtf.so">libx_media_1.0_wtf.so</a>]</div><div><br></div><div>So=
 the SONAME of the file is actually set to <a href=3D"http://libx_media_1.0=
_wtf.so">libx_media_1.0_wtf.so</a> but the file is named <a href=3D"http://=
libx_media_1.0.so">libx_media_1.0.so</a> and the executable that is part of=
 the package is linked against <a href=3D"http://libx_media_1.0.so">libx_me=
dia_1.0.so</a> also.</div><div>I manage to figure this out when I was going=
 through=C2=A0/tmp/work/path/to/xmedia/1.0-r43/pkgdata/shlibs2=C2=A0and I n=
oticed that in xmedia.lst file actually did not include the <a href=3D"http=
://libx_media_1.0.so">libx_media_1.0.so</a> but <a href=3D"http://libx_medi=
a_1.0_wtf.so">libx_media_1.0_wtf.so</a>.</div><div>Thanks for your efforts.=
</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher=C2=A0</div></div></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Den ons 23 jan. 2019 kl 13:01 skrev M=C3=A5ns Zigher &lt;<a href=
=3D"mailto:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt;:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><=
br></div><div>Yes I noticed it so I tried that out but without any success =
but I will investigate that also to see if change it can in another result.=
</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail-m_-50926081464280369=
72gmail_attr">Den ons 23 jan. 2019 kl 12:33 skrev Einar Vading &lt;<a href=
=3D"mailto:yocto-ml@vading.se" target=3D"_blank">yocto-ml@vading.se</a>&gt;=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This is a long=
shot but I am currently investigating an issue we have<br>
with a packagegroup.<br>
<br>
I get a similar error but I can fix it by moving the package in my<br>
RDEPENDS in the packagegroup.<br>
<br>
If you move your libx_media up or down in the packagegroup, does it help?<b=
r>
<br>
For me i got:<br>
=C2=A0 =C2=A0 Error:<br>
=C2=A0 =C2=A0 =C2=A0 Problem: conflicting requests<br>
=C2=A0 =C2=A0 =C2=A0 - nothing provides libserved-utilsoversion needed by<b=
r>
packagegroup-base-1.0-r0.0.noarch<br>
<br>
When I had:<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libdomain-somelib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libsomeotherlib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 served-util \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
But changing to:<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libdomain-somelib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 served-util \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libsomeotherlib \<br>
=C2=A0 =C2=A0 &quot;<br>
Made it work.<br>
<br>
If you&#39;re down to trying anything you might as well try this =3D)<br>
<br>
// Einar<br>
<br>
On Wed, Jan 23, 2019 at 12:03 PM M=C3=A5ns Zigher &lt;<a href=3D"mailto:man=
s.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; I have toke the rpm file that was produced. I found the file under the=
 build directory under tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-r=
pms/imx8mq/temp/x_media-1.0-r44.imx8mq.rpm. I used the following commands<b=
r>
&gt; 7z x x_media-1.0-r44.imx8mq.rpm<br>
&gt; 7z x x_media-1.0-r44.imx8mq.cpio<br>
&gt;<br>
&gt; The result from this gave me the file tree where I then could run<br>
&gt; file usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" t=
arget=3D"_blank">libx_media_1.0.so</a><br>
&gt; usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" target=
=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aarch6=
4, version 1 (SYSV), dynamically linked, stripped<br>
&gt;<br>
&gt; So I believe that I have concluded that the rpm include the file that =
dnf is complaining about. I don&#39;t understand why dnf thinks that this d=
ependency is not meet when it clearly is part of the package. I have added =
verbose flags to the dnf call but dose not give any more information.<br>
&gt; I am not sure how I can proceed to find out what I have done wrong. Th=
e recipe is a bit of a freak of nature because the binaries that I am packa=
ging is actually built using another toolchain but it is for the same arch =
can dnf detect that?<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt; Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher &lt;<a href=3D"ma=
ilto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt;=
:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am struggling with a recipe which more or less just downloads bi=
naries and creating a package. We have previously been using ipkg but now w=
e have switched to rpm in our builds. One of the binaries in the packages i=
s a library let&#39;s call it <a href=3D"http://libx_media_1.0.so" rel=3D"n=
oreferrer" target=3D"_blank">libx_media_1.0.so</a>. This library is part of=
 the package that the recipe is producing. The library is placed under /usr=
/lib/. When building the image I am getting the following error<br>
&gt;&gt;<br>
&gt;&gt; ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command<=
br>
&gt;&gt; .....<br>
&gt;&gt; ...<br>
&gt;&gt; Error:<br>
&gt;&gt;=C2=A0 Problem: package packagegroup-x-media-1.0-r11.noarch require=
s x_media, but none of the providers can be installed<br>
&gt;&gt;=C2=A0 =C2=A0- conflicting requests<br>
&gt;&gt;=C2=A0 =C2=A0- nothing provides <a href=3D"http://libx_media_1.0.so=
" rel=3D"noreferrer" target=3D"_blank">libx_media_1.0.so</a>()(64bit) neede=
d by x_media-1.0-r44.imx8mq<br>
&gt;&gt;<br>
&gt;&gt; ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt;&gt;<br>
&gt;&gt; Here is the output from running the command file on the library<br=
>
&gt;&gt;<br>
&gt;&gt; usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" ta=
rget=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aa=
rch64, version 1 (SYSV), dynamically linked, stripped<br>
&gt;&gt;<br>
&gt;&gt; I have also verified that the library is part of the produced rpm =
so that is not the issue.<br>
&gt;&gt;<br>
&gt;&gt; Dose anyone have any suggestion on how to debug this problem? Beca=
use I am out of ideas<br>
&gt;&gt;<br>
&gt;&gt; BR<br>
&gt;&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>
</blockquote></div>

--00000000000028219e05801ff24e--
