Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78535E00C3D; Wed, 14 Nov 2018 03:49:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF8DE00BBF
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:49:02 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id r12-v6so23399323ita.3
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sT5RBlJtgDnGuVQCayTe7DyQ1HKxcL2gH7DaEF+VFzY=;
	b=OU7FtAy5Tef71Q1UKewZ3wKiKao2nXdAHSTHhNUhAok+UUrQJMwNkXKstSb6BpbL5V
	EV9QCTgXEkEgU/Zb+o/a9qFSSMAkPSLZM1d+FQjCWsAWJg7XMhjGRAshOAe3dsXzwVNf
	Izb2VZAilVy0NmX1splFxnoWELzu78+Df245Pl5wTprIKxaPMiJqhMlW0qJMiLwXBd3t
	bVpakxggAMtDWM7wj2WU3gAwpnEfSltuIh7AKdFvL5i3C1T1BjbdWqLTP9EuWNLLlZ24
	tLp0ePrVDpS5gW9Npwl1M9bK/aTAlRm2pC0kHMQt+yCllxJM9yRDi/ynrN9fEPq3vKnM
	41+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sT5RBlJtgDnGuVQCayTe7DyQ1HKxcL2gH7DaEF+VFzY=;
	b=AHq5x3e0XbC/iOAX5CCeYFYRbx3+use5DbeiCd8UGliw49RY3agmqocPrlsWKIjwEP
	hqLNeOnIJUaqPvrIvjVLS5K4TILTkGWkEQsqiQGvBXCq4dQD+2PTqenlRUKX8rHYgWTp
	BWnResFWjYxWd3eDLV9pARAqP3MmSlFuA6Npz7WIQYFru8akYjpsQ9BHcZtD00v/oatC
	WmnfvZOmu8Sb4MeXWv2A/oYOEduXQEQTpJUb3w6crFZlcwv04ffozGXM63Buj/eeB3W6
	I5kWFIUh8FpXe+Ns4Dbn+S7iySd4EV86//yCX4ObGup5FkKD16uCV0VVk8dggj0NwAxT
	w8OQ==
X-Gm-Message-State: AGRZ1gIGF91EZj4xPUxu0o0vK3T6j7m/L6QkpWMefXQdCDe9Hj0Tbppi
	Uq48HwbxjKbZIOH20btpu7xBHWurgT30RLvxPYc7ZQ==
X-Google-Smtp-Source: AFSGD/UG3jsoNaJ1amf6bT/YTSB7RpkW6npz8I8L9QARIbIhAXqoeSuvBADjFByGpAuOrNSVAlxICG9DKkpxUMmN3TI=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr1766177ite.130.1542196142287; 
	Wed, 14 Nov 2018 03:49:02 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJu_CbZYAGCiytx1GuM+HEQ+ar8mRG+aWG55dRe_okpK8Q@mail.gmail.com>
	<CAJTo0LY4jYkwWH0LEjzoAmjPWpm3W7P0m45YSWC7CfTW11P_CQ@mail.gmail.com>
	<CAD9sEJsfnEMaPpREK26BoXqteh+3yXw3Uy6jQThBJMnnomJ3EA@mail.gmail.com>
In-Reply-To: <CAD9sEJsfnEMaPpREK26BoXqteh+3yXw3Uy6jQThBJMnnomJ3EA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Nov 2018 11:48:51 +0000
Message-ID: <CAJTo0LbnVE9zCecktM+qchTDEn1gPwcXj8bfUb5erOhFtJqJug@mail.gmail.com>
To: theknoppix@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] meta-gnome: what are dependencies for gnome-full-desktop (gnome interface)
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
X-List-Received-Date: Wed, 14 Nov 2018 11:49:03 -0000
Content-Type: multipart/alternative; boundary="0000000000003c472a057a9e8551"

--0000000000003c472a057a9e8551
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Nov 2018 at 11:46, Knoppix <theknoppix@gmail.com> wrote:

> My question were implement the missing recipes for yocto->meta-gnome
> To start from point I did want to learn dependency graphic of gnome3.
> I subscripted devel right know.
>

Just to repeat: all of the recipes you'll need to write are on the oe-devel
list now.  They need work and testing, and your contributions are welcome.

--0000000000003c472a057a9e8551
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, 14 Nov 2018 at 11:46, Knoppix &lt;<a href=3D"mailt=
o:theknoppix@gmail.com">theknoppix@gmail.com</a>&gt; wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>My qu=
estion were implement the missing recipes for yocto-&gt;meta-gnome</div><di=
v>To start from point I did want to learn dependency graphic of gnome3.</di=
v><div>I subscripted devel right know.</div></div></blockquote><div>=C2=A0<=
/div><div>Just to repeat: all of the recipes you&#39;ll need to write are o=
n the oe-devel list now.=C2=A0 They need work and testing, and your contrib=
utions are welcome.</div></div></div>

--0000000000003c472a057a9e8551--
