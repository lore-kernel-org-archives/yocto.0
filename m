Return-Path: <pedropozzobon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD6E1E004F1; Tue,  4 Oct 2016 10:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pedropozzobon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71EB2E00444
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 10:01:58 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id z126so196539267vkd.0
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 10:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=TAFK8ufROLzpemmpDM2edoWKTWeQByncpWaDG9ql/0o=;
	b=QA1NNFWaQogfRFEld5JQN7VAbJnIdKA0mECyFdeqt2SsXQ1UN4/CsF0ohQgL+4YlJR
	RFl3hJtqIkYah11dBF/Rxk3SYqnDAE7NXQnnARTEpZ2Ty81nk1BfZHZACIw5Ubv/3WM5
	RPHSKNUsdfXXEkc0heqta+2WIp7d3lGNWDHj2RBL4P43ykzXGOt6IbZ1SeE8AcECxwKv
	5Nek73Lw1J5TdjtzY3WKRypfhsKF/ONvfwy//Xt7TH0T/fli4jTsioy+DTiJcu90UE/7
	FZlVfKZyBYGiueuY0oKL3xpKy7Fj/YYKSpf3OAHT9BP7jYXCDaFVPv3vpX/ooAu4dCPq
	BNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TAFK8ufROLzpemmpDM2edoWKTWeQByncpWaDG9ql/0o=;
	b=C6hxxdXChMZ8YUBHYR8L6k9dywNakmpK5pY4dvvvgtmnwgPgZjedw5kDe47wTk2zi6
	crY7/BNQF+AHRpSJH4FeGR2vD3CS5TWf0jRD2vgxaoCWI/TZUn5z7Azv3jVMetTaFu/C
	eEBYyGjLYQCe4PLQ1mtq5FoQAIG0cfuX4jEj75V/wEd3igcUDvfnjckn2SOfbqMQxBrY
	gDrRkT6xV9D/bUvVJNR20+d17yCD4Rq4uAfmITpDK7bNJUFNQ7ERGYzgDBXKhxMIot6N
	ZyhGlMj2isCTakGFnuO2SaMqYsd2P2tjkGdB4OzLLQt5zE9lfuXZTotgYh54FdEBL46s
	QiIA==
X-Gm-Message-State: AA6/9RkNUN3gTjaN4RlbVLNCfs9YGgf3zcpU+qXYvykzKVOIyzGkiuzLk5nGIsHExdy73AkjHv4FNCkO+rB6rg==
X-Received: by 10.31.80.2 with SMTP id e2mr3060357vkb.9.1475600517289; Tue, 04
	Oct 2016 10:01:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.44.140 with HTTP; Tue, 4 Oct 2016 10:01:56 -0700 (PDT)
From: Pedro Pozzobon <pedropozzobon@gmail.com>
Date: Tue, 4 Oct 2016 14:01:56 -0300
Message-ID: <CAMT4F752Mpa30adCiLtQYP2XFALo-Y0i8WAYHZqaO4Fq30jK=Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Small problem on systemd unit files provided by nfs-utils recipe
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
X-List-Received-Date: Tue, 04 Oct 2016 17:02:01 -0000
Content-Type: multipart/alternative; boundary=001a114e346aa9ddc9053e0d04a5

--001a114e346aa9ddc9053e0d04a5
Content-Type: text/plain; charset=UTF-8

Hello,

While I was trying to use the NFS server provided by the nfs-utils.bb
recipe I've noticed an unexpected behavior when
trying to start the systemd service using 'systemctl start
nfs-server.service': when I first call this
command nfs-server fails to load and I need to call it a second time to
make it work properly.

After noticing this, I tried to compare these .service files with the ones
provide by other distros and tried to make some changes on it but I
wasn't successful.

I know this is not a big problem, but making two calls for 'systemctl
start' seems not to be the ideal behavior and I'd like to fix this. Does
anyone know
how to make it work properly? I'm currently using the recipe provided by
Krogoth 2.1.1.

Some information:

After a reboot and using 'systemctl start nfs-server.service', I get the
following messages using 'journalctl -e':

Oct 04 16:53:09 novoom systemd[1]: Starting RPC Bind Service...
Oct 04 16:53:10 novoom rpcbind[804]: cannot create socket for udp6
Oct 04 16:53:10 novoom rpcbind[804]: cannot create socket for tcp6
Oct 04 16:53:10 novoom systemd[1]: Started RPC Bind Service.
Oct 04 16:53:10 novoom systemd[1]: Starting NFS Server...
Oct 04 16:53:10 novoom rpc.nfsd[814]: rpc.nfsd: address family AF_INET6 not
supported by protocol TCP
Oct 04 16:53:10 novoom rpc.nfsd[814]: rpc.nfsd: unable to set any sockets
for nfsd
Oct 04 16:53:10 novoom systemd[1]: nfs-server.service: Main process exited,
code=exited, status=1/FAILURE
Oct 04 16:53:10 novoom systemd[1]: Failed to start NFS Server.
Oct 04 16:53:10 novoom systemd[1]: Dependency failed for NFS Mount Daemon.
Oct 04 16:53:10 novoom systemd[1]: nfs-mountd.service: Job
nfs-mountd.service/start failed with result 'dependency'.
Oct 04 16:53:10 novoom systemd[1]: nfs-server.service: Unit entered failed
state.
Oct 04 16:53:10 novoom systemd[1]: nfs-server.service: Failed with result
'exit-code'.
Oct 04 16:53:10 novoom root[826]: root()=[   69  systemctl start
nfs-server.service]

