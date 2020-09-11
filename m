Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3188.1599809864981312549
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 00:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fYSMBwhh;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: rehsack@gmail.com)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C4BA838C08CF
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2020 00:37:44 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id t16so8971474edw.7
        for <yocto@yoctoproject.org>; Fri, 11 Sep 2020 00:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=Q9YzJZqihxkVbRlOYAV2y6Jlw62hugEh9SLKr+ZOB8Q=;
        b=fYSMBwhh16SJkKfn0sIqmwZBuXrhnhh/35saVPlpW2VSixBL/wlbTNhNmPpmwFGWlE
         zGjEScRL/1avVY3gzy1nHbVc3yHDaC2b0D7aZOnjMyEUdgqsYCzBvXknJLOyy1SYOZIg
         EQNoL+OuTKb/lJLvoNnHlKHsK9PpW2YrN8VuhOlpBTGPiNTF47977Qv5qXzpl+bh001t
         BKjyDfQ/3CGsZK3zF1Hh/M26BvKnR6hQcKsANUKa28+OlnTZUGoL5DaCgdvZxop8mgZ2
         SRcpvSnxwv4WiIQgrhUQ3mq0bR9/+mW5v0ica5VPcPYsVdChHWQKf5zW6Q6kPaLjP8KJ
         tUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=Q9YzJZqihxkVbRlOYAV2y6Jlw62hugEh9SLKr+ZOB8Q=;
        b=RO8Ga6qXXJ8Bg7sDFt2nPtq+9h01zZNpsxJhbDgS8PzLgE6KwJWIMl9ELYArs5MPCo
         o9tkjmejP4oQ53QmtBstDveR6lPItU/y59zN7y0L20LktZwXrZsqOV3glRaAJmqueEKd
         niDN6NcGVrtZpfT7s46cGpm47K2WYbcoEHWNmG9h84Vjv1qmriTRLV5tYU0tPD3NXg87
         V9Iqwvx2icXeXpVV6nKALexM7huI4WtKYf303WtsFuTH0Jww5SHOU+0w71ElAjGZDuOC
         Ru7vwMXwfX27fb5wjofkvnp96nFwk3sAJQZAK5p4OuMx1WJbZU5F1xL13cvtahbGJCvB
         pwIQ==
X-Gm-Message-State: AOAM530+Dc3EVH5XKpEIlJ50zxvy9GTsBNnupF2EAowO4ZhrXQVIXbOb
	/TjPVmXD/6y3hy72lVLQwXkx3B4dJUo=
X-Google-Smtp-Source: ABdhPJzcLE9Lo+2pvMSfJ/AGiNkfQxW2WZx18aLr6vQWqtfJgO6GLYW6nNYXEULlFubUXHHOlt/GvQ==
X-Received: by 2002:a05:6402:503:: with SMTP id m3mr699509edv.45.1599809863019;
        Fri, 11 Sep 2020 00:37:43 -0700 (PDT)
Received: from beaker.muppets.liwing.de (p5b25b0d4.dip0.t-ipconnect.de. [91.37.176.212])
        by smtp.gmail.com with ESMTPSA id v4sm974775eje.39.2020.09.11.00.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 00:37:42 -0700 (PDT)
Sender: Jens Rehsack <rehsack@gmail.com>
From: "Jens Rehsack" <rehsack@gmail.com>
To: yocto@yoctoproject.org
Cc: Jens Rehsack <sno@netbsd.org>
Subject: [meta-security][PATCH] ibmtpm2tss: add recipe
Date: Fri, 11 Sep 2020 09:37:32 +0200
Message-Id: <20200911073732.16460-1-sno@NetBSD.org>
X-Mailer: git-send-email 2.17.1

From: Jens Rehsack <sno@netbsd.org>

Add recipe for companion of IBM Software TPM 2.0 - IBM's TPM 2.0 TSS.
It's a user space TSS for TPM 2.0.

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 ...efile.am-expand-wildcards-in-prereqs.patch | 125 ++++++++++++++++++
 .../ibmtpm2tss/ibmtpm2tss_1.5.0.bb            |  27 ++++
 2 files changed, 152 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
 create mode 100644 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
