Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 946EAE006D7
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:33:41 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id hv10so1246489vcb.39
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:33:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=zGuCcktXwcwI6y58RsiF3wquOLjFGi+agtF3XTPpLt0=;
	b=CMhG0LLhuSNxbmv6ywqYom3doe9OVNsa78l/F72TfqzyTmEyIDXyYr97x0goP05OT6
	sVdjpqXERX2YGxjRX+1BtFceR2y1m7oQeIr651sDFK/SHsKEBJxgectv6l9Hiee332i4
	fGl9L+M7wiRlBLLhp7vkZrCdQsFWBJ+G6rEQJSq9f/GvrqqL0niclgGSCf81F87cjwxP
	e+lcJZY/3qMcZPVye90tZJ9+o6Bm7RMQ1LESPCDzZQRoJVHyEDKXFF3Rhc1sDDDqVXYA
	esSv6iSIFuaaDMx/Gy5EdYdAxudwRFCkvzyItm1kLdBmd7FkLDhoBnGdndnBw+V4iacj
	KUhg==
X-Received: by 10.52.70.206 with SMTP id o14mr2993432vdu.63.1367573620937;
	Fri, 03 May 2013 02:33:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.49.5 with HTTP; Fri, 3 May 2013 02:33:20 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CAK18fxH926QynOx4UwReiKs08f=o2dGxnhMRHHqSqmWcMyVOYw@mail.gmail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
	<1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
	<20130126225837.GA30017@gmail.com>
	<CALbNGRSwHQs-O8dy-MoB2E26jYLXS0UWLHZYSi-0nZtE9Liisg@mail.gmail.com>
	<CAK18fxH926QynOx4UwReiKs08f=o2dGxnhMRHHqSqmWcMyVOYw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 May 2013 11:33:20 +0200
Message-ID: <CAK18fxEsx4-o-CNC9nF6R8h-6FNNqK-CvXTG_jn5aSnvGGWDkw@mail.gmail.com>
To: =?ISO-8859-1?Q?Andreas_M=FCller?= <schnitzeltony@googlemail.com>
X-Gm-Message-State: ALoCoQm9btPUHxCWg1WroyH8DmjzMRbrSpmmvQDPzKTpFq45TyQYqkdGop5DWwtODWbEDV0SzME3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] xserver-xf86-config: fix do_install
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
X-List-Received-Date: Fri, 03 May 2013 09:33:41 -0000
Content-Type: multipart/alternative; boundary=20cf307f329ee18fc304dbcd0b37

--20cf307f329ee18fc304dbcd0b37
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Can't replicate this issue and somebody who experienced it in the past
confirmed me that it was someway fixed. So I will drop this patch.

Thanks.


