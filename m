Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B62E00AF6; Thu, 26 Nov 2015 12:28:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1313E005B3
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 12:28:39 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2015 12:28:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,348,1444719600"; d="scan'208";a="860089110"
Received: from rsiu-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.187])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2015 12:28:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 27 Nov 2015 09:28:34 +1300
Message-ID: <24145352.t6tiEOYyAT@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1448496046-13186-12-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
	<1448496046-13186-12-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 11/17] utils/git.py: Add method for apply patches into a branch.
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
X-List-Received-Date: Thu, 26 Nov 2015 20:28:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 25 November 2015 18:00:40 An=EDbal Lim=F3n wrote:
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  modules/utils/git.py | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/modules/utils/git.py b/modules/utils/git.py
> index 48ed46d..d7f5713 100644
> --- a/modules/utils/git.py
> +++ b/modules/utils/git.py
> @@ -61,6 +61,9 @@ class Git(object):
>      def create_patch(self, out_dir):
>          return self._cmd("format-patch -M10 -1 -o " + out_dir)
>=20
> +    def apply_patch(self, patch_file):
> +        return self._cmd("am %s" % patch_file)
> +
>      def status(self):
>          return self._cmd("status --porcelain")

Just a warning (which may not apply in your situation, not sure) - you =
may=20
need to do extra cleanup beyond git am --abort if this fails; see:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3De0b9a96002b=
b23e7c2c8a8c9c4d2431461fd6cb7

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

