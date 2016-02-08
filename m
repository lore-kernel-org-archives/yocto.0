Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C87B2E00D78; Mon,  8 Feb 2016 00:43:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91695E007DC
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 00:43:31 -0800 (PST)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u188hS6K002063; Mon, 8 Feb 2016 02:43:28 -0600
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016020802432891-743019 ;
	Mon, 8 Feb 2016 02:43:28 -0600 
Date: Mon, 8 Feb 2016 10:43:14 +0200
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: "Liubchynskyi, Stanislav (Nokia - PL/Wroclaw)"
	<stanislav.liubchynskyi@nokia.com>
Message-ID: <20160208104314.5b623bbd@adi-pc-linux.emea.corp.natinst.com>
In-Reply-To: <27918A11C8439E4B9B5BCA1715BABB74016F46B6@DEMUMBX010.nsn-intra.net>
References: <27918A11C8439E4B9B5BCA1715BABB74016F46B6@DEMUMBX010.nsn-intra.net>
Organization: National Instruments
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 02/08/2016 02:43:29 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 02/08/2016 02:43:29 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-08_05:, , signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fortran in yocto
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
X-List-Received-Date: Mon, 08 Feb 2016 08:43:35 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi

On Mon, 8 Feb 2016 08:19:53 +0000
"Liubchynskyi, Stanislav (Nokia - PL/Wroclaw)" <stanislav.liubchynskyi@noki=
a.com> wrote:

> Hi,
> I want to add fortran support to yocto build. I try different way whitch =
describe in the ethernet but enyone does't work. I use fido branch and gcc =
4.9. Can you describe me step by step how to enable fortran in yocto or whe=
re I can find work instruction.
> Thanks for help.

Fortran support in gcc is disabled by default, to enable it add the followi=
ng line to your config, then build the libgfortran package.

FORTRAN=5Fforcevariable =3D ",fortran"

>=20
>=20
>=20
> Best regards,
>=20
> Stanislav Liubchynskyi
> Software Developer, LFS, OPSW Wroclaw
> Mobile Broadband, Nokia Networks
>=20


