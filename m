Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F427E00BC8; Tue,  2 Apr 2019 12:46:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB30E00950
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 12:46:20 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id q14so12750340edr.5
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 12:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AZ4b8i0q+Dgwt2xIQe8oSqSxKMzs0WYHo45DQEkoXKI=;
	b=hff//+ikh/Fk+SFdI5IO5pGgFnIx4q5PATvdPgNPbJKlVfYK2O7WV82dB3lQ4E7RGy
	Sfp/Vyo0CqKWmLa2Yy+vYuQsoIVKYeSoU0NjPr69lnwcIur9754BJe0lrg2rjrwg1JnC
	5dL25pXrfA61qouTPiMASJZkKqV9A9K8GCHb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AZ4b8i0q+Dgwt2xIQe8oSqSxKMzs0WYHo45DQEkoXKI=;
	b=iSAKLqgRlEh6vxUwyYuv5Jl/vXsqRt03cyJgyF0AhZQ9sqrX9Bxb8CAGhpyqLj38el
	8Hlo5PSliAuWMHX45/qrlu5VNWMTx5qSnHTqS5rN1/a/H622FGc/VQ5QlDuB5DkU9pWQ
	zYfEC3igIQZeEybKtTpzKTQc/JOcQ6Q0nqiiYqRz5XHbLJeVrWqRs9O6+eCi4mjoH0q+
	+prQtWfRYrgeUsVbe+O1CpgtzpCSMeI0JksmeqCstlpfRGLi21qL71MN4/S6+OCbMLmH
	XHyAVWpPKUOnK8rwLB63zYlg4e4bOcxPLMoeGIGOrpxxUsFScKsVUwGmj5x/2s6qbUGA
	GiCw==
X-Gm-Message-State: APjAAAW3IoExniUH86G5eyUJXflmECaaHwKCnjmOzoB79ff/p3cTGPWr
	Q6IBqfFS01Z/dtvo9Jazsh2QSw==
X-Google-Smtp-Source: APXvYqyJe9loqfXRu7gtTzvku3R5G44rrg0RZBcyRr9LFoq72W7SANfveVIO4/4Oif3l3jMRo2tLag==
X-Received: by 2002:aa7:c456:: with SMTP id n22mr41498885edr.185.1554234379540;
	Tue, 02 Apr 2019 12:46:19 -0700 (PDT)
Received: from bill-the-cat (cpe-65-184-134-105.ec.res.rr.com.
	[65.184.134.105]) by smtp.gmail.com with ESMTPSA id
	y27sm2574227edb.67.2019.04.02.12.46.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 12:46:17 -0700 (PDT)
Date: Tue, 2 Apr 2019 15:46:14 -0400
From: Tom Rini <trini@konsulko.com>
To: Adrian Bunk <bunk@stusta.de>
Message-ID: <20190402194614.GY4664@bill-the-cat>
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
	<a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
	<20190402065121.GA31468@localhost>
MIME-Version: 1.0
In-Reply-To: <20190402065121.GA31468@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	akuster808 <akuster808@gmail.com>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Git commit process question.
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
X-List-Received-Date: Tue, 02 Apr 2019 19:46:21 -0000
X-Groupsio-MsgNum: 44603
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FvpZCdL3V2P9482l"
Content-Disposition: inline

--FvpZCdL3V2P9482l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 02, 2019 at 09:51:21AM +0300, Adrian Bunk wrote:
> On Mon, Apr 01, 2019 at 04:20:41PM -0700, akuster808 wrote:
> >=20
> >=20
> > On 4/1/19 4:02 PM, Richard Purdie wrote:
> > > On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
> > >> Hello,
> > >>
> > >> I have noticed a large number of git commits with no header
> > >> information being accepted.
> > > Can you be more specific about what "no header information" means? You
> > > mean a shortlog and no full log message?
> > Commits with just a "subject" and signoff. No additional information
> >=20
> > We tend to reference back to how the kernel does things.
> >=20
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> > These two sections in particular.
> >=20
> >=20
> >     2) Describe your changes
> >=20
> > Describe your problem. Whether your patch is a one-line bug fix or 5000
> > lines of a new feature, there must be an underlying problem that
> > motivated you to do this work. Convince the reviewer that there is a
> > problem worth fixing and that it makes sense for them to read past the
> > first paragraph.
> >...
>=20
> The kernel does not have "upgrade foo to the latest upstream version" com=
mits.
>=20
> With the Automatic Upgrade Helper this is a semi-automatic task, and=20
> most of the time there is no specific motivation other than upgrading
> to the latest upstream version.

But since that's just filling in a template the body can also be a
template perhaps with useful AUH data (run at ... by ... ?) ?

--=20
Tom

--FvpZCdL3V2P9482l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJco7wFAAoJEIf59jXTHXZS+sgQAIDiVamgH6Ku6v43F45fqVhO
ehJngovn3rGiGLG3t6M5ld6ukZIUQP8nVMFZWRY7iSzuYyt2gMS6vM9Gr5e1ZRDe
kzmgGcCoJjoa4YhpePZb9ImHygndtVt+QcZirJcleA6Wy2tzqrA6gweNpaG0pmKg
HCerND8Gzh9GDnPVVkhp8IO/OcCewrwG1g2danSazgRNbtDHXaX1a6ADjspk78lG
X/WQmXcaSjCl1igKhO7nJ6gbXb4/94WcpQip3fFBaAiwVKfvOlDLopA0erIlZ1AM
fGgHTRawBHOAjMLIPEBn6AUGLxOBCcZdiFMg/UETR0xTK4SQQtWZmtY7wdjdME5D
VbJR4TImStxadXHOwyFNTZk5jdp2wUIGjsSCPzMLNoyDO0SFVKPbaFWWGMexSUZx
Mpen0l+Gdh1BzzNNPmKvBCxv0eG35mdxDXXSojkI+BSHz9Oz/1WidIlv/QQoZKkw
7wjtV6SMwTM5BFASPNHFAep8Hvr2k6r5Nlzs993iCufXeR62TIU3/VuAzhJiNn/R
CJ6BmNeo+a1OuyMitmMQQk6aceg53FcQk7+v+WWg7QJIR/LawMYBsKc9JItVQCGe
+6etlzZ30HBgyoRc3JA7QpsCPp4Re3jHqgwSfmwjVzoyPlHhE3Hz+pD1LY8Vw99Q
gdpp6jVIbbUu14zEyOeu
=N0Sq
-----END PGP SIGNATURE-----

--FvpZCdL3V2P9482l--
