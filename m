Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4DD7E00CC4; Thu,  2 Nov 2017 00:24:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 786 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Nov 2017 00:24:12 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F218E00CC4
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 00:24:12 -0700 (PDT)
Received: from oxbsltgw15.schlund.de ([172.19.249.32]) by
	mrelayeu.kundenserver.de (mreue103 [212.227.15.179]) with ESMTPSA
	(Nemesis)
	id 0LdL6H-1dSKVE3gjh-00iQpV; Thu, 02 Nov 2017 08:10:41 +0100
Date: Thu, 2 Nov 2017 07:10:40 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <214703149.187142.1509606640635@email.1and1.co.uk>
In-Reply-To: <51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev36
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:4+KW+8XFftb15+59o4LLeu4targOixatxuikNZV035Jh3abNTDV
	yLsWk58ZNsFMhtOc+/eQ688daMbcRPEA1OUaLvZOapTMmmF3o8fTOV1aJ/wQCKajdnK+mRH
	lc7XX5uZZ3CHwtPDvVFugwukdvBjO478XFnpgA2XvkozPxWeAZqtJppoaCeFL9tDW3isdpb
	YCPZuVL7keyuMyLH5BDLQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:d1Hr4dMKalQ=:r9CRiuAOxHs7h6o6TzNI7s
	riJbo3pc9t+yyI1tO7DBHzizMF8RwLcN96mj3889jI9dzeUHcVI/B4btCe0i/CLpT4Fdm4nmd
	MTEs3GEwfsXo3H9xM+nwfH8xNWjTiEVcO2N8vWPnlXI7KjuT0CfaH8n75HPkSMzfSAfDqp9FF
	qoH7m4G6DtusXcXMhESxxAJBT1E2Pn6cUdEJ1tVcDQ476Hgetvqr/Ii6Bc6TzqKOaRscAeek8
	r8FuPYiJ75tH+WULSNESSOnySZYjdwlaq1Li3xh//+vo0DljLRjTTS4HQJREY/1+ZwkG+2w25
	Ee8yhG7JJVdYzJorU4PvYLrSHWLZIS+TQvJHaeQvsj9f11TThchmJFaxjE2YhvIndohMR0xK4
	uNyLomu/3a/NAIztN/u8K3riGDA5Ljaud30e4CvFn2IdBbqzTbg4AaY1APJJiNm6G0va0GuY4
	1JbJEm+VusVFUcmPMVHMVSS/aY6bN2QoGX0j7MIJyoxt1UJjoq/98Mo2yGsZDitxlBsW2hWTR
	yMjHUEX7xzyqncDkY4I/Uv7c2oLyKkfRU8yBe5N1ZgWtCWLrzPWngip9yWroI0iHPAAiX0pHX
	cUcbZ3PSOcbQnj9wAtDTq89j6RpRneyp8IrNsrw8MZmbu93nlItuqST2skdXCz3Zm2FPgvfiC
	IaJhUAQM/dXt8r5Pk2PqWeOGBJy2xdWfTEKNNTH9iGTXnu1VLVGZDoIoXhup+kPBFjKADCmuH
	xg4gU4ZSf5NW2AFlEv2cEbIwl890XXv+jqHagR6Ls8ce2WBu9JDme98EWE0=
Subject: Re: Slightly varying builds
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Nov 2017 07:24:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> On 01 November 2017 at 17:04 Alexander Kanavin <alexander.kanavin@linux.i=
ntel.com> wrote:
>=20
> On 11/01/2017 06:43 PM, colin.helliwell@ln-systems.com wrote:
>=20
> > I need to build two slightly varying versions of our Yocto build =E2=80=
=93 one
> > for the production units and one for development.
> >=20
> > They differ in only a few ways =E2=80=93 the kernel and apps are the sa=
me. But
> > one has Dropbear, whilst the other doesn=E2=80=99t; and the U-Boot conf=
igs &
> > patches are different.
> >=20
> > I=E2=80=99m wondering where to do the separation =E2=80=93 image, distr=
o, conf=E2=80=A6?
> >=20
> > Any thoughts on the cleanest way to split and/or inherit them would be
> > appreciated.
>=20
> Image, certainly. Put the common bits into an include, and specific bits
> into image-production|development.bb files. Poky has plenty of examples
> for this.
>=20

Rootfs changes I can certainly do with different image recipes.
Am I right though in thinking that - because they'll have different variant=
s of u-boot - I'll need to use separate build directories for each? (nb - I=
'm using signed FIT image, so the u-boot bin gets modified as part of the k=
ernel building)

