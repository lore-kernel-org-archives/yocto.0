Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 482A0E00C44; Thu,  2 Nov 2017 09:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.130 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7154DE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:26:52 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue007 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0MLmVT-1e9Syx1l9X-000utx; Thu, 02 Nov 2017 17:26:48 +0100
Date: Thu, 2 Nov 2017 16:26:46 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <1752415703.224739.1509640006960@email.1and1.co.uk>
In-Reply-To: <214703149.187142.1509606640635@email.1and1.co.uk>
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
	<214703149.187142.1509606640635@email.1and1.co.uk>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev36
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:y3HQpaYSlBUcVy+KiJvddEp9dr2J1IbXhdsH/r79kZe171Mwp0a
	cO6WzxC0MEUtWGGZHs4uZU/05klaV0yuLAaJvxLWkoarKMIPOAfDYWGNuzOCKkyQLXsh8iA
	JmmQmynRh16pDWLRRxEAb2UVGASdLfgi6afiisyIuHu+NooL6n3ua1V9ZIQn8zzth0S89JL
	sd29TH+0x1SsjS3lu4ofQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vT8BY/hy6iE=:YrjMcNGyK3/L++Y3REHAsS
	1xgOymc2FdwX+zGfjU5QUN6gDfh3tA9yYRULTN2zR9aMQ2J8JIWFKMtUP7BK7sE2kAVMslxP/
	CnCy/e28Vwo4UshbTqKRhmCwkMULUwFcE8cszNfEIdteBLivX3mz6skgJmSZXBo6IsI2M1OXx
	g2jxcK/coohnt2vYuU55yRmwyH5gkwBxUJ6qC9Up8KRGN3hgkJ3HDeLTcTNo16kw8i+cD8BEP
	AzCsPLdvvDnHrPAiVIin56ZmglTO8hWz3wyaeyeG7PMWmXJ8kk0GHteKnyzp3094CL3p1KXg/
	8S6KitbwFiwQ/FZx03CgMTfByu6DZN7zeh26wJrACdaNKytwZuJdawszmK6OVB50/Xuh7CPpi
	HvoIjMR/EfWSBwh2UcUIPqTYscH0FQiQxasgxWBGZGchsAMM2xHuUXLjf4nVqSszZ6U6aFja3
	3b6czdy63SrmTDeBuvdabbwxAe5h4zGtfig8qNuhhNBm3SsM4R0AdRlBnmrxhCXXHfhCkxpRl
	zvx9FWCoLN96jOAJdL7RPdf+1ajP/jNt2NffnOop9cDQCb8OuYCKct2xTbV6ZHBUHBh2ccGoV
	NK4WkOT2WdBwsQqTARRcjW48zXcl/Su4GLCPcAtF7N8OwuUEkNEqBWpxWTi9+Mh2LoZuTaAis
	AsEg5IjJtBmNzoIILHGuNFIwmSeueckUnUTY4ywuv7OC9xsqsU3tO2pVqe9Y5dLxBkxH0LkkB
	MTyCh/G89c5WAAaul0tdoIkE5WexuZonzfzjSUtPBADvwlH6ashQPM7LV1A=
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
X-List-Received-Date: Thu, 02 Nov 2017 16:26:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> On 02 November 2017 at 07:10 Colin Helliwell <colin.helliwell@ln-systems.=
com> wrote:
>=20
> > On 01 November 2017 at 17:04 Alexander Kanavin <alexander.kanavin@linux=
.intel.com> wrote:
> >=20
> > On 11/01/2017 06:43 PM, colin.helliwell@ln-systems.com wrote:
> >=20
> > > I need to build two slightly varying versions of our Yocto build =E2=
=80=93 one
> > > for the production units and one for development.
> > >=20
> > > They differ in only a few ways =E2=80=93 the kernel and apps are the =
same. But
> > > one has Dropbear, whilst the other doesn=E2=80=99t; and the U-Boot co=
nfigs &
> > > patches are different.
> > >=20
> > > I=E2=80=99m wondering where to do the separation =E2=80=93 image, dis=
tro, conf=E2=80=A6?
> > >=20
> > > Any thoughts on the cleanest way to split and/or inherit them would b=
e
> > > appreciated.
> >=20
> > Image, certainly. Put the common bits into an include, and specific bit=
s
> > into image-production|development.bb files. Poky has plenty of examples
> > for this.
>=20
> Rootfs changes I can certainly do with different image recipes.
>=20
> Am I right though in thinking that - because they'll have different varia=
nts of u-boot - I'll need to use separate build directories for each? (nb -=
 I'm using signed FIT image, so the u-boot bin gets modified as part of the=
 kernel building)
> --

Following on from this, I'm trying to be able to build my two versions of u=
-boot, in the *same* build directory.
I'm not sure if this is possible, but I figured it might be: since u-boot d=
oesn't get put into the rootfs (?), I would ideally be able to build both a=
nd just pull down from tmp/deploy/images/.... the image that I want to prog=
ram into a particular unit.
I've pushed common stuff into .inc file(s), and have two recipes which set =
different  'PROVIDES' values.
However, even after a cleanall on both recipes, bitbaking the second one th=
rows an error "The recipe u-boot-mymachine-dev is trying to install files i=
nto a shared area when those files already exist".

Is it possible to do what I'm trying to do....?
Ta

