Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACFF1E009C8; Fri, 22 May 2015 04:17:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3784E00961
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 04:17:38 -0700 (PDT)
Received: by wghq2 with SMTP id q2so14674536wgh.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 04:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=G7P4sSl2kraNOZ8srJmFzwM6e1RcvwCbHVcMnvAzBBg=;
	b=xwMIhqGBQoF4k5zGFkehaT/8qGq9ki9ZAPd5L6zSjgsSVNn5PC8BV3PZCn6hNgEBx5
	VglcFdSqorHZrejEQd2tHrE2pM2Uio8oOkHS6k5BqVdjwu4kTD5uMJ3aixdIqijryBh7
	oSbgNoGhNu32geu81S2PODdcGZDolYGMKKghDznEBzL47yZTPRyx6mjiko95aIQo9V3N
	kQ8ZjjYhDjSaWTsap7Su0UoIqpSTVaT/1ksxXPr9tdcyTThpntP1KmKnAmdoykpmLxJa
	QnZfpMVW8nOawYyEFaJTssk2tAUCLowckHAk0Yz3rWo0lEoQ7P7ZG2dYbpw9m5pBQAqz
	WC/w==
X-Received: by 10.180.77.8 with SMTP id o8mr6679715wiw.74.1432293457193;
	Fri, 22 May 2015 04:17:37 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id fs9sm2676419wjc.34.2015.05.22.04.17.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 May 2015 04:17:36 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 22 May 2015 13:17:58 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20150522111758.GA2376@jama>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<2493502.gGu5ytCTqB@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <2493502.gGu5ytCTqB@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 11:17:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 22, 2015 at 09:51:31AM +0100, Paul Eggleton wrote:
> On Thursday 21 May 2015 23:21:53 yocto yocto wrote:
> > Good day,
> >=20
> >=20
> > I am working with the intel Edison. Therefore I am using the
> > meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here:
> > https://github.com/openembedded/meta-openembedded/branches/stale). Using
> > another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=E2=80=
=9D is recommended
> > for the intel Edison within the official intel documents.
> >=20
> >=20
> > Nevertheless I added apache2_2.4.9.bb and postgresql_9.2.4.bb to my cus=
tom
> > image. However, php5 support is missing. Therefore I downloaded the php
> > recipe from the current master branch and put it in my custom layer:
> >=20
> >=20
> > https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f=
4baf7
> > 5e2427216b39c641a12/meta-oe/recipes-devtools/php/
> >=20
> >=20
> > <https://github.com/openembedded/meta-openembedded/blob/b070899000162e7=
f4baf
> > 75e2427216b39c641a12/meta-oe/recipes-devtools/php/>
> >=20
> > Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with the fo=
llowing content in
> > the same folder:
> >=20
> >=20
> > PACKAGECONFIG_append +=3D "apache2"
> >=20
> > PACKAGECONFIG_append +=3D "pgsql"
> >=20
> >=20
> > bitbake php results in the following errors:
> >=20
> >=20
> > ERROR: Nothing PROVIDES 'uw-imap' [=E2=80=A6] but php/php_5.5.24.bb DEP=
ENDS on or
> > otherwise requires it)
> >=20
> > ERROR: Required build target 'php' has no buildable providers.
> >=20
> > Missing or unbuildable dependency chain was: ['php', 'uw-imap']
> >=20
> >=20
> > So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from php_=
5.5.24.bb.  Result:
> >=20
> >=20
> > ERROR: Nothing PROVIDES 'postgresql-native' [=E2=80=A6] but /php/php_5.=
5.24.bb
> > DEPENDS on or otherwise requires it). Close matches:
> >=20
> >   postgresql
> >=20
> >   strace-native
> >=20
> >   popt-native
> >=20
> > ERROR: Required build target 'php' has no buildable providers.
> >=20
> > Missing or unbuildable dependency chain was: ['php', 'php-native',
> > 'postgresql-native']
> >=20
> >=20
> > Google does not show much for postgresql-native related to yocto. "bitb=
ake
> > postgresql" is running fine... If I remove BBCLASSEXTEND =3D "native" f=
rom
> > the recipe I get the following result:
> >=20
> >=20
> > ERROR: This autoconf log indicates errors, it looked at host include an=
d/or
> > library paths while determining system capabilities.
> >=20
> > Rerun configure task after fixing this. The path was
> > "php/5.5.24-r0/php-5.5.24'
> >=20
> > ERROR: Function failed: do_qa_configure
> >=20
> > ERROR: Logfile of failure stored in:
> > "php/5.5.24-r0/temp/log.do_configure.22410
> >=20
> > ERROR: Task 5 (php/php_5.5.24.bb, do_configure) failed with exit code '=
1'
> >=20
> >=20
> >=20
> >=20
> > I appreciate any advice on how to set up php5 for postgresql.
>=20
> Change your PACKAGECONFIG_append lines in your bbappend to use=20
> PACKAGECONFIG_append_class-native instead and you should be able to progr=
ess.=20
> Also, you very likely shouldn't be removing the BBCLASSEXTEND.

And add leading space in append instead of +=3D (_append + +=3D always looks
wrong as the only function of +=3D is to add the leading space), change it
to:

PACKAGECONFIG_append =3D " pgsql"

>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

