Return-Path: <pcjegan@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81888E0044A
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 00:37:55 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so4680832wgb.11
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 00:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=gTk4QELQQJKcOtCtI7VeWXHPUrlBHBORIiKbhSNxptY=;
	b=pkNEG5+YLdxTUOofWzNNTUKMzS407lLW4C0QJgRrPxCDVwQT5V6suLT2MLhG6TNlyf
	TZP3kfHihN0uOYS3bucUrQjjQVILfpUU31whEKODbzPZBRppeO1oVXFvVxdg3y7l7sU/
	/hJwm71FhV+TlQqdzpjDrLb8zE6cjZQp1l40xmRHA+B8Vl/6GGc+mGI9Ryn2/oDhIHBb
	oxh5yoARPdF3dWIYmot/+rffXzMf9+sauSLy8mEQ1i0DwutZxBuXlJUwD1fXpcCEPbPb
	zQRRncKinFxdzVWP/haZ5ycONG9JG44ybqPWR6nbreHWiawU8iuN9xxu4Lc8W030HdQ8
	MpAA==
Received: by 10.180.92.65 with SMTP id ck1mr32248980wib.14.1337672274456; Tue,
	22 May 2012 00:37:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.38.66 with HTTP; Tue, 22 May 2012 00:37:34 -0700 (PDT)
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 22 May 2012 13:07:34 +0530
Message-ID: <CAAA4K6Jqjx=g9-JFQrm4__CJs69xPYVoVS-2FM+Ce8088ta8Yg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: How to set a DISTRO_FEATURE?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 May 2012 07:37:55 -0000
Content-Type: multipart/alternative; boundary=f46d043c8076beaf0e04c09b180f

--f46d043c8076beaf0e04c09b180f
Content-Type: text/plain; charset=ISO-8859-1

Hi Chris,

You can either set it in local.conf as you have mentioned or you can define
the variable in your machine conf.
You can do something like this,

require conf/distro/include/default-distrovars.inc
................
........................
DISTRO_FEATURES = "alsa ....... "

Please check if that works for you too.

JC

--f46d043c8076beaf0e04c09b180f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Chris,<div><br></div><div>You can either set it in local.conf as you hav=
e mentioned or you can define the variable in your machine conf.</div><div>=
You can do something like this,</div><div><br></div><div>require conf/distr=
o/include/default-distrovars.inc</div>

<div>................</div><div>........................</div><div>DISTRO_F=
EATURES =3D &quot;alsa ....... &quot;</div><div><br></div><div>Please check=
 if that works for you too.</div><div>=A0</div><div>JC<br clear=3D"all"><di=
v>

<br></div>
</div>

--f46d043c8076beaf0e04c09b180f--
