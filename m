Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC4DDE00B81; Sun, 29 Jul 2018 11:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8C4E00AC5
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 11:12:11 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id w7-v6so6427060uan.9
	for <yocto@yoctoproject.org>; Sun, 29 Jul 2018 11:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JQB3CHEtc/5ePMdYIEujDO8w5hWCjBQ0Aw4wyxU7ah8=;
	b=JGHospdb5yVwkF+NF7PW4fAzktOhcmjtFKNtQaj3S1lN4KT46W1ZzMilyHel9t1DaO
	cLyykSH4WLh1h/t6fCpHQLjn5KzLDik2GH8LRzr/m107Seq2ZVAsRRap3+bSDxsbM/GQ
	I33Q2DkX5tIlE+66q9UC77l2wt7Lehcotxl0TJlMfkLbonXRowCgBecFuVNps17xB/eL
	hPD8BIIjiMtT3Q4BtxvcWwndQx/7TDNGy7CiofETgPt+yBZhTl3yREkA512GVTbD9+57
	MPaUalGDnsUBy2/qLTMqpshlnB1fx4gssN2CpEeu1ElvEBhInHBpGe0k6BtdCfVo9KMC
	wE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JQB3CHEtc/5ePMdYIEujDO8w5hWCjBQ0Aw4wyxU7ah8=;
	b=TQSRj7W8MoSOQG5qTB+tNZJus8S+zxHtirjgvz3lDjAdn5LQsQAJxPeDTiMxNkvvk9
	f7ShqYMl8yBeet+a+MC8qOaRigMo2nhucW/z4L9hl8KY7gxI4pcwDOO6bOWmP+gxAZHM
	JO7OzPZGY9+Gg/ip0SenFJaNHBtsaA2btlOmyx8YmoWR+a+DsCIOkovZrXCi/B21IgNP
	MjfmhrkyucZwYXke7LCrzBgANfu4lIVYDsNo0B1oJHaaKOlMm9FI+bNy6PjpnWDlHE3t
	kRG/AuxaZDh9TN/8D7OrjMKLe3dA+HBvQ2L/KyoKGquzMIeY/T/RrdpzK+2L/PsnkCch
	jhWQ==
X-Gm-Message-State: AOUpUlGvjWIApUivj3/jb8I3ZCpJKzF3hRQUEoPhO5ZLknV3w0sKvlCJ
	3H17K3xFt+MZSCquFG3RKd0NzIFqaO8DKYe6wX0g/Q==
X-Google-Smtp-Source: AAOMgpeRRgnKiZC+XOqw+FDmKVIO45Fnn48FRAVmr+HKq1ZMuimo4pLRs9DiHQ9O3lm/D0cD8jxjErZRNllah8FniAM=
X-Received: by 2002:ab0:42a6:: with SMTP id
	j35-v6mr10063712uaj.143.1532887930883; 
	Sun, 29 Jul 2018 11:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAN3t-YCYAT417M2TMLrS=5MsMR0r2Vb6a6MU5=yUv6FzE82VzA@mail.gmail.com>
	<CAN3t-YCfEv3PeTXjAOyRywuTk4=to47OcbeN=JJYYN5v2-w76Q@mail.gmail.com>
	<CAO5Uq5TcAYuYeWpegV_qAtKm_SN9HbVXYVOzKbDQKXhm9ngAeQ@mail.gmail.com>
	<CAN3t-YBfqhN7HqeixPQJZhm6N7=z1RZp7+jFCVid_cyAAxKNCg@mail.gmail.com>
In-Reply-To: <CAN3t-YBfqhN7HqeixPQJZhm6N7=z1RZp7+jFCVid_cyAAxKNCg@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Sun, 29 Jul 2018 19:11:59 +0100
Message-ID: <CAO5Uq5RU27vhWtzYWNK4s_z0QfHG6Pf4dRDQqbA5HFnpC-M_2g@mail.gmail.com>
To: Karim Gillani <karim@gillani.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: File copy to bootfs
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
X-List-Received-Date: Sun, 29 Jul 2018 18:12:13 -0000
Content-Type: multipart/alternative; boundary="00000000000099d30205722748bb"

--00000000000099d30205722748bb
Content-Type: text/plain; charset="UTF-8"

Add it to your wic file - assuming that's how you're building your image.
If it's not, obviously it's not going to help you!

On Sun, 29 Jul 2018, 17:12 Karim Gillani, <karim@gillani.org> wrote:

