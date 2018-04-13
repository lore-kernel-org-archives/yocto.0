Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A98A9E00B1A; Fri, 13 Apr 2018 07:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26324E0086B
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 07:46:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Apr 2018 07:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,445,1517904000"; d="scan'208";a="50543745"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 13 Apr 2018 07:46:51 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.141]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.232]) with mapi id
	14.03.0319.002; Fri, 13 Apr 2018 07:46:51 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken
	qemu build for mingw
Thread-Index: AQHT0rm0BaTqfKpoSkaCmKwHylKdM6P/G/iA//+qbSA=
Date: Fri, 13 Apr 2018 14:46:51 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B64C6A8227@ORSMSX112.amr.corp.intel.com>
References: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>,
	<CAJTo0LaCBSJ1ch7_DuT5xCp8Z79tM4DxQqzeNy7JP9HOoAuF8Q@mail.gmail.com>
In-Reply-To: <CAJTo0LaCBSJ1ch7_DuT5xCp8Z79tM4DxQqzeNy7JP9HOoAuF8Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>,
	Alistair Francis <alistair.francis@xilinx.com>
Subject: Re: [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
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
X-List-Received-Date: Fri, 13 Apr 2018 14:46:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

yes, I've done it before:=0A=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dsumo&id=3Dbc112=
b8368eb3842ccb2430fdf17e736ea39a742=0A=
 I'll do it gain. Hopefully it will last longer this time.=0A=
=0A=
=0A=
________________________________________=0A=
From: Burton, Ross [ross.burton@intel.com]=0A=
Sent: Friday, April 13, 2018 5:50 AM=0A=
To: Bystricky, Juro=0A=
Cc: Yocto-mailing-list; Juro Bystricky; Alistair Francis=0A=
Subject: Re: [yocto] [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken q=
emu build for mingw=0A=
=0A=
Is it feasible to fix the original patch?=0A=
=0A=
Ross=0A=
=0A=
On 13 April 2018 at 00:55, Juro Bystricky <juro.bystricky@intel.com> wrote:=
=0A=
> The commit "qemu: Bump to version 2.11.0" in oe-core broke the=0A=
> build of qemu for mingw, due to using "socketpair", which is=0A=
> not supported by mingw. "socketpair" is used in a local patch,=0A=
> not in the qemu upstream code. The original local patch had=0A=
> conditional code to exclude "socketpair" for _WIN32, but the=0A=
> modified patch for qemu 2.11.0 removed this.=0A=
>=0A=
> The fix is to simply remove the offending patch.=0A=
>=0A=
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>=0A=
> ---=0A=
>  recipes-devtools/qemu/qemu_2.11.%.bbappend | 4 ++++=0A=
>  1 file changed, 4 insertions(+)=0A=
>  create mode 100644 recipes-devtools/qemu/qemu_2.11.%.bbappend=0A=
>=0A=
> diff --git a/recipes-devtools/qemu/qemu_2.11.%.bbappend b/recipes-devtool=
s/qemu/qemu_2.11.%.bbappend=0A=
> new file mode 100644=0A=
> index 0000000..764b500=0A=
> --- /dev/null=0A=
> +++ b/recipes-devtools/qemu/qemu_2.11.%.bbappend=0A=
> @@ -0,0 +1,4 @@=0A=
> +=0A=
> +=0A=
> +SRC_URI_remove_mingw32 =3D "file://chardev-connect-socket-to-a-spawned-c=
ommand.patch"=0A=
> +=0A=
> --=0A=
> 2.7.4=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=

