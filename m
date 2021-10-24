Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728D5C433EF
	for <webhook@archiver.kernel.org>; Sun, 24 Oct 2021 21:29:34 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.23921.1635110972976402797
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Oct 2021 14:29:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=ElTJTWHi;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.25,
 mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id BBF523200E8A;
	Sun, 24 Oct 2021 17:29:29 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 24 Oct 2021 17:29:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=z53Pw/PeEvOPRvoumbp0BS4gkr0T252
	X12zy1Rz2eBg=; b=ElTJTWHiDL7enB/NNtzeM4vOzjEHdwptV6SN2WeSo/IWUhm
	T1Cd2yINq7qlx8/u4ynn9D646F2ZRaed2AUiY7MckASKjnOE/HPN8p1H50x6e7zS
	XWcV5o3ISOb7dRPV8Wp3wQy7TmlL/j/QGuxtPicxMTO1a3h/fcnDgNMvrq202t9U
	C31H1q+jYNtKitMQiYWVu3/QI8CxCSOpSL+ijlOe8qKxlZELi/9oIdPelYBAEVtI
	qS5baB2kezTBHXFm/h6L8IYSC1AavNI+F0bmIOESshk6Ryd6LW1eXij2g0CujllO
	rFVNy3wGI/jIBhjTqzuZDlNqJJ6xaoJO2qwTJ0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=z53Pw/
	PeEvOPRvoumbp0BS4gkr0T252X12zy1Rz2eBg=; b=LNYisseIJCmHXMAF5BYqqu
	7GrzHV3XfAd5W8v5jMo6B1tU+eRz1Yp2u+ImwyAl1KrOjJSWHficCtIF3gkTf9iJ
	wveyuwkSt7vCu1n3aOWtkOjAZyOaGVBmUVQLQMQaGcH17C+ptHqjqHcwlbMoQOSt
	euOixISAU6qVD6vO1Vfz7QEyj4nCrplp8rRcNXitVqHJvwspLlfM6CGxQiRPkT1I
	Sr3FRciuwaCOMeKCjAyZ/5hrWGZnfYyk2qKmgmyBj5n/mmfY9JMH+rhVTKJG7OGi
	fH/L3REsj1ZI962B2SIvAQwiaTXoUZVbE1CzpA1tshoX5VpeAxQ/F6b23vl1+LpA
	==
X-ME-Sender: <xms:OdB1YXUaKdbvV8tj95I_Qee33-zmOVOfAv2sTECYhl0Ky8qFqN6EWw>
    <xme:OdB1Yfl9Fz_pvPwDPJcdmVTNya_JQSk8izJ-Oi0lxwgIzqRCk_MCjevv6KCUspbc3
    NT--md8eV0yHxvW>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvdeffedgudefhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsegrtderreerredtnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeehgeduvdeufeefffejvefftdfhieejgfeitedu
    ueeufeeuieetieeljeelheevtdenucffohhmrghinhephihotghtohhprhhojhgvtghtrd
    horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    ofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:OdB1YTaxGv9ch6cAp3Nqc2aNlkFnFPMLfIbJHg1scazTrkhNyvCp5w>
    <xmx:OdB1YSVkPxD36ReSjMP6E_FqJkbWZOBwcrY8ebL7VMX9vBWOhwj5XQ>
    <xmx:OdB1YRmmVoNdNHnoK8xRf5TybwxWm5w35ttnFqwhGhDcTKGy513KOA>
    <xmx:OdB1YfQWBgU_25fb9RpCZICu_BzwcMR83GHtAJJPxoxYEjbPp7AIEQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 240F13C0C77; Sun, 24 Oct 2021 17:29:29 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <3a70acf3-826a-4bd7-92a9-a5a11ec77560@www.fastmail.com>
In-Reply-To: 
 <CANNYZj-hpvwOZXA3YBUX5QxB2etofT+z5ef-McukLeLuRc=Y_g@mail.gmail.com>
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
 <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
 <0a94aca2-2539-4ff1-b892-94a3a42e8aff@www.fastmail.com>
 <CANNYZj-hpvwOZXA3YBUX5QxB2etofT+z5ef-McukLeLuRc=Y_g@mail.gmail.com>
Date: Sun, 24 Oct 2021 23:28:33 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>,
 "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
