Return-Path: <gizero@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F6C2E0139E
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2012 22:39:59 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so9443814obb.35
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2012 22:39:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gizero@gmail.com designates
	10.60.26.133 as permitted sender) client-ip=10.60.26.133; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of gizero@gmail.com
	designates 10.60.26.133 as permitted sender)
	smtp.mail=gizero@gmail.com; dkim=pass header.i=gizero@gmail.com
Received: from mr.google.com ([10.60.26.133])
	by 10.60.26.133 with SMTP id l5mr8969491oeg.22.1329719999026 (num_hops
	= 1); Sun, 19 Feb 2012 22:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=fmBYZxVXf3chl+tdAG6O35nynO1f91sRavRwYBqsWic=;
	b=KJsQrGXonDGsJB2YBpHssSg3eYbb2QfhPw3id5SSxlzE4gM5xFRUFtV5ryI4MPMyoU
	9kGnluoREvvCsn+au9DmHgHFdbMms4zqLpwfnnKFB2BTQeOx+PHbtz4BX1xNMzur9mHi
	hf8iRO1dqn90+KrcO5Abae4i3o56IsAzcTqBU=
MIME-Version: 1.0
Received: by 10.60.26.133 with SMTP id l5mr7684188oeg.22.1329719998980; Sun,
	19 Feb 2012 22:39:58 -0800 (PST)
Received: by 10.182.154.4 with HTTP; Sun, 19 Feb 2012 22:39:58 -0800 (PST)
In-Reply-To: <CAFZh4h8EjS6NSVgcUDnF0+AbUYk4Fga0Ek6hnMXWcHjLMozAqg@mail.gmail.com>
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
	<4F215A28.4030409@communistcode.co.uk>
	<4F215DF0.4020503@mlbassoc.com> <4F216C3F.6040901@mlbassoc.com>
	<4F217046.2090306@mlbassoc.com> <4F217135.209@communistcode.co.uk>
	<CAFZh4h8EjS6NSVgcUDnF0+AbUYk4Fga0Ek6hnMXWcHjLMozAqg@mail.gmail.com>
Date: Mon, 20 Feb 2012 07:39:58 +0100
Message-ID: <CAC+thW2MvyiELxcy5PUh9r2NrjEkvPyLZW5qDbUbt7Tu7F2Rbg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: BeagleBone with meta-ti layer
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
X-List-Received-Date: Mon, 20 Feb 2012 06:39:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jan 26, 2012 at 4:38 PM, Brian Hutchinson <b.hutchman@gmail.com> wr=
ote:
> I grabbed a bag of chips and a beverage ... watching this thread! =A0I'm
> right behind you guys so thanks for blazing the trail. =A0I have other
> TI parts to work with but starting with first BeagleBoard (&
> BeagleBone) since that is the reference.

Was this an happy ending story? Where you guys successful in building
meta-ti layer under Yocto umbrella?

Regards,
Andrea

