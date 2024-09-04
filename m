Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F24CD484D
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 14:36:28 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.51670.1725460587043742684
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 07:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DNu3x8+l;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a86a37208b2so797514766b.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Sep 2024 07:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725460585; x=1726065385; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FiASY40bhV8lTNqGZjYEGoAoK4367oTywonPJfo9vjY=;
        b=DNu3x8+lOscemWcVVBPepOpqHlW/TajtCwA4A3EVqGsaz7u+xQ57muID9O9bHtmL2f
         aFLZ5Xwakf5g5xAZRPPwo7O2T9i9Z07MIGVkPDfpICKU57k8KEvusH7hbMdlrB9YGxKp
         /W6Cc1Mwcwe+NN4DO1n5fT2KQ0SA4LfCv2nETqNKzLcnffv+odod9SeJlhOHaTMQHmpv
         jEEXs17wfG6pp+NlD/1ZFNu7isQWJlO0nuS27qFfl9j664n+D5Pe2il5RCf8/3GfHncm
         Hdlh7bQsu7mTpGMChBfGZ4dhjri6WBFgwLnWrz7CpjmJySd1ch6AWOmDwHASzHWJ+uQo
         G4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725460585; x=1726065385;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FiASY40bhV8lTNqGZjYEGoAoK4367oTywonPJfo9vjY=;
        b=XH9NUNqxxmfeBpI/Vl8r/GJpDz0ibdvVCqYFTXRraX/JZvDjYjBZ3/J/KWeDlAPsRS
         brnhJbmr085OUslmEQHI+5sshd2MFwtfcWNketgTVat0tO3FYzeR3PX/TSOs5TyFmC99
         4L4Fb2vTwKoWDxxJIrFr2L+0T5EbJz9qV9LTDq33FUEZdQrQTbwPLJy3FSP7ho1jDwF5
         Ozz6ZedyXbXeadDjuAX1jtZmuEEgKjZZJ9Zs0he4Ftvj9VjmhOkJy0RwQvVrdmFVKvap
         QDy7EjU1Iz6SdFk0Vk1mHM5SwhbVXDjJGgBoAjSnTlQUlSSumNPQ5fxAv55xw+MOmcp4
         oRIA==
X-Gm-Message-State: AOJu0YxKTYljXgR8K81h5hf2CTEkORqHtmogcW3AruiCRhMVPyJio5Al
	Ae/Ssc9stDwv0kyoIIaQsICoD4i9brdn/SWZuLhMzo6PyJ5O2fK6NPZB+QbcaDLQ2lcwVw4BUCc
	BFpGiG0y1uxkp7aDJNUkYlu5ovnUPULlA
X-Google-Smtp-Source: AGHT+IFg7bhkhTTsGhmKlNXTtDY32zIPYE0+u1QI61V2siYTafk1GFeT/9/J3+6nnIOoFUAPZzKVFbg0Jb/NINkxzec=
X-Received: by 2002:a17:907:d94:b0:a77:b726:4fc with SMTP id
 a640c23a62f3a-a897f77fcb4mr1747738466b.1.1725460584103; Wed, 04 Sep 2024
 07:36:24 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 4 Sep 2024 20:06:11 +0530
Message-ID: <CAPJWBngRr24GPs1VfLJDQBHn_Gt0Q_S9hxUJevVfWT6V7TBfBg@mail.gmail.com>
Subject: Linking stage error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="00000000000030a46f06214c193a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Sep 2024 14:36:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63783

--00000000000030a46f06214c193a
Content-Type: multipart/alternative; boundary="00000000000030a46c06214c1938"

--00000000000030a46c06214c1938
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am trying to run a Makefile and add the binary to my arm64 yocto dunfell
build. The issue is
the linking stage throws generic ELF error. I have commented out compiler
related info in my Makefile but still face the issue. Please have a look
and point me in the right direction.

Initialising tasks: 100%
|##############################################################################################################################################|
Time: 0:00:04
Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% match, 99%
complete)
NOTE: Executing Tasks
WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result in
unexpected behavior. [uppercase-pn]
WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result in
unexpected behavior. [uppercase-pn]
ERROR: z3gatewayGPCombo-0.1-r0 do_compile: Execution of
'/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942'
failed with exit code 2
ERROR: Logfile of failure stored in:
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/log.do_compile.137942
Log data follows:
|







