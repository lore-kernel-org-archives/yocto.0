Return-Path: <tim.bird@am.sony.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe006.messaging.microsoft.com [213.199.154.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F48E00288
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 16:55:47 -0700 (PDT)
Received: from mail29-am1-R.bigfish.com (10.3.201.238) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Mon, 16 Jul 2012 23:55:45 +0000
Received: from mail29-am1 (localhost [127.0.0.1])	by mail29-am1-R.bigfish.com
	(Postfix) with ESMTP id 4F7092A0361	for <yocto@yoctoproject.org>;
	Mon, 16 Jul 2012 23:55:45 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: 2
X-BigFish: VPS2(z33fclz4015I14ffIzz1202hzz8275dhz2fh2a8h668h839hd25hf0ah107ah)
Received-SPF: pass (mail29-am1: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail29-am1 (localhost.localdomain [127.0.0.1]) by mail29-am1
	(MessageSwitch) id 1342482943585325_19662;
	Mon, 16 Jul 2012 23:55:43 +0000 (UTC)
Received: from AM1EHSMHS008.bigfish.com (unknown [10.3.201.241])	by
	mail29-am1.bigfish.com (Postfix) with ESMTP id 40FD0320047	for
	<yocto@yoctoproject.org>; Mon, 16 Jul 2012 23:55:43 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	AM1EHSMHS008.bigfish.com (10.3.207.108) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Mon, 16 Jul 2012 23:55:43 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6GNtfJS006980
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Mon, 16 Jul 2012 23:55:41 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.sgo.in.sel.sony.com
	[43.130.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6GNteD9020822
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Mon, 16 Jul 2012 23:55:41 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q6GNtRue025843	for <yocto@yoctoproject.org>;
	Mon, 16 Jul 2012 23:55:27 GMT
Message-ID: <5004AA76.9010404@am.sony.com>
Date: Mon, 16 Jul 2012 16:57:42 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: denzil firewall problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Jul 2012 23:55:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi all,

I'm trying to take Denzil out for a spin, and when I do bitbake, from inside
Sony (behind our corporate firewall) I get this:

(I was doing 'bitbake poky-image-sato')
-------------
...
ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
    Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Failed to fetch test data from the network. Please ensure your network is configured correctly.

ERROR: Execution of event handler 'check_sanity_eventhandler' failed
-------------

I tried to follow the instructions at:
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
but nothing worked.  These look like instructions for SOCKS proxies.
I only have access to HTTP proxies.

Here's what I got from 'bitbake -DDD -v poky-image-sato', after configuring an 'nc'-based git-proxy:
-------------
DEBUG: Fetcher accessed the network with the command git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
DEBUG: Running export HOME="/a/home/tbird"; export SSH_AGENT_PID="1822"; export SSH_AUTH_SOCK="/tmp/keyring-9qrJm0/ssh"; export no_proxy="localhost,127.0.0.0/8"; export
ftp_proxy="http://www-west.sony.com:80"; export http_proxy="http://www-west.sony.com:80"; export GIT_CONFIG="/a/home/tbird/work/yocto/poky-7.0-build/tmp/sysroots/x86_64-linux/etc/gitconfig"; export
GIT_PROXY_COMMAND="/usr/local/bin/git-proxy"; export
PATH="/a/home/tbird/work/yocto/poky-denzil-7.0/bitbake/bin/:/a/home/tbird/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/a/home/tbird/bin/:/a/home/tbird/work/yocto/poky-denzil-7.0/scripts";
git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
    Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Failed to fetch test data from the network. Please ensure your network is configured correctly.

ERROR: Execution of event handler 'check_sanity_eventhandler' failed
--------------

I seem to recall in previous Yocto versions a mechanism to point the
package fetcher to a mirror.  Is this still available?  If so, where would
I find instructions for this?

Alternatively, I have a builder image for denzil.  Is there a way to use the
material in that image as a source mirror snapshot?

Any help would be appreciated.

Thanks,
 -- Tim

P.S. With regards to disabling the checker (as a possible workaround for
the problem), I found sanity.conf at poky-denzil-7.0/meta/conf/sanity.conf.
I looked at it (and meta/classes/sanity.bbclass) but it's not obvious
to me how I would disable it.

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================



