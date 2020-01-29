Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.813.1580324053349631469
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 10:54:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 140.211.169.56, mailfrom: michael.davis@essvote.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7F77E01663; Wed, 29 Jan 2020 10:54:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [216.205.24.164 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www; Wed, 29 Jan 2020 10:54:10 PST
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [216.205.24.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD0CE0165D
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2020 10:54:10 -0800 (PST)
Received: from webmail.essvote.com (40.142.57.162 [40.142.57.162]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-i2nqaP8gPSydWl3UkzMH8Q-1; Wed, 29 Jan 2020 13:48:00 -0500
Received: from ESS-EX02.essvote.corp.local (172.16.130.13) by
 ESS-EX02.essvote.corp.local (172.16.130.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 29 Jan 2020 12:47:59 -0600
Received: from ESS-EX02.essvote.corp.local ([fe80::4d14:423b:3668:f6f5]) by
 ESS-EX02.essvote.corp.local ([fe80::4d14:423b:3668:f6f5%3]) with mapi id
 15.01.1591.017; Wed, 29 Jan 2020 12:47:59 -0600
From: michael.davis@essvote.com
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "Davis, Michael" <michael.davis@essvote.com>
Subject: [meta-openssl102-fips][PATCH] openssh: Fix patch to properly apply on 7.9 version found in warrior
Thread-Topic: [meta-openssl102-fips][PATCH] openssh: Fix patch to properly
 apply on 7.9 version found in warrior
Thread-Index: AQHV1tSgRdaw4OkhTkKaobIOE9ZXkQ==
Date: Wed, 29 Jan 2020 18:47:58 +0000
Message-ID: <20200129184751.67966-1-michael.davis@essvote.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.24.1
x-originating-ip: [192.168.98.55]
MIME-Version: 1.0
X-MC-Unique: i2nqaP8gPSydWl3UkzMH8Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12001291348015941"

--MCBoundary=_12001291348015941
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Michael Davis <michael.davis@essvote.com>
---
 .../openssh/0001-openssh-8.0p1-fips.patch      | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.p=
atch b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
index 30534c7..5ff4eff 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
@@ -270,10 +270,10 @@ Index: git/readconf.c
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 --- git.orig/readconf.c
 +++ git/readconf.c
-@@ -2077,17 +2077,18 @@ fill_default_options(Options * options)
- =09all_mac =3D mac_alg_list(',');
+@@ -2178,18 +2178,19 @@ fill_default_options(Options * options)
  =09all_kex =3D kex_alg_list(',');
  =09all_key =3D sshkey_alg_list(0, 0, 1, ',');
+ =09all_sig =3D sshkey_alg_list(0, 1, 1, ',');
 -#define ASSEMBLE(what, defaults, all) \
 +#define ASSEMBLE(what, defaults, fips_defaults, all) \
  =09do { \
@@ -288,11 +288,13 @@ Index: git/readconf.c
 -=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);
 -=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
 -=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
-+=09ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
-+=09ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);
-+=09ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);
+-=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
++=09ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
++=09ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
++=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);
 +=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all=
_key);
 +=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_ke=
y);
++=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, =
all_sig);
  #undef ASSEMBLE
  =09free(all_cipher);
  =09free(all_mac);
@@ -314,10 +316,10 @@ Index: git/servconf.c
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 --- git.orig/servconf.c
 +++ git/servconf.c
-@@ -198,17 +198,18 @@ assemble_algorithms(ServerOptions *o)
- =09all_mac =3D mac_alg_list(',');
+@@ -209,18 +209,19 @@ assemble_algorithms(ServerOptions *o)
  =09all_kex =3D kex_alg_list(',');
  =09all_key =3D sshkey_alg_list(0, 0, 1, ',');
+ =09all_sig =3D sshkey_alg_list(0, 1, 1, ',');
 -#define ASSEMBLE(what, defaults, all) \
 +#define ASSEMBLE(what, defaults, fips_defaults, all) \
  =09do { \
@@ -332,12 +334,14 @@ Index: git/servconf.c
 -=09ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);
 -=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
 -=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
+-=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
 +=09ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
 +=09ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
 +=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);
 +=09ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_k=
ey);
 +=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all=
_key);
 +=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_ke=
y);
++=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, =
all_sig);
  #undef ASSEMBLE
  =09free(all_cipher);
  =09free(all_mac);
--=20
2.24.1

Disclaimer

The information contained in this communication from the sender is confiden=
tial. It is intended solely for use by the recipient and others authorized =
to receive it. If you are not the recipient, you are hereby notified that a=
ny disclosure, copying, distribution or taking action in relation of the co=
ntents of this information is strictly prohibited and may be unlawful.

