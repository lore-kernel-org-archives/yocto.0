Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22DA0E00D9F; Thu,  5 Sep 2019 05:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A54E00D1C
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 05:53:28 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id k10so2653417qth.2
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2019 05:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UrkthmgJDtA0iUzHOnSomHiGh38cJDHm3+1x5f04bec=;
	b=OT4XMflwsfnb9JgdzN1MFesun5/Wf0i5WccN0RIL+Dmj67dKV0a2mhr65RF7DTFOU/
	hruPwt1bneg5djIjYC4C762vTUt2ZpEJpjOOdJ88rvYJb8PviFN3zMT96Sk3UBps9qxk
	AByYQxP5eZ5CCbMy/hKqXpp/McFjo2uz2iVXsREOftK7WgLDw0otMhMS9YoNS6nWpmVL
	YCWrdFUNvwF7xmGJSSHw6MM+wTnIFohJzUzWPEmO7yObbCR+oFfnzfOGGqFrFjzYvCZZ
	RPymcImRmwnhChdNwwOT4ZgLY7pL8zYzDMgNzMBu4saVoVfHLiaTzZiNDJgjVvCNPIc6
	niVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UrkthmgJDtA0iUzHOnSomHiGh38cJDHm3+1x5f04bec=;
	b=dBeawk1NmdTMqMVkZRHJLMsndi1594h0W9LN1d9GJKkxPraigph0z2XNkO96EBcUKY
	81na63SGfSHPvIbrEQ9r9PU6eB8DFSRLGzgR65omwy3koFSWneTqPViy29xtuzPhPDnM
	kdFctOLb4D/C1PiWYyKHOtywm0AH3xfK5k/bLqSiuF3X5ZOni7Vayv7H6njQiDPpGdZI
	2IJXJIZcVJB2+RC9cyPxEsoEaY2XLAqfZ033glFH/ARctyWRSGjvd2bxSwXIdDXJ7jP3
	3lyppe0gqn81pD7pKE/gObNJGRI20BVkmB7lG9rsOwYuEdO38mqIX+7s02ONrEEMaC63
	mTYA==
X-Gm-Message-State: APjAAAWe5rdmfpDdNNxmHdSjbJl0MpFOdAZRPjcN835A3U77kC6pmVS2
	5U5RWrQrDEtqqxBteibXFsJVZKNXpatES2d3nHDvUg==
X-Google-Smtp-Source: APXvYqy4e3rtJ/aPCodkbSkTBjIN3dGz/XGpsh6AVC+jhiL1JmhB3Ee8wgTHn8QJgwmMqGvphGLzmtRSq6mNorgRUwA=
X-Received: by 2002:ac8:1c54:: with SMTP id j20mr3286448qtk.302.1567688008167; 
	Thu, 05 Sep 2019 05:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
	<CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
	<CAAjAsiyQN28Z8A_YUNh9r3s+zs326_V78ED_BpVuKj24fNMqJw@mail.gmail.com>
	<CAMKF1soECuQ635CZV-zK356nQ73iWMe7_jMx1nrri6aNRH167w@mail.gmail.com>
	<CAAjAsiyX77Gm4=E2A=Rtm_eJSNRjnJ1U-3ry0g=E_5Z_smu1Zw@mail.gmail.com>
In-Reply-To: <CAAjAsiyX77Gm4=E2A=Rtm_eJSNRjnJ1U-3ry0g=E_5Z_smu1Zw@mail.gmail.com>
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Thu, 5 Sep 2019 14:53:17 +0200
Message-ID: <CAAjAsiyiU7kdiK4zk9uKRuXdCR=Brgp8oWWGQCwezZNN71XJfQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 05 Sep 2019 12:53:32 -0000
Content-Type: multipart/alternative; boundary="000000000000d889470591cdce86"

--000000000000d889470591cdce86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno mer 4 set 2019 alle ore 18:41 Matteo Facchinetti <
matteo.facchinetti@sirius-es.it> ha scritto:

