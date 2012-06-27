Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 519FAE0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 21:05:52 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so712013bkc.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 21:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=LnVGdhcDpaRj6Sf3hkvzElv6i357Au0F9N5gLmYZdIw=;
	b=cfdeja3NBC9IqSdqbEL5bwJzcWHeVy+Dw4ORbUmgEV9e5XTc7JrjTPFf0Hizyo8WDl
	EChopXKN3G/fGZfjTzIbzCQP8TUY0B8pmPB73oQf1YOddF4dkd9j6uOb9AHonrjHnwkS
	oJIXJFSKrfEhbPBpURbT3HZmZ/drCjvMpxSCENda8GaFoUTs5diRL0IFy48g2hK5D48p
	6nYbeidI5D1jbBD45zmLUVh3pOsLHf4HUIhK349Qea28+h65UTXdJRIJxcbeikXRXFeU
	FRmIzTcnTdZv5M1tRRxtE4yuzZkOYufgaQk7dIeRQDPS2QecmIzjLCz7LKV6g2VP7Q/0
	TAag==
Received: by 10.204.149.208 with SMTP id u16mr6594045bkv.81.1340769950800;
	Tue, 26 Jun 2012 21:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.112.193 with HTTP; Tue, 26 Jun 2012 21:05:30 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 27 Jun 2012 09:35:30 +0530
Message-ID: <CA+Z6RkXWwWu6+pPyL9x7dkitwQaxChMMWLdjbrUJH=exzyTAYw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: 'check_sanity_eventhandler' failed
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
X-List-Received-Date: Wed, 27 Jun 2012 04:05:52 -0000
Content-Type: multipart/alternative; boundary=0015175df052a49cb104c36c54e0

--0015175df052a49cb104c36c54e0
Content-Type: text/plain; charset=ISO-8859-1

Hi,

We are using poky-denzil-7.0. I am trying to create SDK by running "bitbake
-v meta-toolchain-qte" . But it is getting failed at the earlier phase
throwing an error

"DEBUG: Fetcher accessed the network with the command git ls-remote git://
git.yoctoproject.org/yocto-firewall-test HEAD
DEBUG: Running export HOME="/home/navani"; export SSH_AGENT_PID="17197";
export SSH_AUTH_SOCK="/tmp/keyring-2GniDe/ssh"; export
GIT_CONFIG="/home/navani/Poky-7.0/poky-denzil-7.0/build/tmp/sysroots/i686-linux/etc/gitconfig";
export
PATH="/home/navani/Poky-7.0/poky-denzil-7.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/navani/Poky-7.0/poky-denzil-7.0/scripts";
git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Failed to fetch test data from the network. Please ensure your network
is configured correctly.

ERROR: Execution of event handler 'check_sanity_eventhandler' failed"

Network is working fine still I am facing this error. Can anyone please
confirm if any modification need to be done for sanity.conf. I am using
same class and configuration file for sanity as is there in meta layer.

Thanks and Regards
Navani Kamal Srivastava

--0015175df052a49cb104c36c54e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>We are using poky-denzil-7.0. I am trying to create SDK by runni=
ng &quot;bitbake -v meta-toolchain-qte&quot; . But it is getting failed at =
the earlier phase throwing an error <br>=A0<br>&quot;DEBUG: Fetcher accesse=
d the network with the command git ls-remote git://<a href=3D"http://git.yo=
ctoproject.org/yocto-firewall-test">git.yoctoproject.org/yocto-firewall-tes=
t</a> HEAD<br>

DEBUG: Running export HOME=3D&quot;/home/navani&quot;; export SSH_AGENT_PID=
=3D&quot;17197&quot;; export SSH_AUTH_SOCK=3D&quot;/tmp/keyring-2GniDe/ssh&=
quot;; export GIT_CONFIG=3D&quot;/home/navani/Poky-7.0/poky-denzil-7.0/buil=
d/tmp/sysroots/i686-linux/etc/gitconfig&quot;; export PATH=3D&quot;/home/na=
vani/Poky-7.0/poky-denzil-7.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/lo=
cal/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/nava=
ni/Poky-7.0/poky-denzil-7.0/scripts&quot;; git ls-remote git://<a href=3D"h=
ttp://git.yoctoproject.org/yocto-firewall-test">git.yoctoproject.org/yocto-=
firewall-test</a> HEAD<br>

ERROR:=A0 OE-core&#39;s config sanity checker detected a potential misconfi=
guration.<br>=A0=A0=A0 Either fix the cause of this error or at your own ri=
sk disable the checker (see sanity.conf).<br>=A0=A0=A0 Following is the lis=
t of potential problems / advisories:<br>

<br>=A0=A0=A0 Failed to fetch test data from the network. Please ensure you=
r network is configured correctly.<br><br>ERROR: Execution of event handler=
 &#39;check_sanity_eventhandler&#39; failed&quot;<br><br>Network is working=
 fine still I am facing this error. Can anyone please confirm if any modifi=
cation need to be done for sanity.conf. I am using same class and configura=
tion file for sanity as is there in meta layer.<br>

<br>Thanks and Regards<br>Navani Kamal Srivastava<br><br><br>

--0015175df052a49cb104c36c54e0--
