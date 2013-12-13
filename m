Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
	[143.166.85.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4B78E0079C;
	Fri, 13 Dec 2013 07:27:13 -0800 (PST)
X-LoopCount0: from 10.170.28.41
X-IronPort-AV: E=Sophos;i="4.95,479,1384322400"; d="scan'208";a="429094542"
From: <Michael_E_Brown@Dell.com>
To: <daniel@haxx.se>
Date: Fri, 13 Dec 2013 09:27:05 -0600
Thread-Topic: [yocto] Git clone over http broken on git.yoctoproject.org
Thread-Index: Ac74Ei3qmV/D9lOFRgu0xYjnhdHNYQABOZFj
Message-ID: <DB6E482E89290547898851B8CC9D8110013458061D@AUSX7MCPS302.AMER.DELL.COM>
References: <DB6E482E89290547898851B8CC9D8110012F80E185@AUSX7MCPS302.AMER.DELL.COM>,
	<5294C950.2030509@yoctoproject.org>
	<DB6E482E89290547898851B8CC9D8110013217D962@AUSX7MCPS302.AMER.DELL.COM>,
	<alpine.DEB.2.00.1312131543270.30428@tvnag.unkk.fr>
In-Reply-To: <alpine.DEB.2.00.1312131543270.30428@tvnag.unkk.fr>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Git clone over http broken on git.yoctoproject.org
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
X-List-Received-Date: Fri, 13 Dec 2013 15:27:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Local cntlm proxy pointing at corporate MS proxy. I tried two git versions.=
 One is the base git version in CentOS 6.3, the other from the yocto 1.5 bu=
ildtools tarball. It looks like the newer git version works and the older o=
ne does not. I'll just use A) the newer git version, and B) https.

Base CentOS version:

$ git --version
git version 1.7.1
$ git clone http://git.yoctoproject.org/git/poky.git
Initialized empty Git repository in /home/michael_e_brown/yocto/poky/.git/
error: RPC failed; result=3D52, HTTP code =3D 100

Yocto 1.5 buildtools version:

$ git --version
git version 1.8.3.4
$ git clone http://git.yoctoproject.org/git/poky.git
Cloning into 'poky'...
remote: Counting objects: 215358, done.
remote: Compressing objects: 100% (54081/54081), done.
remote: Total 215358 (delta 156744), reused 215022 (delta 156422)
Receiving objects: 100% (215358/215358), 98.12 MiB | 836.00 KiB/s, done.
Resolving deltas: 100% (156744/156744), done.
Checking connectivity... done

Looks like newer git works ok.
--
Michael
________________________________________
From: Daniel Stenberg [daniel@haxx.se]
Sent: Friday, December 13, 2013 8:46 AM
To: Brown, Michael E
Cc: michael@yoctoproject.org; yocto@yoctoproject.org
Subject: Re: [yocto] Git clone over http broken on git.yoctoproject.org

On Thu, 12 Dec 2013, Michael_E_Brown@Dell.com wrote:

> HOWEVER, if I use "https" instead of "http", it all WORKS OK. NOTE: Some
> repos work over http, some don't. Working: meta-selinux, yocto-autobuilde=
r,
> for example.

You're using a HTTP proxy, right? I suspect the http vs https difference is
then simply because git will use completely different ways to go through th=
e
proxies for the different protocols.

> git clone --mirror http://git.yoctoproject.org/git/poky.git
> Initialized empty Git repository in /home/michael_e_brown/yocto/poky.git/
> error: RPC failed; result=3D52, HTTP code =3D 100

I think this means that git gets a HTTP 100 continue response back but then
nothing else, which indicates a problem in your network or proxy.

Can you use git fine over this http+proxy against other git repos out in th=
e
wild? Which git + libcurl versions are you using?

--

  / daniel.haxx.se

