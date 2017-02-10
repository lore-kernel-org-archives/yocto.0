Return-Path: <yogesh.bit2006@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8F8EE009F3; Thu,  9 Feb 2017 19:13:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yogesh.bit2006[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E631E009CF
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 19:13:31 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id w20so23322872qtb.1
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 19:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=It4aQc8M2cWieRZj8ouBmJY+jJV5PZqzdCetEFMKXoA=;
	b=mq/UfPl5BMAQXP/Y+KxXR/xCg0BqrTo9DLh5/ToyH9tGPM+j/ku7uBpFq9tMI+3Gd1
	DGSIEhBSJbeE2ABMLKOHuI38N/r7mYW7xD+v9VOo0EbWn2sQaqJK439ctiSgVtYnBJzL
	FGdkigBuZAcnMY+rUQ819Pne8aF+QVj44TpH3zqh7WRUKZNy4ZCxhr0WBDZsFOnQAm2G
	LPWwaGpnLD5IW2G4qqOok8v9aAJba/h33Sj8xozy4rWXGZyw4zzHpbwpyJ05kSkFFfFM
	qzSn4h4xcu/7XydfoBQFEYL09hodq5KT3kkNO6f21NjEjP6TKQj7TxYIHEiWS4jo5ygp
	DN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=It4aQc8M2cWieRZj8ouBmJY+jJV5PZqzdCetEFMKXoA=;
	b=sYob+oGwN/wGGu0qDw2mRlDOGxZEaIP3vx2Dz4vl9SK3pbajad5BN6Zn0yyNiP4uEC
	fGdzEqnWOvb4DfHGah3zxKU7Rzqd9KnyJAgpBDfoYL6eD8hncbHQ7hKuL0mYJVYad48M
	j8pD1rwAVykyxmMGAtv0MMkm7nTdXg0f//IVzGyAIzFXfNvbkoAbSEpuxFiclIRthENV
	P+o/kj+OAIAmn3/VRRqnvWOTwbriT/iSCBzrQ3kqx7Hq6jCn7d9ilvdk6tyuRsvqyO+T
	d6Kj16RdlycnyOudtu0wan0YDdclJc+hkOQugY+Fyza6ftG/2MNXaWmMY4twujrPo/Kr
	+b2w==
X-Gm-Message-State: AMke39kPR/SboRkTt+lYBN9oLbNW7CwzvOnxsO8cGxGMShuBiP+QUugWluiaOTFnMRXYkrFnDue0IrESdKJhOw==
X-Received: by 10.237.35.84 with SMTP id i20mr6711543qtc.247.1486696410833;
	Thu, 09 Feb 2017 19:13:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.51.33 with HTTP; Thu, 9 Feb 2017 19:13:10 -0800 (PST)
From: Yogesh Tyagi <yogesh.bit2006@gmail.com>
Date: Fri, 10 Feb 2017 08:43:10 +0530
Message-ID: <CADL-HDhGbRPhvVwZsdAoEG=mRGec_uvKMDyCN6Wh99bb49bRBg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: hiawatha build error
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
X-List-Received-Date: Fri, 10 Feb 2017 03:13:33 -0000
Content-Type: multipart/alternative; boundary=001a1141b80674f3760548247bcc

--001a1141b80674f3760548247bcc
Content-Type: text/plain; charset=UTF-8

Hi,

I am using arago build system (git clone git://
arago-project.org/git/projects/oe-layersetup.git tisdk).
I was trying to add hiawatha web server to "core-image-minimal". hiawatha
exist in following layer:

../sources/meta-openembedded/meta-webserver/recipes-httpd/hiawatha/
hiawatha_9.2.bb

So I added "meta-webserver" layer to conf/bblayers.conf. When I am trying
to build hiawaha, I am getting following error:

# bitbake hiawatha

NOTE: Started PRServer with DBfile:
/home/manoj/arago/tisdk/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT:
33954, PID: 2198
Loading cache: 100%
|#############################################################################################################################################################################################|
ETA:  00:00:00
Loaded 2859 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/kernel'
ERROR: linux-yocto-tiny PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto-dev PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-dummy PROVIDES virtual/kernel but was skipped:
PREFERRED_PROVIDER_virtual/kernel set to linux-ti-staging, not linux-dummy
ERROR: linux-arago PROVIDES virtual/kernel but was skipped:
PREFERRED_PROVIDER_virtual/kernel set to linux-ti-staging, not linux-arago
ERROR: linux-ti-staging PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible
with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-ti-staging-rt PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto PROVIDES virtual/kernel but was skipped: incompatible
with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-ti-staging-systest PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-ti-staging-rt PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible
with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-ti-staging-systest PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto-tiny PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-ti-staging PROVIDES virtual/kernel but was skipped:
incompatible with machine arago (not in COMPATIBLE_MACHINE)
ERROR: linux-yocto PROVIDES virtual/kernel but was skipped: incompatible
with machine arago (not in COMPATIBLE_MACHINE)
NOTE: Runtime target 'cryptodev-module' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['cryptodev-module',
'virtual/kernel']
ERROR: Required build target 'hiawatha' has no buildable providers.
Missing or unbuildable dependency chain was: ['hiawatha', 'libxml2',
'python', 'openssl', 'cryptodev-module', 'virtual/kernel']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Am I missing something?

Thanks,
Yogesh

--001a1141b80674f3760548247bcc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I am using arago build system=
 (git clone git://<a href=3D"http://arago-project.org/git/projects/oe-layer=
setup.git">arago-project.org/git/projects/oe-layersetup.git</a> tisdk).<br>=
I was trying to add hiawatha web server to &quot;core-image-minimal&quot;. =
hiawatha exist in following layer:<br><br>../sources/meta-openembedded/meta=
-webserver/recipes-httpd/hiawatha/<a href=3D"http://hiawatha_9.2.bb">hiawat=
ha_9.2.bb</a><br><br>So I added &quot;meta-webserver&quot; layer to conf/bb=
layers.conf. When I am trying to build hiawaha, I am getting following erro=
r:<div><br><div># bitbake hiawatha</div><div><br></div><div>NOTE: Started P=
RServer with DBfile: /home/manoj/arago/tisdk/build/cache/prserv.sqlite3, IP=
: 127.0.0.1, PORT: 33954, PID: 2198</div><div>Loading cache: 100% |########=
###########################################################################=
###########################################################################=
###############################| ETA: =C2=A000:00:00</div><div>Loaded 2859 =
entries from dependency cache.</div><div>NOTE: Resolving any missing task q=
ueue dependencies</div><div>ERROR: Nothing PROVIDES &#39;virtual/kernel&#39=
;</div><div>ERROR: linux-yocto-tiny PROVIDES virtual/kernel but was skipped=
: incompatible with machine arago (not in COMPATIBLE_MACHINE)</div><div>ERR=
OR: linux-yocto-dev PROVIDES virtual/kernel but was skipped: incompatible w=
ith machine arago (not in COMPATIBLE_MACHINE)</div><div>ERROR: linux-dummy =
PROVIDES virtual/kernel but was skipped: PREFERRED_PROVIDER_virtual/kernel =
set to linux-ti-staging, not linux-dummy</div><div>ERROR: linux-arago PROVI=
DES virtual/kernel but was skipped: PREFERRED_PROVIDER_virtual/kernel set t=
o linux-ti-staging, not linux-arago</div><div>ERROR: linux-ti-staging PROVI=
DES virtual/kernel but was skipped: incompatible with machine arago (not in=
 COMPATIBLE_MACHINE)</div><div>ERROR: linux-yocto-rt PROVIDES virtual/kerne=
l but was skipped: incompatible with machine arago (not in COMPATIBLE_MACHI=
NE)</div><div>ERROR: linux-ti-staging-rt PROVIDES virtual/kernel but was sk=
ipped: incompatible with machine arago (not in COMPATIBLE_MACHINE)</div><di=
v>ERROR: linux-yocto PROVIDES virtual/kernel but was skipped: incompatible =
with machine arago (not in COMPATIBLE_MACHINE)</div><div>ERROR: linux-ti-st=
aging-systest PROVIDES virtual/kernel but was skipped: incompatible with ma=
chine arago (not in COMPATIBLE_MACHINE)</div><div>ERROR: linux-ti-staging-r=
t PROVIDES virtual/kernel but was skipped: incompatible with machine arago =
(not in COMPATIBLE_MACHINE)</div><div>ERROR: linux-yocto-rt PROVIDES virtua=
l/kernel but was skipped: incompatible with machine arago (not in COMPATIBL=
E_MACHINE)</div><div>ERROR: linux-ti-staging-systest PROVIDES virtual/kerne=
l but was skipped: incompatible with machine arago (not in COMPATIBLE_MACHI=
NE)</div><div>ERROR: linux-yocto-tiny PROVIDES virtual/kernel but was skipp=
ed: incompatible with machine arago (not in COMPATIBLE_MACHINE)</div><div>E=
RROR: linux-ti-staging PROVIDES virtual/kernel but was skipped: incompatibl=
e with machine arago (not in COMPATIBLE_MACHINE)</div><div>ERROR: linux-yoc=
to PROVIDES virtual/kernel but was skipped: incompatible with machine arago=
 (not in COMPATIBLE_MACHINE)</div><div>NOTE: Runtime target &#39;cryptodev-=
module&#39; is unbuildable, removing...</div><div>Missing or unbuildable de=
pendency chain was: [&#39;cryptodev-module&#39;, &#39;virtual/kernel&#39;]<=
/div><div>ERROR: Required build target &#39;hiawatha&#39; has no buildable =
providers.</div><div>Missing or unbuildable dependency chain was: [&#39;hia=
watha&#39;, &#39;libxml2&#39;, &#39;python&#39;, &#39;openssl&#39;, &#39;cr=
yptodev-module&#39;, &#39;virtual/kernel&#39;]</div><div><br></div><div>Sum=
mary: There were 2 ERROR messages shown, returning a non-zero exit code.</d=
iv><div><br></div><div>Am I missing something?</div><div><br></div><div>Tha=
nks,</div><div>Yogesh</div><div><br></div></div></div>

--001a1141b80674f3760548247bcc--
