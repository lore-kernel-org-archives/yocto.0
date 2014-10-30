Return-Path: <celledge@digitallumens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E9D7E00830; Thu, 30 Oct 2014 07:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FACDE0079E
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 07:43:50 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id j7so3800092qaq.16
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 07:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=8KGOZZDcous7KtHF8+2xLq9W4o9LeNZS3CtcRKTBqFA=;
	b=aLH7fPpClKvetbvartbadeQ+UoRP4bouW9Dpwucj/ZlEVyzauYRvGAPL0pr61Zrl/G
	q0RGtvhyQ/vE+8EkOX7A5YZ0344o0yGOoP2MDlPBoCpdYjGicXnaeeJStS9SfXoLttgl
	+V0uTz1jPyGsBsuhPvvrZmo1ZlDpWgZtpOtjvsTiuJE6f3zaDAJjFVAfEHNm/UsWEZL3
	O7D3DwG9px1krzbIJseiuL1+eUxktqA1JHgOyEoHz8IzTBoO4S3kgahjUliNU5VdgEgi
	lIjEIcYv4HkhBm1RXbPsYcIq6+7mvEVn9MMeSLvwnXhEjx2ZYi2vsmUOu53Un07SsMgF
	5P0Q==
X-Gm-Message-State: ALoCoQnAoWBahARCDMRWL123Vjmas9icgWXPwsEdCr0iTgqHsPVtsQgR3t/CdePJ1bxGaN0xV2ds
X-Received: by 10.140.44.8 with SMTP id f8mr25757740qga.105.1414680224095;
	Thu, 30 Oct 2014 07:43:44 -0700 (PDT)
Received: from [10.1.5.145] ([157.130.61.138])
	by mx.google.com with ESMTPSA id s6sm6827168qge.48.2014.10.30.07.43.42
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 30 Oct 2014 07:43:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Chris Elledge <celledge@digitallumens.com>
In-Reply-To: <3084764.geF1bKoAFi@comp-006-thk>
Date: Thu, 30 Oct 2014 10:43:43 -0400
Message-Id: <7214798E-434B-4E4C-A5E3-F5BEE2AC8CAE@digitallumens.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
	<CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
	<3084764.geF1bKoAFi@comp-006-thk>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
X-Mailer: Apple Mail (2.1510)
X-Mailman-Approved-At: Thu, 30 Oct 2014 08:11:04 -0700
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Thu, 30 Oct 2014 14:44:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm actively using meta-golang for development and continuing to add =
features as I find them necessary. If anyone has suggestions on what =
would be useful as a developer of embedded go applications, let me know.=20=


Specifically, I am most interested on input for what would be useful =
configuration variables to have available for golang based recipes:
* Ways to request how to breakdown a golang project into combinations of =
shared libraries, static libraries, and executables.
* Being able to define which golang packages are to be placed into =
libraries vs statically linked into the executables.

If someone manages to get this properly integrated into yocto, I would =
be happy to move my development directly to the project.

-Chris

On Oct 30, 2014, at 5:47 AM, Maciej Borzecki =
<maciej.borzecki@open-rnd.pl> wrote:
> There's also https://github.com/digitallumens/meta-golang
>=20
> Based on that I've prepped some patches not long ago that integrate go =
into=20
> OE-core base on what Chris did in meta-golang. The patches are for =
both meta--
> golang and OE-core. OE-core piece enables Go GCC frontend and libgo =
same way=20
> as Fortran or Java is handled. Also, Chris has already defined a =
usable=20
> golang.bbclass that handles gccgo build for you. So far it seems to =
work with=20
> some simple use cases on BeagleBone Black and Raspberry.
>=20
> If there's interest I can update the patches to current master and =
post them=20
> to the list.


