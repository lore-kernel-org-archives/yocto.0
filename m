Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AAA9E00C45; Tue, 30 Jan 2018 16:25:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C056BE007B3;
	Tue, 30 Jan 2018 16:25:25 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id t4so7992524vkb.9;
	Tue, 30 Jan 2018 16:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VKkXxdy/RrHCTLstCSKxvWka2ZyWLF2TlVvTdcX4PEA=;
	b=fi+T+PTcX2zKbme1VR5lH8Bgwr8JmI7rBziQrboh/SUHqnFSaJgv8COFvijyYr4nj+
	lHbFPCcGthmi70tp11KlomWwQCQHTwgdKbL6QhngR0XLz35CliGpLHBOVNxTmQ5fGSvB
	EGHhG0VzNUvWhlsycHc7bK9vfrZmPlavhRuzuHFtm+aNSzavEUDGBMwLXlXAWISHd6ot
	CBU0DR/g5PYQTN7HB9FDZwivfkSkeUTH10dp/VUdhg0N2ztPS67Trcb6PFtuUYFh4uRh
	+rJouzEqrSEoKQSo1vD3Q+ibbygY7oG11M98q3jL5KPzDfqak1hPpwH9R1hCeSfjVO/h
	5YCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VKkXxdy/RrHCTLstCSKxvWka2ZyWLF2TlVvTdcX4PEA=;
	b=NvpZBwzbuIxIvjHo3Wi4L2P7ry4xw3lDBi2d2wqIz8g4qJE42oZhxHkbM3JtQfoO8T
	Bnj2FvEokh/d8eFG+PPLa+G+AXIDPGx15QtxTWdGZ1l3qzSZWh7zEELZPegTp4f1Wfpx
	6nCkf4gc5oHSyFI5Vuyk9hcP1+5sWJdOJ8wT8vMYnXmIiEJN8WxTC0DPPmUdhadofzlK
	kv5dLryLOixRY8qDgLKMadhbWwwBNE4Cl/IXlQe6U3PBZg10rEHifZB3gilZXaUSycvt
	ugmlyW4IT8/oQ1JVbDHrrHKSs8grXrk3ZCBPtdMvLPgZTwMkxl2n+eQtBUCr1UYO9T9n
	LgHw==
X-Gm-Message-State: AKwxytdOA7y4tsBfvHXZpPtPc/dXu6hmjuM6Mfyox3BdwOrqfTm/UQVg
	bdsH6td2o3Uz6LFsPT3DQkUSnWG/VGceBPGbGi0=
X-Google-Smtp-Source: AH8x225PsRDhNfzWuLAtvtJMPluEdQplIpi7cshtftpQE/+Jle7tHbfL0szT0Lj40CYGsp37hlM7qziCOnXrvHJxMxc=
X-Received: by 10.31.6.135 with SMTP id 129mr22900012vkg.26.1517358324748;
	Tue, 30 Jan 2018 16:25:24 -0800 (PST)
MIME-Version: 1.0
References: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
	<TU4PR8401MB07670A15303FC3FCC8FA14CFEDE40@TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM>
	<CANx9H-BL8xNGHvOxqELc8-jRdo+xav4wpkBvM9xgOE7KCLZSQg@mail.gmail.com>
In-Reply-To: <CANx9H-BL8xNGHvOxqELc8-jRdo+xav4wpkBvM9xgOE7KCLZSQg@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 31 Jan 2018 00:25:14 +0000
Message-ID: <CANx9H-Awkgk9yn6hphgn9CCyq5zpeAXUrUctiuz=k3ZYu7Bf+g@mail.gmail.com>
To: "Koehler, Yannick" <yannick.koehler@hpe.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"eclipse-poky@yoctoproject.org" <eclipse-poky@yoctoproject.org>
Subject: Re: Eclipse plugin plans
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
X-List-Received-Date: Wed, 31 Jan 2018 00:25:27 -0000
Content-Type: multipart/alternative; boundary="001a1143e8e2f1981c05640783e5"

--001a1143e8e2f1981c05640783e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 30, 2018 at 4:21 PM Tim Orling <ticotimo@gmail.com> wrote:

> Could you file an enhancement request on bugzilla for the crops component=
?
>

