Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDAC04C80FD4
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 19:34:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Dec 2010 17:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="634922263"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2010 17:34:57 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 10 Dec 2010 09:34:53 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 10 Dec 2010 09:34:53 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 10 Dec 2010 09:34:52 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Fri, 10 Dec 2010 09:34:51 +0800
Thread-Topic: [yocto] PULL] ADT installer script implementation, Liping Ke
Thread-Index: AcuX29d4Ehuqoug7RE2CXblOApd/1gADMz2wAAg/U7A=
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DBF01@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
	<1291924853.1554.933.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA95021EBE98@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95021EBE98@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: PULL] ADT installer script implementation, Liping Ke
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
X-List-Received-Date: Fri, 10 Dec 2010 01:34:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > The first thing I read was in the patch was:
> >
> > +# following are for testing in my machine. it will be moved when
> > +# going into code repository
> > +export http_proxy=3D""
> > +export HTTP_PROXY=3D""
> > +export HTTPS_PROXY=3D""
> > +export https_proxy=3D""
> > +export ftp_proxy=3D""
> > +export FTP_PROXY=3D""
> >
> > which it evidently wasn't! ;-)
> >
> > The rest of that file suggests it probably shouldn't be there
> > actually?
> >
>=20
> Sorry for this obvious mistake. Need to do a better job before sending
> our a
> review request next time

Oh, I am sorry that I should not send the [pull] request, instead I should =
send a review request.
I meant to collect some review comments before finalize the code.

This is for testing. So I did not remove this part. When going into tree,
it will definitely be removed.

>=20
> > I then decided to try it.
> >
> > cd /
> > root@rex:/# /rphome/poky/scripts/adt-installer/yocto_installer
> > /rphome/poky/scripts/adt-installer/yocto_installer: line 207:
> > .config: No such file or directory [snip lots of similar errors]
> >
> > So I'd suggest it looks at the location of the main script and then
> > uses
> > this to find its config files.
> >
> > It then found the presetup .config file and took those values as the
> > defaults. This was not obvious to me, it should perhaps really state
> > where its getting that config from.
> >
> > I removed the .config file. That didn't help me so I removed
> > yocto_installer.conf. This didn't help me much either.
> >
>

> That definitely a bug regarding how to locate .config that we need to
> address.  As to the different config files, the .config is on purpose
> non
> user editable that's why we set it as hidden file by default.  And the
> yocto_installer.conf is the customizable config user should change and
> we
> have prompt for the user as regard to the configuration values to be
> used
> and where they're from along the installation process...

Yes, this is a problem. After source .config (default location), if we
Failed to locate the file, I should prompt to exit instead of going forward=
.

>=20
> > Now, reading the script I suddenly realise the user doesn't get
> > prompted
> > to be able to change the values, you can only set these in the config
> > files.
> >
> > I tried hitting Y for fun despite knowing it would crash and burn.
> > Those
> > error messages were good so kudos there :)
> >
> > I think it would make most sense for the user to be prompted for
> unset
> > values with "enter" selecting a sane set of defaults.
> >
> Agree and will make improvement on that..
OK, I will give default values for all those variables. If user needs to
change it, he can use a config file to override it. Thanks for the suggesti=
on.

>=20
> > So in summary, I think the right pieces are there in terms of
> > configuration but the user interaction needs a lot more thought. I
> > didn't try an actual installation as I don't have a local setup to
> > allow
> > it.
> >
> > For the next review, I'd like an opkg repo to be available somewhere
>=20
> Lianhao has a testing opkg repo setup on his machine which mimic the
> release
> package repo and we've been using it test things out


Also I did not attach the opkg source tar ball, so the script can't be run
actually. I plan to dynamically fetch opkg source file when using bitbake
to generate adt-installer tarball. But for reviewing, next time, I will
include the opkg source file tarball in the installer tarball.


Thanks& Regards,
criping

>=20
> > to
> > test against and for you to provide an installer tarball as an end
> > user
> > would receive for people to evaluate.
>=20
> Yes, and will attach the tar ball with in the next review request
> >
> > Cheers,
> >
> > Richard

