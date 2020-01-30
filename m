Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2852.1580353735823675563
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 19:08:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E112E01661; Wed, 29 Jan 2020 19:08:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A467E00782
	for <yocto@yoctoproject.org>; Wed, 29 Jan 2020 19:08:54 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 00U38kfT031739
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 29 Jan 2020 21:08:46 -0600
Subject: Re: [yocto] [meta-openssl102-fips][PATCH] openssh: Fix patch to properly apply on 7.9 version found in warrior
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
To: "Davis, Michael" <michael.davis@essvote.com>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20200129184751.67966-1-michael.davis@essvote.com>
 <15EE8AC7B7888B94.12430@lists.yoctoproject.org>
Message-ID: <b4130edc-c6a2-4298-aa33-20b9b0c9730e@kernel.crashing.org>
Date: Wed, 29 Jan 2020 21:08:45 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <15EE8AC7B7888B94.12430@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 1/29/20 8:49 PM, Mark Hatle wrote:
> Should this be applied only to the warrior branch?  I don't typically build
> warrior branch, but I'm happy to accept patches if you can verify it's working
> properly.

I tried to apply this patch, but unfortunately it's corrupt.  Likely by an
exchange server or outlook.

If you can, you can generate a pull request at:

  https://github.com/mhatle/meta-openssl102-fips

I prefer mailing list, but I realize sometime employers infrastructure can make
email more problematic then it otherwise should be..

--Mark

> --Mark
> 
> On 1/29/20 12:47 PM, Davis, Michael wrote:
>> Signed-off-by: Michael Davis <michael.davis@essvote.com>
>> ---
>> .../openssh/0001-openssh-8.0p1-fips.patch | 18 +++++++++++-------
>> 1 file changed, 11 insertions(+), 7 deletions(-)
>>
>> diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
>> b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
>> index 30534c7..5ff4eff 100644
>> --- a/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
>> +++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.0p1-fips.patch
>> @@ -270,10 +270,10 @@ Index: git/readconf.c
>> ===================================================================
>> --- git.orig/readconf.c
>> +++ git/readconf.c
>> -@@ -2077,17 +2077,18 @@ fill_default_options(Options * options)
>> - all_mac = mac_alg_list(',');
>> +@@ -2178,18 +2178,19 @@ fill_default_options(Options * options)
>> all_kex = kex_alg_list(',');
>> all_key = sshkey_alg_list(0, 0, 1, ',');
>> + all_sig = sshkey_alg_list(0, 1, 1, ',');
>> -#define ASSEMBLE(what, defaults, all) \
>> +#define ASSEMBLE(what, defaults, fips_defaults, all) \
>> do { \
>> @@ -288,11 +288,13 @@ Index: git/readconf.c
>> - ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, all_kex);
>> - ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
>> - ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
>> -+ ASSEMBLE(ciphers, KEX_CLIENT_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
>> -+ ASSEMBLE(macs, KEX_CLIENT_MAC, KEX_FIPS_MAC, all_mac);
>> -+ ASSEMBLE(kex_algorithms, KEX_CLIENT_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
>> +- ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
>> ++ ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
>> ++ ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
>> ++ ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
>> + ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
>> + ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
>> ++ ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
>> #undef ASSEMBLE
>> free(all_cipher);
>> free(all_mac);
>> @@ -314,10 +316,10 @@ Index: git/servconf.c
>> ===================================================================
>> --- git.orig/servconf.c
>> +++ git/servconf.c
>> -@@ -198,17 +198,18 @@ assemble_algorithms(ServerOptions *o)
>> - all_mac = mac_alg_list(',');
>> +@@ -209,18 +209,19 @@ assemble_algorithms(ServerOptions *o)
>> all_kex = kex_alg_list(',');
>> all_key = sshkey_alg_list(0, 0, 1, ',');
>> + all_sig = sshkey_alg_list(0, 1, 1, ',');
>> -#define ASSEMBLE(what, defaults, all) \
>> +#define ASSEMBLE(what, defaults, fips_defaults, all) \
>> do { \
>> @@ -332,12 +334,14 @@ Index: git/servconf.c
>> - ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, all_key);
>> - ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, all_key);
>> - ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, all_key);
>> +- ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, all_sig);
>> + ASSEMBLE(ciphers, KEX_SERVER_ENCRYPT, KEX_FIPS_ENCRYPT, all_cipher);
>> + ASSEMBLE(macs, KEX_SERVER_MAC, KEX_FIPS_MAC, all_mac);
>> + ASSEMBLE(kex_algorithms, KEX_SERVER_KEX, KEX_DEFAULT_KEX_FIPS, all_kex);
>> + ASSEMBLE(hostkeyalgorithms, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
>> + ASSEMBLE(hostbased_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
>> + ASSEMBLE(pubkey_key_types, KEX_DEFAULT_PK_ALG, KEX_FIPS_PK_ALG, all_key);
>> ++ ASSEMBLE(ca_sign_algorithms, SSH_ALLOWED_CA_SIGALGS, KEX_FIPS_PK_ALG, all_sig);
>> #undef ASSEMBLE
>> free(all_cipher);
>> free(all_mac);
>> -- 
>> 2.24.1
>>
>>
>> *Disclaimer*
>>
>> The information contained in this communication from the sender is confidential.
>> It is intended solely for use by the recipient and others authorized to receive
>> it. If you are not the recipient, you are hereby notified that any disclosure,
>> copying, distribution or taking action in relation of the contents of this
>> information is strictly prohibited and may be unlawful.
>>
>> This email has been scanned for viruses and malware, and may have been
>> automatically archived by *Mimecast Ltd*, an innovator in Software as a Service
>> (SaaS) for business. Providing a *safer* and *more useful* place for your human
>> generated data. Specializing in; Security, archiving and compliance. To find out
>> more Click Here <http://www.mimecast.com/products/>.
>>
>>
>>
>>
>>
>> 