https://bugzilla.yoctoproject.org/describecomponents.cgi?product=3DCROPS

>
> On Tue, Jan 30, 2018 at 12:22 PM Koehler, Yannick <yannick.koehler@hpe.co=
m>
> wrote:
>
>> Big fan of what CROPS did and we use the poky container in our
>> development, but slightly differently.
>>
>> If I may, I would like to see is an eclipse docker image that pre-includ=
e
>> the Yocto plugin (CDT, gdb, etc), which still allow for adding addtl plu=
gin
>> via Dockerfile (they is likely already some Dockerfile like this that
>> exists but not targeting Yocto itself).
>>
>> And I would like to be able to use bitbake (or toaster) as a server
>> running inside docker controlled by another bitbake poky acting as a
>> client, using poky code that is mounted using volume instead of pre-buil=
t
>> in the Dockerfile.
>>
>>         docker run -v mypokyfolder:/var/lib/poky/ -t crops/bitbake-serve=
r
>>         docker run -ti crops/bitbake ...
>>
>> --
>> Yannick Koehler
>>
>> -----Message d'origine-----
>> De : yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] De la part de Paul Eggleton
>> Envoy=C3=A9 : 29 janvier 2018 22:33
>> =C3=80 : yocto@yoctoproject.org
>> Cc : eclipse-poky@yoctoproject.org
>> Objet : [yocto] Eclipse plugin plans
>>
>> Hi all,
>>
>> I've recently become involved in development of our Eclipse integration,
>> and we figured it's about time we sent out an update on where things
>> currently stand.
>>
>> Current development
>> ---------------------------
>>
>> New life is being injected into the Yocto Project Eclipse plugins. There
>> are several drivers for this:
>>
>> 1) Integrate the tooling with Docker. With changes and additions to
>> Eclipse CDT and Eclipse Linuxtools projects, it=E2=80=99s now possible t=
o have
>> Docker images provide functionality that=E2=80=99s running within Eclips=
e. For
>> example, CDT=E2=80=99s autotools can be run in a Docker container for
>> compiling/building/recipe and for running/debugging.
>>
>> 2) Docker tooling also provides a way to do cross-OS building/running -
>> e.g.
>> Eclipse running on Windows doing compiles/running/recipes for a target
>> running on Linux (in a Linux Docker Container). Up until now we have bee=
n
>> restricted to Linux as the Eclipse host OS. We will be looking at Window=
s
>> first, MacOS may follow later.
>>
>> 3) Simplify the deployment and installation of the plugins. Currently,
>> the plugins have a number of dependencies=E2=80=A6e.g. on Eclipse CDT an=
d others.
>> This often makes it difficult to install, use, and upgrade the plugins,
>> particularly for Yocto Project beginners.
>>
>> 4) Update the plugins for latest Eclipse. Eclipse has upgraded its
>> support (CDT, Linuxtools/Docker, etc) significantly, and the plugins do =
not
>> yet take advantage of these improvements. The target for the 2.6 release
>> will likely be Eclipse Photon (released June 2018).
>>
>> 5) Improve and make more transparent the Build/Continuous
>> Integration/Release Engineering for the plugins. This will make it easie=
r
>> for others to contribute, and will make it easier for automated testing =
to
>> be done improving overall quality.
>>
>> To start down these directions and explicitly start on 3, 4, 5 we propos=
e
>> that for eclipse-poky we move toward a maven-based build. Maven-based
>> builds are extremely common in the Eclipse plugin development world, and
>> there are a lot of technologies openly available to support building the=
se
>> plugins: e.g.
>> maven, tycho, Eclipse itself. As part of this we will be looking to
>> transition the autobuilder from the current script-based build to a
>> maven-based build, but with two caveats:
>>
>> a) the current autobuilder will be used for 2.5 release
>> b) both builds (script-based) and maven-based will be maintained until
>> after
>> 2.5 release
>> c) the maven-based build will add: automated testing, easier dependency
>> management, a more open and maintainable build system
>>
>> We are proposing that the existing eclipse-poky 2.5 branch
>> (oxygen.master) be soon frozen (after a few small pending fixes) and tha=
t
>> the eclipse-poky =E2=80=98master=E2=80=99 be opened up for 2.6 developme=
nt. This way we
>> will have a stable release candidate as 2.5 approaches, and be able to
>> begin work on 1-5 as above for 2.6 as soon as possible.
>>
>> If you want a peek at what we are currently working on with maven see th=
e
>> timo/maven branch in eclipse-poky-contrib. New instructions are in the
>> README.dev file.
>>
>>
>> A note about CROPS
>> ----------------------------
>>
>> The earlier effort to build the CROPS architecture to support multiple
>> IDEs has been dropped - unfortunately we weren't able to realise the
>> original design for a number of reasons including that in the case of
>> Eclipse it was incompatible with the upstream Eclipse direction. We have
>> now switched back to the original eclipse-poky codebase and are followin=
g
>> upstream Eclipse / Linuxtools / CDT development a lot more closely. We w=
ill
>> however gain some of the features that CROPS set out to provide - i.e.
>> building in a container and therefore enabling the IDE to be running on =
a
>> non-Linux OS.
>>
>> Note: the CROPS containers [1] are still around and functional, and will
>> likely form the basis of the containers used by the current YP Eclipse
>> plugins.
>>
>>
>> New mailing list
>> ---------------------
>>
>> As you may have seen elsewhere, we now have a mailing list dedicated to
>> Eclipse plugin development and related discussion. You can find informat=
ion
>> (and list archives) here:
>>
>>   https://lists.yoctoproject.org/listinfo/eclipse-poky
>>
>> If you have follow-up questions / discussion or would like to get
>> involved, please join us over on that list.
>>
>> Cheers,
>> Paul
>>
>> [1] https://wiki.yoctoproject.org/wiki/TipsAndTricks/CropsCLIContainers
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--001a1143e8e2f1981c05640783e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Tue, Jan 30, 2018 =
at 4:21 PM Tim Orling &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div di=
r=3D"auto">Could you file an enhancement request on bugzilla for the crops =
component?</div></div><div></div></blockquote><div dir=3D"auto"><br></div><=
div dir=3D"auto"><a href=3D"https://bugzilla.yoctoproject.org/describecompo=
nents.cgi?product=3DCROPS">https://bugzilla.yoctoproject.org/describecompon=
ents.cgi?product=3DCROPS</a><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><=
br><div class=3D"gmail_quote"><div>On Tue, Jan 30, 2018 at 12:22 PM Koehler=
, Yannick &lt;<a href=3D"mailto:yannick.koehler@hpe.com" target=3D"_blank">=
yannick.koehler@hpe.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">Big fan of what CROPS did and we use the poky container in our developm=
ent, but slightly differently.<br>
<br>
If I may, I would like to see is an eclipse docker image that pre-include t=
he Yocto plugin (CDT, gdb, etc), which still allow for adding addtl plugin =
via Dockerfile (they is likely already some Dockerfile like this that exist=
s but not targeting Yocto itself).<br>
<br>
And I would like to be able to use bitbake (or toaster) as a server running=
 inside docker controlled by another bitbake poky acting as a client, using=
 poky code that is mounted using volume instead of pre-built in the Dockerf=
