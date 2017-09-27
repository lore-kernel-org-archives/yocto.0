Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF40AE00B8B; Wed, 27 Sep 2017 10:22:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC8B2E00B1B
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 10:22:20 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id c137so8129876pga.11
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 10:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yuEpKRP8BCwm+C5xm041H/U8tt3arce4P/TlzyjE688=;
	b=gZ+uEGlfvwOLvMs83j0wawe/TwRWV3y3Dq/4gK0+WwaCNqbr4ffV0yUb7DU46N89P4
	LTJ+f8YbTB2BxzHDCrW7P3iQKs8qyDTK/ZF0MNd/rkutRek4Kxs7ORgwC0XStd0eEz5f
	uuD4fMV/T/33rfNvAQ2yjowXJa6scINu/BWm//5W1uuX6Mj+R4GEbUid+iBktdHUf9UZ
	3Kmgdgths9kDlcEA+qyteT2qiM0ZvGjZRTde9y+1535sTByShOYCRWyy1j0cfhZhWI7K
	Otc4G33XFbFH6ilSP/Nu5vjb6uSEAKCl2YUmW5YWASREjgfzELBrk8yHzrmnZJfQ9UZE
	ZfQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yuEpKRP8BCwm+C5xm041H/U8tt3arce4P/TlzyjE688=;
	b=jwJl5LT1OmwIgUD4NmXcjCgUZAnPcpK0nFo4Gg86bzLqbW5HFuLTPMuA3+dzPjkyIk
	Z2G6Bmbp5OS/aHt83LiSKlR7HPxXKsmGvJ6Z18Fc+Ldg5KnoKFT72jrQTQIyrzbxGKoc
	0Eqs6XqOlVKGjptER/1fhovf8+l4mPTL5m0w//KkaeZJLzjTQlR+q9j+xophEJFlfl7Y
	9MbovXV/Z82m80FJZfTGxm9zRpyqkHK/fT65rho43yifnMX9NUyyoZiRkDORLFWOlGO9
	wM1PtqNN1H5z90F1pkOs1tpBsAgbj6pxlzBZ9jtstLSk1drXyNKwkrcyV2uoPmUlTAJF
	L/mg==
X-Gm-Message-State: AHPjjUjqYh5iG0AOscl2Twl7d/RstipkfxHf2DXAfDmk2YnC4CXhHkIe
	KPwUvXuMO6Nr6/8iAe7yXn7TUwH7x+Xo20VFNJ8=
X-Google-Smtp-Source: AOwi7QCHoK7/PGfD8icbYuF3O5hYrpB8oIWg0y4iZnA7eVDGWevkmTCCOTKjmg8G/LIt2AP6MmRUrA+9qM3h8d5XqTc=
X-Received: by 10.98.157.74 with SMTP id i71mr1962218pfd.168.1506532940313;
	Wed, 27 Sep 2017 10:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
	<CACwBRSC=TrjHrme9neN2wRoak9duR=mp5bfDZX2+GMYyYtbNgg@mail.gmail.com>
In-Reply-To: <CACwBRSC=TrjHrme9neN2wRoak9duR=mp5bfDZX2+GMYyYtbNgg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Sep 2017 17:22:09 +0000
Message-ID: <CAMKF1sqwPiLOvjT9hUA7ui8VrrA9+K_yMymsu5vAiWYxNXL8mg@mail.gmail.com>
To: John Finley <john.finley@gmail.com>, "Kumar,
	Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: Re: want to execute a script having sudo : sudo cryptsetup
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
X-List-Received-Date: Wed, 27 Sep 2017 17:22:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c113464bff8ff055a2f0812"

--94eb2c113464bff8ff055a2f0812
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 9:21 AM John Finley <john.finley@gmail.com> wrote:

> Try making it so the user doing the build is not prompted for a password
> when they do "sudo". I have this in my vm:
>

I think you can leverage pseudo tool to emulate the root user during build

    john@vbox-ubuntu-16$ cat /etc/sudoers.d/john
>     john ALL=(ALL) NOPASSWD: ALL
>     john@vbox-ubuntu-16$
> I don't know if that's all that's needed; I have to google it every time.
>
> On Mon, Sep 25, 2017 at 2:48 AM, Kumar, Shrawan <Shrawan.Kumar@harman.com>
> wrote:
>
>> Hello Team ,
>>
>>
>>
>> I am trying to achieve below from yocto , do we have a way  ?
>>
>>
>>
>>
>>
>> dd if=/dev/zero of=hello.enc bs=4k count=$400
>>
>> mknod /dev/loop_dev_0
>>
>> losetup /dev/loop_dev_0 hello.enc
>>
>> *sudo* cryptsetup --type=plain open /dev/loop_dev_0  plainMap < $2
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> Thanks and Regards
>>
>> Shrawan
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c113464bff8ff055a2f0812
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Sep 27, 2017 =
at 9:21 AM John Finley &lt;<a href=3D"mailto:john.finley@gmail.com">john.fi=
nley@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=
Try making it so the user doing the build is not prompted for a password wh=
en they do &quot;sudo&quot;. I have this in my vm:</div></blockquote><div d=
ir=3D"auto"><br></div><div dir=3D"auto">I think you can leverage pseudo too=
l to emulate the root user during build=C2=A0</div><div dir=3D"auto"><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div><div>=C2=A0 =C2=A0 john@vbox-u=
buntu-16$ cat /etc/sudoers.d/john=C2=A0</div><div>=C2=A0 =C2=A0 john ALL=3D=
(ALL) NOPASSWD: ALL</div><div>=C2=A0 =C2=A0 john@vbox-ubuntu-16$=C2=A0</div=
></div><div>I don&#39;t know if that&#39;s all that&#39;s needed; I have to=
 google it every time.</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Sep 25, 2017 at 2:48 AM, Kumar, Shrawan <span>&lt;=
<a href=3D"mailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar=
@harman.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_364169273529879273m_7332210310540792190WordSection1">
<p class=3D"MsoNormal">Hello Team ,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to achieve below from yocto , do we have=
 a way =C2=A0?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">dd if=3D/dev/zero of=3Dhello.enc bs=3D4k count=3D$40=
0<u></u><u></u></p>
<p class=3D"MsoNormal">mknod /dev/loop_dev_0<u></u><u></u></p>
<p class=3D"MsoNormal">losetup /dev/loop_dev_0 hello.enc<u></u><u></u></p>
<p class=3D"MsoNormal"><b><u><span style=3D"background:yellow">sudo</span><=
/u></b> cryptsetup --type=3Dplain open /dev/loop_dev_0 =C2=A0plainMap &lt; =
$2<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks and Regards<span class=3D"m_36416927352987927=
3HOEnZb"><font color=3D"#888888"><u></u><u></u></font></span></p><span clas=
s=3D"m_364169273529879273HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal">Shrawan<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</font></span></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c113464bff8ff055a2f0812--