new file mode 100644
index 0000000..8b13fb6
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
@@ -0,0 +1,125 @@
+From 26091b7830d84a12308442b238652ee9475d407b Mon Sep 17 00:00:00 2001
+From: Jens Rehsack <sno@netbsd.org>
+Date: Fri, 11 Sep 2020 07:46:41 +0200
+Subject: [PATCH] utils{,12}/Makefile.am: expand wildcards in prereqs
+
+Expand wildcards of required sources to avoid errors like:
+make[2]: *** No rule to make target 'man/man1/*.1', needed by 'all-am'.  Stop.
+make[2]: *** Waiting for unfinished jobs....
+
+Upstream-Status: Submitted
+
+Signed-off-by: Jens Rehsack <sno@netbsd.org>
+---
+ utils/Makefile.am   | 75 +++++++++++++++++++++++++++++++++++++++++++--
+ utils12/Makefile.am |  8 ++++-
+ 2 files changed, 79 insertions(+), 4 deletions(-)
+
+diff --git a/utils/Makefile.am b/utils/Makefile.am
+index 1e51fe3..170a26e 100644
+--- a/utils/Makefile.am
++++ b/utils/Makefile.am
+@@ -81,9 +81,78 @@ libibmtssutils_la_LIBADD = libibmtss.la $(LIBCRYPTO_LIBS)
+ 
+ noinst_HEADERS = CommandAttributes.h imalib.h tssdev.h ntc2lib.h tssntc.h Commands_fp.h objecttemplates.h tssproperties.h cryptoutils.h Platform.h tssauth.h tsssocket.h ekutils.h eventlib.h tssccattributes.h
+ # install every header in ibmtss
+-nobase_include_HEADERS = ibmtss/*.h
+-
+-notrans_man_MANS = man/man1/*.1
++nobase_include_HEADERS = ibmtss/ActivateCredential_fp.h ibmtss/ActivateIdentity_fp.h ibmtss/BaseTypes.h \
++	ibmtss/CertifyCreation_fp.h ibmtss/Certify_fp.h ibmtss/CertifyX509_fp.h ibmtss/ChangeEPS_fp.h \
++	ibmtss/ChangePPS_fp.h ibmtss/ClearControl_fp.h ibmtss/Clear_fp.h ibmtss/ClockRateAdjust_fp.h \
++	ibmtss/ClockSet_fp.h ibmtss/Commit_fp.h ibmtss/ContextLoad_fp.h ibmtss/ContextSave_fp.h \
++	ibmtss/CreateEndorsementKeyPair_fp.h ibmtss/Create_fp.h ibmtss/CreateLoaded_fp.h \
++	ibmtss/CreatePrimary_fp.h ibmtss/CreateWrapKey_fp.h ibmtss/DictionaryAttackLockReset_fp.h \
++	ibmtss/DictionaryAttackParameters_fp.h ibmtss/Duplicate_fp.h ibmtss/ECC_Parameters_fp.h \
++	ibmtss/ECDH_KeyGen_fp.h ibmtss/ECDH_ZGen_fp.h ibmtss/EC_Ephemeral_fp.h ibmtss/EncryptDecrypt2_fp.h \
++	ibmtss/EncryptDecrypt_fp.h ibmtss/EventSequenceComplete_fp.h ibmtss/EvictControl_fp.h ibmtss/Extend_fp.h \
++	ibmtss/FlushContext_fp.h ibmtss/FlushSpecific_fp.h ibmtss/GetCapability12_fp.h ibmtss/GetCapability_fp.h \
++	ibmtss/GetCommandAuditDigest_fp.h ibmtss/GetRandom_fp.h ibmtss/GetSessionAuditDigest_fp.h \
++	ibmtss/GetTestResult_fp.h ibmtss/GetTime_fp.h ibmtss/Hash_fp.h ibmtss/HashSequenceStart_fp.h \
++	ibmtss/HierarchyChangeAuth_fp.h ibmtss/HierarchyControl_fp.h ibmtss/HMAC_fp.h ibmtss/HMAC_Start_fp.h \
++	ibmtss/Implementation.h ibmtss/Import_fp.h ibmtss/IncrementalSelfTest_fp.h ibmtss/LoadExternal_fp.h \
++	ibmtss/Load_fp.h ibmtss/LoadKey2_fp.h ibmtss/MakeCredential_fp.h ibmtss/MakeIdentity_fp.h ibmtss/NTC_fp.h \
++	ibmtss/NV_Certify_fp.h ibmtss/NV_ChangeAuth_fp.h ibmtss/NV_DefineSpace12_fp.h ibmtss/NV_DefineSpace_fp.h \
++	ibmtss/NV_Extend_fp.h ibmtss/NV_GlobalWriteLock_fp.h ibmtss/NV_Increment_fp.h ibmtss/NV_Read_fp.h \
++	ibmtss/NV_ReadLock_fp.h ibmtss/NV_ReadPublic_fp.h ibmtss/NV_ReadValueAuth_fp.h ibmtss/NV_ReadValue_fp.h \
++	ibmtss/NV_SetBits_fp.h ibmtss/NV_UndefineSpace_fp.h ibmtss/NV_UndefineSpaceSpecial_fp.h ibmtss/NV_Write_fp.h \
++	ibmtss/NV_WriteLock_fp.h ibmtss/NV_WriteValueAuth_fp.h ibmtss/NV_WriteValue_fp.h ibmtss/ObjectChangeAuth_fp.h \
++	ibmtss/OIAP_fp.h ibmtss/OSAP_fp.h ibmtss/OwnerReadInternalPub_fp.h ibmtss/OwnerSetDisable_fp.h \
++	ibmtss/Parameters12.h ibmtss/Parameters.h ibmtss/PCR_Allocate_fp.h ibmtss/PCR_Event_fp.h ibmtss/PCR_Extend_fp.h \
++	ibmtss/PcrRead12_fp.h ibmtss/PCR_Read_fp.h ibmtss/PCR_Reset12_fp.h ibmtss/PCR_Reset_fp.h ibmtss/PCR_SetAuthPolicy_fp.h \
++	ibmtss/PCR_SetAuthValue_fp.h ibmtss/PolicyAuthorize_fp.h ibmtss/PolicyAuthorizeNV_fp.h ibmtss/PolicyAuthValue_fp.h \
++	ibmtss/PolicyCommandCode_fp.h ibmtss/PolicyCounterTimer_fp.h ibmtss/PolicyCpHash_fp.h ibmtss/PolicyDuplicationSelect_fp.h \
++	ibmtss/PolicyGetDigest_fp.h ibmtss/PolicyLocality_fp.h ibmtss/PolicyNameHash_fp.h ibmtss/PolicyNV_fp.h \
++	ibmtss/PolicyNvWritten_fp.h ibmtss/PolicyOR_fp.h ibmtss/PolicyPassword_fp.h ibmtss/PolicyPCR_fp.h \
++	ibmtss/PolicyPhysicalPresence_fp.h ibmtss/PolicyRestart_fp.h ibmtss/PolicySecret_fp.h ibmtss/PolicySigned_fp.h \
++	ibmtss/PolicyTemplate_fp.h ibmtss/PolicyTicket_fp.h ibmtss/PP_Commands_fp.h ibmtss/Quote2_fp.h ibmtss/Quote_fp.h \
++	ibmtss/ReadClock_fp.h ibmtss/ReadPubek_fp.h ibmtss/ReadPublic_fp.h ibmtss/Rewrap_fp.h ibmtss/RSA_Decrypt_fp.h \
++	ibmtss/RSA_Encrypt_fp.h ibmtss/SelfTest_fp.h ibmtss/SequenceComplete_fp.h ibmtss/SequenceUpdate_fp.h \
++	ibmtss/SetAlgorithmSet_fp.h ibmtss/SetCommandCodeAuditStatus_fp.h ibmtss/SetPrimaryPolicy_fp.h ibmtss/Shutdown_fp.h \
++	ibmtss/Sign12_fp.h ibmtss/Sign_fp.h ibmtss/StartAuthSession_fp.h ibmtss/Startup12_fp.h ibmtss/Startup_fp.h \
++	ibmtss/StirRandom_fp.h ibmtss/TakeOwnership_fp.h ibmtss/TestParms_fp.h ibmtss/TPMB.h ibmtss/TpmBuildSwitches.h \
++	ibmtss/tpmconstants12.h ibmtss/tpmstructures12.h ibmtss/tpmtypes12.h ibmtss/TPM_Types.h ibmtss/tsscrypto.h \
++	ibmtss/tsscryptoh.h ibmtss/tsserror12.h ibmtss/tsserror.h ibmtss/tssfile.h ibmtss/tss.h ibmtss/tssmarshal12.h \
++	ibmtss/tssmarshal.h ibmtss/tssprintcmd.h ibmtss/tssprint.h ibmtss/tssresponsecode.h ibmtss/tsstransmit.h \
++	ibmtss/tssutils.h ibmtss/Unmarshal12_fp.h ibmtss/Unmarshal_fp.h ibmtss/Unseal_fp.h ibmtss/VerifySignature_fp.h \
++	ibmtss/ZGen_2Phase_fp.h
++
++notrans_man_MANS = man/man1/tssactivatecredential.1 man/man1/tsscertify.1 man/man1/tsscertifycreation.1 \
++	man/man1/tsscertifyx509.1 man/man1/tsschangeeps.1 man/man1/tsschangepps.1 man/man1/tssclear.1 \
++	man/man1/tssclearcontrol.1 man/man1/tssclockrateadjust.1 man/man1/tssclockset.1 man/man1/tsscommit.1 \
++	man/man1/tsscontextload.1 man/man1/tsscontextsave.1 man/man1/tsscreate.1 man/man1/tsscreateek.1 \
++	man/man1/tsscreateekcert.1 man/man1/tsscreateloaded.1 man/man1/tsscreateprimary.1 \
++	man/man1/tssdictionaryattacklockreset.1 man/man1/tssdictionaryattackparameters.1 man/man1/tssduplicate.1 \
++	man/man1/tsseccparameters.1 man/man1/tssecephemeral.1 man/man1/tssencryptdecrypt.1 man/man1/tsseventextend.1 \
++	man/man1/tsseventsequencecomplete.1 man/man1/tssevictcontrol.1 man/man1/tssflushcontext.1 man/man1/tssgetcapability.1 \
++	man/man1/tssgetcommandauditdigest.1 man/man1/tssgetcryptolibrary.1 man/man1/tssgetrandom.1 \
++	man/man1/tssgetsessionauditdigest.1 man/man1/tssgettestresult.1 man/man1/tssgettime.1 man/man1/tsshash.1 \
++	man/man1/tsshashsequencestart.1 man/man1/tsshierarchychangeauth.1 man/man1/tsshierarchycontrol.1 \
++	man/man1/tsshmac.1 man/man1/tsshmacstart.1 man/man1/tssimaextend.1 man/man1/tssimport.1 man/man1/tssimportpem.1 \
++	man/man1/tssload.1 man/man1/tssloadexternal.1 man/man1/tssmakecredential.1 man/man1/tssntc2getconfig.1 \
++	man/man1/tssntc2lockconfig.1 man/man1/tssntc2preconfig.1 man/man1/tssnvcertify.1 man/man1/tssnvchangeauth.1 \
++	man/man1/tssnvdefinespace.1 man/man1/tssnvextend.1 man/man1/tssnvglobalwritelock.1 man/man1/tssnvincrement.1 \
++	man/man1/tssnvread.1 man/man1/tssnvreadlock.1 man/man1/tssnvreadpublic.1 man/man1/tssnvsetbits.1 \
++	man/man1/tssnvundefinespace.1 man/man1/tssnvundefinespacespecial.1 man/man1/tssnvwrite.1 man/man1/tssnvwritelock.1 \
++	man/man1/tssobjectchangeauth.1 man/man1/tsspcrallocate.1 man/man1/tsspcrevent.1 man/man1/tsspcrextend.1 \
++	man/man1/tsspcrread.1 man/man1/tsspcrreset.1 man/man1/tsspolicyauthorize.1 man/man1/tsspolicyauthorizenv.1 \
++	man/man1/tsspolicyauthvalue.1 man/man1/tsspolicycommandcode.1 man/man1/tsspolicycountertimer.1 \
++	man/man1/tsspolicycphash.1 man/man1/tsspolicyduplicationselect.1 man/man1/tsspolicygetdigest.1 \
++	man/man1/tsspolicymaker.1 man/man1/tsspolicymakerpcr.1 man/man1/tsspolicynamehash.1 man/man1/tsspolicynv.1 \
++	man/man1/tsspolicynvwritten.1 man/man1/tsspolicyor.1 man/man1/tsspolicypassword.1 man/man1/tsspolicypcr.1 \
++	man/man1/tsspolicyrestart.1 man/man1/tsspolicysecret.1 man/man1/tsspolicysigned.1 man/man1/tsspolicytemplate.1 \
++	man/man1/tsspolicyticket.1 man/man1/tsspowerup.1 man/man1/tssprintattr.1 man/man1/tsspublicname.1 \
++	man/man1/tssquote.1 man/man1/tssreadclock.1 man/man1/tssreadpublic.1 man/man1/tssreturncode.1 \
++	man/man1/tssrewrap.1 man/man1/tssrsadecrypt.1 man/man1/tssrsaencrypt.1 man/man1/tsssequencecomplete.1 \
++	man/man1/tsssequenceupdate.1 man/man1/tsssetcommandcodeauditstatus.1 man/man1/tsssetprimarypolicy.1 \
++	man/man1/tssshutdown.1 man/man1/tsssign.1 man/man1/tsssignapp.1 man/man1/tssstartauthsession.1 \
++	man/man1/tssstartup.1 man/man1/tssstirrandom.1 man/man1/tsstimepacket.1 man/man1/tsstpm2pem.1 \
++	man/man1/tsstpmcmd.1 man/man1/tsstpmpublic2eccpoint.1 man/man1/tssunseal.1 man/man1/tssverifysignature.1 \
++	man/man1/tsswriteapp.1 man/man1/tsszgen2phase.1
+ 
+ if CONFIG_TPM20
+ noinst_HEADERS += tss20.h tssauth20.h ibmtss/tssprintcmd.h
+diff --git a/utils12/Makefile.am b/utils12/Makefile.am
+index a01f47c..e9fe61e 100644
+--- a/utils12/Makefile.am
++++ b/utils12/Makefile.am
+@@ -9,7 +9,13 @@ libibmtssutils12_la_CFLAGS = -I$(top_srcdir)/utils
+ # result: [current-age].age.revision
+ libibmtssutils12_la_LDFLAGS = -version-info @TSSLIB_VERSION_INFO@ ../utils/libibmtss.la
+ 
+-notrans_man_MANS = man/man1/*.1
++notrans_man_MANS = man/man1/tss1activateidentity.1 man/man1/tss1createekcert.1 man/man1/tss1createendorsementkeypair.1 \
++	man/man1/tss1createwrapkey.1 man/man1/tss1eventextend.1 man/man1/tss1extend.1 man/man1/tss1flushspecific.1 \
++	man/man1/tss1getcapability.1 man/man1/tss1imaextend.1 man/man1/tss1loadkey2.1 man/man1/tss1makeekblob.1 \
++	man/man1/tss1makeidentity.1 man/man1/tss1nvdefinespace.1 man/man1/tss1nvreadvalue.1 man/man1/tss1nvreadvalueauth.1 \
++	man/man1/tss1nvwritevalue.1 man/man1/tss1nvwritevalueauth.1 man/man1/tss1oiap.1 man/man1/tss1osap.1 \
++	man/man1/tss1ownerreadinternalpub.1 man/man1/tss1ownersetdisable.1 man/man1/tss1pcrread.1 man/man1/tss1quote2.1 \
++	man/man1/tss1sign.1 man/man1/tss1startup.1 man/man1/tss1takeownership.1 man/man1/tss1tpminit.1
+ noinst_HEADERS = ekutils12.h
+ 
+ bin_PROGRAMS = activateidentity createendorsementkeypair createwrapkey extend flushspecific getcapability loadkey2 makeidentity nvdefinespace nvreadvalueauth nvreadvalue nvwritevalueauth nvwritevalue oiap osap ownerreadinternalpub ownersetdisable pcrread quote2 sign startup takeownership tpminit createekcert makeekblob eventextend imaextend
+-- 
+2.17.1
+
diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
new file mode 100644
index 0000000..18ad7eb
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
@@ -0,0 +1,27 @@
+SUMMARY = "IBM's Software TPM 2.0 TSS"
+DESCRIPTION = "This is a user space TSS for TPM 2.0. It implements the \
+functionality equivalent to (but not API compatible with) the TCG TSS \
+working group's ESAPI, SAPI, and TCTI API's (and perhaps more) but with a \
+hopefully simpler interface. \
+It comes with over 110 'TPM tools' samples that can be used for scripted \
+apps, rapid prototyping, education, and debugging. \
+It also comes with a web based TPM interface, suitable for a demo to an \
+audience that is unfamiliar with TCG technology. It is also useful for \
+basic TPM management."
+HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmtss2.html"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+
+DEPENDS = "openssl ibmswtpm2"
+
+inherit autotools pkgconfig
+
+SRCREV = "aa6c6ec83793ba21782033c03439977c26d3cc87"
+SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
+           file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
+           "
+
+EXTRA_OECONF = "--disable-tpm-1.2"
+
+S = "${WORKDIR}/git"
-- 
2.17.1

