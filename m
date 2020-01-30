Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2785.1580353108350139733
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 18:58:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3801E01611; Wed, 29 Jan 2020 18:58:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 527 seconds by postgrey-1.32 at yocto-www; Wed, 29 Jan 2020 18:58:25 PST
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AEBCE007DA
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2020 18:58:25 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 00U2nHTc031599
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 29 Jan 2020 20:49:30 -0600
Subject: Re: [yocto] [meta-openssl102-fips][PATCH] openssh: Fix patch to properly apply on 7.9 version found in warrior
To: "Davis, Michael" <michael.davis@essvote.com>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20200129184751.67966-1-michael.davis@essvote.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <919fc78f-9aed-0ec8-46e6-d18c22e4b777@kernel.crashing.org>
Date: Wed, 29 Jan 2020 20:49:17 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200129184751.67966-1-michael.davis@essvote.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Should this be applied only to the warrior branch?  I don't typically build
warrior branch, but I'm happy to accept patches if you can verify it's working
properly.

--Mark

On 1/29/20 12:47 PM, Davis, Michael wrote:
> Signed-off-by: Michael Davis <michael.davis@essvote.com>
> ---
> .../openssh/0001-openssh-8.0p1-fips.patch | 18 +++++++++++-------
> 1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> index 30534c7..5ff4eff 100644
> --- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> +++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
> @@ -270,10 +270,10 @@ Index: git/readconf.c
> ===================================================================
> --- git.orig/readconf.c
> +++ git/readconf.c
> -@@ -2077,17 +2077,18 @@ fill_default_options(Options * options)
> - all_mac = mac_alg_list(',');
> +@@ -2178,18 +2178,19 @@ fill_default_options(Options * options)
> all_kex = kex_alg_list(',');
> all_key = sshkey_alg_list(0, 0, 1, ',');
> + all_sig = sshkey_alg_list(0, 1, 1, ',');
> -#define ASSEMBLE(what, defaults, all) \
> +#define ASSEMBLE(what, defaults, fips_defaults, all) \
> do { \
> @@ -288,11 +288,13 @@ Index: git/readconf.c
> - ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);
> - ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
> - ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
> -+ ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
> -+ ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);
> -+ ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
> +- ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
> ++ ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
> ++ ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
> ++ ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
> + ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> + ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> ++ ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
> #undef ASSEMBLE
> free(all_cipher);
> free(all_mac);
> @@ -314,10 +316,10 @@ Index: git/servconf.c
> ===================================================================
> --- git.orig/servconf.c
> +++ git/servconf.c
> -@@ -198,17 +198,18 @@ assemble_algorithms(ServerOptions *o)
> - all_mac = mac_alg_list(',');
> +@@ -209,18 +209,19 @@ assemble_algorithms(ServerOptions *o)
> all_kex = kex_alg_list(',');
> all_key = sshkey_alg_list(0, 0, 1, ',');
> + all_sig = sshkey_alg_list(0, 1, 1, ',');
> -#define ASSEMBLE(what, defaults, all) \
> +#define ASSEMBLE(what, defaults, fips_defaults, all) \
> do { \
> @@ -332,12 +334,14 @@ Index: git/servconf.c
> - ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);
> - ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
> - ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
> +- ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
> + ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
> + ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
> + ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
> + ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> + ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> + ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
> ++ ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
> #undef ASSEMBLE
> free(all_cipher);
> free(all_mac);
> -- 
> 2.24.1
> 
> 
> *Disclaimer*
> 
> The information contained in this communication from the sender is confidential.
> It is intended solely for use by the recipient and others authorized to receive
> it. If you are not the recipient, you are hereby notified that any disclosure,
> copying, distribution or taking action in relation of the contents of this
> information is strictly prohibited and may be unlawful.
> 
> This email has been scanned for viruses and malware, and may have been
> automatically archived by *Mimecast Ltd*, an innovator in Software as a Service
> (SaaS) for business. Providing a *safer* and *more useful* place for your human
> generated data. Specializing in; Security, archiving and compliance. To find out
> more Click Here <http://www.mimecast.com/products/>.
> 
> 
> 
> 
