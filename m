Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ABC6E00A80; Wed, 29 Jul 2015 09:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 570D8E009E4
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 09:53:20 -0700 (PDT)
Received: by qged69 with SMTP id d69so7303390qge.0
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 09:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ERcXKjw0yPI4C4R7JeqCnEWMRPg/KbuPkoaSLcLfqFs=;
	b=nBLmRD5T8EahXhR00TtcQt40btI/1SDxKGV1mQiYWkmXdCoy+ylPabV1ejIFPQabm/
	G1wBDdEzzaNlSSJ2tMs2AX3pYgEkbEmRmMMDpzDGunv/Wo07FQ+fKQtLTWT2xcdKyaeu
	5xA0d/6806MhPrmUPQH8xKmR4E3JPPkB3j0qJ503AppSMF6YnSaRNSudjecfuUsXL//u
	oLbLLsXA01STwTYkC744glFYJGtevq+bgVFgyzq22wS67pdyQ5yzeMRVAJiywEJtH1Rr
	avZJHMruqh/LFfKhCfW1X2hUignkqH9bOjo93JoL8DNJu8urdg7cX7HL0Vz3UmKOwm2v
	wvhQ==
MIME-Version: 1.0
X-Received: by 10.140.34.135 with SMTP id l7mr61874577qgl.79.1438188800065;
	Wed, 29 Jul 2015 09:53:20 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 29 Jul 2015 09:53:19 -0700 (PDT)
Date: Wed, 29 Jul 2015 13:53:19 -0300
Message-ID: <CAF3SDA6biNngim9-a0Jsr4uU9-ynQASu4j1HBGB0rY4Mey0MPA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Conflicts between init-ifupdown and connmand? and static ip configuration
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
X-List-Received-Date: Wed, 29 Jul 2015 16:53:24 -0000
Content-Type: multipart/alternative; boundary=001a11c109868c4786051c066cae

--001a11c109868c4786051c066cae
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm using Poky 1.7(Yocto Dizzy) and I see that both (init-ifupdown and
connmand) is installed. Since connmand starts at boot it mess the
configurations placed on /etc/network/interfaces. Isn't this a bug? I think
is confuse to have two packages that do same thing installed at same time,
also, since connman is a new project, users may be fooled by connmand
messing /etc/network/interfaces configuration, as I was.

To get static ip working I remove the execution permission from
/etc/init.d/networking and use connmanctl config <SERIVCE> --ipv4 manual IP
NM GW. Wich seems an ugly work around for me.

I see that connman is pulled by connman-gnome that is pulled by
packagegroup-core-x11-sato, and that init-ifupdown is pulled by
packagegroup-core-boot.

Best regards,
Cheers

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11c109868c4786051c066cae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi all,<br><br></div>I&#39;m using Poky 1.7=
(Yocto Dizzy) and I see that both (init-ifupdown and connmand) is installed=
. Since connmand starts at boot it mess the configurations placed on /etc/n=
etwork/interfaces. Isn&#39;t this a bug? I think is confuse to have two pac=
kages that do same thing installed at same time, also, since connman is a n=
ew project, users may be fooled by connmand messing /etc/network/interfaces=
 configuration, as I was.<br><br></div><div>To get static ip working I remo=
ve the execution permission from /etc/init.d/networking and use connmanctl =
config &lt;SERIVCE&gt; --ipv4 manual IP NM GW. Wich seems an ugly work arou=
nd for me.<br><br></div><div>I see that connman is pulled by connman-gnome =
that is pulled by packagegroup-core-x11-sato, and that init-ifupdown is pul=
led by packagegroup-core-boot.<br></div><div><br></div>Best regards,<br></d=
iv>Cheers<br clear=3D"all"><div><div><div><div><br>-- <br><div class=3D"gma=
il_signature"><div style=3D"text-align:right"><i>&quot;Do or do not. There =
is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></d=
iv>
</div></div></div></div></div>

--001a11c109868c4786051c066cae--
