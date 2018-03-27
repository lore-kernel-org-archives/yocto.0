Return-Path: <nicolas_salmin@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0D02E00B8F; Tue, 27 Mar 2018 01:18:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8881DE00905
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:18:29 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id r131so13152758wmb.2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=aPihv5VAD9gv2Hzh791ImjEKqHZXNbH8EUcjds0cFWo=;
	b=AC0zBWSQf8aZtS+FK6/mIbWtkdVn9rgTIS/adTwKQv1nu/aFmjZZBL9BfydgaLkzTk
	h5/zj6LJPivPyXzrF6GnZCLvI5Qc2O4cXtG7pyGwzP1+/VT/MT7Tb1yHYyoV7uXQ2oVC
	QuAXCo2loK/oZbLKX3vYgbs34KKNjbuUksv12TmjTHbthM11PM01BVi+1idgo05AME7+
	5AcY6tNTsmbDVL7OdNwdUkbBQyrvZDztCKXgCS+B8j69EGxuyu5FEOVyi6IlBeswhY3o
	2X3lNc4qME6RB2By6vQHkNPEvieClUf2hHiDIDbgHq7p32X6ubUAOW76b+A5ylDcQijj
	ZNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aPihv5VAD9gv2Hzh791ImjEKqHZXNbH8EUcjds0cFWo=;
	b=NOH4bh3CrX+ut+4jHfqWVdQgHmGh+zm3ULZoRL5rsHwYgpLN4wloDvM8QxiqlmfP+K
	YODUeGeusrWBq64m5+FozgpSamGminvspxmANBAAL+9/DsG93oBy7iq7ags8EtHzMA5y
	dt+FJnKxkqAR66pft/2/jCNdR80LaotX276/BNgE2sB/SSlx/+Gm4mnycdeqlgM1kul6
	K5S977W5HrsQ9FGGF9iLxxfrDaf6MXS9woVTQ55ePJ4ok0BOCfH1tmMZmpR5nK6hBUNx
	h2RXMS7Qy2imCWWXBtUpQECvgEJsJ2HsGB5lrE6NDGjyJ965cBt4tXMNoQc3lZM6oIlp
	wjLA==
X-Gm-Message-State: AElRT7EXuBzFRWFaIPCbNxviipaCwkukb/mhPBio66r3s0F8fEp7laaN
	UHhNxYwSGTsCIwUe58Lrkq2aJU9P+lYaeHVPxmEPWfGPsN0=
X-Google-Smtp-Source: AG47ELs5DJW9OJYcQMQ/cCR/2VSE4bHW33QA12CSMhsYb8quq1ItjNxmiTKoF9BotWAMhXoyB0V2Nd7TgtjYHCnZitw=
X-Received: by 10.80.166.211 with SMTP id f19mr43931654edc.266.1522138709043; 
	Tue, 27 Mar 2018 01:18:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.245 with HTTP; Tue, 27 Mar 2018 01:18:28 -0700 (PDT)
From: Nicolas Salmin <nicolas_salmin@trimble.com>
Date: Tue, 27 Mar 2018 10:18:28 +0200
Message-ID: <CAGTsOqOdmYMFPxr+WQa2BTMHzZoeTxbfiHqW3OZ-7oS8dku_Gg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to disable module auto-loading
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
X-List-Received-Date: Tue, 27 Mar 2018 08:18:31 -0000
Content-Type: multipart/alternative; boundary="94eb2c1978ea0d5e9c05686089f9"

--94eb2c1978ea0d5e9c05686089f9
Content-Type: text/plain; charset="UTF-8"

Hello all,

I would like to know the better way to disable module auto-loading ?

I tried to create /etc/modprobe.d/blacklist.conf but as /etc/modprobe.d
doesn't exist on my rootfs i think is not a good solution.

I have tested also with  *KERNEL_MODULE_AUTOLOAD -= "module.name
<http://module.name>"* and
*KERNEL_MODULE_AUTOLOAD_remove = "module.name <http://module.name>"*

Last solution will be pass *modprobe.blacklist=module.name
<http://module.name>* in cmd line.

So in your opinion, which is the better way to do that ?

Cheers,
Nicolas

--94eb2c1978ea0d5e9c05686089f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I would like to know the bet=
ter way to disable module auto-loading ?</div><div><br></div><div>I tried t=
o create /etc/modprobe.d/blacklist.conf but as /etc/modprobe.d doesn&#39;t =
exist on my rootfs i think is not a good solution.</div><div><br></div>I ha=
ve tested also with =C2=A0<b>KERNEL_MODULE_AUTOLOAD -=3D &quot;<a href=3D"h=
ttp://module.name">module.name</a>&quot;</b> and<br><b>KERNEL_MODULE_AUTOLO=
AD_remove =3D &quot;<a href=3D"http://module.name">module.name</a>&quot;</b=
><div><span style=3D"color:rgb(0,68,68);font-family:Verdana,Sans,sans-serif=
;font-size:medium;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:right;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline"><span style=3D"color:rgb(0,68,68);fo=
nt-family:Verdana,Sans,sans-serif;font-size:medium;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:right;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><br=
></span></span></div><div><span style=3D"text-align:right;text-indent:0px;t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline"><span style=3D"text-align:right;text-indent:0px;text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">Last=
 solution will be pass <b>modprobe.blacklist=3D<a href=3D"http://module.nam=
e">module.name</a></b> in cmd line<font color=3D"#004444" face=3D"Verdana, =
Sans, sans-serif" size=3D"3"><span style=3D"background-color:rgb(255,255,25=
5)">.</span></font></span></span></div><div><br></div><div>So in your opini=
on, which is the better way to do that ?</div><div><br></div><div>Cheers,</=
div><div>Nicolas</div></div>

--94eb2c1978ea0d5e9c05686089f9--
