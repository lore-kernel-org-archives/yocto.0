Return-Path: <nitishjha16@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A86F4E006EA; Fri, 27 Jan 2017 06:59:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nitishjha16[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74CF4E00510
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:59:36 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id v96so62253887ioi.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bh/fRLNiwfxVg9OxzRQbqqG83jnNizLVhaeZcOtKXi4=;
	b=h7GCqumQRhMEu6oZLhC3fAfIcAQNDvkd2bj9GuteSYaFRs8EWz5Xt6MSkQJh/yGs2x
	J/Ls7HdOELKiniBTv8CuZjeQrt12XaaMHQLikdaCL6KyhaokzkIY82ES44St5fcHb82C
	cNT0F3ErJ+u5csLccI9DjWMrzJjxKHKhvZw99frOVzgMQOaY7QpTVl3jxqw0SGa8hVij
	Iprx6MGTRDQZx8bebBUfZH2UMezVAeyHpBxise91uA2yPLLPJC4lxlEigCup19f+ncsQ
	u+VSSsalmdvM9tv9dhWOS9kpJIHS2t6NFci66S65JvC+u1fdilaOHtg85YXeo1MQBxhu
	ttxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bh/fRLNiwfxVg9OxzRQbqqG83jnNizLVhaeZcOtKXi4=;
	b=sHct5SZYhvvDLQ4a0ZouQqj7JiU5bEdxhWl198ILzERl4RvhntrCbnU2YZXzrTI8WJ
	/9TSvOtgQMDMMI84HmEYubu8x09FI9FGi7584MxvbBJ3b/nI78+RpTwFy2b7X1wXY2+b
	epWFPqGmOt02H7jCzPGq+na5d95fQQO8c1efwzz+Ioa/nPpaKvmf6k1lJwVWYPTRjaeb
	fId19d8ttvunj/p9c+OsGMelpvSc46g1/LUmucyoT98vMzcSlCmJq/S1nQUSrU+lGI75
	DOUM1hUBK+uBYaxyGmQoq068EFIjrHWgx7g0OqOOGNZT0xWYqV4VboQaXceycLAqEsdE
	NP2w==
X-Gm-Message-State: AIkVDXIqtLm0AuKzAyxkbea1KO8dZlpAla/9tCKOrMpNGz/MOKJuO0FVA5L5ibEGWPsakF/JdVCkg9kA2mXFiQ==
X-Received: by 10.107.10.24 with SMTP id u24mr7371071ioi.94.1485529176218;
	Fri, 27 Jan 2017 06:59:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.142.205 with HTTP; Fri, 27 Jan 2017 06:59:35 -0800 (PST)
From: nitish jha <nitishjha16@gmail.com>
Date: Fri, 27 Jan 2017 15:59:35 +0100
Message-ID: <CABh+fob2rRDKGYhGRm5bjHZU+v-KoKvCaTHDEFNNmmmMYPS82w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 27 Jan 2017 08:06:39 -0800
Subject: Change default OS in YOCTO poky distro
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
X-List-Received-Date: Fri, 27 Jan 2017 14:59:40 -0000
Content-Type: multipart/alternative; boundary=001a113f9762da242f054714b627

--001a113f9762da242f054714b627
Content-Type: text/plain; charset=UTF-8

Hello All,

I have few question regarding Yocto poky distribution, it may be very silly
question but if somebody could help to clear my doubts it will be very
useful.

Q1. What is the default OS in Yocto Poky build.

Q1. What Steps I need to do in case I want to have some different
OS(Android) or Type 1 Hypervisor on my Yocot Poky distro, which layers I
need to add or remove from default Yocto Poky distro


Thanks and Regards

-- 
*Nitish Jha*

--001a113f9762da242f054714b627
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,=C2=A0<div><br></div><div>I have few question re=
garding Yocto poky distribution, it may be very silly question but if someb=
ody could help to clear my doubts it will be very useful.</div><div><br></d=
iv><div>Q1. What is the default OS in Yocto Poky build.</div><div><br></div=
><div>Q1. What Steps I need to do in case I want to have some different OS(=
Android) or Type 1 Hypervisor on my Yocot Poky distro, which layers I need =
to add or remove from default Yocto Poky distro</div><div><br></div><div><b=
r></div><div>Thanks and Regards<br clear=3D"all"><div><br></div>-- <br><div=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v style=3D"font-family:arial;font-size:small"><div><b>Nitish Jha</b></div><=
div><br></div></div></div></div></div></div></div></div>
</div></div>

--001a113f9762da242f054714b627--
