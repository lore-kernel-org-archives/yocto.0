Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73BD8E0098A; Wed,  4 Feb 2015 06:19:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2833E00984
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 06:19:20 -0800 (PST)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Wed, 4 Feb 2015 09:19:19 -0500
From: "Stath, Paul" <PStath@Axxcelera.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Unset task_name[noexec] in bbappend
Thread-Index: AQHQPyDouipgp7KQOUuk1l6D/unTZZzfDkGAgAFoMx0=
Date: Wed, 4 Feb 2015 14:19:18 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D606DCC@RIC-MS02.MWSG.int>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D606583@RIC-MS02.MWSG.int>,
	<4213811.ruhvpkvx6k@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4213811.ruhvpkvx6k@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unset task_name[noexec] in bbappend
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
X-List-Received-Date: Wed, 04 Feb 2015 14:19:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On Monday 02 February 2015 19:51:15 Stath, Paul wrote:=0A=
> > If there any way in the bbappend file to override <task_name>[noexec] =
=3D "1"=0A=
> > specified in the parent .bb file?=0A=
> >=0A=
> > I want to extend the package-index task, and need to fetch a couple of=
=0A=
> > configuration files. The package-index.bb task contains do_fetch[noexec=
] =3D=0A=
> > "1", so the fetch is not performed.=0A=
> =0A=
> This is a little tricky - you need to actually delete the varflag not jus=
t=0A=
> unset it. (You'll almost certainly need to do the same for do_unpack so t=
hat=0A=
> the files end up in the workdir as well.) You can do this from an anonymo=
us=0A=
> python section within the recipe e.g.:=0A=
> =0A=
> python __anonymous() {=0A=
>     d.delVarFlag('do_fetch', 'noexec')=0A=
>     d.delVarFlag('do_unpack', 'noexec')=0A=
> }=0A=
=0A=
Thanks for the quick response.  That did the trick.=0A=
=0A=
It seems strange that bitbake allows these varFlag values to be set,=0A=
yet doesn't provide a way to clear them.  I guess there is not much call fo=
r it,=0A=
or it is considered an anti-pattern.=0A=
=0A=
In addition, I also needed to override:=0A=
=0A=
addtask do_package_index before do_build=0A=
=0A=
to be:=0A=
 =0A=
addtask do_package_index after do_unpack before do_build=0A=
=0A=
Otherwise, the do_package_index might run before the do_unpack task,=0A=
which will result in a failure to copy one of the fetched files.=0A=
=0A=
> =0A=
> (I'm not sure what you're doing this for, but in case it's not obvious, b=
ear=0A=
> mind this will only affect explicit calls to bitbake package-index and wo=
n't be=0A=
> automatically incorporated into the indexes created when building images.=
)=0A=
=0A=
It didn't occur to me until you pointed it out, but that is exactly what I'=
m looking for.=0A=
I am invoking 'bitbake package-index' after a 'bitbake <image>' build.=0A=
When the build server completes the build, the tmp/deploy/deb sub-tree is a=
rchived.=0A=
This archive can be used directly via apt-get on the target devices to upgr=
ade=0A=
to the latest software.=0A=
=0A=
The default 'package_update_index_deb' function uses the=0A=
'dpkg-scanpackages' command to generate the Packages file.=0A=
=0A=
Instead of dpkg-scanpackages, I use apt-ftparchive,=0A=
The apt-ftparchive command is a superset of dpkg-scanpackages,=0A=
and will generate checksums of the packages.=0A=
=0A=
I needed to do_fetch/do_unpack to get the apt-ftparchive.conf=0A=
configuration file, and a deb-extra-override format file to add=0A=
supplementary overrides to some of the packages.=0A=
=0A=
--=0A=
Paul Stath=0A=
Axxcelera Broadband Wireless=0A=

