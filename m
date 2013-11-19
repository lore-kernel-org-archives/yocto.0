Return-Path: <bmentink@gmail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B15E00507
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 12:52:39 -0800 (PST)
Received: by mail-pd0-f176.google.com with SMTP id w10so6464624pde.21
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 12:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=guKTR22aDm0QQ6xDzp3bYnRN2m4M5W85ntntmxihU58=;
	b=DcjZLqzP0riXKWAg1D4PfE5ZDbVLh3z+RloxuXsbugnoUlL4YfpUpZBsfcK9ZeEqVn
	Crq001zRZXoigyWc28cljP4tY6kGtYw2cA+zaaVfFGUjeeRbclrzKCtqo90IS50y+SCp
	QOQyncz+aE2tTi4Ej3rgfuT3I1zXPcIBvajEeX1Su5jmYipS2a9875m9emZ6Ig3EZCk5
	DShUqdz6hRk5KMy0FFhLmLmuG5ZrF2fQ1MbwYMN1TGPNanS/c+oEKkhxmVT2LWlQW+Qz
	O0zByuxBhi6LyNk2qBxRyhoscH2VelH63X83zYCsC58z/6ka585s4SXZXKDYtwdIFYhl
	5fKg==
MIME-Version: 1.0
X-Received: by 10.68.106.98 with SMTP id gt2mr20467384pbb.61.1384894359231;
	Tue, 19 Nov 2013 12:52:39 -0800 (PST)
Received: by 10.70.44.231 with HTTP; Tue, 19 Nov 2013 12:52:39 -0800 (PST)
Date: Wed, 20 Nov 2013 09:52:39 +1300
Message-ID: <CALEed8ZZ2dT7sZ+hd=DLzEAhXm9LK_RWsWgVZApc-7KimfqKKg@mail.gmail.com>
From: Bernard Mentink <bmentink@gmail.com>
To: yocto@yoctoproject.org
Subject: connman
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
X-List-Received-Date: Tue, 19 Nov 2013 20:52:40 -0000
Content-Type: multipart/alternative; boundary=047d7b6d933e55643304eb8dd897

--047d7b6d933e55643304eb8dd897
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

Can anyone help with wifi not being enabled with connman?

I have to use "ifup wlan0" to start my wifi interface, connman refuses to
bring it up on start, even though I have the ethernet cable un-plugged.

I have enabled wifi in the settings file and have a wifi.conf that is used
because when I manually bring it up, it connects to the network specified
in there.

Thanks,
Bernie

--047d7b6d933e55643304eb8dd897
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>Can anyone help with wifi not b=
eing enabled with connman?</div><div><br></div><div>I have to use &quot;ifu=
p wlan0&quot; to start my wifi interface, connman refuses to bring it up on=
 start, even though I have the ethernet cable un-plugged.</div>
<div><br></div><div>I have enabled wifi in the settings file and have a wif=
i.conf that is used because when I manually bring it up, it connects to the=
 network specified in there.</div><div><br></div><div>Thanks,</div><div>
Bernie</div></div>

--047d7b6d933e55643304eb8dd897--
