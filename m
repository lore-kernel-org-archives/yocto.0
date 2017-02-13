Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51E31E00726; Mon, 13 Feb 2017 08:19:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.74 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 307 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Feb 2017 08:19:21 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0A9E00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:19:20 -0800 (PST)
Received: from oxbaltgw55.schlund.de ([172.19.246.179]) by
	mrelayeu.kundenserver.de (mreue103 [212.227.15.179]) with ESMTPSA
	(Nemesis)
	id 0MY4Nk-1cqSPV3EYK-00UqfT; Mon, 13 Feb 2017 17:14:05 +0100
Date: Mon, 13 Feb 2017 16:14:05 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <1364734484.348693.1487002445271@email.1and1.co.uk>
In-Reply-To: <CAJTo0LYeXAhckriALOOtB9cMBd9fq8CHY3f5EQ3JBXJog-d7HA@mail.gmail.com>
References: <007b01d28611$cea76a90$6bf63fb0$@ln-systems.com>
	<CAJTo0LYeXAhckriALOOtB9cMBd9fq8CHY3f5EQ3JBXJog-d7HA@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev30
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:lyPxR36qnIQsoRxIyK57CW5cQ5eQeoXi7B3UaXWnWbOnkKHeEGK
	VKrbkU1v8dy1KEAAyHhLSGArl+IIu8M3iF8BPvuv14Yx+PeBSXn3CAl4q1UxeF3xvUqJSB2
	/iAJ+N0u4E0Aqxx4N8ECHNh8sHXVtRtjXs9AhTwcb1xj5O0Ut0d+fiqdIkK6nwTwB7a2IHk
	c2ynQ3VKmBbOTdiWooZAQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:nDsPweunyfg=:J4n/HVNf6X6iru5SHtOL1C
	fe1str62FnCZhhy9/b/rR3g/BinM22xjTf7wtkrKbCNTiK0aU3/bCKPvZuxJaye5ae2b5sTov
	hC8nHhTeIf40e+zd0UsjpMGtRkL+bNktCAlMfYh1km/cGs2BEDqZhntsfXxItuPMIsZarlNJB
	DtH5SjzhjTKzHe/+i+IEeHRklMuqK9YP3HBhQDclE3uJT1KmkdzgbZmqxemOlmwfRwwBfBgUS
	YDwnw9J5fmjfFHX9fcad9hrJ8S3BjHpYfteYAgQPuhtxxOI0Coi5lyZrM1H1PX+2sflGPnTeG
	2eaO5ZlCUtvNBjoyEy+LYxzuERo8Kc6Ibo0f32jEY2LkFbxM8Y6oSZEqaunoI9G1Eg6mFp81d
	haP8g8dzNrxvNlzpeC3stB39yp174CG2+eVQ12jXc19l0zptm/8Wgn9dzFx43GTOw/5nX2Me2
	PS8jLmTuWTVHQg9f87TKYCjA9sX5x+EsDgJv+FztLfAUtkANMHy7SojGQpv40H+rGZqbdXi5J
	mcsaoyTnKjDfzz2HWs9CNtujvuFdw/s/oS7ZA64N/5YAqVXTeBCRIw1mvzbqTAuOIX0WQCDL5
	H7LxS2XNocbUFfxgejR72elZ27hkdYLIiTlpDFg3l8oyzp6Ko8OA6DX62fH52DcuNkzcDWx2z
	0EwVQplVks52vzdhnbffunKojGmz8EqmYau57uu/yrhRA7vtX/mmw0ZSjvPRU9AGY5SwfzlZJ
	O/KxQonzzCK6AVLV
Cc: yocto@yoctoproject.org
Subject: Re: Out-of-tree module errors installing its udev rule
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
X-List-Received-Date: Mon, 13 Feb 2017 16:19:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> On 13 February 2017 at 16:03 "Burton, Ross" <ross.burton@intel.com> wrote=
:
>=20
> On 13 February 2017 at 15:56, <colin.helliwell@ln-systems.com> wrote:
>=20
> > inherit module
> >=20
> > =E2=80=A6
> >=20
> > SRC_URI +=3D " file://65-linmuxcfg-devnode.rules "
> >=20
> > S =3D "${WORKDIR}"
> >=20
> > FILES_{PN} +=3D "${base_libdir}/udev/rules.d/65-linmuxcfg-devnode.rules=
"
> >=20
> > do_install_append(){
> >=20
> > =C2=A0=C2=A0=C2=A0 install -d ${D}${base_libdir}/udev/rules.d/
> >=20
> > =C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}/65-linmuxcfg-devnode.rule=
s ${D}${base_libdir}/udev/rules.d
> >=20
> > }
> >=20
> > Is this because it=E2=80=99s an out-of-tree module, or some other [obvi=
ous] mistake?
> >=20
> > Thanks
>=20
> If that's a literal copy and paste then you forgot the $ in FILES_${PN}.
>=20

Sigh...... "wood for the trees"...... thanks Ross.....!  :S

> Also udev rules go into ${nonarch_base_libdir}.
>=20

Oh ok, hadn't encounter that var. What's the reasoning? (i.e. where would t=
hat be pointing in comparison to ${base_libdir}

> Ross

