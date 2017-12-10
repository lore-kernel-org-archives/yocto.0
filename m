Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61642E00D32; Sun, 10 Dec 2017 14:30:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E197E008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 14:30:42 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id u19so10129766pfa.12
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 14:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=scqlIbfzbinLcjwBU3Z5Z75ez2J5bYmWSN453qulI+E=;
	b=YCumHAcvzAE/rTSYTR3AdFn6mfHk13VJYgLdpL4J3QyukeQbMENrG6amhUujVCuoT2
	1JUlJPITjVMeM92rJrEcR68x8D0oqkC7wGDdV6ZGXJInIsMvHtzf0oBAKcSK3kEyYGk9
	RIHWeSf7U0CKZiOyZL9uDGUlpo1cmmD8s1EV6enWqvj0mute7eoHmtWnH3kit+5mHkFr
	jP6PooaLSrXFDSOCOdVZuT9M+jHiB2NhHsAfOUfNqsP6n8TwRjmyq5NRBMwwNS72ftml
	G+Zd62900cWr0ngGXf0ESb745Krp2jwfqwOPT7vaCRscnkWFoqS+sSo1kCHexu3nqIrG
	sOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=scqlIbfzbinLcjwBU3Z5Z75ez2J5bYmWSN453qulI+E=;
	b=H5x6cQ/96ZKiZr0btmWAFPocgZlF4GVdUSGpAklcz/fX8AFKInvke+9xYPhQjDtaTO
	IT+weVXHCoGzHqTENdgcTxO3QLJKiuSf+/uJshNnVn3uPsSi80jxTnJO66BhA/pYAYsv
	5sNhfRKrLxLqhDeS1aXcOE0wMZ2syWYAO7sr29pY0T2MT9chplvejdrjYlPe/gz6IC2Q
	i3AB061GsWDdMjpLI1wBbayNGwQwj+3tv16qsySIABL1sPDUzgllFvw4AoMZz0k8AId4
	Yk5QUQEs3iGD7xMhrLjlO3dvZbVac1rD+sqDHkvLJgytz4zQ/NtSVCzb6wlE7c32O/Ac
	429A==
X-Gm-Message-State: AJaThX6V/h2zfRmetllP/QkjjK0TlaoRaiMJfR4RD23YXOorhDd7XL+U
	kI8tTz1R+XzM5m+svxsEGvkeyKVu8Znzl5HX41xGeA==
X-Google-Smtp-Source: AGs4zMblU1HF8Ro6aaP+L2sIkxyp5pfk/wpRdy+tnofpqxUdYNbp9ooCkKzZ/o4xNWeMyR9L55rgtRvz4I/9Kgo1kb8=
X-Received: by 10.159.247.134 with SMTP id e6mr35984729pls.279.1512945041620; 
	Sun, 10 Dec 2017 14:30:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 10 Dec 2017 14:30:41 -0800 (PST)
In-Reply-To: <ab6b73d3-60af-af0a-aee6-1be2e1e3c5c0@embexus.com>
References: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
	<CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
	<CAPb0b+N6+9PTKF2z6VCUfye9RF8tEavUCkK7SBa2LaF-3TGrMw@mail.gmail.com>
	<CAPb0b+NGzO888YqtD8t5RHuqDD1eT3Gc7zqSoVFepEhUX6h9QA@mail.gmail.com>
	<ab6b73d3-60af-af0a-aee6-1be2e1e3c5c0@embexus.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 10 Dec 2017 23:30:41 +0100
Message-ID: <CAPb0b+Md5iAjBUT58FtkB=wmqR3BDRgo++mbp=thPiWz0E4BFg@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 22:30:43 -0000
Content-Type: multipart/alternative; boundary="089e082bf120c54493056003f7fa"

--089e082bf120c54493056003f7fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

no this does not work with the psplash .. please see the link ..
now  i have the psplash does not show, but it keeps compiling.
I made a psplash_%.bbappend but it does not work. I need to remove from the
file system this file /usr/bin/psplash_write
this is my code. please correct me. I was testing and all this did not work=
.


