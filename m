Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A149AE00770
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 06:31:17 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id fj20so3706996lab.20
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 06:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=eU2sW+d40z/HrqJRCA2MsvkxqAX2q1gerItCQ7I/avI=;
	b=P4ze09XKJ4/qdWiSRwp2tQ+pT7EPJqQDNKKU0ZB5cZCgb55sfpoKOObD8eagLj3Wkw
	hbhWRi//PMVVITzJIGiokt8cMj4fKqjjuJQEyEh/c1FfZJu7SnRHxvc0qyOQIeDTYcdx
	79Wf7KLOcz/DTPifo0Pbv+CKFzzksaKbPGROKJQT0r8DsH6HXUu0UaS1PVHu8Qvnl5YV
	tg6yLr7BuSXJ+Lpjw1wNcER/w3eFQZgewUCt+KoF0ER20naMd5xq7jRlB+XT7an+pr5X
	Ywmq3d1gCeDpWSV1Qow0lmjj/X2ePbLJMJ5HKwOiXr80TLJRIcsD8QU0FUweCukN1nlp
	FDtA==
MIME-Version: 1.0
X-Received: by 10.112.134.166 with SMTP id pl6mr2620314lbb.68.1363354275943;
	Fri, 15 Mar 2013 06:31:15 -0700 (PDT)
Received: by 10.114.98.66 with HTTP; Fri, 15 Mar 2013 06:31:15 -0700 (PDT)
In-Reply-To: <5142AD04.30900@linux.intel.com>
References: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
	<CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
	<4C570CD8-26A9-42D0-994E-5329CE7687D5@gmail.com>
	<5142AD04.30900@linux.intel.com>
Date: Fri, 15 Mar 2013 19:01:15 +0530
Message-ID: <CAE_REAsY=72buk0smfJDdjqBQm3spJ8dPfqMPc3cY9uyPn9XVQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2 version (Yocto-1.3-Danny)
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
X-List-Received-Date: Fri, 15 Mar 2013 13:31:18 -0000
Content-Type: multipart/alternative; boundary=089e01229a6c521e0204d7f6a72d

--089e01229a6c521e0204d7f6a72d
Content-Type: text/plain; charset=ISO-8859-1

Thanks for replying on this.

FYI, I have already open a bug for this:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4014

Regards,
Gaurang Shastri

On Fri, Mar 15, 2013 at 10:39 AM, Saul Wold <sgw@linux.intel.com> wrote:

>
>
> On 03/11/2013 10:17 AM, Khem Raj wrote:
>
>>
>> On Mar 11, 2013, at 3:45 AM, Gaurang Shastri <gmshastri@gmail.com
>> <mailto:gmshastri@gmail.com>> wrote:
>>
>>  Hi All,
>>>
>>> Any shades of light for below query ???
>>>
>>>
>> I would suggest to open a bug for it.
>>
>>  Timing is on this one!
>
> I noticed this recently independent of this email!
>
> I have contacted the maintainer of util-linux to clarify the license of
> mbsalign.c as it's used directly by cal and lslocks and included in the
> common library.
>
> As it also turns out the original reason that util-linux was marked as
> GPLv3 because of lscpu, which is now be changed back to GPLv2.
>
> I will keep people posted on this one.
>
> We try to do our best to keep the license information up to date and
> sometimes files under core licenses slip by. As upstreams projects start to
> use SPDX this kind of problem can be avoided.
>
> Thanks for pointing it out.
>
> Sau!
>
>
>
>
>  //Gaurang Shastri
>>>
>>> On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri <gmshastri@gmail.com
>>> <mailto:gmshastri@gmail.com>> wrote:
>>>
>>>     Hi All,
>>>
>>>     I have some concerns regarding util-linux-2.21.2 version . As per
>>>     Yocto-1.3 (danny) recipe,
>>>     {{{
>>>
>>>     LICENSE_${PN}-lscpu = "GPLv3+"  <-- util-linux_2.21.2.bb
>>>     <http://util-linux_2.21.2.bb/>
>>>
>>>
>>>     LICENSE = "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc
>>>
>>>     }}}
>>>
>>>     So as per the above description, only lscpu is GPLv3.
>>>
>>>     But while looking into the source of util-linux-2.21.2, I found
>>>     out that "util-linux-2.21.2/lib/**mbsalign.c" is GPLv3 and it is
>>>     used by following binaries while building:
>>>     {{{
>>>       -  fdisk
>>>       -  partx
>>>     }}}
>>>
>>>     So does it mean that the above binaries should also be GPLv3 and
>>>     need to take care in util-linux.{bb,inc} ???
>>>
>>>     Regards,
>>>     Gaurang Shastri
>>>
>>>
>>> ______________________________**_________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>