ile.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run -v mypokyfolder:/var/lib/poky/ -t cr=
ops/bitbake-server<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 docker run -ti crops/bitbake ...<br>
<br>
--<br>
Yannick Koehler<br>
<br>
-----Message d&#39;origine-----<br>
De=C2=A0: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blan=
k">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] =
De la part de Paul Eggleton<br>
Envoy=C3=A9=C2=A0: 29 janvier 2018 22:33<br>
=C3=80=C2=A0: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
Cc=C2=A0: <a href=3D"mailto:eclipse-poky@yoctoproject.org" target=3D"_blank=
">eclipse-poky@yoctoproject.org</a><br>
Objet=C2=A0: [yocto] Eclipse plugin plans<br>
<br>
Hi all,<br>
<br>
I&#39;ve recently become involved in development of our Eclipse integration=
, and we figured it&#39;s about time we sent out an update on where things =
currently stand.<br>
<br>
Current development<br>
---------------------------<br>
<br>
New life is being injected into the Yocto Project Eclipse plugins. There ar=
e several drivers for this:<br>
<br>
1) Integrate the tooling with Docker. With changes and additions to Eclipse=
 CDT and Eclipse Linuxtools projects, it=E2=80=99s now possible to have Doc=
ker images provide functionality that=E2=80=99s running within Eclipse. For=
 example, CDT=E2=80=99s autotools can be run in a Docker container for comp=