* DEBUG: Executing shell function do_compile| # No pre-build defined|
Linking ././Z3GatewayGPCombo| aarch64-poky-linux-ld: ././project/app.o:
Relocations in generic ELF (EM: 62)| aarch64-poky-linux-ld:
././project/app.o: Relocations in generic ELF (EM: 62)|
aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF (EM:
62)| aarch64-poky-linux-ld: ././project/app.o: error adding symbols: file
in wrong format| make: *** [Makefile:157: Z3GatewayGPCombo.out] Error 1|
WARNING: exit code 2 from a shell command.*
| ERROR: Execution of
'/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942'
failed with exit code 2
ERROR: Task
(/home/edula/yocto3.0/meta-blaze/recipes-example/z3gatewayGPCombo/z3gatewayGPCombo_0.1.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1782 tasks of which 1780 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds


Thanks
Hassan

--00000000000030a46c06214c1938
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I am trying to run a Makefile and add the bin=
ary to my arm64 yocto dunfell build. The issue is</div><div>the linking sta=
ge throws generic ELF error. I have commented=C2=A0out compiler related inf=
o in my Makefile but still face the issue. Please have a look and point=C2=
=A0me in the right direction.</div><div><br></div><div>Initialising tasks: =
100% |#####################################################################=
#########################################################################| =
Time: 0:00:04<br>Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% =
match, 99% complete)<br>NOTE: Executing Tasks<br>WARNING: QA Issue: PN: z3g=
atewayGPCombo is upper case, this can result in unexpected behavior. [upper=
case-pn]<br>WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can=
 result in unexpected behavior. [uppercase-pn]<br>ERROR: z3gatewayGPCombo-0=
.1-r0 do_compile: Execution of &#39;/home/edula/yocto3.0/build/tmp/work/aar=
ch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942&#39; fai=
led with exit code 2<br>ERROR: Logfile of failure stored in: /home/edula/yo=
cto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/log.d=
o_compile.137942<br>Log data follows:<br>|<b> DEBUG: Executing shell functi=
on do_compile<br>| # No pre-build defined<br>| Linking ././Z3GatewayGPCombo=
<br>| aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF =
(EM: 62)<br>| aarch64-poky-linux-ld: ././project/app.o: Relocations in gene=
ric ELF (EM: 62)<br>| aarch64-poky-linux-ld: ././project/app.o: Relocations=
 in generic ELF (EM: 62)<br>| aarch64-poky-linux-ld: ././project/app.o: err=
or adding symbols: file in wrong format<br>| make: *** [Makefile:157: Z3Gat=
ewayGPCombo.out] Error 1<br>| WARNING: exit code 2 from a shell command.</b=
><br>| ERROR: Execution of &#39;/home/edula/yocto3.0/build/tmp/work/aarch64=
-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942&#39; failed =
with exit code 2<br>ERROR: Task (/home/edula/yocto3.0/meta-blaze/recipes-ex=
ample/z3gatewayGPCombo/z3gatewayGPCombo_0.1.bb:do_compile) failed with exit=
 code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1782 tasks of which 178=
0 didn&#39;t need to be rerun and 1 failed.<br>NOTE: Writing buildhistory<b=
r>NOTE: Writing buildhistory took: 2 seconds<br><br></div><div><br></div><d=
iv>Thanks</div><div>Hassan</div></div>

--00000000000030a46c06214c1938--

--00000000000030a46f06214c193a
Content-Type: application/octet-stream; name="z3gatewayGPCombo_0.1.bb"
Content-Disposition: attachment; filename="z3gatewayGPCombo_0.1.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_m0nynqr10>
X-Attachment-Id: f_m0nynqr10

