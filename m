Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 638BDE00A9C; Tue, 21 Nov 2017 19:20:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A645CE008A4
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 19:20:13 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Nov 2017 19:20:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,435,1505804400"; 
   d="scan'208";a="4494406"
Received: from msamsi-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.76.52])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Nov 2017 19:20:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hongxu Jia <hongxu.jia@windriver.com>
Date: Wed, 22 Nov 2017 16:20:03 +1300
Message-ID: <21288902.HEIsViCvam@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <757314ef-1118-74b8-6793-b028b63084cf@windriver.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<2715985.tmFNQIJNkk@peggleto-mobl.ger.corp.intel.com>
	<757314ef-1118-74b8-6793-b028b63084cf@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, +lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>,
	"Yang, Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Wed, 22 Nov 2017 03:20:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Hongxu,

On Wednesday, 22 November 2017 3:56:31 PM NZDT Hongxu Jia wrote:
> On 2017=E5=B9=B411=E6=9C=8822=E6=97=A5 06:28, Paul Eggleton wrote:
> > On Wednesday, 22 November 2017 10:24:59 AM NZDT Burton, Ross wrote:
> >> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com>=20
wrote:
> >>> If yocto is interested in this layer and will accept it,
> >>> I could send pull request or some one directly fetch
> >>> from above github master branch.
> >> Are you asking for a git repo on git.yoctoproject.org?  If you want on=
e I
> >> believe the process is to ask Michael Halstead.  There's no reason why=
 it
> >> can't be maintained in this repository forever though,  just submit it=
 to
> >> the layer index.
> > It's now in the layer index FYI, though actual metadata updates are
> > currently broken unfortunately - Michael is working on the latter I
> > believe.
>=20
> I have already submitted it to layer index, but the git repository is
> still point to the github.
>=20
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-instal=
ler/

Right.

> Does the metadata updates clone it from github to yocto
> if it is accepted? I think I should ask Michael for help.

That's separate, you'd need to ask Michael for a repository and then push t=
he=20
repo contents to it once it's created. If/when you do move the layer I am=20
happy to update the layer index entry, just let me know.

Cheers,
Paul


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

