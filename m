Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493EBE00743
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 15:42:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwn31 with SMTP id 31so1505209wwn.11
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 15:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=jNDUrJdOFf8GRFDOj6NFq/5vmRwdlUciOoSFKXzR5HY=;
	b=A841xKOaiiIBeztrEca4WRUyyfOxWdzj+P5RR4vQedlN/fCF0gIYofx8lm3Iemp8YJ
	U4bqgZCS6HG6oIPo2Lc9WPFhz0C/gAiggc4pTS/VbMfraimXk2bpcb1msq3r5RzKJmem
	au//3oUGABN28Wh4eR7L3nVIK3AIsghbK0fqw=
Received: by 10.227.204.143 with SMTP id fm15mr16348647wbb.26.1322091731166;
	Wed, 23 Nov 2011 15:42:11 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.28.138 with HTTP; Wed, 23 Nov 2011 15:41:50 -0800 (PST)
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F201A8D4E497@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3833@ORSMSX101.amr.corp.intel.com>
	<4FF5AC937153B0459463C1A88EB478F201A8D4E497@orsmsx505.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 23 Nov 2011 16:41:50 -0700
X-Google-Sender-Auth: D4X48Kfg5KNgdShrsSWuq7FdlLI
Message-ID: <CABcZANniDRkOzd_mu-Ey8oeVeE5uuXriW-Uono+dorCAC-cM1w@mail.gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV variable
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
X-List-Received-Date: Wed, 23 Nov 2011 23:42:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2011 at 4:35 PM, Saxena, Rahul <rahul.saxena@intel.com> wro=
te:
> Yes I saw this other stuff too=E2=80=A6but I don=E2=80=99t see anywhere t=
he explanation of
> how a revision identifier is generated or obtained.


The value is entirely dependent upon the scm in use. git hash, svn
revision #, etc.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

