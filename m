Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.39500.1600007041204071472
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Sep 2020 07:24:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tz6un4Up;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8997838C114A
	for <yocto@yoctoproject.org>; Sun, 13 Sep 2020 07:24:00 -0700 (PDT)
Received: by mail-pl1-f179.google.com with SMTP id t6so1940543plz.2
        for <yocto@yoctoproject.org>; Sun, 13 Sep 2020 07:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=zFa5dYCe6+0leKRw2QpRW5W4SwcLzFv6/iSpUkTY6XM=;
        b=tz6un4UpukhINDssx1UawQx6q/7GIVOw7rZ+3zzKrEmhWPcRClmgVrso8wkfCWpdjS
         wTgdH5SFkp8JeGbPKLjKeBZHyFeSzRfhojYrKzyyP7xSsM6T6pQMtmnT2g02qIfHFFrF
         AZ6R/CsHDU7TaIJIedAKxh2fM7YsDCbUHYrBbCqf6vE12lB6SC9KkQwQJjYkbQvNtqJY
         P/cdhwR0iEBS5cjHKQpgP8YLGtFke/7TcLNUFzep8O/9EaOqfXvUtu6CM2FyAcOZNTNk
         s5XE+ZKvt7fS8awsFxAD4F0r585C3PzXE7T4U/pcX1S44m90i3lKZNXswdsgm3RyW56b
         IGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=zFa5dYCe6+0leKRw2QpRW5W4SwcLzFv6/iSpUkTY6XM=;
        b=BfyoOeJQTO2PXq53vuRUfeZdTie3P023Hig0Mz7Hlt94gULgBhtF70vWOmNDfL33q6
         dFYImZZG4G6L38CcoIgbmxi06zvOt1M/mz3BbigZgsQq7uKckpv+Vt2zp7/qaia73jAV
         EvR+HYHIAZjF6M3Do/rtEos+wJwPaKKVUXeazbCA2tfkiHmbcZco5ooadD90JELrfOXw
         ooL9EbyCctmGrVPYJBq7ONp9eeBbfE9YbvqB6UxICsqgUDJT5/xUMsYN6tHZiysXyq33
         9SIcWXfyW9A0vIlJ02pJgZvX2vO95obSrC7wE831fzACK+ph1lTTBBhO3jJ4odBbns8a
         KgfA==
X-Gm-Message-State: AOAM533DPQR+xyJbw3+SpmSjHWxgb3dZUJIR8f1RhHVZEHd+C5+WQQIM
	xH8HEQbTxZ9nf6RPtLa0PCY=
X-Google-Smtp-Source: ABdhPJwRPjtdwHC5jnt0cPovkAY5Pa9ryeCpW8odH28iN7+fS42oeAOO27GZCUHWbzisM7FkuowPMQ==
X-Received: by 2002:a17:902:6bc3:: with SMTP id m3mr10044350plt.137.1600007039872;
        Sun, 13 Sep 2020 07:23:59 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id g7sm7669092pfr.150.2020.09.13.07.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 07:23:59 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] ibmtpm2tss: add recipe
To: Jens Rehsack <rehsack@gmail.com>, yocto@yoctoproject.org
Cc: Jens Rehsack <sno@netbsd.org>
References: <20200911073732.16460-1-sno@NetBSD.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <8b9028a7-4ebe-7a9f-f691-a65888f6e726@gmail.com>
Date: Sun, 13 Sep 2020 07:23:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911073732.16460-1-sno@NetBSD.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

thanks