FILESEXTRAPATHS_append :=3D "${THISDIR}/${PN}:"

my_postprocess_function () {
        rm -r ${WORKINGDIR}/psplash-write
    rm -r ${D}${bindir}/psplash-write
}

ROOTFS_POSTPROCESS_COMMAND =3D " my_postprocess_function;"


On Sun, Dec 10, 2017 at 10:52 PM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote=
:

> Hi,
>
> you can disable psplash by removing the package from your image:
>
>
> IMAGE_FEATURES_remove =3D "splash"
>
>
>
> cheers,
>
> --
>
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Stra=C3=9Fe 2/1
> <https://maps.google.com/?q=3DVaihinger+Stra%C3%9Fe+2/1&entry=3Dgmail&sou=
rce=3Dg>
> D-71634 Ludwigsburg
>
> Email    : ayoub.zaki@embexus.com
> Homepage : https://embexus.com
> VAT No.  : DE313902634
>
>
>
> On 10.12.2017 22:43, Sherif Omran wrote:
>
>> |i found the solution for it and posted it here
>> https://stackoverflow.com/questions/47738738/how-to-disable-
>> psplash-screen-in-yocto/47743610#47743610 |
>> |but there is still one problem, that comes from this patch
>> https://patchwork.openembedded.org/patch/47017/ |
>> |i get the following : |
>> *umount: can't unmount /mnt/.psplash: Invalid argument *
>> *it comes from the umount -> because it is unmounting unexisitng folder.
>> i dont understand this code clearly. *if type psplash-write >/dev/null
>> 2>&1; then
>>           TMPDIR=3D/mnt/.psplash psplash-write "QUIT" || true
>>         umount /mnt/.psplash
>>
>> On Sun, Dec 10, 2017 at 8:37 PM, Sherif Omran <sherifomran2000@gmail.com
>> <mailto:sherifomran2000@gmail.com>> wrote:
>>
>>     thank you for your reply. I don't find these parameters in any
>>     recipe. I am still confused, how to approach.
>>
>>
>>     On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsavljevic
>>     <zoran.stojsavljevic@gmail.com
>>     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>>
>>         > As far as i understood, we can pass it from uboot, but how?
>>         https://community.nxp.com/thread/460796
>>         <https://community.nxp.com/thread/460796>
>>
>>         Zoran
>>
>>         On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran
>>         <sherifomran2000@gmail.com <mailto:sherifomran2000@gmail.com>>
>>         wrote:
>>
>>             hi
>>
>>             any body knows how to diable the psplash? as per
>>             documentation it says pass psplash=3Dfalse to the kernel.
>>             But how to pass it to the kernel? I tried adding it to
>>             kernel.cfg but does not seem to be correct. As far as i
>>             understood, we can pass it from uboot, but how?
>>
>>             thanks for your help
>>
>>             --
>>             _______________________________________________
>>             yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>             https://lists.yoctoproject.org/listinfo/yocto
>>             <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>>
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e082bf120c54493056003f7fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>no this does not work with the psplash .. p=
lease see the link .. <br></div>now=C2=A0 i have the psplash does not show,=
 but it keeps compiling. <br></div>I made a psplash_%.bbappend but it does =
