Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC65BE00CD4; Mon, 23 May 2016 04:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9859FE00C8F
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 04:40:03 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id l10so22437716igk.0
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 04:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Zo3N2VUL11kn5c2vVOOG5eOcWsI/qZHAWkWZlekZ4Sw=;
	b=KLg2CyxxJSpf1SfqgibzdL9Zg+Ve1ucoDgH92htT5jycqO4uDH5l3oib3DZGl50CO+
	k8Z7HXV4uDM0UhIwARSSUSI93gNmD2nGJQ7mWVLoxLdHrUMhKNxVlvz3+3bDUXuneP3I
	PvMO8KlZ60rtcwHGOpmOM0pFdXLdMDd+/etLeqS0/9Q4YzslosFuftA0hlEhDXPa80bW
	EbI/2ljfPonyry7KeYO0DlxqZ26XycYaQW1HmPlKq6tmyi0GHPqmRK9bAC6aVxp/gDtC
	en4+fJw74Ho3i6tSo1ycQVqiDz4E9MPHIfDlF8m70rh75nmjFxOkFWK0jYfUcw7eGmda
	C39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Zo3N2VUL11kn5c2vVOOG5eOcWsI/qZHAWkWZlekZ4Sw=;
	b=T44PJVNjZXRzTT1Ot4yefWeQLFz/gzcyeQPHH73IHDdFa4yDlC6FrxyJNqXzxy+Xg/
	ebH0gXi2hcDQ129wHuhJV1Z4QKU1eeUCz/5LQyfw5ehQXXhPQx4arKoFeVLS2vQ4EskO
	1G1y42Bhs2nI4rgz8U4/tETsmakouLNG43VlCroPdsVK9kxMqWkKl/qqsbpiJZ2quUx8
	2tdfTAaq4IXiITyLu7GSwo93rQZnqN3hS45jjEdNZ3+smCOCwrb+H3i1iNQ7vZLhFQ1P
	K83mK05w0Hpkt+x2hBgjMj+KxSoCXXNLCoT4lWFvRuOFa0iqmTrZX8AS+GIoLPBlS6Nl
	K4tQ==
X-Gm-Message-State: AOPr4FUSSnHj7W7eoDH38sDaOMlkooXq+U6+fm/j98wBPwx6AZuIGUD22VQND5sQx9ZMrUwTW7LrDQTW4pz10JTI
X-Received: by 10.50.62.20 with SMTP id u20mr11767408igr.52.1464003602349;
	Mon, 23 May 2016 04:40:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 23 May 2016 04:39:42 -0700 (PDT)
In-Reply-To: <2028737853.1706172.1464003386492.JavaMail.yahoo@mail.yahoo.com>
References: <CAC2M0xUK2o6Muq028jsRTqcULQT8dtAKK3jfP6BUpFJTpMCTmw@mail.gmail.com>
	<2028737853.1706172.1464003386492.JavaMail.yahoo@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 May 2016 12:39:42 +0100
Message-ID: <CAJTo0Lbf6yj_GJwA9m1xToqTxWu-dCZooQiHZD5PSd3WwcUfdg@mail.gmail.com>
To: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: add generic startup file to yocto image
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
X-List-Received-Date: Mon, 23 May 2016 11:40:06 -0000
Content-Type: multipart/alternative; boundary=047d7bdca606ab276f053380e606

--047d7bdca606ab276f053380e606
Content-Type: text/plain; charset=UTF-8

On 23 May 2016 at 12:36, Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es
> wrote:

> until now I have followed a "manual" methodology to add script to startup
> on system boot:
> - create sh file
> - made it executable and copy it to /etc/init.d
> - add it with update-rc.d my-startup-file.sh defaults 99 to be executed
> just before login prompt.
> What should I do in order to add a generic my-startup-file.sh to
> /etc/init.d and the corresponding S and K file to rcX.d directories?
> Thank you very much for your help!
>

Write a recipe to instal your script using the update-rc.d class to invoke
update-rc.d on install (
http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-update-rc.d
).

Ross

--047d7bdca606ab276f053380e606
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 May 2016 at 12:36, Alvaro Martinez Tovar <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:alvaromartineztovar@yahoo.es" target=3D"_blank">alvaromartinezt=
ovar@yahoo.es</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><f=
ont face=3D"verdana, helvetica, sans-serif">until now I have followed a &qu=
ot;manual&quot; methodology to add script to startup on system boot:</font>=
</div><div dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif">- crea=
te sh file</font></div><div dir=3D"ltr"><font face=3D"verdana, helvetica, s=
ans-serif">- made it executable and copy it to /etc/init.d</font></div><div=
 dir=3D"ltr"><font face=3D"verdana, helvetica, sans-serif">- add it with up=
date-rc.d my-startup-file.sh defaults 99<code> to be executed just before l=
ogin prompt.</code></font></div><div dir=3D"ltr"><font face=3D"verdana, hel=
vetica, sans-serif"><code>What should I do in order to add a generic my-sta=
rtup-file.sh to /etc/init.d and the corresponding S and K file to rcX.d dir=
ectories?</code></font></div><div dir=3D"ltr"><font face=3D"verdana, helvet=
ica, sans-serif"><code>Thank you very much for your help!</code></font></di=
v></blockquote></div><br>Write a recipe to instal your script using the upd=
ate-rc.d class to invoke update-rc.d on install (<a href=3D"http://www.yoct=
oproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-update-rc.d">h=
ttp://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-=
update-rc.d</a>).</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">Ross</div></div>

--047d7bdca606ab276f053380e606--