On 9/11/20 12:37 AM, Jens Rehsack wrote:
> From: Jens Rehsack <sno@netbsd.org>
>
> Add recipe for companion of IBM Software TPM 2.0 - IBM's TPM 2.0 TSS.
> It's a user space TSS for TPM 2.0.
>
> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
>  ...efile.am-expand-wildcards-in-prereqs.patch | 125 ++++++++++++++++++
>  .../ibmtpm2tss/ibmtpm2tss_1.5.0.bb            |  27 ++++
>  2 files changed, 152 insertions(+)
>  create mode 100644 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
>  create mode 100644 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
>
> diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
> new file mode 100644
> index 0000000..8b13fb6
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
> @@ -0,0 +1,125 @@
> +From 26091b7830d84a12308442b238652ee9475d407b Mon Sep 17 00:00:00 2001
> +From: Jens Rehsack <sno@netbsd.org>
> +Date: Fri, 11 Sep 2020 07:46:41 +0200
> +Subject: [PATCH] utils{,12}/Makefile.am: expand wildcards in prereqs
> +
> +Expand wildcards of required sources to avoid errors like:
> +make[2]: *** No rule to make target 'man/man1/*.1', needed by 'all-am'.  Stop.
> +make[2]: *** Waiting for unfinished jobs....
> +
> +Upstream-Status: Submitted
> +
> +Signed-off-by: Jens Rehsack <sno@netbsd.org>
> +---
> + utils/Makefile.am   | 75 +++++++++++++++++++++++++++++++++++++++++++--
> + utils12/Makefile.am |  8 ++++-
> + 2 files changed, 79 insertions(+), 4 deletions(-)
> +
> +diff --git a/utils/Makefile.am b/utils/Makefile.am
> +index 1e51fe3..170a26e 100644
> +--- a/utils/Makefile.am
> ++++ b/utils/Makefile.am
> +@@ -81,9 +81,78 @@ libibmtssutils_la_LIBADD = libibmtss.la $(LIBCRYPTO_LIBS)
> + 
> + noinst_HEADERS = CommandAttributes.h imalib.h tssdev.h ntc2lib.h tssntc.h Commands_fp.h objecttemplates.h tssproperties.h cryptoutils.h Platform.h tssauth.h tsssocket.h ekutils.h eventlib.h tssccattributes.h
> + # install every header in ibmtss
> +-nobase_include_HEADERS = ibmtss/*.h
> +-
> +-notrans_man_MANS = man/man1/*.1
> ++nobase_include_HEADERS = ibmtss/ActivateCredential_fp.h ibmtss/ActivateIdentity_fp.h ibmtss/BaseTypes.h \
> ++	ibmtss/CertifyCreation_fp.h ibmtss/Certify_fp.h ibmtss/CertifyX509_fp.h ibmtss/ChangeEPS_fp.h \
> ++	ibmtss/ChangePPS_fp.h ibmtss/ClearControl_fp.h ibmtss/Clear_fp.h ibmtss/ClockRateAdjust_fp.h \
> ++	ibmtss/ClockSet_fp.h ibmtss/Commit_fp.h ibmtss/ContextLoad_fp.h ibmtss/ContextSave_fp.h \
> ++	ibmtss/CreateEndorsementKeyPair_fp.h ibmtss/Create_fp.h ibmtss/CreateLoaded_fp.h \
> ++	ibmtss/CreatePrimary_fp.h ibmtss/CreateWrapKey_fp.h ibmtss/DictionaryAttackLockReset_fp.h \
> ++	ibmtss/DictionaryAttackParameters_fp.h ibmtss/Duplicate_fp.h ibmtss/ECC_Parameters_fp.h \
> ++	ibmtss/ECDH_KeyGen_fp.h ibmtss/ECDH_ZGen_fp.h ibmtss/EC_Ephemeral_fp.h ibmtss/EncryptDecrypt2_fp.h \
> ++	ibmtss/EncryptDecrypt_fp.h ibmtss/EventSequenceComplete_fp.h ibmtss/EvictControl_fp.h ibmtss/Extend_fp.h \
> ++	ibmtss/FlushContext_fp.h ibmtss/FlushSpecific_fp.h ibmtss/GetCapability12_fp.h ibmtss/GetCapability_fp.h \
> ++	ibmtss/GetCommandAuditDigest_fp.h ibmtss/GetRandom_fp.h ibmtss/GetSessionAuditDigest_fp.h \
> ++	ibmtss/GetTestResult_fp.h ibmtss/GetTime_fp.h ibmtss/Hash_fp.h ibmtss/HashSequenceStart_fp.h \
> ++	ibmtss/HierarchyChangeAuth_fp.h ibmtss/HierarchyControl_fp.h ibmtss/HMAC_fp.h ibmtss/HMAC_Start_fp.h \
> ++	ibmtss/Implementation.h ibmtss/Import_fp.h ibmtss/IncrementalSelfTest_fp.h ibmtss/LoadExternal_fp.h \
> ++	ibmtss/Load_fp.h ibmtss/LoadKey2_fp.h ibmtss/MakeCredential_fp.h ibmtss/MakeIdentity_fp.h ibmtss/NTC_fp.h \
> ++	ibmtss/NV_Certify_fp.h ibmtss/NV_ChangeAuth_fp.h ibmtss/NV_DefineSpace12_fp.h ibmtss/NV_DefineSpace_fp.h \
> ++	ibmtss/NV_Extend_fp.h ibmtss/NV_GlobalWriteLock_fp.h ibmtss/NV_Increment_fp.h ibmtss/NV_Read_fp.h \
> ++	ibmtss/NV_ReadLock_fp.h ibmtss/NV_ReadPublic_fp.h ibmtss/NV_ReadValueAuth_fp.h ibmtss/NV_ReadValue_fp.h \
> ++	ibmtss/NV_SetBits_fp.h ibmtss/NV_UndefineSpace_fp.h ibmtss/NV_UndefineSpaceSpecial_fp.h ibmtss/NV_Write_fp.h \
> ++	ibmtss/NV_WriteLock_fp.h ibmtss/NV_WriteValueAuth_fp.h ibmtss/NV_WriteValue_fp.h ibmtss/ObjectChangeAuth_fp.h \
> ++	ibmtss/OIAP_fp.h ibmtss/OSAP_fp.h ibmtss/OwnerReadInternalPub_fp.h ibmtss/OwnerSetDisable_fp.h \
> ++	ibmtss/Parameters12.h ibmtss/Parameters.h ibmtss/PCR_Allocate_fp.h ibmtss/PCR_Event_fp.h ibmtss/PCR_Extend_fp.h \
> ++	ibmtss/PcrRead12_fp.h ibmtss/PCR_Read_fp.h ibmtss/PCR_Reset12_fp.h ibmtss/PCR_Reset_fp.h ibmtss/PCR_SetAuthPolicy_fp.h \
> ++	ibmtss/PCR_SetAuthValue_fp.h ibmtss/PolicyAuthorize_fp.h ibmtss/PolicyAuthorizeNV_fp.h ibmtss/PolicyAuthValue_fp.h \
> ++	ibmtss/PolicyCommandCode_fp.h ibmtss/PolicyCounterTimer_fp.h ibmtss/PolicyCpHash_fp.h ibmtss/PolicyDuplicationSelect_fp.h \
> ++	ibmtss/PolicyGetDigest_fp.h ibmtss/PolicyLocality_fp.h ibmtss/PolicyNameHash_fp.h ibmtss/PolicyNV_fp.h \
> ++	ibmtss/PolicyNvWritten_fp.h ibmtss/PolicyOR_fp.h ibmtss/PolicyPassword_fp.h ibmtss/PolicyPCR_fp.h \
> ++	ibmtss/PolicyPhysicalPresence_fp.h ibmtss/PolicyRestart_fp.h ibmtss/PolicySecret_fp.h ibmtss/PolicySigned_fp.h \
> ++	ibmtss/PolicyTemplate_fp.h ibmtss/PolicyTicket_fp.h ibmtss/PP_Commands_fp.h ibmtss/Quote2_fp.h ibmtss/Quote_fp.h \
> ++	ibmtss/ReadClock_fp.h ibmtss/ReadPubek_fp.h ibmtss/ReadPublic_fp.h ibmtss/Rewrap_fp.h ibmtss/RSA_Decrypt_fp.h \
> ++	ibmtss/RSA_Encrypt_fp.h ibmtss/SelfTest_fp.h ibmtss/SequenceComplete_fp.h ibmtss/SequenceUpdate_fp.h \
> ++	ibmtss/SetAlgorithmSet_fp.h ibmtss/SetCommandCodeAuditStatus_fp.h ibmtss/SetPrimaryPolicy_fp.h ibmtss/Shutdown_fp.h \
> ++	ibmtss/Sign12_fp.h ibmtss/Sign_fp.h ibmtss/StartAuthSession_fp.h ibmtss/Startup12_fp.h ibmtss/Startup_fp.h \
> ++	ibmtss/StirRandom_fp.h ibmtss/TakeOwnership_fp.h ibmtss/TestParms_fp.h ibmtss/TPMB.h ibmtss/TpmBuildSwitches.h \
> ++	ibmtss/tpmconstants12.h ibmtss/tpmstructures12.h ibmtss/tpmtypes12.h ibmtss/TPM_Types.h ibmtss/tsscrypto.h \
> ++	ibmtss/tsscryptoh.h ibmtss/tsserror12.h ibmtss/tsserror.h ibmtss/tssfile.h ibmtss/tss.h ibmtss/tssmarshal12.h \
> ++	ibmtss/tssmarshal.h ibmtss/tssprintcmd.h ibmtss/tssprint.h ibmtss/tssresponsecode.h ibmtss/tsstransmit.h \
> ++	ibmtss/tssutils.h ibmtss/Unmarshal12_fp.h ibmtss/Unmarshal_fp.h ibmtss/Unseal_fp.h ibmtss/VerifySignature_fp.h \
> ++	ibmtss/ZGen_2Phase_fp.h
> ++
> ++notrans_man_MANS = man/man1/tssactivatecredential.1 man/man1/tsscertify.1 man/man1/tsscertifycreation.1 \
> ++	man/man1/tsscertifyx509.1 man/man1/tsschangeeps.1 man/man1/tsschangepps.1 man/man1/tssclear.1 \
> ++	man/man1/tssclearcontrol.1 man/man1/tssclockrateadjust.1 man/man1/tssclockset.1 man/man1/tsscommit.1 \
> ++	man/man1/tsscontextload.1 man/man1/tsscontextsave.1 man/man1/tsscreate.1 man/man1/tsscreateek.1 \
> ++	man/man1/tsscreateekcert.1 man/man1/tsscreateloaded.1 man/man1/tsscreateprimary.1 \
> ++	man/man1/tssdictionaryattacklockreset.1 man/man1/tssdictionaryattackparameters.1 man/man1/tssduplicate.1 \
> ++	man/man1/tsseccparameters.1 man/man1/tssecephemeral.1 man/man1/tssencryptdecrypt.1 man/man1/tsseventextend.1 \
> ++	man/man1/tsseventsequencecomplete.1 man/man1/tssevictcontrol.1 man/man1/tssflushcontext.1 man/man1/tssgetcapability.1 \
> ++	man/man1/tssgetcommandauditdigest.1 man/man1/tssgetcryptolibrary.1 man/man1/tssgetrandom.1 \
> ++	man/man1/tssgetsessionauditdigest.1 man/man1/tssgettestresult.1 man/man1/tssgettime.1 man/man1/tsshash.1 \
> ++	man/man1/tsshashsequencestart.1 man/man1/tsshierarchychangeauth.1 man/man1/tsshierarchycontrol.1 \
> ++	man/man1/tsshmac.1 man/man1/tsshmacstart.1 man/man1/tssimaextend.1 man/man1/tssimport.1 man/man1/tssimportpem.1 \
> ++	man/man1/tssload.1 man/man1/tssloadexternal.1 man/man1/tssmakecredential.1 man/man1/tssntc2getconfig.1 \
> ++	man/man1/tssntc2lockconfig.1 man/man1/tssntc2preconfig.1 man/man1/tssnvcertify.1 man/man1/tssnvchangeauth.1 \
> ++	man/man1/tssnvdefinespace.1 man/man1/tssnvextend.1 man/man1/tssnvglobalwritelock.1 man/man1/tssnvincrement.1 \
> ++	man/man1/tssnvread.1 man/man1/tssnvreadlock.1 man/man1/tssnvreadpublic.1 man/man1/tssnvsetbits.1 \
> ++	man/man1/tssnvundefinespace.1 man/man1/tssnvundefinespacespecial.1 man/man1/tssnvwrite.1 man/man1/tssnvwritelock.1 \
> ++	man/man1/tssobjectchangeauth.1 man/man1/tsspcrallocate.1 man/man1/tsspcrevent.1 man/man1/tsspcrextend.1 \
> ++	man/man1/tsspcrread.1 man/man1/tsspcrreset.1 man/man1/tsspolicyauthorize.1 man/man1/tsspolicyauthorizenv.1 \
> ++	man/man1/tsspolicyauthvalue.1 man/man1/tsspolicycommandcode.1 man/man1/tsspolicycountertimer.1 \
> ++	man/man1/tsspolicycphash.1 man/man1/tsspolicyduplicationselect.1 man/man1/tsspolicygetdigest.1 \
> ++	man/man1/tsspolicymaker.1 man/man1/tsspolicymakerpcr.1 man/man1/tsspolicynamehash.1 man/man1/tsspolicynv.1 \
> ++	man/man1/tsspolicynvwritten.1 man/man1/tsspolicyor.1 man/man1/tsspolicypassword.1 man/man1/tsspolicypcr.1 \
> ++	man/man1/tsspolicyrestart.1 man/man1/tsspolicysecret.1 man/man1/tsspolicysigned.1 man/man1/tsspolicytemplate.1 \
> ++	man/man1/tsspolicyticket.1 man/man1/tsspowerup.1 man/man1/tssprintattr.1 man/man1/tsspublicname.1 \
> ++	man/man1/tssquote.1 man/man1/tssreadclock.1 man/man1/tssreadpublic.1 man/man1/tssreturncode.1 \
> ++	man/man1/tssrewrap.1 man/man1/tssrsadecrypt.1 man/man1/tssrsaencrypt.1 man/man1/tsssequencecomplete.1 \
> ++	man/man1/tsssequenceupdate.1 man/man1/tsssetcommandcodeauditstatus.1 man/man1/tsssetprimarypolicy.1 \
> ++	man/man1/tssshutdown.1 man/man1/tsssign.1 man/man1/tsssignapp.1 man/man1/tssstartauthsession.1 \
> ++	man/man1/tssstartup.1 man/man1/tssstirrandom.1 man/man1/tsstimepacket.1 man/man1/tsstpm2pem.1 \
> ++	man/man1/tsstpmcmd.1 man/man1/tsstpmpublic2eccpoint.1 man/man1/tssunseal.1 man/man1/tssverifysignature.1 \
> ++	man/man1/tsswriteapp.1 man/man1/tsszgen2phase.1
> + 
> + if CONFIG_TPM20
> + noinst_HEADERS += tss20.h tssauth20.h ibmtss/tssprintcmd.h
> +diff --git a/utils12/Makefile.am b/utils12/Makefile.am
> +index a01f47c..e9fe61e 100644
> +--- a/utils12/Makefile.am
> ++++ b/utils12/Makefile.am
> +@@ -9,7 +9,13 @@ libibmtssutils12_la_CFLAGS = -I$(top_srcdir)/utils
> + # result: [current-age].age.revision
> + libibmtssutils12_la_LDFLAGS = -version-info @TSSLIB_VERSION_INFO@ ../utils/libibmtss.la
> + 
> +-notrans_man_MANS = man/man1/*.1
> ++notrans_man_MANS = man/man1/tss1activateidentity.1 man/man1/tss1createekcert.1 man/man1/tss1createendorsementkeypair.1 \
> ++	man/man1/tss1createwrapkey.1 man/man1/tss1eventextend.1 man/man1/tss1extend.1 man/man1/tss1flushspecific.1 \
> ++	man/man1/tss1getcapability.1 man/man1/tss1imaextend.1 man/man1/tss1loadkey2.1 man/man1/tss1makeekblob.1 \
> ++	man/man1/tss1makeidentity.1 man/man1/tss1nvdefinespace.1 man/man1/tss1nvreadvalue.1 man/man1/tss1nvreadvalueauth.1 \
> ++	man/man1/tss1nvwritevalue.1 man/man1/tss1nvwritevalueauth.1 man/man1/tss1oiap.1 man/man1/tss1osap.1 \
> ++	man/man1/tss1ownerreadinternalpub.1 man/man1/tss1ownersetdisable.1 man/man1/tss1pcrread.1 man/man1/tss1quote2.1 \
> ++	man/man1/tss1sign.1 man/man1/tss1startup.1 man/man1/tss1takeownership.1 man/man1/tss1tpminit.1
> + noinst_HEADERS = ekutils12.h
> + 
> + bin_PROGRAMS = activateidentity createendorsementkeypair createwrapkey extend flushspecific getcapability loadkey2 makeidentity nvdefinespace nvreadvalueauth nvreadvalue nvwritevalueauth nvwritevalue oiap osap ownerreadinternalpub ownersetdisable pcrread quote2 sign startup takeownership tpminit createekcert makeekblob eventextend imaextend
> +-- 
> +2.17.1
> +
> diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
> new file mode 100644
> index 0000000..18ad7eb
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
> @@ -0,0 +1,27 @@
> +SUMMARY = "IBM's Software TPM 2.0 TSS"
> +DESCRIPTION = "This is a user space TSS for TPM 2.0. It implements the \
> +functionality equivalent to (but not API compatible with) the TCG TSS \
> +working group's ESAPI, SAPI, and TCTI API's (and perhaps more) but with a \
> +hopefully simpler interface. \
> +It comes with over 110 'TPM tools' samples that can be used for scripted \
> +apps, rapid prototyping, education, and debugging. \
> +It also comes with a web based TPM interface, suitable for a demo to an \
> +audience that is unfamiliar with TCG technology. It is also useful for \
> +basic TPM management."
> +HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmtss2.html"
> +LICENSE = "BSD"
> +SECTION = "securty/tpm"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> +
> +DEPENDS = "openssl ibmswtpm2"
> +
> +inherit autotools pkgconfig
> +
> +SRCREV = "aa6c6ec83793ba21782033c03439977c26d3cc87"
> +SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
> +           file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
> +           "
> +
> +EXTRA_OECONF = "--disable-tpm-1.2"
> +
> +S = "${WORKDIR}/git"
>
> 

