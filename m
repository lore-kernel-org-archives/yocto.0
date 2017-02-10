Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B59AE00AAB; Fri, 10 Feb 2017 11:22:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97292E00924;
	Fri, 10 Feb 2017 11:22:17 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga105.jf.intel.com with ESMTP; 10 Feb 2017 11:22:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,142,1484035200"; d="scan'208";a="63646038"
Received: from jzhang80-mac02.jf.intel.com ([10.24.13.19])
	by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2017 11:22:16 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <20170209191740.63387-5-todor.minchev@linux.intel.com>
Date: Fri, 10 Feb 2017 11:22:16 -0800
Message-Id: <67138D25-E753-42E6-9315-F9EE935B7B02@linux.intel.com>
References: <20170209191740.63387-1-todor.minchev@linux.intel.com>
	<20170209191740.63387-5-todor.minchev@linux.intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
X-Mailer: Apple Mail (2.3259)
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH v2 4/5] rmc: remove unnecessary return variable
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
X-List-Received-Date: Fri, 10 Feb 2017 19:22:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Nice. Review +1

> On Feb 9, 2017, at 11:17 AM, Todor Minchev =
<todor.minchev@linux.intel.com> wrote:
>=20
> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> ---
> src/rmc.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/src/rmc.c b/src/rmc.c
> index f3a2a5e..b5c7847 100644
> --- a/src/rmc.c
> +++ b/src/rmc.c
> @@ -218,7 +218,6 @@ read_fp_done:
> static rmc_file_t *read_policy_file(char *pathname, int type) {
>     rmc_file_t *tmp =3D NULL;
>     rmc_size_t policy_len =3D 0;
> -    int ret;
>     char *path_token;
>=20
>     if ((tmp =3D calloc(1, sizeof(rmc_file_t))) =3D=3D NULL) {
> @@ -230,8 +229,7 @@ static rmc_file_t *read_policy_file(char =
*pathname, int type) {
>     tmp->next =3D NULL;
>=20
>     if (type =3D=3D RMC_GENERIC_FILE) {
> -        ret =3D read_file(pathname, (char **)&tmp->blob, =
&policy_len);
> -        if (ret) {
> +        if (read_file(pathname, (char **)&tmp->blob, &policy_len)) {
>             fprintf(stderr, "Failed to read file %s\n\n", pathname);
>             free(tmp);
>             return NULL;
> --=20
> 2.11.1
>=20


