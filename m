Return-Path: <ron@ron-oakes.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAB8CE00DBA; Fri, 25 Nov 2016 10:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91129E00C37
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 10:44:12 -0800 (PST)
Received: by mail-yw0-f175.google.com with SMTP id a10so68829835ywa.3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 10:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ron-oakes-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=tkrHELpXnm0MDniSXCSHgbC9a813fgU+2296bIfKySA=;
	b=KhmGqQEl9cPMki2WzseoBNqajTJlYbYBwaivsTQ/+KlUcKOGOCElpPRcoPy8sIXy6N
	TuTzZCueCGNYN6iqzjBDqYXrULXo0mkPay5Tui2Uonu3w7tQYVYtxa/CMVi2KEMaqaQy
	zf9FKB3qiseZINuDbDhODSaaZsCvp92XfDIkZnq/u+0CHZLNMD6ynGVD8Gp++Zn6v7Li
	g7Qr/tleGpcexufu9OUmVMmWmLXJzynyWe6qwfp0oXFmB7RJZB0HhNWXmzr0ejUFoTdo
	ZHVLKivuSuKSSFEFe9M5xjM2/EKZdPvGU3IqwihdNVib81JusqK3RugD6VNfRXZJOudO
	oyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tkrHELpXnm0MDniSXCSHgbC9a813fgU+2296bIfKySA=;
	b=MOy/Bm5NMgc9EQwgGNfakS/18/q9E/osequ7YNa3M2cZF71//2C0OGr8+RlIYIzSs3
	wWRkppt/tYtRm5hI2T894gUpzzjpNif43xKRHra6ezt98OaLOmSGzn1ESMezBbVCxGNM
	Ibl/Qw2nhSuwzC6spxTdXmgkTPcqwmm0J/Oa/asrl1TW1uf4pAg0aXQJZYMriE1I/YMo
	hdUcpiQZgsbzXqCc2ZsiEe5qTjlChKHCXj/HCxDU8oX+4rkqHZ2LaIU/HkgMr7St2ErD
	KkzIiEhNLQu6lq4an+yIfqbLHsVBi+lg8212si8I9VJf6NXrZ1lLUgCoq8cDVknL6idT
	Pqrw==
X-Gm-Message-State: AKaTC01nNoxr7209PVO7/dKE4BsEEjdYQGcZZwsJ/0rriKmajeZlQDmObtjJfOC51gCJAEnxSifRdo7QDtEIdA==
X-Received: by 10.13.203.69 with SMTP id n66mr11459141ywd.220.1480099451299;
	Fri, 25 Nov 2016 10:44:11 -0800 (PST)
MIME-Version: 1.0
From: Ronald Oakes <ron@ron-oakes.us>
Date: Fri, 25 Nov 2016 18:44:00 +0000
Message-ID: <CADh9ykHD_4GO+n9hpv-bWn-JCnZaxzS5mTdmC1b1iBQGfRVR3g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problem imaging a hard drive
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
X-List-Received-Date: Fri, 25 Nov 2016 18:44:15 -0000
Content-Type: multipart/alternative; boundary=001a11481de407360a054224823f

--001a11481de407360a054224823f
Content-Type: text/plain; charset=UTF-8

I've been trying to use the directions at
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F
to create a boot drive based on my build.

However, I keep ending up with my root being at /media/ads/, with two big
issues: my static IP address isn't assigned, and my path is messed up
leaving my applications not on it by default.

The one main difference from the directions is that I'm using grub2-install
instead of grub-install. This is because I'm using a current RedHat system
for development due to a requirement of my client.

I will note that at least one of my added kernel modules is being loaded,
since I can see related messages in the console/demesg log.

Ron Oakes

--001a11481de407360a054224823f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"white-space:pre-wrap">I&#39;ve been trying to use the directi=
ons at <a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_p=
ut_Yocto_on_a_hard_drive.3F">https://wiki.yoctoproject.org/wiki/How_do_I#Q:=
_How_do_I_put_Yocto_on_a_hard_drive.3F</a> to create a boot drive based on =
my build. <br><br>However, I keep ending up with my root being at /media/ad=
s/, with two big issues: my static IP address isn&#39;t assigned, and my pa=
th is messed up leaving my applications not on it by default. <br><br>The o=
ne main difference from the directions is that I&#39;m using grub2-install =
instead of grub-install. This is because I&#39;m using a current RedHat sys=
tem for development due to a requirement of my client. <br><br>I will note =
that at least one of my added kernel modules is being loaded, since I can s=
ee related messages in the console/demesg log. <br><br>Ron Oakes </div>

--001a11481de407360a054224823f--