Content-Type: multipart/alternative;
 boundary=5b7debc5dd6e46369e9df8e43c98b657
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Oct 2021 21:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55128

--5b7debc5dd6e46369e9df8e43c98b657
Content-Type: text/plain

Hi all,
hi Alexander,

I solved my problems. Things work fine now. Below I'm summing things up as documentation for myself and also others in case this pops up in someones search query.

Am So, 17. Okt 2021, um 13:32, schrieb Alexander Kanavin:
> On Sat, 16 Oct 2021 at 14:08, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>> __
>> Here are some updates:
>> 
>> Building core-image-weston on hardknott succeeded. Couldn't `runqmu kvm slirp sdl core-image-weston` first because I got an error message about 'dri.pc' being missing. Debian package search told me it's part of 'mesa-commond-dev', so I installed it on my host machine and indeed, that runqemu command above got working again. Not just that, now even OpenGL acceleration with `runqmu kvm slirp sdl gl core-image-weston` worked, altough I didn't change anything OpenGL-wise. core-image-weston feels really snappy now. Great!
>> 
>> I got curious and reverted back to dunfell to check if the now-installed dri.pc made a difference, but no, it didn't. `runqemu` with `sdl` started (like it did before), and with `sdl gl` it still said "OpenGL support is disabled".
> 
> You need to replicate the settings from oe-selftest (link provided previously). I think on dunfell it's not enabled out of the box, and needs to be configured explicitly.
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=dunfell#n167 

You were are right. In hindsight, your initial post contained everything necessary. The 'PACKAGECONFIG_append_pn-<package-name>' variables tell everything necessary. I couldn't make sense of what I was reading at the beginning.

DUNFELL:
=========
Summing things up, here's what I need on Dunfell for `runqemu kvm slirp sdl gl`.

* DISTRO_FEATURES opengl
* 'weston-xwayland' in IMAGE_INSTALL.
* 'PACKAGECONFIG:append:pn-qemu-system-native = " sdl gtk+ virglrenderer glx"'. (Having opengl in DISTRO_FEATURES puts opengl in libsdl2-native PACKAGECONFIG automatically.)

It's interesting the gtk+ part was necessary even for `runqemu kvm slirp sdl gl`. Thought gtk+ and sdl are different solutions for the same problem. Without gtk+, it would fail with
```
qemu-system-x86_64: ../libepoxy-1.5.4/src/dispatch_common.c:863: epoxy_get_proc_address: Assertion `0 && "Couldn't find current GLX or EGL context.\n"'
```
Can't make sense of that and won't investigate any further.

HARDKNOTT:
============
Here's what I need on Hardknott:

As Alexander wrote, with Hardknott explicit configuration is no longer necessary if DISTRO_FEATURES has opengl. Think it's due to following patch: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7561eb32a01f7990ad4a4606ac97ebe2a659e029

Hence I need:
* DISTRO_FEATURES opengl
* 'PACKAGECONFIG:append:pn-qemu-system-native = " sdl".
* 'weston-xwayland' in IMAGE_INSTALL.
* /etc/systemd/system/default.target is a symlink to multi-user.target and shadows /lib/systemd/system/default.target which is a symlink to graphical.target. Hence, one must start graphical.target manually.
* Need to adapt weston.service to start weston with --modules=xwayland.so.

Perhaps this helps anyone.

Thanks again for your help, Alexander.

Manuel
--5b7debc5dd6e46369e9df8e43c98b657
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi all,<br></di=
v><div>hi Alexander,<br></div><div><br></div><div>I solved my problems. =
Things work fine now. Below I'm summing things up as documentation for m=
yself and also others in case this pops up in someones search query.<br>=
</div><div><br></div><div>Am So, 17. Okt 2021, um 13:32, schrieb Alexand=
er Kanavin:<br></div><blockquote type=3D"cite" id=3D"qt" style=3D""><div=
 dir=3D"ltr"><div class=3D"qt-gmail_quote"><div dir=3D"ltr" class=3D"qt-=
gmail_attr">On Sat, 16 Oct 2021 at 14:08, Manuel Wagesreither &lt;<a hre=
f=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></d=
iv><blockquote class=3D"qt-gmail_quote" style=3D"margin-top:0px;margin-r=
ight:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;borde=
r-left-style:solid;border-left-color:rgb(204, 204, 204);padding-left:1ex=
;"><div><u></u><br></div><div><div>Here are some updates:<br></div><div>=
<br></div><div>Building core-image-weston on hardknott succeeded. Couldn=
't&nbsp;`runqmu kvm slirp sdl core-image-weston` first because I got an =
error message about 'dri.pc' being missing. Debian package search told m=
e it's part of 'mesa-commond-dev', so I installed it on my host machine =
and indeed, that runqemu command above got working again. Not just that,=
 now even OpenGL acceleration with `runqmu kvm slirp sdl gl core-image-w=
