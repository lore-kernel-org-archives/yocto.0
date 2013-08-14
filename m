Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A696E003D3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 22:11:16 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id e12so3390888vbg.15
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 22:11:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Ml9ONI8xn9voxMUyJeIu5dcIxd2ZE3lEwqmz6keBsNg=;
	b=BrGG5cS/bsYSb7zaZgVWHBtEam5z6acQMTjs3U4Irj4IWLcMrXPIHnjF6ZiH1GtMKP
	Erfo6Nk8J7iB2vpDvf9XqzSnwKiENpqVw6oBimjrYfqNScf8XOcicXB1f6Ws5H1IL9dB
	bMHBIQ+nWfnLaUk2ZYfngcnDP96uo9Ud9nNr7EdmLW1T5a0QDrSyyIv2XI+ATp1ZC8Mx
	ZHyOsGKeYIJlll0TF35iNEKt2HTwSN8TkLGKePy/Y0n3UqdTTtgr+YzL+X/WE4jW9K7C
	eEiWK6hldTtv6Lerac/Hx5v/fTMsP+vXS9TWAclUduaf7C+71NgIfgcY+0AnWZewF+4s
	wfvw==
X-Gm-Message-State: ALoCoQmS08HExgdYt49bRW9sVY3r1P/oLXclY87mZDsQUviwTTsn9HaSPORZzwsyyZ8upT6I/tW4
MIME-Version: 1.0
X-Received: by 10.58.119.233 with SMTP id kx9mr7750315veb.3.1376457075978;
	Tue, 13 Aug 2013 22:11:15 -0700 (PDT)
Received: by 10.52.244.109 with HTTP; Tue, 13 Aug 2013 22:11:15 -0700 (PDT)
Date: Tue, 13 Aug 2013 22:11:15 -0700
Message-ID: <CAPhnLPAePTqR+nWMuAYtC1CqP3xjxnqed7Q5=_XRMqsKx=8ZTw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, 
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>
Subject: Weekly build available.
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
X-List-Received-Date: Wed, 14 Aug 2013 05:11:26 -0000
Content-Type: multipart/alternative; boundary=001a11c391be10079804e3e163f1

--001a11c391be10079804e3e163f1
Content-Type: text/plain; charset=ISO-8859-1

The weekly build should be available soon at:

http://autobuilder.yoctoproject.org/pub/nightly/20130813-3

Known issues:

- Both eclipse buildouts are using the wrong repo. I'll have the issue
fixed in the morning.
- nightly-ppc sanity failure
- nightly-qa-systemd sanity failure

meta-fsl-arm c29042a130fc1f2201a7e4728c868d4946024235
meta-fsl-ppc 399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4
meta-intel ddbbbf3a5a601703117c3f37f436b9437d46dde4
meta-minnow e862f8c44cd8ef375181909cfcdd63756913f318
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
poky ff10f72abda52315b892c64f711096772d9a4c1c


--
Elizabeth Flanagan
Yocto Project
Build and Release

--001a11c391be10079804e3e163f1
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div><div><br>The weekly build should be available soon at:<br><br><a href="http://autobuilder.yoctoproject.org/pub/nightly/20130813-3">http://autobuilder.yoctoproject.org/pub/nightly/20130813-3</a><br>
<br></div>Known issues:<br><br></div>- Both eclipse buildouts are using the wrong repo. I&#39;ll have the issue fixed in the morning.<br></div>- nightly-ppc sanity failure<br></div>- nightly-qa-systemd sanity failure<br><div>
<div><div><div><br>meta-fsl-arm c29042a130fc1f2201a7e4728c868d4946024235<br>meta-fsl-ppc 399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4<br>meta-intel ddbbbf3a5a601703117c3f37f436b9437d46dde4<br>meta-minnow e862f8c44cd8ef375181909cfcdd63756913f318<br>
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222<br>poky ff10f72abda52315b892c64f711096772d9a4c1c<br><br><br>--<br>Elizabeth Flanagan<br>Yocto Project<br>Build and Release</div></div></div></div></div>

--001a11c391be10079804e3e163f1--
