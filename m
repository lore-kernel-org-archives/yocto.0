Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D281E0086B; Fri, 10 Aug 2018 15:10:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19CD9E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 15:10:26 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Aug 2018 15:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,221,1531810800"; d="scan'208";a="79336640"
Received: from ttorling-mac01.jf.intel.com ([10.24.10.246])
	by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2018 15:10:26 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Tim Orling <timothy.t.orling@linux.intel.com>
In-Reply-To: <1533938335-15535-1-git-send-email-srifenbark@gmail.com>
Date: Fri, 10 Aug 2018 15:10:26 -0700
Message-Id: <AE50A277-219B-433D-B813-F388877FAC8E@linux.intel.com>
References: <1533938335-15535-1-git-send-email-srifenbark@gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [crops][PATCH] docker-win-mac-docs.wiki: Updated link for referencing Yocto docs
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
X-List-Received-Date: Fri, 10 Aug 2018 22:10:27 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

=E2=80=9CMerged=E2=80=9D, in the sense that the change has been made in =
the wiki=E2=80=A6

Thank you!

> On Aug 10, 2018, at 2:58 PM, Scott Rifenbark <srifenbark@gmail.com> =
wrote:
>=20
> The link was going to a retired Quick Start.  I changed the link
> to the appropriate section of the YP Development Tasks Manual.
>=20
> Signed-off-by: Scott Rifenbark <srifenbark@gmail.com>
> ---
> Windows-Instructions-(Docker-Toolbox).md | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Windows-Instructions-(Docker-Toolbox).md =
b/Windows-Instructions-(Docker-Toolbox).md
> index 31432bd..f33bc66 100644
> --- a/Windows-Instructions-(Docker-Toolbox).md
> +++ b/Windows-Instructions-(Docker-Toolbox).md
> @@ -74,7 +74,7 @@ You will see a prompt that looks like
>=20
> `pokyuser@892e5d2574d6:/workdir$`
>=20
> -Although this is called the poky container, it does not include the =
bitbake meta-data for the Yocto Project poky distro, instead it is a =
Linux environment with all dependencies already installed. See the =
[Yocto Quick Start =
Guide](http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-pro=
ject-qs.html#releases) to get started with with Yocto project.
> +Although this is called the poky container, it does not include the =
bitbake meta-data for the Yocto Project poky distro, instead it is a =
Linux environment with all dependencies already installed. See the =
[Yocto Project Development Tasks =
Manual](https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.ht=
ml#cloning-and-checking-out-branchs) to get started with with Yocto =
project.
>=20
> ## Troubleshooting
> ### Cannot connect to docker
> --=20
> 2.7.4
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


