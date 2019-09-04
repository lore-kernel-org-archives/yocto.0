Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE8D8E00E05; Wed,  4 Sep 2019 09:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E014E00D9F
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 09:41:24 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id x5so6097255qkh.5
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 09:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=T3CkIzma+NMiFserCfvhKRxeEkaKGcEF8pVaDXwCNmc=;
	b=Cv+rb10tCbAWHcAMjqzCdrFpmAapNceykvbl/ibtHhF9LSXx/Ve9AfkG4z5L6FNkF+
	aJsW33Vwo1Oi0fbw5W5HwsatMSHuDAOJ10bdapymxLwn9vLlf/vM5ow2k2dGjBaGTzWi
	iANfHSiuWiviZHBemz+jLZ51FJ6IxmspHIGM+SqyeLXBhgwohRpjD+9EhW8wBYfiaRkN
	rA9whR6U2dP06IkW3WBpdqpVlXKd8FIIxDL+Fhme6ErrR6GB4wiskPwyd6IhDVUSN2n7
	a2TI/kQhxsIrbfT888Mrs2Szlm91AuDtX45e0marYuO9US3kvIJdlXdDx1/LfFOF63n4
	xWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T3CkIzma+NMiFserCfvhKRxeEkaKGcEF8pVaDXwCNmc=;
	b=MO+c4AZoGLcHvkXZ9Yg0C5NxMFqyKDtpqGd8YBLHlp5Za0sKg+G1ZT47638DsWSD07
	ulbBE5abr/X2m/19I6O3AP34aVFEwlhcBKy5gG9aLOQ7gZO0KbUirI9e28HRtDmHyXAN
	bCsblDsQTFpbiT4aTTFDENrQpE6TjDkxnbjH40c55h/dPlQnf0vGt2yKcllwCjJbLgKk
	5YOhhrY+vpwwzMgPlWQr0+awX+SPsz8RHAHC0xCvVG9ArwmSY93HEHgk3uwb816NsbAX
	FkIPI5VtnN/KPiAdmw2U5AnY/tIH5htuREFIqSjOWq8sDjUttDeIPnbhiSMOVM4OG2aq
	WgRA==
X-Gm-Message-State: APjAAAXjOnANafQfTJaBFFFC8zbpg+TiNXQmAG9mb6+IpTAZlOwWajIM
	ru8kulXLW8y0xRQoo7wAuSqoKpDycs2o/OY458MyKA==
X-Google-Smtp-Source: APXvYqzZ+4Z/cpnnaAB1or/AtjhYh7Ogc/12Ww3Ph+0qnqNVOAATWxrO7xbbaZR3kmMVHS0TmmI2EFKGvKVkJDzVLyw=
X-Received: by 2002:a37:a00f:: with SMTP id j15mr37541958qke.335.1567615284182;
	Wed, 04 Sep 2019 09:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
	<CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
	<CAAjAsiyQN28Z8A_YUNh9r3s+zs326_V78ED_BpVuKj24fNMqJw@mail.gmail.com>
	<CAMKF1soECuQ635CZV-zK356nQ73iWMe7_jMx1nrri6aNRH167w@mail.gmail.com>
In-Reply-To: <CAMKF1soECuQ635CZV-zK356nQ73iWMe7_jMx1nrri6aNRH167w@mail.gmail.com>
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Wed, 4 Sep 2019 18:41:13 +0200
Message-ID: <CAAjAsiyX77Gm4=E2A=Rtm_eJSNRjnJ1U-3ry0g=E_5Z_smu1Zw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: in-tree module dependency
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
X-List-Received-Date: Wed, 04 Sep 2019 16:41:27 -0000
Content-Type: multipart/alternative; boundary="000000000000289e100591bce06f"

--000000000000289e100591bce06f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno mer 4 set 2019 alle ore 16:23 Khem Raj <raj.khem@gmail.com> ha
scritto:

>
>
> On Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti <
> matteo.facchinetti@sirius-es.it> wrote:
>
>>
>>
>> Il giorno mer 4 set 2019 alle ore 15:54 Khem Raj <raj.khem@gmail.com> ha
>> scritto:
>>
>>>
>>>
>>> On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti <
>>> matteo.facchinetti@sirius-es.it> wrote:
>>>
>>>> Hi,
>>>>
>>>> I have a problem with a custom kernel module's recipe that depends to
>>>> an other module (in-tree).
>>>> My kernel module recipes built seems OK, but I have a problem when
>>>> doing the rootfs image stage.
>>>>
>>>> Error:
>>>>  Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch
>>>> requires canopen-sync, but none of the providers can be installed
>>>>   - package canopen-sync-git-r0.2.neo_sirius requires
>>>> kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the prov=
iders
>>>> can be installed
>>>>   - conflicting requests
>>>>   - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard
>>>> needed by
>>>> kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius
>>>>
>>>
>>> It seems this modules is not built can you check if that=E2=80=99s the =
case ?
>>> You might look for ipk or rpm in deploy area with this name
>>>
>>
>> I have checked and module is built.
>> In build/tmp/deploy/rpm/neo_sirius there's this file:
>>
>> kernel-module-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo_=
sirius.rpm
>>
>
> This has different version than what dep is asking for
>