--089e01229a6c521e0204d7f6a72d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for replying on this.<br><br>FYI, I have already open a bug for this=
: <br><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4014">=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4014</a><br><br>Regards=
,<br>
Gaurang Shastri<br><br><div class=3D"gmail_quote">On Fri, Mar 15, 2013 at 1=
0:39 AM, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:sgw@linux.intel.=
com" target=3D"_blank">sgw@linux.intel.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
<div class=3D"im"><br>
<br>
On 03/11/2013 10:17 AM, Khem Raj wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
On Mar 11, 2013, at 3:45 AM, Gaurang Shastri &lt;<a href=3D"mailto:gmshastr=
i@gmail.com" target=3D"_blank">gmshastri@gmail.com</a><br></div><div class=
=3D"im">
&lt;mailto:<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmshast=
ri@gmail.com</a>&gt;&gt; wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi All,<br>
<br>
Any shades of light for below query ???<br>
<br>
</blockquote>
<br>
I would suggest to open a bug for it.<br>
<br>
</div></blockquote>
Timing is on this one!<br>
<br>
I noticed this recently independent of this email!<br>
<br>
I have contacted the maintainer of util-linux to clarify the license of mbs=
align.c as it&#39;s used directly by cal and lslocks and included in the co=
mmon library.<br>
<br>
As it also turns out the original reason that util-linux was marked as GPLv=
3 because of lscpu, which is now be changed back to GPLv2.<br>
<br>
I will keep people posted on this one.<br>
<br>
We try to do our best to keep the license information up to date and someti=
mes files under core licenses slip by. As upstreams projects start to use S=
PDX this kind of problem can be avoided.<br>
<br>
Thanks for pointing it out.<br>
<br>
Sau!<br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D=
"im">

//Gaurang Shastri<br>
<br>
On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri &lt;<a href=3D"mailto:gmsha=
stri@gmail.com" target=3D"_blank">gmshastri@gmail.com</a><br></div><div cla=
ss=3D"im">
&lt;mailto:<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmshast=
ri@gmail.com</a>&gt;&gt; wrote:<br>
<br>
=A0 =A0 Hi All,<br>
<br>
=A0 =A0 I have some concerns regarding util-linux-2.21.2 version . As per<b=
r>
=A0 =A0 Yocto-1.3 (danny) recipe,<br>
=A0 =A0 {{{<br>
<br>
=A0 =A0 LICENSE_${PN}-lscpu =3D &quot;GPLv3+&quot; =A0&lt;-- <a href=3D"htt=
p://util-linux_2.21.2.bb" target=3D"_blank">util-linux_2.21.2.bb</a><br></d=
iv>
=A0 =A0 &lt;<a href=3D"http://util-linux_2.21.2.bb/" target=3D"_blank">http=
://util-linux_2.21.2.bb/</a>&gt;<div class=3D"im"><br>
<br>
=A0 =A0 LICENSE =3D &quot;GPLv2+ &amp; LGPLv2.1+ &amp; BSD&quot; =A0 &lt;--=
 util-linux.inc<br>
<br>
=A0 =A0 }}}<br>
<br>
=A0 =A0 So as per the above description, only lscpu is GPLv3.<br>
<br>
=A0 =A0 But while looking into the source of util-linux-2.21.2, I found<br>
=A0 =A0 out that &quot;util-linux-2.21.2/lib/<u></u>mbsalign.c&quot; is GPL=
v3 and it is<br>
=A0 =A0 used by following binaries while building:<br>
=A0 =A0 {{{<br>
=A0 =A0 =A0 - =A0fdisk<br>
=A0 =A0 =A0 - =A0partx<br>
=A0 =A0 }}}<br>
<br>
=A0 =A0 So does it mean that the above binaries should also be GPLv3 and<br=
>
=A0 =A0 need to take care in util-linux.{bb,inc} ???<br>
<br>
=A0 =A0 Regards,<br>
=A0 =A0 Gaurang Shastri<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
</div><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote><div class=3D"im">
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</div></blockquote>
</blockquote></div><br>

--089e01229a6c521e0204d7f6a72d--
