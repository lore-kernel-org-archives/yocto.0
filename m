Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B24E009D8; Tue,  5 May 2015 18:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 144C4E009B6
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 18:26:37 -0700 (PDT)
Received: by qctx5 with SMTP id x5so13133685qct.0
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 18:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nuULD+HEBzcU0BvMgiGxzjFgpX+6CxNkbUc9B/rBT1M=;
	b=WR83KdrNRQ1rneQCZkoYeyZiLNKm7kk9iHr4QYDPaV157nDQjH9qyX3n6k8jb11n0W
	qhN/oQhkgTRZUPUE4QC1kltkIU/oPJbSDCtTO7vt+BgHA8FWByhtDYs5ttCbcQ06eCXo
	VRVmLYSAQdB+lEDz7TI1hvIlpYi3o1cgX2MTqaS6OUv/y8Mwv98dMK3kf5TjysKDmKRr
	qhIkecz61kkikEAifYbzfSqedFz8VMYjoWqS7FNa/CUAxrwQ9v6UJkK5fW2tVAgoWjz9
	FQG8AuVmd2vDhAWN6+sIsH1+5pIVGGYslDvBQbHh9RvLxvUahVWQF+szwtnz+Q+CuZST
	SrsQ==
MIME-Version: 1.0
X-Received: by 10.141.28.142 with SMTP id f136mr31549325qhe.67.1430875596997; 
	Tue, 05 May 2015 18:26:36 -0700 (PDT)
Received: by 10.140.102.74 with HTTP; Tue, 5 May 2015 18:26:36 -0700 (PDT)
Date: Tue, 5 May 2015 21:26:36 -0400
Message-ID: <CAPphmgZ1GPkUP_k41KVCUzqdK6hVYf_Vp9s1Xs1sNv6kHt=QeQ@mail.gmail.com>
From: Jate Sujjavanich <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [RFC] Yocto Bug 5044, 6149 PREFERRED_PROVIDER runtime
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
X-List-Received-Date: Wed, 06 May 2015 01:26:39 -0000
Content-Type: multipart/alternative; boundary=001a11423d2aad95b805155faf8f

--001a11423d2aad95b805155faf8f
Content-Type: text/plain; charset=UTF-8

This patch allows a PREFERRED_PROVIDER to be specified for a runtime
package. It's working for me on poky 1.6.3 (Daisy). I have tested it with
the sshd example in Yocto Bug #5044 (sshd) and #6149
(libasound-module-bluez).

# In my local.conf
IMAGE_INSTALL_append = " sshd"
PREFERRED_PROVIDER_sshd = "dropbear"

However, when I try it with a core-image-minimal on today's poky master, my
image build fails on in the package manager (with the approximate error
message):

sshd not found in base feeds

This has me thinking that something has changed in the rpm packager since
1.6, and on master the rpm packager should create a rpm dependency on
dropbear instead of sshd (per the PREFERRED_PROVIDER). I think that this
would have implications for the other package classes as well. Does this
sound right?

----

The following changes since commit 7a8f37daa7b42905233c31366915b897886a957a:

  dev-manual: Updates to add Luna support for Eclipse (2015-05-03 11:49:35
+0100)

are available in the git repository at:

  git://github.com/jatedev/poky preferred-provider-runtime

for you to fetch changes up to f721cb634badf8717547254f19d9d88947065998:

  providers.py: Add package name to PREFERRED_PROVIDER search (2015-05-05
18:35:07 -0400)

----------------------------------------------------------------
Jate Sujjavanich (1):
      providers.py: Add package name to PREFERRED_PROVIDER search

 bitbake/lib/bb/providers.py |    1 +
 1 file changed, 1 insertion(+)

diff --git a/bitbake/lib/bb/providers.py b/bitbake/lib/bb/providers.py
index 637e1fa..b6c294e 100644
--- a/bitbake/lib/bb/providers.py
+++ b/bitbake/lib/bb/providers.py
@@ -323,6 +323,7 @@ def filterProvidersRunTime(providers, item, cfgData,
dataCache):
     for p in eligible:
         pn = dataCache.pkg_fn[p]
         provides = dataCache.pn_provides[pn]
+        provides.append(item)
         for provide in provides:
             prefervar = cfgData.getVar('PREFERRED_PROVIDER_%s' % provide,
True)
             #logger.debug(1, "checking PREFERRED_PROVIDER_%s (value %s)
against %s", provide, prefervar, pns.keys())

--001a11423d2aad95b805155faf8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>This patch allows a PREFERRED_PRO=
VIDER to be specified for a runtime package. It&#39;s working for me on pok=
y 1.6.3 (Daisy). I have tested it with the sshd example in Yocto Bug #5044 =
(sshd) and #6149 (libasound-module-bluez).<br><br></div><div># In my local.=
conf<br></div><div>IMAGE_INSTALL_append =3D &quot; sshd&quot;<br></div><div=
>PREFERRED_PROVIDER_sshd =3D &quot;dropbear&quot;<br></div><div><br></div>H=
owever, when I try it with a core-image-minimal on today&#39;s poky master,=
 my image build fails on in the package manager (with the approximate error=
 message):<br><br></div>sshd not found in base feeds<br><br></div>This has =
me thinking that something has changed in the rpm packager since 1.6, and o=
n master the rpm packager should create a rpm dependency on dropbear instea=
d of sshd (per the PREFERRED_PROVIDER). I think that this would have implic=
ations for the other package classes as well. Does this sound right?<br><br=
>----<br><br>The following changes since commit 7a8f37daa7b42905233c3136691=
5b897886a957a:<br><br>=C2=A0 dev-manual: Updates to add Luna support for Ec=
lipse (2015-05-03 11:49:35 +0100)<br><br>are available in the git repositor=
y at:<br><br>=C2=A0 git://<a href=3D"http://github.com/jatedev/poky">github=
.com/jatedev/poky</a> preferred-provider-runtime<br><br>for you to fetch ch=
anges up to f721cb634badf8717547254f19d9d88947065998:<br><br>=C2=A0 provide=
rs.py: Add package name to PREFERRED_PROVIDER search (2015-05-05 18:35:07 -=
0400)<br><br>--------------------------------------------------------------=
--<br>Jate Sujjavanich (1):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 providers.py:=
 Add package name to PREFERRED_PROVIDER search<br><br>=C2=A0bitbake/lib/bb/=
providers.py |=C2=A0=C2=A0=C2=A0 1 +<br>=C2=A01 file changed, 1 insertion(+=
)<br><br>diff --git a/bitbake/lib/bb/providers.py b/bitbake/lib/bb/provider=
s.py<br>index 637e1fa..b6c294e 100644<br>--- a/bitbake/lib/bb/providers.py<=
br>+++ b/bitbake/lib/bb/providers.py<br>@@ -323,6 +323,7 @@ def filterProvi=
dersRunTime(providers, item, cfgData, dataCache):<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 for p in eligible:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
pn =3D dataCache.pkg_fn[p]<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 provides =3D dataCache.pn_provides[pn]<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 provides.append(item)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 for provide in provides:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prefervar =3D cfgData.getVar(&#3=
9;PREFERRED_PROVIDER_%s&#39; % provide, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #logger.debug(1, &quot;che=
cking PREFERRED_PROVIDER_%s (value %s) against %s&quot;, provide, prefervar=
, pns.keys())<br></div></div></div>

--001a11423d2aad95b805155faf8f--