After the second time:

Oct 04 16:55:40 novoom systemd[1]: Starting NFS Server...
Oct 04 16:55:40 novoom kernel: NFSD: Using /var/lib/nfs/v4recovery as the
NFSv4 state recovery directory
Oct 04 16:55:40 novoom kernel: NFSD: starting 90-second grace period (net
c193d200)
Oct 04 16:55:40 novoom systemd[1]: Started NFS Server.
Oct 04 16:55:40 novoom systemd[1]: Started NFS Mount Daemon.
Oct 04 16:55:40 novoom root[1974]: root()=[   74  systemctl start
nfs-server.service]
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for udp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for tcp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for udp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for tcp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for udp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could
not open connection for tcp6
Oct 04 16:55:40 novoom rpc.mountd[1970]: Version 1.3.3 starting
Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: Version 1.3.3 starting

Cheers,
Pedro

--001a114e346aa9ddc9053e0d04a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>While I was trying to use the NFS server pro=
vided by the <a href=3D"http://nfs-utils.bb">nfs-utils.bb</a> recipe I&#39;=
ve noticed an unexpected behavior when<br>trying to start the systemd servi=
ce using &#39;systemctl start nfs-server.service&#39;: when I first call th=
is<br>command nfs-server fails to load and I need to call it a second time =
to make it work properly.<br><br>After noticing this, I tried to compare th=
ese .service files with the ones provide by other distros and tried to make=
 some changes on it but I<br>wasn&#39;t successful.<br><br>I know this is n=
ot a big problem, but making two calls for &#39;systemctl start&#39; seems =
not to be the ideal behavior and I&#39;d like to fix this. Does anyone know=
<br>how to make it work properly? I&#39;m currently using the recipe provid=
ed by Krogoth 2.1.1.<br><br>Some information:<br><br>After a reboot and usi=
ng &#39;systemctl start nfs-server.service&#39;, I get the following messag=
es using &#39;journalctl -e&#39;:<br><br>Oct 04 16:53:09 novoom systemd[1]:=
 Starting RPC Bind Service...<br>Oct 04 16:53:10 novoom rpcbind[804]: canno=
t create socket for udp6<br>Oct 04 16:53:10 novoom rpcbind[804]: cannot cre=
ate socket for tcp6<br>Oct 04 16:53:10 novoom systemd[1]: Started RPC Bind =
Service.<br>Oct 04 16:53:10 novoom systemd[1]: Starting NFS Server...<br>Oc=
t 04 16:53:10 novoom rpc.nfsd[814]: rpc.nfsd: address family AF_INET6 not s=
upported by protocol TCP<br>Oct 04 16:53:10 novoom rpc.nfsd[814]: rpc.nfsd:=
 unable to set any sockets for nfsd<br>Oct 04 16:53:10 novoom systemd[1]: n=
fs-server.service: Main process exited, code=3Dexited, status=3D1/FAILURE<b=
r>Oct 04 16:53:10 novoom systemd[1]: Failed to start NFS Server.<br>Oct 04 =
16:53:10 novoom systemd[1]: Dependency failed for NFS Mount Daemon.<br>Oct =
04 16:53:10 novoom systemd[1]: nfs-mountd.service: Job nfs-mountd.service/s=
tart failed with result &#39;dependency&#39;.<br>Oct 04 16:53:10 novoom sys=
temd[1]: nfs-server.service: Unit entered failed state.<br>Oct 04 16:53:10 =
novoom systemd[1]: nfs-server.service: Failed with result &#39;exit-code&#3=
9;.<br>Oct 04 16:53:10 novoom root[826]: root()=3D[=C2=A0=C2=A0 69=C2=A0 sy=
stemctl start nfs-server.service]<br><br>After the second time:<br><br>Oct =
04 16:55:40 novoom systemd[1]: Starting NFS Server...<br>Oct 04 16:55:40 no=
voom kernel: NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state recover=
y directory<br>Oct 04 16:55:40 novoom kernel: NFSD: starting 90-second grac=
e period (net c193d200)<br>Oct 04 16:55:40 novoom systemd[1]: Started NFS S=
erver.<br>Oct 04 16:55:40 novoom systemd[1]: Started NFS Mount Daemon.<br>O=
ct 04 16:55:40 novoom root[1974]: root()=3D[=C2=A0=C2=A0 74=C2=A0 systemctl=
 start nfs-server.service]<br>Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.=
mountd: svc_tli_create: could not open connection for udp6<br>Oct 04 16:55:=
40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create: could not open conn=
ection for tcp6<br>Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc=
_tli_create: could not open connection for udp6<br>Oct 04 16:55:40 novoom r=
pc.mountd[1970]: rpc.mountd: svc_tli_create: could not open connection for =
tcp6<br>Oct 04 16:55:40 novoom rpc.mountd[1970]: rpc.mountd: svc_tli_create=
: could not open connection for udp6<br>Oct 04 16:55:40 novoom rpc.mountd[1=
970]: rpc.mountd: svc_tli_create: could not open connection for tcp6<br>Oct=
 04 16:55:40 novoom rpc.mountd[1970]: Version 1.3.3 starting<br>Oct 04 16:5=
5:40 novoom rpc.mountd[1970]: rpc.mountd: Version 1.3.3 starting<br><br>Che=
ers,<br>Pedro<br></div>

--001a114e346aa9ddc9053e0d04a5--
