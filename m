Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8187FE00EC7; Mon, 27 Jun 2016 05:27:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.214.8 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from baboon.maple.relay.mailchannels.net
	(baboon.maple.relay.mailchannels.net [23.83.214.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C9AE00EC0
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 05:27:43 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 2E91E10084E;
	Mon, 27 Jun 2016 12:27:37 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-42-131-234.us-west-2.compute.internal
	[10.42.131.234])
	by relay.mailchannels.net (Postfix) with ESMTPA id 4AF0310066A;
	Mon, 27 Jun 2016 12:27:34 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.21.150.52])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.15); Mon, 27 Jun 2016 12:27:35 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1467030454786:2816525151
X-MC-Ingress-Time: 1467030454786
Received: from [176.252.54.16] (port=52872 helo=mion)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.86_1)
	(envelope-from <pidge@toganlabs.com>)
	id 1bHVdT-004DBt-UP; Mon, 27 Jun 2016 14:27:34 +0200
Message-ID: <1467030448.31845.6.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 27 Jun 2016 14:27:28 +0200
In-Reply-To: <1466708615-1539-1-git-send-email-william.c.randle@intel.com>
References: <1466708615-1539-1-git-send-email-william.c.randle@intel.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Subject: Re: [autobuilder][PATCH] CreateAutoConf.py: check for empty env history variables before using
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Jun 2016 12:27:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Pulled into master, thanks!

On Thu, 2016-06-23 at 12:03 -0700, Bill Randle wrote:
> I saw this error on a new AB setup:
>=20
> File "/home/pokybuild/yocto-autobuilder/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py", line 181, in
> start
> =C2=A0=C2=A0=C2=A0=C2=A0ta_history_repos=3Dast.literal_eval(os.environ.=
get('BUILD_HISTORY_T
> HROWAWAY_WHITELIST').encode('utf-8'))
> =C2=A0=C2=A0=C2=A0=C2=A0exceptions.AttributeError: 'NoneType' object ha=
s no attribute
> 'encode'
>=20
> Since the code above line 181 checks for either
> BUILD_HISTORY_THROWAWAY_WHITELIST
> or BUILD_HISTORY_WHITELIST being set, it's possible one of them could
> be empty.
>=20
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> =C2=A0.../site-packages/autobuilder/buildsteps/CreateAutoConf.py=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|
> 8 ++++++--
> =C2=A01 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> index 0845ff1..91607e6 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/CreateAutoConf.py
> @@ -177,9 +177,13 @@ class CreateAutoConf(ShellCommand):
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if os.environ.get('BUILD_HISTORY_WHITELIST'=
) is not
> None or \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0os.environ.get('BUILD_HIS=
TORY_THROWAWAY_WHITELIST
> ') is not None:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ta_history_repos=3D{}
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0history_repos=3D{}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fout =3D fout + 'ER=
ROR_QA_remove =3D "version-going-
> backwards"\n'
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ta_history_repos=3Dast.li=
teral_eval(os.environ.get
> ('BUILD_HISTORY_THROWAWAY_WHITELIST').encode('utf-8'))
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0history_repos=3Dast.liter=
al_eval(os.environ.get('B
> UILD_HISTORY_WHITELIST').encode('utf-8'))
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if
> os.environ.get('BUILD_HISTORY_THROWAWAY_WHITELIST') is not None:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0t=
a_history_repos=3Dast.literal_eval(os.environ
> .get('BUILD_HISTORY_THROWAWAY_WHITELIST').encode('utf-8'))
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if os.environ.get('BUILD_=
HISTORY_WHITELIST') is
> not None:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0h=
istory_repos=3Dast.literal_eval(os.environ.ge
> t('BUILD_HISTORY_WHITELIST').encode('utf-8'))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if repo in history_=
repos.keys() and \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0s=
elf.getProperty("branch") in
> history_repos[self.getProperty("repository")]:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# We keep this buil=
d history
--=20
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com


