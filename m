Return-Path: <john.finley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A39CE00B53; Wed, 27 Sep 2017 10:28:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.finley[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6379BE009F5
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 10:28:26 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id m72so21070879wmc.1
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 10:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+86RWPwSEYK3tg2RXvnmI1JNV2ruklaekEI+YkcCcjQ=;
	b=puvgO4pUFxVz/VXgJkaQGKBLksBK+btfL6+uVf8WAHv+Ww9886oiluggx77u7WZnBj
	EwNevvGfdTUvRidN3LEWDXVIK0olJqWQs66qYKKixKEVm7BTsh7BS+SJ6LUvwyGhWxUK
	B02INxKmalOGC9oQazjEDeHSJ5y+NB3RGATdCPC3eKH/UyAL+mmNqFPMXzm7b7ru2J2q
	xCpBPjv/aqvCH4C1e1215HM8UAkB9kAoft8ih3T9X+V0VayzCiWyB8sVQzxq5h4ih4xC
	l9b6ufXxLnS9zrtmv5HT+SWTbLVFeiJ57OVoYZA+LdvROGVW/4pkuxnkxIzV9GADzTKL
	kmFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+86RWPwSEYK3tg2RXvnmI1JNV2ruklaekEI+YkcCcjQ=;
	b=QJSmSuIoTlGJeqs+8pdwY+sCEydGLDYoDW+DR+N3tZD9fMXL5VlMg2s/aiPYCvhN9s
	vXfSoqzk1jJ6yx7rMuQwrQrhW1XfOw1B5i8GQV6NLFkUHbmzqTeaa609/KDpDi5Fi1o6
	U1bfCdErwP1uNEbtgrc698O+K/UoTxfGyoMzSkX7AqF8nUwz4rSNyAuJyO+Bg/6vTq5o
	fVV7mJXur/kpOzyqYBjilQxVHp+LOC6dLLE7bfQcrT3ck4pl5kb7HpE2ospxoiMSTXQX
	G5OIC1QjOxWYz/KpZlD0ZJxPBy6QyW/tjX8tgg9jAOsyj+iZe+Xvvui9/2sAj4kGRh8T
	wbeg==
X-Gm-Message-State: AHPjjUg5ngrDPhSpDvPeII8YsGEyaka1qnnhA7FCgyOePbzMIgBj3O4m
	nDmqTh5Tuu17yuUOc/wWvHBkvgXII4nhAp7EEi8=
X-Google-Smtp-Source: AOwi7QB9aGBVY2TBR4sbGAB1htpnLf8yZs+g8Rf0UgUiXuLJn6Nej4vKecY/4icg8rJZ4TjoXi+d/27WetzSoindTgM=
X-Received: by 10.28.227.68 with SMTP id a65mr1073716wmh.88.1506533306057;
	Wed, 27 Sep 2017 10:28:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.69.7 with HTTP; Wed, 27 Sep 2017 10:28:25 -0700 (PDT)
In-Reply-To: <CAMKF1sqwPiLOvjT9hUA7ui8VrrA9+K_yMymsu5vAiWYxNXL8mg@mail.gmail.com>
References: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
	<CACwBRSC=TrjHrme9neN2wRoak9duR=mp5bfDZX2+GMYyYtbNgg@mail.gmail.com>
	<CAMKF1sqwPiLOvjT9hUA7ui8VrrA9+K_yMymsu5vAiWYxNXL8mg@mail.gmail.com>
From: John Finley <john.finley@gmail.com>
Date: Wed, 27 Sep 2017 10:28:25 -0700
Message-ID: <CACwBRSBD8bwUqorvT-ACJZQTGPyfaABrc2BkZ1uk+q1bBy-GVA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Kumar,
	Shrawan" <Shrawan.Kumar@harman.com>,
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
X-List-Received-Date: Wed, 27 Sep 2017 17:28:28 -0000
Content-Type: multipart/alternative; boundary="001a114b12dc8cc7d4055a2f1e0b"

--001a114b12dc8cc7d4055a2f1e0b
Content-Type: text/plain; charset="UTF-8"

pseudo can't do some of the cryptsetup functions that really require root,
or at least I could not convince it to. Using sudo is not so good, but I
don't think there's an easy way around it for the cryptsetup stuff.

On Wed, Sep 27, 2017 at 10:22 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Wed, Sep 27, 2017 at 9:21 AM John Finley <john.finley@gmail.com> wrote:
>
>> Try making it so the user doing the build is not prompted for a password
>> when they do "sudo". I have this in my vm:
>>
>
> I think you can leverage pseudo tool to emulate the root user during build
>
>     john@vbox-ubuntu-16$ cat /etc/sudoers.d/john
>>     john ALL=(ALL) NOPASSWD: ALL
>>     john@vbox-ubuntu-16$
>> I don't know if that's all that's needed; I have to google it every time.
>>
>> On Mon, Sep 25, 2017 at 2:48 AM, Kumar, Shrawan <Shrawan.Kumar@harman.com
>> > wrote:
>>
>>> Hello Team ,
>>>
>>>
>>>
>>> I am trying to achieve below from yocto , do we have a way  ?
>>>
>>>
>>>
>>>
>>>
>>> dd if=/dev/zero of=hello.enc bs=4k count=$400
>>>
>>> mknod /dev/loop_dev_0
>>>
>>> losetup /dev/loop_dev_0 hello.enc
>>>
>>> *sudo* cryptsetup --type=plain open /dev/loop_dev_0  plainMap < $2
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> Thanks and Regards
>>>
>>> Shrawan
>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--001a114b12dc8cc7d4055a2f1e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">pseudo can&#39;t do some of the cryptsetup functions that =
really require root, or at least I could not convince it to. Using sudo is =
not so good, but I don&#39;t think there&#39;s an easy way around it for th=
e cryptsetup stuff.</div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Wed, Sep 27, 2017 at 10:22 AM, Khem Raj <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><br><div class=
=3D"gmail_quote"><span class=3D""><div dir=3D"auto">On Wed, Sep 27, 2017 at=
 9:21 AM John Finley &lt;<a href=3D"mailto:john.finley@gmail.com" target=3D=
"_blank">john.finley@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div>Try making it so the user doing the build is not prompted f=
or a password when they do &quot;sudo&quot;. I have this in my vm:</div></b=
lockquote><div dir=3D"auto"><br></div></span><div dir=3D"auto">I think you =
can leverage pseudo tool to emulate the root user during build=C2=A0</div><=
span class=3D""><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><div><div>=C2=A0 =C2=A0 john@vbox-ubuntu-16$ cat /etc/sudoers.d/john=
=C2=A0</div><div>=C2=A0 =C2=A0 john ALL=3D(ALL) NOPASSWD: ALL</div><div>=C2=
=A0 =C2=A0 john@vbox-ubuntu-16$=C2=A0</div></div><div>I don&#39;t know if t=
hat&#39;s all that&#39;s needed; I have to google it every time.</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 25, =
2017 at 2:48 AM, Kumar, Shrawan <span>&lt;<a href=3D"mailto:Shrawan.Kumar@h=
arman.com" target=3D"_blank">Shrawan.Kumar@harman.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_1751244858306768769m_364169273529879273m_733221031054079219=
0WordSection1">
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
<p class=3D"MsoNormal">Thanks and Regards<span class=3D"m_17512448583067687=
69m_364169273529879273HOEnZb"><font color=3D"#888888"><u></u><u></u></font>=
</span></p><span class=3D"m_1751244858306768769m_364169273529879273HOEnZb">=
<font color=3D"#888888">
<p class=3D"MsoNormal">Shrawan<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</font></span></div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></span></div></div>
</blockquote></div><br></div>

--001a114b12dc8cc7d4055a2f1e0b--
