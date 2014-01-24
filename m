Return-Path: <harpreet.bhatia30@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 761F0E00804
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 17:08:46 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id t61so1981464wes.7
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 17:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=N8HEU6kqgdMEnFIE7zA8cpZQYqAZdpB0svTKSAqW6E0=;
	b=sDv+pTQnhiBZQc7T0vdZ1bKvEu32rEXYqQr5JfHbX4qbypBsl+wlhxR1xMLGu1c9hy
	mqcag9oL97Yf4oM384Kmni5Hhhc09FyVegDIcvMQH1AxbelsViwueSwW9aLT59B7zRHY
	t4LmPW89BoHnED0skaLz6sB4MlWU7YxUweEEx9znQEEKqFkRT/pSuPR8rjEkB+YIMOXv
	ODeEiSrYUYgz99y59WCoUiJ/kT9/nDrJtksPOQTeBca30s9oELYkUl106GAvXGLAH5Ib
	6+y9736hN5ajlCegcSjlnCU/oMnOvm50LAl7pgL2zQhRT9SX0tjOxMqmutDpHrwAqTdm
	/w/Q==
MIME-Version: 1.0
X-Received: by 10.194.175.202 with SMTP id cc10mr83977wjc.48.1390525725774;
	Thu, 23 Jan 2014 17:08:45 -0800 (PST)
Received: by 10.194.121.37 with HTTP; Thu, 23 Jan 2014 17:08:45 -0800 (PST)
Date: Thu, 23 Jan 2014 17:08:45 -0800
Message-ID: <CA+_BiB3EVGC2e=T027_fwHhbG=HKydovjG9OFd3wqfpymyQapg@mail.gmail.com>
From: Harpreet Singh <harpreet.bhatia30@gmail.com>
To: yocto@yoctoproject.org
Subject: Need to customize /etc/network/interface
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
X-List-Received-Date: Fri, 24 Jan 2014 01:08:49 -0000
Content-Type: multipart/alternative; boundary=089e013d0f48ef982204f0acffdc

--089e013d0f48ef982204f0acffdc
Content-Type: text/plain; charset=ISO-8859-1

Hi

I want to customize /etc/network/interface file according to requirement. I
tried creating another reciepe file where i am installing my interface file
to /etc/network/interface i.e. "install -m 0644
${WORKDIR}/scripts/interfaces123 ${D}${sysconfdir}/network/interfaces".

But still in build this interface file is not getting updated. Looks kine
during bitbake, this file is overwritten by standard file.

Please help

-- 
*Regards*

*Harpreet Singh*
*9873064104*

--089e013d0f48ef982204f0acffdc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi <br><br></div>I want to customize /etc/networ=
k/interface file according to requirement. I tried creating another reciepe=
 file where i am installing my interface file to /etc/network/interface i.e=
. &quot;install -m 0644 ${WORKDIR}/scripts/interfaces123 ${D}${sysconfdir}/=
network/interfaces&quot;.<br>
<br></div>But still in build this interface file is not getting updated. Lo=
oks kine during bitbake, this file is overwritten by standard file.<br><br>=
Please help<br clear=3D"all"><div><div><div><br>-- <br><div dir=3D"ltr"><di=
v>
<font color=3D"#3366ff"><b>Regards</b></font></div>
<div><font color=3D"#3366ff"><b>=A0</b></font></div>
<div><font color=3D"#3366ff"><b>Harpreet Singh</b></font></div>
<div><font color=3D"#3366ff"><b>9873064104</b></font></div></div>
</div></div></div></div>

--089e013d0f48ef982204f0acffdc--