U1VNTUFSWSA9ICJ6aWdiZWUgYmluYXJ5IgpERVNDUklQVElPTiA9ICJOZXcgemlnYmVlIGhvc3Qg
YmluYXJ5IgpMSUNFTlNFID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtDT01N
T05fTElDRU5TRV9ESVJ9L01JVDttZDU9MDgzNWFkZTY5OGUwYmNmODUwNmVjZGEyZjdiNGYzMDIi
CkRFUEVORFMgKz0icmVhZGxpbmUgbmN1cnNlcyBnbG0iCgpTUkNfVVJJPSJmaWxlOi8vc2ltcGxp
Y2l0eV9zZGsiCgpTPSIke1dPUktESVJ9L3NpbXBsaWNpdHlfc2RrIgoKCmRvX2NvbXBpbGUoKXsK
CWNkICR7U30vWjNHYXRld2F5R1BDb21ibwoJJHtNQUtFfQp9Cgpkb19pbnN0YWxsKCl7CglpbnN0
YWxsIC1kICR7RH0vJHtiaW5kaXJ9CglpbnN0YWxsIC1tIDA3NzcgJHtTfS9aM0dhdGV3YXlHUENv
bWJvL1ozR2F0ZXdheUdQQ29tYm8gJHtEfS8ke2JpbmRpcn0KfQoKRklMRVNfJHtQTn0gKz0gIiR7
YmluZGlyfS9aM0dhdGV3YXlHUENvbWJvIgoKCg==
--00000000000030a46f06214c193a
Content-Type: application/octet-stream; name=Makefile
Content-Disposition: attachment; filename=Makefile
Content-Transfer-Encoding: base64
Content-ID: <f_m0nyo1dv1>
X-Attachment-Id: f_m0nyo1dv1

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMKIyBVc2VyIE1ha2VmaWxlIGZvciBIb3N0IFN5c3RlbXMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICMKIyBUaGlzIHdpbGwgbm90IGJlIG92ZXJ3cml0dGVuLiBF
ZGl0IGFzIGRlc2lyZWQuICAgICAgICAgICAgICAgICAgICMKIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKLlNVRkZJWEVT
OgkJCQkjIGlnbm9yZSBidWlsdGluIHJ1bGVzCi5QSE9OWTogYWxsIGRlYnVnIHJlbGVhc2UgY2xl
YW4KCiMgRGVmYXVsdCBnb2FsCmFsbDogZGVidWcKCiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiMgRGVmaW5pdGlvbnMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjCiMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjCgojIFZhbHVlcyBzZXQgYnkgdGhlIGluaXRpYWwgZ2VuZXJhdGlvbgpQUk9KRUNU
TkFNRSA9IFozR2F0ZXdheUdQQ29tYm8KUE9TVF9CVUlMRF9FWEVfV0lOID0gClBPU1RfQlVJTERf
RVhFX09TWCA9IApQT1NUX0JVSUxEX0VYRV9MSU5VWCA9IC9ob21lL3NhaS9EZXNrdG9wL01BVFRF
Ui9TaW1wbGljaXR5U3R1ZGlvX3Y1L2RldmVsb3Blci9hZGFwdGVyX3BhY2tzL2NvbW1hbmRlci9j
b21tYW5kZXIKCiMgUHJlLWRlZmluZWQgZGVmaW5pdGlvbnMgaW4gdGhpcyBmaWxlCmlmZXEgKCQo
T1MpLFdpbmRvd3NfTlQpCiAgUE9TVF9CVUlMRF9FWEUgPz0gJChQT1NUX0JVSUxEX0VYRV9XSU4p
CmVsc2UKICBVTkFNRV9TIDo9ICQoc2hlbGwgdW5hbWUgLXMpCiAgaWZlcSAoJChVTkFNRV9TKSxE
YXJ3aW4pCiAgICBQT1NUX0JVSUxEX0VYRSA/PSAkKFBPU1RfQlVJTERfRVhFX09TWCkKICBlbHNl
CiAgICBQT1NUX0JVSUxEX0VYRSA/PSAkKFBPU1RfQlVJTERfRVhFX0xJTlVYKQogIGVuZGlmCmVu
ZGlmCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIwojIERlZmluaXRpb25zIG9mIHRvb2xjaGFpbi4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIwojIFlvdSBtaWdodCBuZWVkIHRvIGRvIGNoYW5n
ZXMgdG8gbWF0Y2ggeW91ciBzeXN0ZW0gc2V0dXAgICAgICAgICAgIwojIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKI0FS
ICAgICAgPSAiYXIiCiNDQyAgICAgID0gImdjYyIKI0NYWCAgICAgPSAiZysrIgojTEQgICAgICA9
ICJnY2MiCiNSTSAgICAgID0gInJtIgoKIyBDb21tYW5kIG91dHB1dCBpcyBoaWRkZW4gYnkgZGVm
YXVsdCwgaXQgY2FuIGJlIGVuYWJsZWQgYnkKIyBzZXR0aW5nIFZFUkJPU0U9dHJ1ZSBvbiB0aGUg
Y29tbWFuZGxpbmUuCmlmZXEgKCQoVkVSQk9TRSksKQogIEVDSE8gPSBACmVuZGlmCgojIEJ1aWxk
IERpcmVjdG9yaWVzCiNCVUlMRF9ESVIgPSBidWlsZApCVUlMRF9ESVIgPSAuCkxTVF9ESVIgPSBs
c3QKCmlmbmVxICgkKGZpbHRlciAkKE1BS0VDTURHT0FMUykscmVsZWFzZSksKQogIE9VVFBVVF9E
SVIgPSAkKEJVSUxEX0RJUikvcmVsZWFzZQplbHNlCiNPVVRQVVRfRElSID0gJChCVUlMRF9ESVIp
L2RlYnVnCiAgT1VUUFVUX0RJUiA9ICQoQlVJTERfRElSKS8uCmVuZGlmCgojIFZhbHVlcyB0aGF0
IHNob3VsZCBiZSBhcHBlbmRlZCBieSB0aGUgc3ViLW1ha2VmaWxlcwpDX1NPVVJDRV9GSUxFUyAg
ID0gCkNYWF9TT1VSQ0VfRklMRVMgPSAKQVNNX1NPVVJDRV9GSUxFUyA9IAoKTElCUyA9IAoKQ19E
RUZTICAgPSAKQVNNX0RFRlMgPSAKCklOQ0xVREVTID0gCgpDX0ZMQUdTICAgICAgICAgICA9IApD
X0ZMQUdTX0RFQlVHICAgICA9IApDX0ZMQUdTX1JFTEVBU0UgICA9IApDWFhfRkxBR1MgICAgICAg
ICA9IApDWFhfRkxBR1NfREVCVUcgICA9IApDWFhfRkxBR1NfUkVMRUFTRSA9IApBU01fRkxBR1Mg
ICAgICAgICA9IApBU01fRkxBR1NfREVCVUcgICA9IApBU01fRkxBR1NfUkVMRUFTRSA9IApMRF9G
TEFHUyAgICAgICAgICA9IAoKT0JKUyA9CgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojIEluY2x1ZGUgc3ViLW1ha2Vm
aWxlcyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIwojIERlZmlu
ZSBhIG1ha2VmaWxlIGhlcmUgdG8gYWRkIGZpbGVzL3NldHRpbmdzIHRvIHRoZSBidWlsZC4gICAg
ICAgIwojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIwotaW5jbHVkZSBaM0dhdGV3YXlHUENvbWJvLnByb2plY3QubWFrCgoK
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMKIyBSdWxlcyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICMKIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMKCiMgLU1NRCA6IERvbid0IGdlbmVy
YXRlIGRlcGVuZGVuY2llcyBvbiBzeXN0ZW0gaGVhZGVyIGZpbGVzLgojIC1NUCAgOiBBZGQgcGhv
bnkgdGFyZ2V0cywgdXNlZnVsIHdoZW4gYSBoLWZpbGUgaXMgcmVtb3ZlZCBmcm9tIGEgcHJvamVj
dC4KIyAtTUYgIDogU3BlY2lmeSBhIGZpbGUgdG8gd3JpdGUgdGhlIGRlcGVuZGVuY2llcyB0by4K
REVQRkxBR1MgPSAtTU1EIC1NUCAtTUYgJChAOi5vPS5kKQoKQ1NPVVJDRVMgICAgICAgPSAkKG5v
dGRpciAkKENfU09VUkNFX0ZJTEVTKSkKQ1hYU09VUkNFUyAgICAgPSAkKG5vdGRpciAkKGZpbHRl
ciAlLmNwcCwgJChDWFhfU09VUkNFX0ZJTEVTKSkpCkNDU09VUkNFUyAgICAgID0gJChub3RkaXIg
JChmaWx0ZXIgJS5jYywgJChDWFhfU09VUkNFX0ZJTEVTKSkpCkFTTVNPVVJDRVNfcyAgID0gJChu
b3RkaXIgJChmaWx0ZXIgJS5zLCAkKEFTTV9TT1VSQ0VfRklMRVMpKSkKQVNNU09VUkNFU19TICAg
PSAkKG5vdGRpciAkKGZpbHRlciAlLlMsICQoQVNNX1NPVVJDRV9GSUxFUykpKQoKQ09CSlMgICAg
ICAgPSAkKGFkZHByZWZpeCAkKE9VVFBVVF9ESVIpLywkKENTT1VSQ0VTOi5jPS5vKSkKQ1hYT0JK
UyAgICAgPSAkKGFkZHByZWZpeCAkKE9VVFBVVF9ESVIpLywkKENYWFNPVVJDRVM6LmNwcD0ubykp
CkNDT0JKUyAgICAgID0gJChhZGRwcmVmaXggJChPVVRQVVRfRElSKS8sJChDQ1NPVVJDRVM6LmNj
PS5vKSkKQVNNT0JKU19zICAgPSAkKGFkZHByZWZpeCAkKE9VVFBVVF9ESVIpLywkKEFTTVNPVVJD
RVNfczoucz0ubykpCkFTTU9CSlNfUyAgID0gJChhZGRwcmVmaXggJChPVVRQVVRfRElSKS8sJChB
U01TT1VSQ0VTX1M6LlM9Lm8pKQpPQkpTICAgICAgICArPSAkKENPQkpTKSAkKENYWE9CSlMpICQo
Q0NPQkpTKSAkKEFTTU9CSlNfcykgJChBU01PQkpTX1MpCgpDREVQUyAgICAgICArPSAkKGFkZHBy
ZWZpeCAkKE9VVFBVVF9ESVIpLywkKENTT1VSQ0VTOi5jPS5kKSkKQ1hYREVQUyAgICAgKz0gJChh
ZGRwcmVmaXggJChPVVRQVVRfRElSKS8sJChDWFhTT1VSQ0VTOi5jcHA9LmQpKQpDWFhERVBTICAg
ICArPSAkKGFkZHByZWZpeCAkKE9VVFBVVF9ESVIpLywkKENDU09VUkNFUzouY2M9LmQpKQpBU01E
RVBTX3MgICArPSAkKGFkZHByZWZpeCAkKE9VVFBVVF9ESVIpLywkKEFTTVNPVVJDRVNfczoucz0u
ZCkpCkFTTURFUFNfUyAgICs9ICQoYWRkcHJlZml4ICQoT1VUUFVUX0RJUikvLCQoQVNNU09VUkNF
U19TOi5TPS5kKSkKCkNfUEFUSFMgICA9ICQoc3Vic3QgXCwvLCQoc29ydCAkKGRpciAkKENfU09V
UkNFX0ZJTEVTKSkpKQpDWFhfUEFUSFMgPSAkKHN1YnN0IFwsLywkKHNvcnQgJChkaXIgJChDWFhf
U09VUkNFX0ZJTEVTKSkpKQpBU01fUEFUSFMgPSAkKHN1YnN0IFwsLywkKHNvcnQgJChkaXIgJChB
U01fU09VUkNFX0ZJTEVTKSkpKQoKdnBhdGggJS5jICQoQ19QQVRIUykKdnBhdGggJS5jcHAgJChD
WFhfUEFUSFMpCnZwYXRoICUuY2MgJChDWFhfUEFUSFMpCnZwYXRoICUucyAkKEFTTV9QQVRIUykK
dnBhdGggJS5TICQoQVNNX1BBVEhTKQoKb3ZlcnJpZGUgQ0ZMQUdTID0gJChDX0ZMQUdTKSAkKENf
REVGUykgJChJTkNMVURFUykgJChERVBGTEFHUykKb3ZlcnJpZGUgQ1hYRkxBR1MgPSAkKENYWF9G
TEFHUykgJChDX0RFRlMpICQoSU5DTFVERVMpICQoREVQRkxBR1MpCm92ZXJyaWRlIEFTTUZMQUdT
ID0gJChBU01fRkxBR1MpICQoQVNNX0RFRlMpICQoSU5DTFVERVMpICQoREVQRkxBR1MpCgpkZWJ1
ZzogQ19GTEFHUyArPSAkKENfRkxBR1NfREVCVUcpIApkZWJ1ZzogQ1hYX0ZMQUdTICs9ICQoQ1hY
X0ZMQUdTX0RFQlVHKQpkZWJ1ZzogQVNNX0ZMQUdTICs9ICQoQVNNX0ZMQUdTX0RFQlVHKQpkZWJ1
ZzogfCBwcmUtYnVpbGQgJChPVVRQVVRfRElSKS8kKFBST0pFQ1ROQU1FKS5vdXQgcG9zdC1idWls
ZAoKcmVsZWFzZTogQ19GTEFHUyArPSAkKENfRkxBR1NfUkVMRUFTRSkgCnJlbGVhc2U6IENYWF9G
TEFHUyArPSAkKENYWF9GTEFHU19SRUxFQVNFKQpyZWxlYXNlOiBBU01fRkxBR1MgKz0gJChBU01f
RkxBR1NfUkVMRUFTRSkKcmVsZWFzZTogfCBwcmUtYnVpbGQgJChPVVRQVVRfRElSKS8kKFBST0pF
Q1ROQU1FKS5vdXQgcG9zdC1idWlsZAoKIyBpbmNsdWRlIGF1dG8tZ2VuZXJhdGVkIGRlcGVuZGVu
Y3kgZmlsZXMgKGV4cGxpY2l0IHJ1bGVzKQppZm5lcSAoY2xlYW4sJChmaW5kc3RyaW5nIGNsZWFu
LCAkKE1BS0VDTURHT0FMUykpKQotaW5jbHVkZSAkKENERVBTKQotaW5jbHVkZSAkKENYWERFUFMp
Ci1pbmNsdWRlICQoQVNNREVQU19zKQotaW5jbHVkZSAkKEFTTURFUFNfUykKZW5kaWYKCiQoT1VU
UFVUX0RJUikvJChQUk9KRUNUTkFNRSkub3V0OiAkKE9CSlMpICQoTElCX0ZJTEVTKQoJQGVjaG8g
J0xpbmtpbmcgJChPVVRQVVRfRElSKS8kKFBST0pFQ1ROQU1FKScKaWZlcSAoJChVTkFNRV9TKSxE
YXJ3aW4pCglAZWNobyAkKE9CSlMpID4gJChPVVRQVVRfRElSKS9saW5rZXJfb2JqcwplbHNlCgkk
KGZpbGUgPiAkKE9VVFBVVF9ESVIpL2xpbmtlcl9vYmpzLCQoT0JKUykpCmVuZGlmCgkkKEVDSE8p
JChMRCkgJChMRF9GTEFHUykgQCQoT1VUUFVUX0RJUikvbGlua2VyX29ianMgJChMSUJTKSAtbyAk
KE9VVFBVVF9ESVIpLyQoUFJPSkVDVE5BTUUpCglAZWNobyAnRG9uZS4nCgokKE9CSlMpOgoKJChP
VVRQVVRfRElSKS8lLm86ICUuYwoJQGVjaG8gJ0J1aWxkaW5nICQ8JwoJQG1rZGlyIC1wICQoQEQp
CgkkKEVDSE8pJChDQykgJChDRkxBR1MpIC1jIC1vICRAICQ8CgokKE9VVFBVVF9ESVIpLyUubzog
JS5jcHAKCUBlY2hvICdCdWlsZGluZyAkPCcKCUBta2RpciAtcCAkKEBEKQoJJChFQ0hPKSQoQ1hY
KSAkKENYWEZMQUdTKSAtYyAtbyAkQCAkPAoKJChPVVRQVVRfRElSKS8lLm86ICUuY2MKCUBlY2hv
ICdCdWlsZGluZyAkPCcKCUBta2RpciAtcCAkKEBEKQoJJChFQ0hPKSQoQ1hYKSAkKENYWEZMQUdT
KSAtYyAtbyAkQCAkPAoKJChPVVRQVVRfRElSKS8lLm86ICUucwoJQGVjaG8gJ0J1aWxkaW5nICQ8
JwoJQG1rZGlyIC1wICQoQEQpCgkkKEVDSE8pJChDQykgJChBU01GTEFHUykgLWMgLW8gJEAgJDwK
CiQoT1VUUFVUX0RJUikvJS5vOiAlLlMKCUBlY2hvICdCdWlsZGluZyAkPCcKCUBta2RpciAtcCAk
KEBEKQoJJChFQ0hPKSQoQ0MpICQoQVNNRkxBR1MpIC1jIC1vICRAICQ8CgpjbGVhbjoKCSQoUk0p
IC1yZiAkKEJVSUxEX0RJUikK
--00000000000030a46f06214c193a--