> Thank you.  Can I use that command in my image .bb file?
>
> so something like this?
> replace:
> install -m 0644 ${WORKDIR}/config.txt ${DEPLOY_DIR_IMAGE}/boot/
> sbcconf/config.txt
>
> with:
>
> wic cp ${WORKDIR}/config.txt --native-sysroot /boot/sbcconf/config.txt
>
>
> On 29 July 2018 at 01:46, Alex Kiernan <alex.kiernan@gmail.com> wrote:
>
>> wic cp? Can't spot it in the manual, but look in:
>>
>> https://git.yoctoproject.org/cgit.cgi/poky/plain/scripts/lib/wic/help.py
>>
>>
>>
>> On Sun, 29 Jul 2018, 07:01 Karim Gillani, <karim@gillani.org> wrote:
>>
>>> This commands places the file in the /boot directory but then a script
>>> used within rootfs can't see it.
>>>
>>> install -m 0644 ${WORKDIR}/config.txt
>>> ${DEPLOY_DIR_IMAGE}/boot/sbcconf/config.txt
>>>
>>> The next command puts it in a place where the rootfs can access it, but
>>> I can't access the file in the fat partition.
>>> install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt
>>>
>>> Any suggestions?
>>>
>>> On 28 July 2018 at 21:47, Karim Gillani <karim@gillani.org> wrote:
>>>
>>>> Is there an easy way to copy a couple of files to the $bootfs  (/boot
>>>> directory)?
>>>>
>>>> when I copy files there, they show as if they are in /boot but they are
>>>> not on the bootfs partition.
>>>>
>>>> Thanks
>>>> Karim
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>

--00000000000099d30205722748bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Add it to your wic file - assuming that&#39;s how you&#39=
;re building your image. If it&#39;s not, obviously it&#39;s not going to h=
elp you!</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, 29 Ju=
l 2018, 17:12 Karim Gillani, &lt;<a href=3D"mailto:karim@gillani.org">karim=
@gillani.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr">Thank you.=C2=A0 Can I use that command in my image .bb file?<div=
><br></div><div>so something like this?</div><div>replace:</div><div>

<span style=3D"font-size:12.8px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">install -m 0644 ${WORKDIR}/config.txt ${DEPLOY_DIR_IMAGE}/boot/</span><s=
pan style=3D"font-size:12.8px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>sbcconf/config.txt</span>

<br></div><div><br></div><div>with:</div><div>

<pre style=3D"color:rgb(0,0,0);text-decoration-style:initial;text-decoratio=
n-color:initial;word-wrap:break-word;white-space:pre-wrap">wic cp <span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;whi=
te-space:normal;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">${WORKDIR}/co=
nfig.txt=C2=A0</span>--native-sysroot <span style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;white-space:normal;text-decoration-style:initial=
;text-decoration-color:initial;font-size:12.8px;background-color:rgb(255,25=
5,255);float:none;display:inline">/boot/</span><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;white-space:normal;text-decoration-styl=
e:initial;text-decoration-color:initial;font-size:12.8px;background-color:r=
gb(255,255,255);float:none;display:inline">sbcconf/config.txt</span><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;wh=
ite-space:normal;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><span>=C2=A0=
</span></span>=C2=A0</pre></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On 29 July 2018 at 01:46, Alex Kiernan <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alex.kiernan@gmail.com" target=3D"_blank" rel=3D"n=
oreferrer">alex.kiernan@gmail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"auto">wic cp?=C2=A0<span style=3D"font-family:sa=
ns-serif">Can&#39;t spot it in the manual, but look</span>=C2=A0in:<div dir=
=3D"auto"><br></div><div dir=3D"auto"><a href=3D"https://git.yoctoproject.o=
rg/cgit.cgi/poky/plain/scripts/lib/wic/help.py" rel=3D"noreferrer noreferre=
r" target=3D"_blank">https://git.yoctoproject.org/cgit.cgi/poky/plain/scrip=
ts/lib/wic/help.py</a><br></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, =
29 Jul 2018, 07:01 Karim Gillani, &lt;<a href=3D"mailto:karim@gillani.org" =
rel=3D"noreferrer noreferrer" target=3D"_blank">karim@gillani.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">This command=
s places the file in the /boot directory but then a script used within root=
fs can&#39;t see it.<div><br></div><div>install -m 0644 ${WORKDIR}/config.t=
xt ${DEPLOY_DIR_IMAGE}/boot/sbcconf/config.txt<br></div><div><br></div><div=
>The next command puts it in a place where the rootfs can access it, but I =
can&#39;t access the file in the fat partition.</div><div>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt</span>

<br></div><div><br></div><div>Any suggestions?</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 28 July 2018 at 21:47, Karim Gi=
llani <span dir=3D"ltr">&lt;<a href=3D"mailto:karim@gillani.org" rel=3D"nor=
eferrer noreferrer noreferrer" target=3D"_blank">karim@gillani.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Is there a=
n easy way to copy a couple of files to the $bootfs=C2=A0 (/boot directory)=
?<div><br></div><div>when I copy files there, they show as if they are in /=
boot but they are not on the bootfs partition.</div><div><br></div><div>Tha=
nks</div><span class=3D"m_-5628292454139784933m_9214236082002585331m_-55155=
11195347674134m_-4240567450723488136HOEnZb"><font color=3D"#888888"><div>Ka=
rim</div></font></span></div>
</blockquote></div><br></div><span class=3D"m_-5628292454139784933HOEnZb"><=
font color=3D"#888888">
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noreferrer nore=
ferrer" target=3D"_blank">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/listinfo/yocto</a><br>
</font></span></blockquote></div>
</blockquote></div><br></div>
</blockquote></div>

--00000000000099d30205722748bb--