This email has been scanned for viruses and malware, and may have been auto=
matically archived by Mimecast Ltd, an innovator in Software as a Service (=
SaaS) for business. Providing a safer and more useful place for your human =
generated data. Specializing in; Security, archiving and compliance. To fin=
d out more visit the Mimecast website.

--MCBoundary=_12001291348015941
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>Signed-off-by: Michael Davis &lt;michael.davis@essv=
ote.com&gt;<BR>
---<BR>
 .../openssh/0001-openssh-8.0p1-fips.patch      | 18 +++++++++++-------<BR>
 1 file changed, 11 insertions(+), 7 deletions(-)<BR>
<BR>
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.p=
atch b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch<B=
R>
index 30534c7..5ff4eff 100644<BR>
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch<BR=
>
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch<BR=
>
@@ -270,10 +270,10 @@ Index: git/readconf.c<BR>
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<BR>
 --- git.orig/readconf.c<BR>
 +++ git/readconf.c<BR>
-@@ -2077,17 +2077,18 @@ fill_default_options(Options * options)<BR>
- =09all_mac =3D mac_alg_list(',');<BR>
+@@ -2178,18 +2178,19 @@ fill_default_options(Options * options)<BR>
  =09all_kex =3D kex_alg_list(',');<BR>
  =09all_key =3D sshkey_alg_list(0, 0, 1, ',');<BR>
+ =09all_sig =3D sshkey_alg_list(0, 1, 1, ',');<BR>
 -#define ASSEMBLE(what, defaults, all) \<BR>
 +#define ASSEMBLE(what, defaults, fips_defaults, all) \<BR>
  =09do { \<BR>
@@ -288,11 +288,13 @@ Index: git/readconf.c<BR>
 -=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);<BR>
 -=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);<BR>
 -=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);<BR>
-+=09ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);<B=
R>
-+=09ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);<BR>
-+=09ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);<BR>
+-=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);<BR>
++=09ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);<B=
R>
++=09ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);<BR>
++=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);<BR>
 +=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all=
_key);<BR>
 +=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_ke=
y);<BR>
++=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, =
all_sig);<BR>
  #undef ASSEMBLE<BR>
  =09free(all_cipher);<BR>
  =09free(all_mac);<BR>
@@ -314,10 +316,10 @@ Index: git/servconf.c<BR>
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<BR>
 --- git.orig/servconf.c<BR>
 +++ git/servconf.c<BR>
-@@ -198,17 +198,18 @@ assemble_algorithms(ServerOptions *o)<BR>
- =09all_mac =3D mac_alg_list(',');<BR>
+@@ -209,18 +209,19 @@ assemble_algorithms(ServerOptions *o)<BR>
  =09all_kex =3D kex_alg_list(',');<BR>
  =09all_key =3D sshkey_alg_list(0, 0, 1, ',');<BR>
+ =09all_sig =3D sshkey_alg_list(0, 1, 1, ',');<BR>
 -#define ASSEMBLE(what, defaults, all) \<BR>
 +#define ASSEMBLE(what, defaults, fips_defaults, all) \<BR>
  =09do { \<BR>
@@ -332,12 +334,14 @@ Index: git/servconf.c<BR>
 -=09ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);<BR>
 -=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);<BR>
 -=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);<BR>
+-=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);<BR>
 +=09ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);<B=
R>
 +=09ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);<BR>
 +=09ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex=
);<BR>
 +=09ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_k=
ey);<BR>
 +=09ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all=
_key);<BR>
 +=09ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_ke=
y);<BR>
++=09ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, =
all_sig);<BR>
  #undef ASSEMBLE<BR>
  =09free(all_cipher);<BR>
  =09free(all_mac);<BR>
-- <BR>
2.24.1<BR>

<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
b>Disclaimer</b></p><p style=3D"font-family: Verdana; font-size:8pt; color:=
#666666;">The information contained in this communication from the sender i=
s confidential. It is intended solely for use by the recipient and others a=
uthorized to receive it. If you are not the recipient, you are hereby notif=
ied that any disclosure, copying, distribution or taking action in relation=
 of the contents of this information is strictly prohibited and may be unla=
wful.<br><br>This email has been scanned for viruses and malware, and may h=
ave been automatically archived by <b>Mimecast Ltd</b>, an innovator in Sof=
tware as a Service (SaaS) for business.  Providing a <b>safer</b> and <b>mo=
re useful</b> place for your human generated data.  Specializing in; Securi=
ty, archiving and compliance. To find out more <a href=3D"http://www.mimeca=
st.com/products/" target=3D"_blank">Click Here</a>.</p></body></html>

--MCBoundary=_12001291348015941--