not work. I need to remove from the file system this file /usr/bin/psplash_=
write <br></div>this is my code. please correct me. I was testing and all t=
his did not work.<br><div><br><br>FILESEXTRAPATHS_append :=3D &quot;${THISD=
IR}/${PN}:&quot;<br><br>my_postprocess_function () {<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rm -r ${WORKINGDIR}/psplash-write<br>=C2=A0=C2=A0=
=C2=A0 rm -r ${D}${bindir}/psplash-write<br>}<br><br>ROOTFS_POSTPROCESS_COM=
MAND =3D &quot; my_postprocess_function;&quot;<br><br></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Dec 10, 2017 at 10=
:52 PM, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@embex=
us.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi,<br>
<br>
you can disable psplash by removing the package from your image:<br>
<br>
<br>
IMAGE_FEATURES_remove =3D &quot;splash&quot;<br>
<br>
<br>
<br>
cheers,<br>
<br>
-- <br>
<br>
Ayoub Zaki<br>
Embedded Systems Consultant<br>
<br>
<a href=3D"https://maps.google.com/?q=3DVaihinger+Stra%C3%9Fe+2/1&amp;entry=
=3Dgmail&amp;source=3Dg">Vaihinger Stra=C3=9Fe 2/1</a><br>
D-71634 Ludwigsburg<br>
<br>
Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_b=
lank">ayoub.zaki@embexus.com</a><br>
Homepage : <a href=3D"https://embexus.com" rel=3D"noreferrer" target=3D"_bl=
ank">https://embexus.com</a><br>
VAT No.=C2=A0 : DE313902634<span class=3D""><br>
<br>
<br>
<br>
On 10.12.2017 22:43, Sherif Omran wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
|i found the solution for it and posted it here <a href=3D"https://stackove=
rflow.com/questions/47738738/how-to-disable-psplash-screen-in-yocto/4774361=
0#47743610" rel=3D"noreferrer" target=3D"_blank">https://stackoverflow.com/=
ques<wbr>tions/47738738/how-to-disable-<wbr>psplash-screen-in-yocto/<wbr>47=
743610#47743610</a> |<br>
|but there is still one problem, that comes from this patch <a href=3D"http=
s://patchwork.openembedded.org/patch/47017/" rel=3D"noreferrer" target=3D"_=
blank">https://patchwork.openembedded<wbr>.org/patch/47017/</a> |<br>
|i get the following : |<br></span>
*umount: can&#39;t unmount /mnt/.psplash: Invalid argument *<br>
*it comes from the umount -&gt; because it is unmounting unexisitng folder.=
 i dont understand this code clearly. *if type psplash-write &gt;/dev/null =
2&gt;&amp;1; then<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TMPDIR=3D/mnt/.psplash psplash-write &qu=
ot;QUIT&quot; || true<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 umount /mnt/.psplash<br>
<br></span><span class=3D"">
On Sun, Dec 10, 2017 at 8:37 PM, Sherif Omran &lt;<a href=3D"mailto:sherifo=
mran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a> &lt;mai=
lto:<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifom=
ran2000@gmail.<wbr>com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 thank you for your reply. I don&#39;t find these parameters i=
n any<br>
=C2=A0 =C2=A0 recipe. I am still confused, how to approach.<br>
<br>
<br>
=C2=A0 =C2=A0 On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsavljevic<br>
=C2=A0 =C2=A0 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=
=3D"_blank">zoran.stojsavljevic@gmail.com</a><br></span><span class=3D"">
=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:zoran.stojsavljevic@gmail.com" t=
arget=3D"_blank">zoran.stojsavljevic@gm<wbr>ail.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; As far as i understood, we can pass it fro=
m uboot, but how?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://community.nxp.com/thread/460=
796" rel=3D"noreferrer" target=3D"_blank">https://community.nxp.com/thre<wb=
r>ad/460796</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://community.nxp.com/thread=
/460796" rel=3D"noreferrer" target=3D"_blank">https://community.nxp.com/thr=
<wbr>ead/460796</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Zoran<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran<b=
r></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:sherifomran2000@gmail.com=
" target=3D"_blank">sherifomran2000@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.<wbr=
>com</a>&gt;&gt;<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 any body knows how to diable the =
psplash? as per<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 documentation it says pass psplas=
h=3Dfalse to the kernel.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 But how to pass it to the kernel?=
 I tried adding it to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel.cfg but does not seem to b=
e correct. As far as i<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 understood, we can pass it from u=
boot, but how?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 thanks for your help<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ______________________________<wb=
r>_________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yocto mailing list<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproj=
ect.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D=
"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a=
><wbr>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctopro=
ject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists=
.yoctoproject.org<wbr>/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoct=
oproject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.or<wbr>g/listinfo/yocto</a>&gt;<br>
<br>
<br>
<br>
<br>
<br>
<br>
</blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--089e082bf120c54493056003f7fa--
