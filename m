Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe001.messaging.microsoft.com [216.32.180.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8048E00282
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 20:56:35 -0700 (PDT)
Received: from mail130-co1-R.bigfish.com (10.243.78.249) by
	CO1EHSOBE013.bigfish.com (10.243.66.76) with Microsoft SMTP Server id
	14.1.225.23; Tue, 17 Jul 2012 03:56:34 +0000
Received: from mail130-co1 (localhost [127.0.0.1])	by
	mail130-co1-R.bigfish.com (Postfix) with ESMTP id 885DD62034F	for
	<yocto@yoctoproject.org>; Tue, 17 Jul 2012 03:56:34 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zz98dI9371I1432I4015I14ffIzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail130-co1 (localhost.localdomain [127.0.0.1]) by mail130-co1
	(MessageSwitch) id 1342497392688443_23430;
	Tue, 17 Jul 2012 03:56:32 +0000 (UTC)
Received: from CO1EHSMHS032.bigfish.com (unknown [10.243.78.228])	by
	mail130-co1.bigfish.com (Postfix) with ESMTP id A5D4634004A;
	Tue, 17 Jul 2012 03:56:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS032.bigfish.com
	(10.243.66.42) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 17 Jul 2012 03:56:33 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Mon, 16 Jul 2012 22:56:31 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Tim Bird <tim.bird@am.sony.com>
Thread-Topic: [yocto] denzil firewall problems
Thread-Index: AQHNY9AmgLLm1y/5DkmtecHGE9B2kg==
Date: Tue, 17 Jul 2012 03:56:31 +0000
Message-ID: <CAEsOVNfN90wh4Mfn_gYC5B0Q7LVDQYANboJ72QVZvSxaRNhZQw@mail.gmail.com>
References: <5004AA76.9010404@am.sony.com>
In-Reply-To: <5004AA76.9010404@am.sony.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: denzil firewall problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Jul 2012 03:56:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <645338AC15F9FE4ABFB644F63F89B5A2@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 16, 2012 at 6:57 PM, Tim Bird <tim.bird@am.sony.com> wrote:
> Hi all,
>
> I'm trying to take Denzil out for a spin, and when I do bitbake, from ins=
ide
> Sony (behind our corporate firewall) I get this:
>
> (I was doing 'bitbake poky-image-sato')
> -------------
> ...
> ERROR:  OE-core's config sanity checker detected a potential misconfigura=
tion.
>     Either fix the cause of this error or at your own risk disable the ch=
ecker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Failed to fetch test data from the network. Please ensure your networ=
k is configured correctly.
>
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> -------------
>
> I tried to follow the instructions at:
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> but nothing worked.  These look like instructions for SOCKS proxies.
> I only have access to HTTP proxies.
>
> Here's what I got from 'bitbake -DDD -v poky-image-sato', after configuri=
ng an 'nc'-based git-proxy:
> -------------
> DEBUG: Fetcher accessed the network with the command git ls-remote git://=
git.yoctoproject.org/yocto-firewall-test HEAD
> DEBUG: Running export HOME=3D"/a/home/tbird"; export SSH_AGENT_PID=3D"182=
2"; export SSH_AUTH_SOCK=3D"/tmp/keyring-9qrJm0/ssh"; export no_proxy=3D"lo=
calhost,127.0.0.0/8"; export
> ftp_proxy=3D"http://www-west.sony.com:80"; export http_proxy=3D"http://ww=
w-west.sony.com:80"; export GIT_CONFIG=3D"/a/home/tbird/work/yocto/poky-7.0=
-build/tmp/sysroots/x86_64-linux/etc/gitconfig"; export
> GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export
> PATH=3D"/a/home/tbird/work/yocto/poky-denzil-7.0/bitbake/bin/:/a/home/tbi=
rd/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/u=
sr/bin:/sbin:/bin:/usr/games:/a/home/tbird/bin/:/a/home/tbird/work/yocto/po=
ky-denzil-7.0/scripts";
> git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD

Tim,

Can you run that command outside of the yocto build and it works OK?

Did you set GIT_PROXY_COMMAND in your local.conf? I recall that
git-proxy script on the wiki page not working all that well. (I've
gone through all the same problems with our proxy as well). There is a
connect-proxy utility available on most distros, and then I've been
using this script:

$ cat ../scripts/git-proxy
#!/bin/sh

if [[ "$@" =3D~ "$GIT_PROXY_IGNORE" ]]
then
	nc $@
else
	/usr/bin/connect-proxy -S wwwgate0.freescale.net:1090 $@
fi

Not 100% sure how it evolved to this point though.

-M




> ERROR:  OE-core's config sanity checker detected a potential misconfigura=
tion.
>     Either fix the cause of this error or at your own risk disable the ch=
ecker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Failed to fetch test data from the network. Please ensure your networ=
k is configured correctly.
>
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> --------------
>
> I seem to recall in previous Yocto versions a mechanism to point the
> package fetcher to a mirror.  Is this still available?  If so, where woul=
d
> I find instructions for this?
>
> Alternatively, I have a builder image for denzil.  Is there a way to use =
the
> material in that image as a source mirror snapshot?
>
> Any help would be appreciated.
>
> Thanks,
>  -- Tim
>
> P.S. With regards to disabling the checker (as a possible workaround for
> the problem), I found sanity.conf at poky-denzil-7.0/meta/conf/sanity.con=
f.
> I looked at it (and meta/classes/sanity.bbclass) but it's not obvious
> to me how I would disable it.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


