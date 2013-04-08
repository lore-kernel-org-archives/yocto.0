Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BA7E00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 16:09:49 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b12so6226788wgh.6
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 16:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=CHmlxdXQelyoLPxwK5tRxqnV8d2WRVJGB7HoL/vVL8U=;
	b=Y/KupBNWsRr00pKqVGun/NaohP+kAHTf1wycSCzTHO7w4GWxSPA2QFQwUqX+4pMrVk
	3H9PJzPcK19bD/Kx3iZ5qwQS1nPe4SIx1JIPX2YDZOdtCwrTG4hVybQ30YU6pP9RJf2r
	9ym+yh33Ufq7/bYeoDLj3/CWhalwo9ehBA2ZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=CHmlxdXQelyoLPxwK5tRxqnV8d2WRVJGB7HoL/vVL8U=;
	b=DLbDswY/WZMKtPGOROkjo4Dy0mHqA4r9cMEWUoZs0QAezOf9IL3G508Mr5Lteyz3ay
	X9D869sHQOIssgfx2vZcjr/bA4TgTHNPXeVUKFrSOz3/J43QdRe0fDzdyHKD/0mNqXsA
	EEs8Bl3hemX7d8ux4g9ekWxO3Yt6tBv+kHVffneyz+/4idjGcTvK4nZJYyKC5XAmHLp/
	yKjAT3vtIQTGLJ1PpzszS1T1jsU3le3EJHyuPL8kpMyOg1grLmJ9lP2YHz7Dy/2yw3jn
	e6eO7l3vE29WjCQtJa7ybY++y7DzC52Kj7b6y6WWyT4UCRZm9jACHS/9kJEJtbfr7nMe
	LzpQ==
MIME-Version: 1.0
X-Received: by 10.204.184.193 with SMTP id cl1mr11958888bkb.17.1365462587917; 
	Mon, 08 Apr 2013 16:09:47 -0700 (PDT)
Received: by 10.204.237.74 with HTTP; Mon, 8 Apr 2013 16:09:47 -0700 (PDT)
In-Reply-To: <CAHUNapQkneoLF7_7DBFxd+Cm23iTBkJezDsy4NEq9v06GiSybw@mail.gmail.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
	<000301ce3185$ab049a20$010dce60$@annabooks.com>
	<CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
	<000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
	<CAHUNapQkneoLF7_7DBFxd+Cm23iTBkJezDsy4NEq9v06GiSybw@mail.gmail.com>
Date: Mon, 8 Apr 2013 16:09:47 -0700
Message-ID: <CA+gsK-p1AradoFSPrwE-oiWF2NQtaEjiq4GQUqK47cEi4fXQpA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQlsRx2rb4ArCVTAaF/H/DY3xeH0YrTrTSdGcuhQTnEyaXgn4M+D3E7LkmZm4c2R8S9mmvw5
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Mon, 08 Apr 2013 23:09:49 -0000
Content-Type: multipart/alternative; boundary=20cf302ad36083848004d9e18838

--20cf302ad36083848004d9e18838
Content-Type: text/plain; charset=ISO-8859-1

The process that you are describing is commonly called "device
provisioning." I have experienced this process from different angles:
working for a company making functional test equipment for electronics
production lines and working for a company providing software for set-top
boxes.

From this experience provisioning is frequently done during production at
the end of the process when the automated functional test is performed.
During these tests the devices are fired up, get their device image
installed, receive their individual programming and are tested.

Dependent on the device there are many methods on how to do it. I have used
serial ports, networked provisioning servers, direct programming of OTP or
flash using the tester, etc.

It may be a cool thing to have for YP but it may also somewhat out of the
scope of YP. In one way or another you will always have to put your data
onto the root file system. Unfortunately, creating a root file system is
always somewhat expensive and time consuming. Many times when I am making
changes to my YP build environment just rebuilding a single package
creating the root file system is the most time consuming part of the
process.

My preferred way of provisioning is a networked provisioning server. In
most cases, you will have to store the configuration data anyway, so I
store it in a database on the provisioning server. I have not done this
with YP but if had to do it I would look into using TCF. When the device
boots it starts up TCF. The provisioning server connects to the TCF server
on the  device, pushes the files it needs, etc.

It's a fun project but if you look at it from that angle it's not that much
related to YP as a build system. It's like any other application package.
You build it with YP and add it to the root file system.

:rjs

--20cf302ad36083848004d9e18838
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The process that you are describing is commonly called &qu=
ot;device provisioning.&quot; I have experienced this process from differen=
t angles: working for a company making functional test equipment for electr=
onics production lines and working for a company providing software for set=
-top boxes.<div>
<br></div><div style>From this experience provisioning is frequently done d=
uring production at the end of the process when the automated functional te=
st is performed. During these tests the devices are fired up, get their dev=
ice image installed, receive their individual programming and are tested.</=
div>
<div style><br></div><div style>Dependent on the device there are many meth=
ods on how to do it. I have used serial ports, networked provisioning serve=
rs, direct programming of OTP or flash using the tester, etc.</div><div sty=
le>
<br></div><div style>It may be a cool thing to have for YP but it may also =
somewhat out of the scope of YP. In one way or another you will always have=
 to put your data onto the root file system. Unfortunately, creating a root=
 file system is always somewhat expensive and time consuming. Many times wh=
en I am making changes to my YP build environment just rebuilding a single =
package creating the root file system is the most time consuming part of th=
e process.</div>
<div style><br></div><div style>My preferred way of provisioning is a netwo=
rked provisioning server. In most cases, you will have to store the configu=
ration data anyway, so I store it in a database on the provisioning server.=
 I have not done this with YP but if had to do it I would look into using T=
CF. When the device boots it starts up TCF. The provisioning server connect=
s to the TCF server on the =A0device, pushes the files it needs, etc.</div>
<div style><br></div><div style>It&#39;s a fun project but if you look at i=
t from that angle it&#39;s not that much related to YP as a build system. I=
t&#39;s like any other application package. You build it with YP and add it=
 to the root file system.</div>
<div style><br></div><div style>:rjs</div><div class=3D"gmail_extra"><br>
</div></div>

--20cf302ad36083848004d9e18838--
