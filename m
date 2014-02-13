Return-Path: <laurene.guelorget@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C58E007B9
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:02:01 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id jz11so8122508veb.36
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ZZK0bv3r7PaglgQMTI9Fh1kAMin2luT8Sftvhd0yVtw=;
	b=mPIrDWywrp0B4aBSrji/GFFyLJPncZFByUvkwZHg5gksvqD1UitnZzHp3qe2N5D5Qt
	O27qJkoxJ648/a+ITJVzaAXR0aZvkxjtEDiVJJE6yI1wU+SoJsuxKRcd2hiVLp2PfOoa
	RTY46WWwMxM/NI480hHAdN2LoSWoiWels72cb8w9vFse5SI5Hs+ceeGCp7XZAZPVdA8f
	0e+hn786uwUDAhyOy6fLP9k/8muIU80/+d8utG9IWzeE3mEJs6eKhpGGNtVFnqOI/gYX
	BmzXUSvThTSqu/eRUMO+bhS0AieoQVeoGnnL5FRDscNY7tPGpoTM0IlInhzmc9b56ewZ
	HiMg==
X-Received: by 10.220.10.2 with SMTP id n2mr62623vcn.26.1392278520207; Thu, 13
	Feb 2014 00:02:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.44.37 with HTTP; Thu, 13 Feb 2014 00:01:30 -0800 (PST)
From: =?ISO-8859-1?Q?Laur=E8ne_Guelorget?= <laurene.guelorget@gmail.com>
Date: Thu, 13 Feb 2014 09:01:30 +0100
Message-ID: <CADYp-eEwpi1gcz4nT4_6cfgBOMba3D6v7KMH7vVrDB7L5AWVkQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [opkg] Problem with the package manager opkg on Intel Galileo
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
X-List-Received-Date: Thu, 13 Feb 2014 08:02:04 -0000
Content-Type: multipart/alternative; boundary=001a11c3a920a0234b04f2451a6c

--001a11c3a920a0234b04f2451a6c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

I am using an Intel Galileo board with a linux distribution
(LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5)
and I want to install new packages. I think opkg is the package manager on
this OS but I don't know how
to use it. I have an internet connection on the Galileo but I don't know
how to add a repository url to have
more packages available. For example, I want to install openhab on the
board, where can I found it and
do I have to add it in the /etc/opkg/opkg.conf file?

Another issue I have is about java. Does this distribution have Java on it?
If not where can I get it to intall
it on the Galileo?

Sincerely,

p.s. Sorry this is my second email but I didn't realize I needed to put
[yocto][...] in the object line.
--=20

*Laur=E8ne GuelorgetEl=E8ve ing=E9nieur en 5=E8me ann=E9e =E0 Polytech'Gren=
oble
<http://www.polytech-grenoble.fr>*

*Fili=E8re R=E9seaux Informatiques et Communication Multim=E9dia Sp=E9ciali=
t=E9 "**R=E9seau
et **Syst=E8me"*
*Rejoignez moi sur LinkedIn.
<http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/89a>*

--001a11c3a920a0234b04f2451a6c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:arial,sans-serif;font-size:13px"=
>Hello,</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br=
></div><div style=3D"font-family:arial,sans-serif;font-size:13px">I am usin=
g an Intel Galileo board with a linux distribution (LINUX_IMAGE_FOR_SD_Inte=
l_Galileo_v0.7.5)=A0</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">and I want to in=
stall new packages. I think opkg is the package manager on this OS but I do=
n&#39;t know how=A0</div><div style=3D"font-family:arial,sans-serif;font-si=
ze:13px">

to use it. I have an internet connection on the Galileo but I don&#39;t kno=
w how to add a repository url to have=A0</div><div style=3D"font-family:ari=
al,sans-serif;font-size:13px">more packages available. For example, I want =
to install openhab on the board, where can I found it and=A0</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">do I have to add=
 it in the /etc/opkg/opkg.conf file?</div><div style=3D"font-family:arial,s=
ans-serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-se=
rif;font-size:13px">

Another issue I have is about java. Does this distribution have Java on it?=
 If not where can I get it to intall=A0</div><div style=3D"font-family:aria=
l,sans-serif;font-size:13px">it on the Galileo?=A0</div><div style=3D"font-=
family:arial,sans-serif;font-size:13px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Sincer=
ely,</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></=
div><div style=3D"font-family:arial,sans-serif;font-size:13px">p.s. Sorry t=
his is my second email but I didn&#39;t realize I needed to put [yocto][...=
] in the object line.</div>

-- <br><div dir=3D"ltr"><i>Laur=E8ne Guelorget<br>El=E8ve ing=E9nieur en 5=
=E8me ann=E9e =E0=A0<a href=3D"http://www.polytech-grenoble.fr" target=3D"_=
blank">Polytech&#39;Grenoble</a></i><div><i>Fili=E8re R=E9seaux Informatiqu=
es et Communication Multim=E9dia<br>

Sp=E9cialit=E9 &quot;</i><i>R=E9seau et=A0</i><i>Syst=E8me&quot;</i></div><=
div><i><a href=3D"http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/=
89a" target=3D"_blank">Rejoignez moi sur LinkedIn.</a></i></div></div>
</div>

--001a11c3a920a0234b04f2451a6c--
