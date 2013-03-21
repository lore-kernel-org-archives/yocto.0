Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E9C6E0146C
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:46:46 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id r6so2409864wey.5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=iNNqANvq9UTYExIUWNBCSZhUcgDAkzja4NPFs8ymdeE=;
	b=G4hFubptFfw61IdcyZ90jzvbFuxaq2Gk4RQOOT14HggwK57fhzliHbbhcD9gydAa26
	jT2iPde56Lx1xRFXdAufpf/hbcLMd0QDzIBzlDNb6YUJtLiE3aH0+mRChOvmo6E+mF7w
	fUXu3kDyKaWv+GCCVBnBparCQ9c8K9+qFLk1M7Dkr2p76DdYAaMe7HVi4vbVzdNnNubd
	TF7OV9v8aGRRS+yZxGW0R4o138TCZNqNjxr+zM/Y3y1TGCZbJPvwAYMbykJAcL88MiuI
	gmMhZfz5G9HvXKPlCQtwLfeMidRX+yMxWsRmTQ7NowFGwI92X59cjrQSc78AJzUXIthR
	65nw==
MIME-Version: 1.0
X-Received: by 10.194.157.42 with SMTP id wj10mr17882033wjb.12.1363877205958; 
	Thu, 21 Mar 2013 07:46:45 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 21 Mar 2013 07:46:45 -0700 (PDT)
In-Reply-To: <20130321150542.18ab7c22@e6520eb>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
	<CAHUNapQOUHi7f0va3hPjM_Pu69zvbEJuxnHeR__BBZTVnpJvOg@mail.gmail.com>
	<20130321150542.18ab7c22@e6520eb>
Date: Thu, 21 Mar 2013 10:46:45 -0400
Message-ID: <CAHUNapQV9U65Yi43BQZBhJs7TcdueJ3SiEwYGaJBbRLt7E=ROg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Thu, 21 Mar 2013 14:46:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 21, 2013 at 10:05 AM, Eric B=E9nard <eric@eukrea.com> wrote:
> in the build log
> http://autobuilder.yoctoproject.org:8011/builders/nightly-fsl-arm/builds/=
18/steps/Building%20Images/logs/stdio
> you can see it builds for imx53qsb :
> MACHINE           =3D "imx53qsb"

Thank you, now I see how to use those entries. All the environment
dumps were cluttering the logs up and distracting me :-)