Do you mean for subversion at the end (r0.1 / r0.2) or for the filename?



>
>>
>>
>>>
>>>> ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_root=
fs
>>>> ERROR: Logfile of failure stored in:
>>>> /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-g=
nueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
>>>> ERROR: Task
>>>> (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirl=
inux4-image-qt4e.bb:do_rootfs)
>>>> failed with exit code '1'
>>>>
>>>>
>>>> I don't understand how exactly the modules dependencies works...
>>>> Initially, I suppose that PROVIDES variable was updated automatically
>>>> with the correct modules names when compiled like module from kernel b=
ut
>>>> now, I don't know if I have to specify it manually or is there any oth=
er
>>>> way?
>>>>
>>>> Regards,
>>>> Matteo
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>

--000000000000289e100591bce06f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer 4 set 2019 alle ore 16:=
23 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti &lt;<a hr=
ef=3D"mailto:matteo.facchinetti@sirius-es.it" target=3D"_blank">matteo.facc=
hinetti@sirius-es.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer 4 s=
et 2019 alle ore 15:54 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div><br></div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 4, 2019 =
at 2:58 AM Matteo Facchinetti &lt;<a href=3D"mailto:matteo.facchinetti@siri=
us-es.it" target=3D"_blank">matteo.facchinetti@sirius-es.it</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi,<br><br>I have a problem with a custom kernel module&#39;s recipe that =
depends to an other module (in-tree).<br>My kernel module recipes built see=
ms OK, but I have a problem when doing the rootfs image stage.<br><br>Error=
: <br>=C2=A0Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch =
requires canopen-sync, but none of the providers can be installed<br>=C2=A0=
 - package canopen-sync-git-r0.2.neo_sirius requires kernel-module-canopen-=
sync-4.9.51-yocto-standard, but none of the providers can be installed<br>=
=C2=A0 - conflicting requests<br>=C2=A0 - nothing provides kernel-module-xe=
no-can-4.9.51-yocto-standard needed by kernel-module-canopen-sync-4.9.51-yo=
cto-standard-git-r0.2.neo_sirius<br></div></blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">It seems this modules is not built can you check =
if that=E2=80=99s the case ? You might look for ipk or rpm in deploy area w=
ith this name=C2=A0</div></div></div></blockquote><div><br></div><div>I hav=
e checked and module is built.</div><div>In=C2=A0<span style=3D"color:rgb(0=
,0,0);font-family:monospace">build/tmp/deploy/rpm/neo_sirius there&#39;s th=
is file:</span></div><div>kernel-module-xeno-can-4.9.51+ipipe+git0+0774eace=
a2_089d772038-r0.1.neo_sirius.rpm</div></div></div></blockquote><div dir=3D=
"auto"><br></div><div dir=3D"auto">This has different version than what dep=
 is asking for</div></div></div></blockquote><div><div><br></div><div>Do yo=
u mean for subversion at the end (r0.1 / r0.2) or for the filename?<br clas=
s=3D"gmail-Apple-interchange-newline"></div></div><div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div></div></div></div><div dir=3D"ltr"=
><div class=3D"gmail_quote"><div><br></div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br>ERROR: sirli=
nux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs<br>ERROR: Logf=
ile of failure stored in: /workspace/neo-sirius_sirlinux4/build/tmp/work/ne=
o_sirius-poky-linux-gnueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.=
9126<br>ERROR: Task (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-=
qt4/images/sirlinux4-image-qt4e.bb:do_rootfs) failed with exit code &#39;1&=
#39;<br><br><br>I don&#39;t understand how exactly the modules dependencies=
 works...<br>Initially, I suppose that PROVIDES variable was updated automa=
tically with the correct modules names when compiled like module from kerne=
l but now, I don&#39;t know if I have to specify it manually or is there an=
y other way?<br><br>Regards,<br>Matteo</div><div dir=3D"ltr"><br></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div></div>

--000000000000289e100591bce06f--
