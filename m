Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A62BDE00F4E; Fri,  1 Jul 2016 02:19:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.153 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sender153-mail.zoho.com (sender153-mail.zoho.com
	[74.201.84.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BA6E00F3D
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 02:18:50 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=l1gwCk3WWaH2hrIbsXEOuN9ByJwzilQ9RrPCEYnaBpb1Z1Ual1OZN1CCnwJ3LHwQoybDEOPNcpOK
	W3xWEbr5GYDULfhOw3AH1giKhWm5h1I50esPJJEjZEw2Tv0arg4a  
Received: from localhost.localdomain
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1467364725740249.71252204812015;
	Fri, 1 Jul 2016 02:18:45 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 01 Jul 2016 11:18:41 +0200
Message-ID: <3253628.zrh2shg7GE@localhost.localdomain>
User-Agent: KMail/4.14.10 (Linux/4.5.6-200.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1824740.6PSPzbvYde@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<2290521.b3EbnYsZ8v@localhost.localdomain>
	<1824740.6PSPzbvYde@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Fri, 01 Jul 2016 09:19:10 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

In data luned=C3=AC 27 giugno 2016 16:11:30, Paul Eggleton ha scritto:
> On Mon, 06 Jun 2016 15:27:17 Diego wrote:
> > Hi Oleksandr,
> >=20
> > In data venerd=C3=AC 3 giugno 2016 20:56:32, Oleksandr Poznyak ha s=
critto:
> > > I found that that=E2=80=99s an issue with rpm packages. I didn't =
expect there
> > > might
> > > be some issue with rpm. If you really don't care which package
> > > management
> > > system to use, switch to deb:
> > >=20
> > > PACKAGE_CLASSES =3D "package_deb"
> >=20
> > Thanks for looking at the problem, unfortunately migrating away fro=
m rpm
> > is
> > not an option for me at the moment. Is there a bug report for this =
rpm
> > problem? Should I open one?
>=20
> I'm not aware of one - could you please file a bug? Have you found an=
y
> further information?
>=20

Hi Paul and all,

I've created one here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9863

Don't know if bug is categorized correctly, but at least it is a starti=
ng=20
point.

Thanks,
Diego