eston` worked, altough I didn't change anything OpenGL-wise. core-image-=
weston feels really snappy now. Great!<br></div><div><br></div><div>I go=
t curious and reverted back to dunfell to check if the now-installed dri=
.pc made a difference, but no, it didn't. `runqemu` with `sdl` started (=
like it did before), and with `sdl gl` it still said "OpenGL support is =
disabled".<br></div></div></blockquote><div><br></div><div>You need to r=
eplicate the settings from oe-selftest (link provided previously). I thi=
nk on dunfell it's not enabled out of the box, and needs to be configure=
d explicitly.<br></div><div><a href=3D"http://git.yoctoproject.org/cgit.=
cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=3Ddunfell#n=
167">http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selfte=
st/cases/runtime_test.py?h=3Ddunfell#n167</a>&nbsp;<br></div></div></div=
></blockquote><div><br></div><div>You were are right. In hindsight, your=
 initial post contained everything necessary. The 'PACKAGECONFIG_append_=
pn-&lt;package-name&gt;' variables tell everything necessary. I couldn't=
 make sense of what I was reading at the beginning.<br></div><div><br></=
div><div>DUNFELL:<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Su=
mming things up, here's what I need on Dunfell for `runqemu kvm slirp sd=
l gl`.</div><div><br></div><div>* DISTRO_FEATURES opengl</div><div>* 'we=
ston-xwayland' in IMAGE_INSTALL.<br></div><div><div>* 'PACKAGECONFIG:app=
end:pn-qemu-system-native =3D " sdl gtk+ virglrenderer glx"'. (Having op=
engl in DISTRO_FEATURES puts opengl in&nbsp;libsdl2-native PACKAGECONFIG=
 automatically.)</div></div><div><br></div><div>It's interesting the gtk=
+ part was necessary even for&nbsp;`runqemu kvm slirp sdl gl`. Thought g=
tk+ and sdl are different solutions for the same problem. Without gtk+, =
it would fail with</div><div>```<br></div><div>qemu-system-x86_64: ../li=
bepoxy-1.5.4/src/dispatch_common.c:863: epoxy_get_proc_address: Assertio=
n `0 &amp;&amp; "Couldn't find current GLX or EGL context.\n"'<br></div>=
<div>```<br></div><div>Can't make sense of that and won't investigate an=
y further.<br></div><div><br></div><div>HARDKNOTT:<br></div><div>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>Here's what I need on Hardknott:<b=
r></div><div><br></div><div>As Alexander wrote, with Hardknott explicit =
configuration is no longer necessary if DISTRO_FEATURES has opengl. Thin=
k it's due to following patch:&nbsp;<a href=3D"http://git.yoctoproject.o=
rg/cgit/cgit.cgi/poky/commit/?id=3D7561eb32a01f7990ad4a4606ac97ebe2a659e=
029">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D7561eb3=
2a01f7990ad4a4606ac97ebe2a659e029</a><br></div><div><br></div><div>Hence=
 I need:<br></div><div>* DISTRO_FEATURES opengl<br></div><div>* 'PACKAGE=
CONFIG:append:pn-qemu-system-native =3D " sdl".</div><div>* 'weston-xway=
land' in IMAGE_INSTALL.<br></div><div><div>* /etc/systemd/system/default=
.target is a symlink to multi-user.target and shadows /lib/systemd/syste=
m/default.target which is a symlink to graphical.target. Hence, one must=
 start graphical.target manually.<br></div><div>* Need to adapt weston.s=
ervice to start weston with --modules=3Dxwayland.so.<br></div><div><br><=
/div></div><div>Perhaps this helps anyone.<br></div><div><br></div><div>=
Thanks again for your help, Alexander.<br></div><div><br></div><div>Manu=
el</div></body></html>
--5b7debc5dd6e46369e9df8e43c98b657--

