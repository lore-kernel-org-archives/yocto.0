Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 704E1E009EA; Wed,  3 Feb 2016 06:45:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95CFE00951
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:45:13 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id 9so57541373iom.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 06:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=/KA/TSeDb8wXB2fsE4Lif+5k75hVMUzpUYYV4cUod40=;
	b=Tw0PdwKyps/XOv7avWnbU2xGmWYkpdv207uiZjBGPSe2QAI0d+XooxSoPAALPiXr8s
	frv6XK7VneZjCYxLmnLV3wlbjbXU7i1rHzqM1SDCERMtwnPLZR6dCSsG50fjdyWn//9R
	fY79zmzprgf7JMrLABqMgYfiHY5nxnzHJkuIJeBFtUngYC6e5PNhMO7cM1UOTe2v6cyo
	P7q1psZKSdNrI6ANTdulxiud61zbe+UCABD9myM5H7Br02vx0eJDgBTW/xDhy1tThpOC
	TdwOt502K3TMi0OnVoTqvycmUj/aBmDBEsAS0AKXH0XN8Fd8ZgjFSV6ALX5sEMMjOhh6
	T1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=/KA/TSeDb8wXB2fsE4Lif+5k75hVMUzpUYYV4cUod40=;
	b=PG5eBkvmZAGmVCbnhOYK6uTKlI/Wp97W0sKtMnZF8mlFf8eYmV51jIgM47MNvAgE5Q
	MN6sQmShQCJnemPg+xNhxSw7c1bWjX1uL8Zqf8ffbSzcE2AHkLJVUdJWrxmv6qgW8HUq
	E08YgQ3ot09x/guXFbsQjfq8Nqeh5N3EQj11MKeAM5h9osevW80b27d2mu/dZRx8BR7Z
	41iIuX9Fck36Wh7RITUGC4MTpw/PApO2+x4+2rXwhlfUGxAL3Ve3Rxizmy4MrEPMJFDu
	h9xVQ/yflz91FhcpRKRm9N0JjZ5bRQYdXYyzjSok7/zykYp3BHIctF4KTFyJg5CHUw0d
	O3cw==
X-Gm-Message-State: AG10YOR0NaTHbL6dPeSQPOeFDfaV46NAkljB056QcUzbrxRhBjNcba452LQJstyYL6UxQnr/hhunVasWfASpbg==
X-Received: by 10.107.34.79 with SMTP id i76mr4327006ioi.195.1454510712786;
	Wed, 03 Feb 2016 06:45:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Wed, 3 Feb 2016 06:44:43 -0800 (PST)
In-Reply-To: <EC7BC1CD2E085743BB2AE634252C39C1717A39@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
	<AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
	<CAEyFGJGx-Cns4Sj3bru4L-e2cCmO+w0dPOy5TkYad9+n+0BuSQ@mail.gmail.com>
	<EC7BC1CD2E085743BB2AE634252C39C1717A39@server.exchange.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Feb 2016 06:44:43 -0800
Message-ID: <CAMKF1sr-qwCsThsB3PH1v1_7u_jNpZAg-Pg=vp0ZOTHvbevbDg@mail.gmail.com>
To: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
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
X-List-Received-Date: Wed, 03 Feb 2016 14:45:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2016 at 3:46 AM, GUEYTAT Julien
<j.gueytat@cdssoft.studiel.fr> wrote:
> Hi everyone,
>
>
>
> I understand that you are all rewriting the qtbase rule to include at lea=
st
> the modification to the QMAKE_LIBS_EGL variable.
>
> The question is:
>
> Could we make somehow some work in meta-qt5 or meta-raspberrypi to not ha=
ve
> to overwrite the qtbase rule.


I dont understand. PAKCAGECONFIGS are specifically desined for this
kind of scenario
what problems are you seeing.

>
> For instance=E2=80=A6 meta-raspberrypi is providing a package config file=
 for EGL.
> May be you could have meta-qt5 read this package config.
>
>
>
> That=E2=80=99s the question. I=E2=80=99d like to know what the maintainer=
s of those two
> layers think about that.
>
>
>
> Best Regards,
>
>
>
> De : Yannick Kiekens [mailto:yannickkiekens@gmail.com]
> Envoy=C3=A9 : mercredi 3 f=C3=A9vrier 2016 08:41
> =C3=80 : Khem Raj
> Cc : GUEYTAT Julien; yocto@yoctoproject.org
> Objet : Re: [yocto] [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not
> properly set
>
>
>
> Have a look at this git repo: https://github.com/YannickKiekens/meta-qt5-=
pi
>
> I have build a qt5 eglfs with raspberry pi2 backend on master branch
> yesterday evening
>
>
>
> On Wed, Feb 3, 2016 at 7:08 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
> wrote:
>
>
>
> Hi,
>
>
>
> It seems that there are some stiff missing between meta-qt5 or
> meta-raspberrypi.
>
> When we set the option gles=E2=80=A6 to qtbase we don=E2=80=99t get the Q=
MAKE_LIBS_EGL set
> properly.
>
> We can compare a working set of variables in the qt mkspecs directory of =
qt.
>
> There is one dedicated file for the RaspberryPi2. May be one also for
> RaspberryPi.
>
> Anyway!
>
> How could we set those *_EGL variables properly? And=E2=80=A6 If they are=
 properly
> set, will qtbase will take them into account?
>
>
>
> I will be happy to propose a patch but I need to get more precision first=
.
>
>
>
> Firstly show the DISTRO_FEATURES may be you are missing some important kn=
obs
> for EGL
>
> like openGL and gles2 etc.
>
>
>
> Thanks in advance,
>
>
>
>
>
>
>
> Julien GUEYTAT
>
> Ing=C3=A9nieur Informatique
>
> <image001.png>
>
> 1027, avenue du Docteur Julien Lefebre BP27
>
> 06271 Villeneuve-Loubet Cedex
>
> Fixe :  +33 (0) 492 024 545
> Mob :  +33(0) 617 980 383
> Fax :    +33(0) 492 024 546
> Email : j.gueytat@cdssoft.studiel.fr
>
> www : www.studiel.fr
>
> P Pensez Environnement, imprimez seulement si n=C3=A9cessaire
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