>
>
> Il giorno mer 4 set 2019 alle ore 16:23 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>
>>
>>
>> On Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti <
>> matteo.facchinetti@sirius-es.it> wrote:
>>
>>>
>>>
>>> Il giorno mer 4 set 2019 alle ore 15:54 Khem Raj <raj.khem@gmail.com>
>>> ha scritto:
>>>
>>>>
>>>>
>>>> On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti <
>>>> matteo.facchinetti@sirius-es.it> wrote:
>>>>
>>>>> Hi,
>>>>>
>>>>> I have a problem with a custom kernel module's recipe that depends to
>>>>> an other module (in-tree).
>>>>> My kernel module recipes built seems OK, but I have a problem when
>>>>> doing the rootfs image stage.
>>>>>
>>>>> Error:
>>>>>  Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch
>>>>> requires canopen-sync, but none of the providers can be installed
>>>>>   - package canopen-sync-git-r0.2.neo_sirius requires
>>>>> kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the pro=
viders
>>>>> can be installed
>>>>>   - conflicting requests
>>>>>   - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard
>>>>> needed by
>>>>> kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius
>>>>>
>>>>
>>>> It seems this modules is not built can you check if that=E2=80=99s the=
 case ?
>>>> You might look for ipk or rpm in deploy area with this name
>>>>
>>>
>>> I have checked and module is built.
>>> In build/tmp/deploy/rpm/neo_sirius there's this file:
>>>
>>> kernel-module-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo=
_sirius.rpm
>>>
>>
>> This has different version than what dep is asking for
>>
>
> Do you mean for subversion at the end (r0.1 / r0.2) or for the filename?
>
>
Ahh... OK now I understand. (PV)

In my kernel recipe there was setted:

LINUX_VERSION =3D 4.9.51-ipipe
PV =3D "${LINUX_VERSION}+git${SRCPV}"
KERNEL_MODULE_PACKAGE_SUFFIX =3D ""

With this config, yocto generate the follow PV on package filename:
-4.9.51+ipipe+git0+0774eacea2_089d772038

but all references in the relative RPM .spec file were wrong:
-4.9.51-yocto-standard

I believe it dangerours because image build works properly until you add a
recipes that have a kernel module as dependecy.

To solve this problem, I've deleted

KERNEL_MODULE_PACKAGE_SUFFIX =3D ""

I've changed to

LINUX_VERSION =3D 4.9
PV =3D 4.9.51

and I've added

LINUX_VERSION_EXTENSION =3D "-mainline-xenomai"

Regards,
Matteo


>
>>
>>>
>>>
>>>>
>>>>> ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed:
>>>>> do_rootfs
>>>>> ERROR: Logfile of failure stored in:
>>>>> /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-=
gnueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
>>>>> ERROR: Task
>>>>> (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sir=
linux4-image-qt4e.bb:do_rootfs)
>>>>> failed with exit code '1'
>>>>>
>>>>>
>>>>> I don't understand how exactly the modules dependencies works...
>>>>> Initially, I suppose that PROVIDES variable was updated automatically
>>>>> with the correct modules names when compiled like module from kernel =
but
>>>>> now, I don't know if I have to specify it manually or is there any ot=
her
>>>>> way?
>>>>>
>>>>> Regards,
>>>>> Matteo
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>

--000000000000d889470591cdce86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer 4 set 2019 alle ore 18:=
41 Matteo Facchinetti &lt;<a href=3D"mailto:matteo.facchinetti@sirius-es.it=
">matteo.facchinetti@sirius-es.it</a>&gt; ha scritto:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>Il giorno mer 4 set 2019 alle ore 16:23 Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; ha scritto:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br></div><d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti &lt;<a href=3D"mailto:matteo=
.facchinetti@sirius-es.it" target=3D"_blank">matteo.facchinetti@sirius-es.i=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer 4 set 2019 alle ore 15=
:54 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div><br></div><div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 4, 2019 at 2:58 AM Matteo Fa=
cchinetti &lt;<a href=3D"mailto:matteo.facchinetti@sirius-es.it" target=3D"=
_blank">matteo.facchinetti@sirius-es.it</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>I have a=
 problem with a custom kernel module&#39;s recipe that depends to an other =
