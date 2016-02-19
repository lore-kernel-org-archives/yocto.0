Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DEEE00CB8; Fri, 19 Feb 2016 01:32:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2B64E00C60
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:32:16 -0800 (PST)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u1J9WDue028087; Fri, 19 Feb 2016 03:32:15 -0600
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016021903321372-1154173 ;
	Fri, 19 Feb 2016 03:32:13 -0600 
Date: Fri, 19 Feb 2016 11:31:58 +0200
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Supriti Singh <supritisingh08@gmail.com>
Message-ID: <20160219113158.7fca092b@adi-pc-linux.emea.corp.natinst.com>
In-Reply-To: <CAO1oV+d=Q-VBtisipvdKDxX=guM7JWea+S2kj_VpL8=dr33FOg@mail.gmail.com>
References: <CAO1oV+d=Q-VBtisipvdKDxX=guM7JWea+S2kj_VpL8=dr33FOg@mail.gmail.com>
Organization: National Instruments
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 02/19/2016 03:32:13 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 02/19/2016 03:32:16 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-19_06:, , signatures=0
Cc: yocto@yoctoproject.org
Subject: Re: lscpu command
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
X-List-Received-Date: Fri, 19 Feb 2016 09:32:18 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hello

On Fri, 19 Feb 2016 10:25:37 +0100
Supriti Singh <supritisingh08@gmail.com> wrote:

> Hello,
>=20
> meta/recipes-core/util-linux should provide lscpu command.
>=20
> I created a core-image-sato image with meta layer. But when I boot yocto,
> no lscpu command is present.
>=20
> I do see it in util-linux.inc but "google util-linux lscpu" shows me a
> patch remove-lscpu.
>=20
> So, is lscpu command supported or not? If yes, then what do I need to
> change in the configuration.

meta/recipes-core/util-linux/util-linux.inc:94:FILES=5Futil-linux-lscpu =3D=
 "${bindir}/lscpu"

This means that lscpu is packaged in its own util-linux-lscpu package. Try =
making sure that package exists after building util-linux and install it on=
 your target if you don't have it already.

>=20
> THanks,
> Supriti


