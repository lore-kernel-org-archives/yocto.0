Return-Path: <halstead@happypunch.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA90E01388
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 11:00:03 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1098242ghb.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 11:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=75dJ0/cKuvrSev+RIZXmfQHYZavEdM8ouq4zP+kTvjw=;
	b=PQf/rTP3AGVk99RZvTjlkKiamD8oX5UrkQ65q5fIYOglxhoo7qzJmANZ9svhk8MONX
	ps9HMcDFn/S4a5ZETby3mINnZxS1/6xpUJNfJIuIMZlOdhs99QhBUs6/yZSGzRpcoq9r
	vTdR3y952gD9Dfn8KG4KD8b3BbXl/5Cxesh/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=75dJ0/cKuvrSev+RIZXmfQHYZavEdM8ouq4zP+kTvjw=;
	b=Z/36V1CsXpXudOHdt50jdvpGi2GrjceaxmUiR6a6bDhOhBjUpHB1+eeWKPKJOa3laq
	m+cOxMwF2mveM+r+D5fbY1Pzupmufb7tqUrGe1g6892V/MW7XJ2lf+ivdPPrAwPdPAQr
	ayiCxfMJKE+oeRTbMSFGabJMeVs3Nc2VEtTY4xD8pgRn18hQZzTJuuk4ff1/2dkyHetx
	NOu6c4vjSZtPBY8+LjNTVTFu3+2amxEoHudQL2bG7V4VzXa3ySjR17j3yP+GH5Tw4qrQ
	Htut6BU1GH6ceN9s3OshExo4bFQUlBi3bLfN/LnF1km6/q9FuTck0CVZePr6pxyYmeYi
	rw/w==
MIME-Version: 1.0
Received: by 10.50.213.97 with SMTP id nr1mr3171783igc.40.1345658399929; Wed,
	22 Aug 2012 10:59:59 -0700 (PDT)
Sender: halstead@happypunch.com
Received: by 10.64.103.69 with HTTP; Wed, 22 Aug 2012 10:59:59 -0700 (PDT)
Received: by 10.64.103.69 with HTTP; Wed, 22 Aug 2012 10:59:59 -0700 (PDT)
Date: Wed, 22 Aug 2012 10:59:59 -0700
X-Google-Sender-Auth: QpoDriQvtEXF3YNAuq3QWhoA2QA
Message-ID: <CA+f-kVLAsEkWGMzmaEoxmxd3bbOd5v0gBM2huq58YdPh9G8ebw@mail.gmail.com>
From: Michael Halstead <michael@yoctoproject.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
X-Gm-Message-State: ALoCoQlyLuF5twqzkHxusr1fRewS+RmDLo6meLYsOviWLqVvGTU6t+rOODPoie0TFlhHKX5inLkN
Subject: [infrastructure] Power interruption at OSL
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
X-List-Received-Date: Wed, 22 Aug 2012 18:00:03 -0000
Content-Type: multipart/alternative; boundary=14dae9340603eab6cb04c7de821c

--14dae9340603eab6cb04c7de821c
Content-Type: text/plain; charset=ISO-8859-1

There was an unintended power interruption during UPS electrical work at
the OSU Open Source Lab today. Power to the Yocto Project racks was not
impacted but the core router was briefly offline. This event doesn't appear
to have impacted us but please report any network trouble that may be
related.

Michael Halstead
Yocto Project / Sys Admin

--14dae9340603eab6cb04c7de821c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>There was an unintended power interruption during UPS electrical work at=
 the OSU Open Source Lab today. Power to the Yocto Project racks was not im=
pacted but the core router was briefly offline. This event doesn&#39;t appe=
ar to have impacted us but please report any network trouble that may be re=
lated.</p>

<p>Michael Halstead<br>
Yocto Project / Sys Admin</p>

--14dae9340603eab6cb04c7de821c--
