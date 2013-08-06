Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0714E01576
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 21:59:49 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id 5so4055979pdd.20
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 21:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Dv+FMtL2LAjJzVSng/aRbNaUixqC2sczZ5VMM+eL9Ek=;
	b=b4eI5nsHZnZk0RLENa6l18wEW/c6PrhtaJJazyEtpq164p2kifYAfgZZ+aNW5XFUbZ
	Qw95aOc0tX2yDD1KQUVzYj6F1rY4rClg3YREe+A5/FEw8PLtXy4QHB2/aNW0FVp5dsXs
	jOXO4FLi/Qa1hrIdKx6OJSPQtOBDlHLVkxohKs6AIpxbCA6FtbQcr0X+DRuRUTHgfnuK
	TLuTqnqm7mJuZenZ9rXSopOhOkitQxwmq8iBYN2hsi9EJyjMwUXc0f5Mvwb+nsd9dtRG
	80tHZxvyGf+Vd2e96xEN1wvtbFyzEJiR/rUaMXe+4iB3rGNMklL1fP2WPO/PiK5tckkm
	od/g==
X-Received: by 10.66.154.162 with SMTP id vp2mr1152142pab.34.1375765189450;
	Mon, 05 Aug 2013 21:59:49 -0700 (PDT)
Received: from gourish-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id ef10sm1549071pac.1.2013.08.05.21.59.47
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 05 Aug 2013 21:59:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+Z6RkW8+sjJYW3sB4Pgwv6nW_QRHhshkDaXAKu6SwKy1DwThw@mail.gmail.com>
Date: Mon, 5 Aug 2013 21:59:46 -0700
Message-Id: <0BC011CA-EFC4-4F0D-BD49-5D6E5795C4EE@gmail.com>
References: <CA+Z6RkW8+sjJYW3sB4Pgwv6nW_QRHhshkDaXAKu6SwKy1DwThw@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Access ssh repository
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
X-List-Received-Date: Tue, 06 Aug 2013 04:59:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2A16DF1E-A236-4E9A-A5F3-0877F792CF91"

--Apple-Mail=_2A16DF1E-A236-4E9A-A5F3-0877F792CF91
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Aug 5, 2013, at 9:48 PM, Navani Srivastava =
<navani.srivastava@gmail.com> wrote:

> Hi,
>=20
> I am using Poky danny for development.I have a query related to =
repository fetching.
> Is it possible to fetch any repository using ssh? As an example, =
suppose if recipe contains something like-
>=20
> SRC_URI=3D"ssh://__________.git "

well you would have to use correct syntax.

SRC_URI =3D "git://.=85..git;protocol=3Dssh;"

>=20
> When I tried accessing it in the this manner encountered following =
error-
>=20
> ERROR: ExpansionError during parsing =
/home/user/poky/meta/recipes-core/initscripts/initscripts_1.0.bb: =
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} =
which triggered exception NoMethodError: Could not find a fetcher which =
supports the URL: 'ssh://___.git'
> ERROR: Command execution failed: Exited with 1
>=20
>=20
> Thanks
> Navani
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_2A16DF1E-A236-4E9A-A5F3-0877F792CF91
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 5, 2013, at 9:48 PM, Navani Srivastava &lt;<a =
href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I am =
using Poky danny for development.I have a query related to repository =
fetching.<br>Is it possible to fetch any repository using ssh? As an =
example, suppose if recipe contains something like-<br>

</div><br>SRC_URI=3D"<a =
href=3D"ssh://__________.git">ssh://__________.git</a> =
"<br></div></div></div></blockquote><div><br></div><div>well you would =
have to use correct syntax.</div><div><br></div><div>SRC_URI =3D =
"git://.=85..git;protocol=3Dssh;"</div><br><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><br></div><div>When I tried accessing it in the =
this manner encountered following error-<br></div><div><br>ERROR: =
ExpansionError during parsing =
/home/user/poky/meta/recipes-core/initscripts/<a =
href=3D"http://initscripts_1.0.bb/">initscripts_1.0.bb</a>: Failure =
expanding expression ${@bb.fetch.get_checksum_file_list(d)} which =
triggered exception NoMethodError: Could not find a fetcher which =
supports the URL: '<a href=3D"ssh://___.git'">ssh://___.git'</a><br>

ERROR: Command execution failed: Exited with =
1<br><br><br></div>Thanks<br></div>Navani<br></div>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_2A16DF1E-A236-4E9A-A5F3-0877F792CF91--
