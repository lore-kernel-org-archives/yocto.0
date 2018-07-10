Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B406E010D7; Tue, 10 Jul 2018 04:05:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E15E010CD
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 04:05:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 04:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,334,1526367600"; d="scan'208";a="244473902"
Received: from pgsmsx112-dag.png.intel.com (HELO PGSMSX112.gar.corp.intel.com)
	([10.108.55.234])
	by fmsmga006.fm.intel.com with ESMTP; 10 Jul 2018 04:05:52 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX112.gar.corp.intel.com ([169.254.3.172]) with mapi id
	14.03.0319.002; Tue, 10 Jul 2018 19:05:50 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder
	URL based on FQDN
Thread-Index: AQHUF/yvTP4jfefbqUOICjNU6k3liaSHoVkAgACmP28=
Date: Tue, 10 Jul 2018 11:05:50 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068FF64A@PGSMSX103.gar.corp.intel.com>
References: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>,
	<65331fd8bde273c5f69c22242c1c5b7b7574ad0e.camel@linuxfoundation.org>
In-Reply-To: <65331fd8bde273c5f69c22242c1c5b7b7574ad0e.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder URL based on FQDN
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
X-List-Received-Date: Tue, 10 Jul 2018 11:05:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

[Richard] I appreciate what you're trying to do here and make this autoconf=
igure.
 Unfortunately the urls can't always be figured out this way, the above
for example drops the "/main/" part, without which the autobuilder
won't work. The server can be behind forwarding or proxies/firewalls
which also make this problematic.

I also agree with Martin that using os.path.join() in a url is
incorrect, its not meant for urls.

Most people setting up an autobuilder will need to have some
customisations on top of yocto-autobuilder2, I don't think its possible
to avoid that. I'd therefore perhaps try and concentrate on having key
modules like the lava integration available and accept there will
always be some local configuration the end user needs to make to things
like the URL details? Even the main autobuilder adds in passwords and
some other local config on top of the stardard repo...

[Reply] I do agree with you that some customization are required to be buil=
t on top of autobuilder.
            However this patch is submitted because the URL link below is n=
ot working on my end and
            only http://localhost:8010/ is working without the need to chan=
ge the master.cfg
            So therefore, due to several rounds of commission i decided to =
send a patch which defaults
            URL following the FQDN sets on the host machines.

            c['buildbotURL'] =3D "https://autobuilder.yoctoproject.org/main=
/"
           =20
            c['buildbotURL'] =3D "http://localhost:8010/'

The intention of this patch is to reduce the need for local configurations,=
 yes I do agree that there will
be some level of customization needed on local setup. I'll leave it to you =
then to determine whats best.

Cheers,
Aaron

________________________________________
From: richard.purdie@linuxfoundation.org [richard.purdie@linuxfoundation.or=
g]
Sent: Tuesday, July 10, 2018 4:55 PM
To: Chan, Aaron Chun Yew; yocto@yoctoproject.org; Burton, Ross; Eggleton, P=
aul
Subject: Re: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder U=
RL based on FQDN

On Tue, 2018-07-10 at 11:18 +0800, Aaron Chan wrote:
> This patch is to enable auto-assignments buildbot URL based on Hosts FQDN=
.
> The socket module allows the retrieval on FQDN and constructs the entire
> URL by default, this default settings can be overwritten in c['buildbotUR=
L']
> based on local administrator preferences.
>
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  master.cfg | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/master.cfg b/master.cfg
> index fca80d2..49ddeb4 100644
> --- a/master.cfg
> +++ b/master.cfg
> @@ -4,6 +4,7 @@
>  import os
>  import imp
>  import pkg_resources
> +import socket
>
>  from buildbot.plugins import *
>  from buildbot.plugins import db
> @@ -55,6 +56,7 @@ imp.reload(services)
>  imp.reload(www)
>
>  c =3D BuildmasterConfig =3D {}
> +url =3D os.path.join('http://', socket.getfqdn() + ':' + str(config.web_=
port) + '/')
>
>  # Disable usage reporting
>  c['buildbotNetUsageData'] =3D None
> @@ -76,6 +78,7 @@ c['www'] =3D www.www
>  c['workers'] =3D workers.workers
>
>  c['title'] =3D "Yocto Autobuilder"
> -c['titleURL'] =3D "https://autobuilder.yoctoproject.org/main/"
> +c['titleURL'] =3D url
>  # visible location for internal web server
> -c['buildbotURL'] =3D "https://autobuilder.yoctoproject.org/main/"
> +# - Default c['buildbotURL'] =3D "https://autobuilder.yoctoproject.org/m=
ain/"
> +c['buildbotURL'] =3D url

I appreciate what you're trying to do here and make this autoconfigure.
 Unfortunately the urls can't always be figured out this way, the above
for example drops the "/main/" part, without which the autobuilder
won't work. The server can be behind forwarding or proxies/firewalls
which also make this problematic.

I also agree with Martin that using os.path.join() in a url is
incorrect, its not meant for urls.

Most people setting up an autobuilder will need to have some
customisations on top of yocto-autobuilder2, I don't think its possible
to avoid that. I'd therefore perhaps try and concentrate on having key
modules like the lava integration available and accept there will
always be some local configuration the end user needs to make to things
like the URL details? Even the main autobuilder adds in passwords and
some other local config on top of the stardard repo...

Cheers,

Richard


