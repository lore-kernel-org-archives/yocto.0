Return-Path: <laurene.guelorget@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8C6E0074B
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 08:37:11 -0800 (PST)
Received: by mail-ve0-f182.google.com with SMTP id jy13so7720331veb.27
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 08:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=MfWvn2Ghnroc/lY98lyPRuWGKDkDQhLWMaaH6Rrypag=;
	b=KYBCKKNEECqTDeHW7/GCrZbU0iXeOBB4FUJydjC5831LFkuJr0EpwLJhSygl4CqunI
	oMWS+dHCvvQGndlAITjcUtl8rqul9TablIYAw5qMmrDiXmwxQY/FMZNmehT3SYSrVoUQ
	LYcozU/p2RS51squ91XT1m1CniZfG9TAbcwMhf/zGSIeNroYYbUHQ0qZWK/xBGWUf3sX
	baf1MH11D5TcdV0Go1aSodDIAX6mE0Nzp6XukIlz9/3rLpvPJrF5Gf9GHNC6XJhfBMmm
	RLNnVk/awbfTrt2PT5Aql/LR1JYuDx/b8aC4aPutxz6WhpCQyFHyZL7TRU6nYiGvWYKg
	/+xQ==
X-Received: by 10.58.249.228 with SMTP id yx4mr30998vec.50.1392223030860; Wed,
	12 Feb 2014 08:37:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.44.37 with HTTP; Wed, 12 Feb 2014 08:36:40 -0800 (PST)
From: =?ISO-8859-1?Q?Laur=E8ne_Guelorget?= <laurene.guelorget@gmail.com>
Date: Wed, 12 Feb 2014 17:36:40 +0100
Message-ID: <CADYp-eG5wNGkDf4Et5=f+LMwoLx2DfDDSPA2wdaYXDBYWOwFXQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with the package manager opkg on Intel Galileo
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
X-List-Received-Date: Wed, 12 Feb 2014 16:37:13 -0000
Content-Type: multipart/alternative; boundary=047d7b6782f033e0e204f2382fd2

--047d7b6782f033e0e204f2382fd2
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
--=20

*Laur=E8ne GuelorgetEl=E8ve ing=E9nieur en 5=E8me ann=E9e =E0 Polytech'Gren=
oble
<http://www.polytech-grenoble.fr>*

*Fili=E8re R=E9seaux Informatiques et Communication Multim=E9dia Sp=E9ciali=
t=E9 "**R=E9seau
et **Syst=E8me"*
*Rejoignez moi sur LinkedIn.
<http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/89a>*

--047d7b6782f033e0e204f2382fd2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am using an Intel G=
alileo board with a linux distribution (LINUX_IMAGE_FOR_SD_Intel_Galileo_v0=
.7.5)=A0</div><div>and I want to install new packages. I think opkg is the =
package manager on this OS but I don&#39;t know how=A0</div>

<div>to use it. I have an internet connection on the Galileo but I don&#39;=
t know how to add a repository url to have=A0</div><div>more packages avail=
able. For example, I want to install openhab on the board, where can I foun=
d it and=A0</div>

<div>do I have to add it in the /etc/opkg/opkg.conf file?</div><div><br></d=
iv><div>Another issue I have is about java. Does this distribution have Jav=
a on it? If not where can I get it to intall=A0</div><div>it on the Galileo=
?=A0</div>

<div><br></div><div>Sincerely,</div>-- <br><div dir=3D"ltr"><i>Laur=E8ne Gu=
elorget<br>El=E8ve ing=E9nieur en 5=E8me ann=E9e =E0=A0<a href=3D"http://ww=
w.polytech-grenoble.fr" target=3D"_blank">Polytech&#39;Grenoble</a></i><div=
><i>Fili=E8re R=E9seaux Informatiques et Communication Multim=E9dia<br>

Sp=E9cialit=E9 &quot;</i><i>R=E9seau et=A0</i><i>Syst=E8me&quot;</i></div><=
div><i><a href=3D"http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/=
89a" target=3D"_blank">Rejoignez moi sur LinkedIn.</a></i></div></div>
</div>

--047d7b6782f033e0e204f2382fd2--