module (in-tree).<br>My kernel module recipes built seems OK, but I have a =
problem when doing the rootfs image stage.<br><br>Error: <br>=C2=A0Problem:=
 package packagegroup-console-sirlinux-1.0-r0.0.noarch requires canopen-syn=
c, but none of the providers can be installed<br>=C2=A0 - package canopen-s=
ync-git-r0.2.neo_sirius requires kernel-module-canopen-sync-4.9.51-yocto-st=
andard, but none of the providers can be installed<br>=C2=A0 - conflicting =
requests<br>=C2=A0 - nothing provides kernel-module-xeno-can-4.9.51-yocto-s=
tandard needed by kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2=
.neo_sirius<br></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"a=
uto">It seems this modules is not built can you check if that=E2=80=99s the=
 case ? You might look for ipk or rpm in deploy area with this name=C2=A0</=
div></div></div></blockquote><div><br></div><div>I have checked and module =
is built.</div><div>In=C2=A0<span style=3D"color:rgb(0,0,0);font-family:mon=
ospace">build/tmp/deploy/rpm/neo_sirius there&#39;s this file:</span></div>=
<div>kernel-module-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.ne=
o_sirius.rpm</div></div></div></blockquote><div dir=3D"auto"><br></div><div=
 dir=3D"auto">This has different version than what dep is asking for</div><=
/div></div></blockquote><div><div><br></div><div>Do you mean for subversion=
 at the end (r0.1 / r0.2) or for the filename?<br class=3D"gmail-m_29138707=
03063126535gmail-Apple-interchange-newline"></div></div><div><br></div></di=
v></div></blockquote><div><br></div><div>Ahh... OK now I understand. (PV)<b=
r><br>In my kernel recipe there was setted:<br><br>LINUX_VERSION =3D 4.9.51=
-ipipe<br>PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>KERNEL_MODULE_=
PACKAGE_SUFFIX =3D &quot;&quot;<br><br>With this config, yocto generate the=
 follow PV on package filename:<br>-4.9.51+ipipe+git0+0774eacea2_089d772038=
<br><br>but all references in the relative RPM .spec file were wrong:<br>-4=
.9.51-yocto-standard<br><br>I believe it dangerours because image build wor=
ks properly until you add a recipes that have a kernel module as dependecy.=
<br><br>To solve this problem, I&#39;ve deleted=C2=A0<br><br>KERNEL_MODULE_=
PACKAGE_SUFFIX =3D &quot;&quot; <br><br>I&#39;ve changed to<br><br>LINUX_VE=
RSION =3D 4.9<br>PV =3D 4.9.51<br><br>and I&#39;ve added<br><br>LINUX_VERSI=
ON_EXTENSION =3D &quot;-mainline-xenomai&quot;<br></div><div><br></div><div=
>Regards,</div><div>Matteo=C2=A0</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><di=
v></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div></div></div></div><=
div dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
br>ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs=
<br>ERROR: Logfile of failure stored in: /workspace/neo-sirius_sirlinux4/bu=
ild/tmp/work/neo_sirius-poky-linux-gnueabi/sirlinux4-image-qt4e/1.0-r0/temp=
/log.do_rootfs.9126<br>ERROR: Task (/workspace/neo-sirius_sirlinux4/meta-si=
rlinux/recipes-qt4/images/sirlinux4-image-qt4e.bb:do_rootfs) failed with ex=
it code &#39;1&#39;<br><br><br>I don&#39;t understand how exactly the modul=
es dependencies works...<br>Initially, I suppose that PROVIDES variable was=
 updated automatically with the correct modules names when compiled like mo=
dule from kernel but now, I don&#39;t know if I have to specify it manually=
 or is there any other way?<br><br>Regards,<br>Matteo</div><div dir=3D"ltr"=
><br></div>
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
</blockquote></div></div>

--000000000000d889470591cdce86--