iling/building/recipe and for running/debugging.<br>
<br>
2) Docker tooling also provides a way to do cross-OS building/running - e.g=
.<br>
Eclipse running on Windows doing compiles/running/recipes for a target runn=
ing on Linux (in a Linux Docker Container). Up until now we have been restr=
icted to Linux as the Eclipse host OS. We will be looking at Windows first,=
 MacOS may follow later.<br>
<br>
3) Simplify the deployment and installation of the plugins. Currently, the =
plugins have a number of dependencies=E2=80=A6e.g. on Eclipse CDT and other=
s. This often makes it difficult to install, use, and upgrade the plugins, =
particularly for Yocto Project beginners.<br>
<br>
4) Update the plugins for latest Eclipse. Eclipse has upgraded its support =
(CDT, Linuxtools/Docker, etc) significantly, and the plugins do not yet tak=
e advantage of these improvements. The target for the 2.6 release will like=
ly be Eclipse Photon (released June 2018).<br>
<br>
5) Improve and make more transparent the Build/Continuous Integration/Relea=
se Engineering for the plugins. This will make it easier for others to cont=
ribute, and will make it easier for automated testing to be done improving =
overall quality.<br>
<br>
To start down these directions and explicitly start on 3, 4, 5 we propose t=
hat for eclipse-poky we move toward a maven-based build. Maven-based builds=
 are extremely common in the Eclipse plugin development world, and there ar=
e a lot of technologies openly available to support building these plugins:=
 e.g.<br>
maven, tycho, Eclipse itself. As part of this we will be looking to transit=
ion the autobuilder from the current script-based build to a maven-based bu=
ild, but with two caveats:<br>
<br>
a) the current autobuilder will be used for 2.5 release<br>
b) both builds (script-based) and maven-based will be maintained until afte=
r<br>
2.5 release<br>
c) the maven-based build will add: automated testing, easier dependency man=
agement, a more open and maintainable build system<br>
<br>
We are proposing that the existing eclipse-poky 2.5 branch (oxygen.master) =
be soon frozen (after a few small pending fixes) and that the eclipse-poky =
=E2=80=98master=E2=80=99 be opened up for 2.6 development. This way we will=
 have a stable release candidate as 2.5 approaches, and be able to begin wo=
rk on 1-5 as above for 2.6 as soon as possible.<br>
<br>
If you want a peek at what we are currently working on with maven see the t=
imo/maven branch in eclipse-poky-contrib. New instructions are in the READM=
E.dev file.<br>
<br>
<br>
A note about CROPS<br>
----------------------------<br>
<br>
The earlier effort to build the CROPS architecture to support multiple IDEs=
 has been dropped - unfortunately we weren&#39;t able to realise the origin=
al design for a number of reasons including that in the case of Eclipse it =
was incompatible with the upstream Eclipse direction. We have now switched =
back to the original eclipse-poky codebase and are following upstream Eclip=
se / Linuxtools / CDT development a lot more closely. We will however gain =
some of the features that CROPS set out to provide - i.e. building in a con=
tainer and therefore enabling the IDE to be running on a non-Linux OS.<br>
<br>
Note: the CROPS containers [1] are still around and functional, and will li=
kely form the basis of the containers used by the current YP Eclipse plugin=
s.<br>
<br>
<br>
New mailing list<br>
---------------------<br>
<br>
As you may have seen elsewhere, we now have a mailing list dedicated to Ecl=
ipse plugin development and related discussion. You can find information (a=
nd list archives) here:<br>
<br>
=C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/eclipse-poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/e=
clipse-poky</a><br>
<br>
If you have follow-up questions / discussion or would like to get involved,=
 please join us over on that list.<br>
<br>
Cheers,<br>
Paul<br>
<br>
[1] <a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTricks/CropsCLICon=
tainers" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org=
/wiki/TipsAndTricks/CropsCLIContainers</a><br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></blockquote></div></div>

--001a1143e8e2f1981c05640783e5--