On Wed, Mar 13, 2013 at 6:47 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hey Andreas,
>
> Is this sill needed? Did you test this lately?
>
>
> On Sun, Jan 27, 2013 at 4:35 PM, Andreas M=FCller <
> schnitzeltony@googlemail.com> wrote:
>
>> On Sat, Jan 26, 2013 at 11:58 PM, Andrei Gherzan <andrei@gherzan.ro>
>> wrote:
>> > On Thu, Jan 24, 2013 at 10:57:42PM +0100, Andreas M=FCller wrote:
>> >> for some reason wildcards don't work in current head. Error message
>> was:
>> >>
>> >> | DEBUG: Executing shell function do_install
>> >> | install: cannot stat
>> `/home/Superandy/tmp/oe-core-eglibc/work/raspberrypi-angstrom-linux-gnue=
abi/xserver-xf86-config/0.1-r18/xorg.conf.d/*':
>> No such file or directory
>> >>
>> >
>> > I can't reproduce your error. For me this works. Maybe was something
>> broken in
>> > oe-core? Anyway it seems to be fixed now. Would you retest it please
>> Will do that
>> >
>> >> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
>> >> ---
>> >>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    6 ++++--
>> >>  1 files changed, 4 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git
>> a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> >> index 65931e2..a8b8e8c 100644
>> >> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> >> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> >> @@ -1,12 +1,14 @@
>> >>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>> >>
>> >>  # Don't forget to bump PRINC if you update the extra files.
>> >> -PRINC :=3D "${@int(PRINC) + 5}"
>> >> +PRINC :=3D "${@int(PRINC) + 6}"
>> >>
>> >>  THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> >>  FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
>> >>
>> >> -SRC_URI_append_raspberrypi =3D " file://xorg.conf.d/* "
>> >> +SRC_URI_append_raspberrypi =3D " \
>> >> +     file://xorg.conf.d/10-evdev.conf \
>> >> +"
>> >>
>> > I don't find this lin ebreak necesssary here. And if it was, don't
>> combine
>> > formating commits with other fixes.
>> >
>> Oops this was left over from some testing.
>>
>> Andreas
>>
>
>
>
> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>



--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307f329ee18fc304dbcd0b37
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can&#39;t replicate this issue and somebody who=A0experien=
ced=A0it in the past confirmed me that it was someway fixed. So I will drop=
 this patch.=A0<div style><br></div><div style>Thanks.</div></div><div clas=
s=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">On Wed, Mar 13, 2013 at 6:47 PM, Andrei =
Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<div dir=3D"ltr"><div>Hey Andreas,</div><div><br></div>Is this sill needed?=
 Did you test this lately?</div><div class=3D"gmail_extra"><div><div class=
=3D"h5"><br><br><div class=3D"gmail_quote">On Sun, Jan 27, 2013 at 4:35 PM,=
 Andreas M=FCller <span dir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@goo=
glemail.com" target=3D"_blank">schnitzeltony@googlemail.com</a>&gt;</span> =
wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Sat, Jan 26, 2013 at 11:58 PM, Andre=
i Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei=
@gherzan.ro</a>&gt; wrote:<br>



&gt; On Thu, Jan 24, 2013 at 10:57:42PM +0100, Andreas M=FCller wrote:<br>
&gt;&gt; for some reason wildcards don&#39;t work in current head. Error me=
ssage was:<br>
&gt;&gt;<br>
&gt;&gt; | DEBUG: Executing shell function do_install<br>
&gt;&gt; | install: cannot stat `/home/Superandy/tmp/oe-core-eglibc/work/ra=
spberrypi-angstrom-linux-gnueabi/xserver-xf86-config/0.1-r18/xorg.conf.d/*&=
#39;: No such file or directory<br>
&gt;&gt;<br>
&gt;<br>
&gt; I can&#39;t reproduce your error. For me this works. Maybe was somethi=
ng broken in<br>
&gt; oe-core? Anyway it seems to be fixed now. Would you retest it please<b=
r>
</div>Will do that<br>
<div>&gt;<br>
&gt;&gt; Signed-off-by: Andreas M=FCller &lt;<a href=3D"mailto:schnitzelton=
y@googlemail.com" target=3D"_blank">schnitzeltony@googlemail.com</a>&gt;<br=
>
&gt;&gt; ---<br>
&gt;&gt; =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A06=
 ++++--<br>
&gt;&gt; =A01 files changed, 4 insertions(+), 2 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1=
.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend<=
br>
&gt;&gt; index 65931e2..a8b8e8c 100644<br>
&gt;&gt; --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappe=
nd<br>
&gt;&gt; +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappe=
nd<br>
&gt;&gt; @@ -1,12 +1,14 @@<br>
&gt;&gt; =A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;&gt;<br>
&gt;&gt; =A0# Don&#39;t forget to bump PRINC if you update the extra files.=
<br>
&gt;&gt; -PRINC :=3D &quot;${@int(PRINC) + 5}&quot;<br>
&gt;&gt; +PRINC :=3D &quot;${@int(PRINC) + 6}&quot;<br>
&gt;&gt;<br>
&gt;&gt; =A0THISDIR :=3D &quot;${@os.path.dirname(bb.data.getVar(&#39;FILE&=
#39;, d, True))}&quot;<br>
&gt;&gt; =A0FILESPATH =3D. &quot;${@base_set_filespath([&quot;${THISDIR}/${=
PN}&quot;], d)}:&quot;<br>
&gt;&gt;<br>
&gt;&gt; -SRC_URI_append_raspberrypi =3D &quot; file://xorg.conf.d/* &quot;=
<br>
&gt;&gt; +SRC_URI_append_raspberrypi =3D &quot; \<br>
&gt;&gt; + =A0 =A0 file://xorg.conf.d/10-evdev.conf \<br>
&gt;&gt; +&quot;<br>
&gt;&gt;<br>
&gt; I don&#39;t find this lin ebreak necesssary here. And if it was, don&#=
39;t combine<br>
&gt; formating commits with other fixes.<br>
&gt;<br>
</div>Oops this was left over from some testing.<br>
<span><font color=3D"#888888"><br>
Andreas<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div></div=
></div><div class=3D"im">-- <br><div dir=3D"ltr"><div style=3D"text-align:c=
enter"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"=
font-family:&#39;Times New Roman&#39;;font-size:medium">


<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a hre=
f=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.74=
4.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162=
812" target=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:center=
"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-s=
ize:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--20cf307f329ee18fc304dbcd0b37--
