Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 929F9E00D1E; Tue, 23 Feb 2016 07:42:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF5CE00C46
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 07:42:47 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP; 23 Feb 2016 07:42:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,489,1449561600"; d="scan'208";a="657920095"
Received: from afshjern.zpn.intel.com (HELO [10.219.5.147]) ([10.219.5.147])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Feb 2016 07:42:41 -0800
To: yocto@yoctoproject.org
References: <1456242163-12255-1-git-send-email-alejandro.franco@linux.intel.com>
From: Alex Franco <alejandro.franco@linux.intel.com>
Message-ID: <56CC7E40.3010906@linux.intel.com>
Date: Tue, 23 Feb 2016 09:44:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1456242163-12255-1-git-send-email-alejandro.franco@linux.intel.com>
Subject: Re: [RFC] [autobuilder] Autobuilder.py: add verbose buildset parse error
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
X-List-Received-Date: Tue, 23 Feb 2016 15:42:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Not sure this how this should be done, but at least it's been helpful in
my case

Alex Franco

On 02/23/2016 09:42 AM, Alex Franco wrote:
> From: Alejandro Franco <alejandro.franco@linux.intel.com>
>
> Add a more verbose Exception when a buildset parse operation fails
>
> Signed-off-by: Alejandro Franco <alejandro.franco@linux.intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 15
+++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> index 3174784..f200974 100644
> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> @@ -118,12 +118,15 @@ class Autobuilder:
>      def parseRepos(self, buildset=None):
>          buildset=buildset
>          if self.configdict[buildset].has_key('repos'):
> -            for layer in
ast.literal_eval(self.configdict[buildset]['repos']):
> -                if layer.iterkeys().next() not in self.repos:
> -                    schedpropstoextend, newcheckoutprops =
self.CreateLayerSchedulerParams(layer=layer, trigger=buildset,
triggerer=True)
> -                    self.schedprops.extend(schedpropstoextend)
> -                    self.checkoutprops.update(newcheckoutprops)
> -                    self.repos.append(layer.iterkeys().next())
> +            try:
> +                for layer in
ast.literal_eval(self.configdict[buildset]['repos']):
> +                    if layer.iterkeys().next() not in self.repos:
> +                        schedpropstoextend, newcheckoutprops =
self.CreateLayerSchedulerParams(layer=layer, trigger=buildset,
triggerer=True)
> +                        self.schedprops.extend(schedpropstoextend)
> +                        self.checkoutprops.update(newcheckoutprops)
> +                        self.repos.append(layer.iterkeys().next())
> +            except SyntaxError as err:
> +                raise ABConfigError("%s found in %s" % (err, buildset))
>          return
> 
>      def parseProps(self, buildset):

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJWzH5AAAoJEPR9uwMY2lTLg1MH/1WoSCFXJ768TR5yGvWM5vd1
2VdHTuMRD2FlvvblbFLIrOwsYd9TU5UccijLKYcu0K1k9CiQVjDRB4D7c/uzCLQv
E/ndOerRo1FkZyat2vEONfVInJTzycM2auY3j41jz1Pr4uyNhnJphgVzC/Kinf/F
PswyAYYnnV6ytTXFLBx4dSX5AIO0qXmoX9pmEP5W+FfmkjBQlqrbAScomyNSamhf
SGpC9520wUo7tke/2qLz5PgVkZ8LGR7ZlW6qEErZY462bW/cLWWpnP77c6ll3wiX
huC4iQtSTwJ0ZKl1NWHz0N9Fs8f9ky41VOxaD3EAjdroqMlKnfd8LkDfo6g2cm4=
=9eQK
-----END PGP SIGNATURE-----


