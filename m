Return-Path: <jean-pierre@anki.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38FE4E00DC9; Tue, 13 Feb 2018 13:32:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6157E006E3
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 13:32:34 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id g2so3178797qkd.12
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 13:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anki.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=KoThoLG8mBn8uM9beFdmZeydDo2uZzKd6Do2pVbajfE=;
	b=g680mDRFCdIrqxEvk1ycd+uijIXxyXFdM9L+fjjsYry63EeU4LR+l9S1XmOtO/mLNg
	QzxBvShVYCi3juMYUsgRb0J/XG9DXViIWKmuHsNH4eJ40ZvKaRteUuJSP55T87G58yGA
	1iR2kADhT8NYwjxxaEfgPX3OIDJF58xfb2oDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KoThoLG8mBn8uM9beFdmZeydDo2uZzKd6Do2pVbajfE=;
	b=JRLRG4XvRB4LLzVEaulfQgc16BMVBGPv0M5PqgYOqkmG1hKxwVp0NGzoXDXJg0dDK7
	RjNnDbx+tHN7abE4zXKDpN1nTWcZR5/xUw+IuRiIDj6MqOKBB0myxSO5DqSXl4lh9t8g
	tAeCus41C9l9Ynxv4SFpdv6OWVxfO08F2ka3n15j8MV5/6rpQRrNebg0yW/LgCW94eIF
	V14+795bBaJ0II5FYb5iGoNMQWSdDLGG2GAZHXc2MuiOHEmkyDL+nlEWLwlo3HUo5sul
	umcvQY9KLqrvqRY4CJ5NzP8Mud/UvZpQ0+VLhUkfSPZ45VsVnCvo9C5HCRs11iLu735U
	mGgA==
X-Gm-Message-State: APf1xPCapJFA5qba3/GIxTmZ7AoBiRfxK65d0UevSNvaV9YXy3ITSq7B
	Hdmp71TNAGynh0CV6nEJhWpJqqR5D7+Dcs40L8evMDkI
X-Google-Smtp-Source: AH8x224YxSJGuQDGjtFBOuvCPvqjtmiPOPNVg71h3bJ3aMxBUMToAbWsplKlitS8/fpWkEH/gtizJX9zqQ5KPJ+qM1w=
X-Received: by 10.55.215.21 with SMTP id m21mr4225449qki.123.1518557553619;
	Tue, 13 Feb 2018 13:32:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.53.65 with HTTP; Tue, 13 Feb 2018 13:32:33 -0800 (PST)
From: Jean-Pierre Sainfeld <jean-pierre@anki.com>
Date: Tue, 13 Feb 2018 13:32:33 -0800
Message-ID: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: useradd-example.bb
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
X-List-Received-Date: Tue, 13 Feb 2018 21:32:35 -0000
Content-Type: multipart/alternative; boundary="001a11499dc88e0b7005651ebba0"

--001a11499dc88e0b7005651ebba0
Content-Type: text/plain; charset="UTF-8"

Hi,
I am working on yocto system at the jethro rev level.
I am looking to use the meta-skeleton useradd-example.bb recipe
So far I have been successful in adding the required users and group
and creating files in the /usr/share directory
The current issue I am facing is the ownership of the created file
I see the right permissions at the do_install() time
however when the image is loaded in the target
those files are reverted to the root:root permissions

The requirement of our platform is that we can create specific users and
make some specific processes  and data files having the proper uid and ueid.

I have been able to do all this successfully on the target
but not through the yocto build system

Any assistance in this regard would be fantastic and very cool :-)



-- 
Jean-Pierre Sainfeld
408-508-1741

--001a11499dc88e0b7005651ebba0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am working on yocto system at the jethro rev lev=
el.=C2=A0</div><div>I am looking to use the meta-skeleton <a href=3D"http:/=
/useradd-example.bb">useradd-example.bb</a> recipe</div><div>So far I have =
been successful in adding the required users and group=C2=A0</div><div>and =
creating files in the /usr/share directory=C2=A0</div><div>The current issu=
e I am facing is the ownership of the created file=C2=A0</div><div>I see th=
e right permissions at the do_install() time=C2=A0</div><div>however when t=
he image is loaded in the target=C2=A0</div><div>those files are reverted t=
o the root:root permissions=C2=A0</div><div><br></div><div>The requirement =
of our platform is that we can create specific users and=C2=A0</div><div>ma=
ke some specific processes=C2=A0 and data files having the proper uid and u=
eid.</div><div><br></div><div>I have been able to do all this successfully =
on the target=C2=A0</div><div>but not through the yocto build system=C2=A0<=
/div><div><br></div><div>Any assistance in this regard would be fantastic a=
nd very cool :-)</div><div><br></div><div><br></div><div><div><br></div>-- =
<br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Jean-Pierre Sainfeld<div>408-508-1741</div></div></div>
</div></div>

--001a11499dc88e0b7005651ebba0--
