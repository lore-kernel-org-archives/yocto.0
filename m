Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CD7BD0EE0F
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 17:16:59 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2597.1764091009747992393
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 09:16:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=epH61rHN;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477a219db05so34426315e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 09:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764091008; x=1764695808; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TW/LggsP5XvYAZtYjQfL5KVJYSxlUyxlF2mnMulRKQI=;
        b=epH61rHNltbF56IIjCwoSbZNFR1OeCV3MxNJEVFzMEI8zyDRetiF7TDaXXg3mpyPYR
         GW1mSBbNSaMXRuGTx4q688auXLfCBkCP7FbAHTX6GuTEnGTclILVSar3HGYji27GLmae
         Wkesn/G3E6iVu/EtcsloRMK53JR8iROCUNT8kYeAI+kxwec2NgXCKTe6q4cAdKwnz2ad
         RYUalglZ7flYGU/AHt7a/anxKaLQUQmbOrLSQEda7rYZSyPIxI8Ln4lBpFxrI7wgbBUV
         5Zpl+CybZScAmMeQl2W8nL8a3stiMxqb8z6KNFFgfcbobL8ejQ+kK3wIiQ/IB5gy/Ji+
         FQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764091008; x=1764695808;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TW/LggsP5XvYAZtYjQfL5KVJYSxlUyxlF2mnMulRKQI=;
        b=aZbA9qZmVT9kAhTRIfPqozqfufMadpJQUbqcVN611DXcmygpj3VQT2wtlxgcGSzK2l
         QiSCR379fdCskB0eraLlHDywYWs37buTrh8cjcdlYolZPe5TFPx44aIQYi0J69an9imT
         yY5ZcRhaZFzIbgHxQfCW8PP+l+XgW90nFjYzLeQ1v4PBCCfV7NY1t4WsZEuKdzv65cmv
         bgjhARW/6WTc2DC0BZapLzFp+/K74/8KqqzVGrAxJqu9vXM7Z5Lk7j2EstD3UZKKalxH
         /CprRvk8MOSIao2Q8ZrSFiVX0HKBLBINwzVWazuJ0QuSG0aUldeYhXtGT5+2y8Z7W/Lf
         Ttog==
X-Forwarded-Encrypted: i=1; AJvYcCW/l9yN/Z2GCZGAF92hULq7VofmziiqE8pIag/2qV6kAObVbVZjSOw5ng+bY+jLN8a/qPLu+w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxUWDhNYUQhzbd2tobzdNfBUdb6nAFK2uT/AbA+a5ujWq0s+CGr
	JY+GOVuRRp4i7OMaWMMPRdvxFcw6PXWcVKyoZBB67r9A7kkD6uo0vk/t
X-Gm-Gg: ASbGncvmb5h6UHUCaeJsGfp7Q/BASHX3/8ceTOOf5wAGY9M807m229EPiSDHawvRp93
	vbaC8Zaxn1+nOOTY0nwcxOGQe7J9xp4nwbmb6oG8j3G74WH1ZVo37WsEjLC82L3EkS17Ou0XP/R
	PAVx0efRI4fqnX1KH5Q0C5EQ30diUU069mIJc5iU6t51NKcCK0MJR1tfNxSEjeYRZXqGpRfMX8m
	DXcsGDxHwVa41Mb+YDcdnT7EcDeXAmzc9iW+aw4wYqnmdf5GoNwrbzinddS8dLOK2Ya3BjBd4IM
	2DqG99b0FImYefI0WKE+rJ+ngALjKZxEK1a+wac+k5zzYL++ipFBJtIjeFa1flZpGCOP3+rVOoA
	kKcCYz4JHoNnzE7DDK8glQe3LmWYUMthKXEyH5XVEP66Xg2bwTDGtc4LrqO8DMZ3BdIYmGDug6j
	CKdBfoJEQ1hGP5j/+vbMgei4zmrREWXw==
X-Google-Smtp-Source: AGHT+IFs5BrLFPFLq6lF2agM42XaW0o2rIyX+gIxYJyLsEFwO+PE6CXKR2939+BxpZQWKO5p7ebC/Q==
X-Received: by 2002:a05:600c:8b35:b0:477:3543:3a3b with SMTP id 5b1f17b1804b1-477c10c85d5mr159189035e9.6.1764091007753;
        Tue, 25 Nov 2025 09:16:47 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479052b3f5fsm20559825e9.4.2025.11.25.09.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 09:16:46 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------BXlmFCs2aWzHx7xXYa25AqW5"
Message-ID: <4bdd99dc-9607-45de-b4a0-66f99c692241@gmail.com>
Date: Tue, 25 Nov 2025 18:16:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: jarno.katajainen@solotop.fi, yocto@lists.yoctoproject.org
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
 <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com>
 <564360.1763630492381329900@lists.yoctoproject.org>
 <46e999f4-7254-453d-8414-b019d0381209@gmail.com>
 <686098.1763993744038185859@lists.yoctoproject.org>
 <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com>
 <699212.1764085168440917647@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <699212.1764085168440917647@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 17:16:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66064

This is a multi-part message in MIME format.
--------------BXlmFCs2aWzHx7xXYa25AqW5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/25/25 16:39, Jarno via Lists.Yoctoproject.Org wrote:
> git rev-parse HEAD
> 5240b5c200e594b494a7f1a8f9d81e7c09bc8939
>  
> MACHINE=raspberrypi4-64 bitbake -e weston | grep ^SRC_URI
> SRC_URI="file://0001-libweston-tools-Include-libgen.h-for-basename-signat.patch
> file://0001-vnc-Allow-neatvnc-in-version-0.8.0.patch file://weston.png
> file://weston.desktop file://xwayland.weston-start
> file://systemd-notify.weston-start
> file://0001-Adapt-weston-to-64-bit-plane-IDs.patch"
>  
> After build and flash same behaviour persist.

Hmmm... this is strange, I tested using the same hw (rpi4-64) with the
same revision, and just verified the patch again earlier today with both
6.6 and 6.12 kernels.

I have attached another patch, which is similar to the one in the
repository. You can just overwrite
0001-Adapt-weston-to-64-bit-plane-IDs.patch in meta-raspberrypi with
this (as a test, revert it afterwards), and build a new image. 

Does it crash also?

If yes, do you get the same backtrace, or is it different?


>  
> core dump:
>  
> #4  0x0000007f93ba55a0 in __assert_fail_base
>     (fmt=0x7f93cbdb70 "%s%s%s:%u: %s%sAssertion `%s' failed.\n%n",
> assertion=assertion@entry=0x7f92e6f420 "fb",
> file=file@entry=0x7f92e6ead0
> "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c",
> line=line@entry=506, function=function@entry=0x7f92e70ab0
> <__PRETTY_FUNCTION__.5> "drm_output_find_plane_for_view") at assert.c:96
> #5  0x0000007f93ba5624 in __assert_fail
>     (assertion=assertion@entry=0x7f92e6f420 "fb",
> file=file@entry=0x7f92e6ead0
> "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c",
> line=line@entry=506, function=function@entry=0x7f92e70ab0
> <__PRETTY_FUNCTION__.5> "drm_output_find_plane_for_view") at assert.c:105
> #6  0x0000007f92e6784c in drm_output_find_plane_for_view
>     (current_lowest_zpos=18446744073709551615, scanout_state=0x0,
> mode=DRM_OUTPUT_PROPOSE_STATE_PLANES_ONLY, pnode=0x55812dab90,
> state=0x558137fc70) at
> /usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c:506
>  
>  

--------------BXlmFCs2aWzHx7xXYa25AqW5
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Adapt-weston-to-64-bit-plane-IDs.patch"
Content-Disposition: attachment;
 filename="0001-Adapt-weston-to-64-bit-plane-IDs.patch"
Content-Transfer-Encoding: base64

RnJvbSBiNjZmMTRhODEyYzk2YjkyYTgzY2VjNGJiNjM3YzFiOTgyMTY4ZDI0IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBHeW9yZ3kgU2FydmFyaSA8c2thbmRpZ3JhdW5AZ21h
aWwuY29tPgpEYXRlOiBTYXQsIDIyIE5vdiAyMDI1IDA5OjAwOjM5ICswMTAwClN1YmplY3Q6
IFtQQVRDSF0gYmFja2VuZC1kcm06IHN1cHBvcnQgNjQtYml0IHBsYW5lX21hc2sKClRoaXMg
Y2hhbmdlIHdhcyBwcm9tcHRlZCBieSBhIHJlY2VudCBjaGFuZ2UgaW4gdGhlIFJhc3BiZXJy
eSBQaQprZXJuZWxbMV0sIHdoaWNoIGhhcyBjaGFuZ2VkIHRoZSBwbGFuZV9tYXNrIHdpZHRo
IHRvIDY0LWJpdCBpbgp0aGVpciBkcm0gZHJpdmVyLiBEdWUgdG8gdGhpcyB3ZXN0b24gYmVo
YXZlZCBpbiBhbiBlcnJhdGljIHdheQpvbiBSYXNwYmVycnkgUGkgZGV2aWNlcyAtIHVzdWFs
bHkgdGhpcyBtYW5pZmVzdGVkIGluIGEgY3Jhc2gKaW1tZWRpYXRlbGx5IHdoZW4gdGhlIG1v
dXNlIGlzIG1vdmVkICh3aGljaCB3YXMgd29ya2VkIGFyb3VuZApzaW5jZSBieSByZW1vdmlu
ZyBhIGZhaWxpbmcgYXNzZXJ0WzJdKS4KClRoaXMgY2hhbmdlIGFkYXB0cyBsaWJ3ZXN0b24g
dG8gYWNjZXB0IDY0LWJpdCB3aWRlIHBsYW5lIG1hc2tzLgoKTkI6IHRoZSBtZW50aW9uZWQg
a2VybmVsIGNoYW5nZSBzZWVtcyB0byBiZSBSYXNwYmVycnkgUGkgc3BlY2lmaWMsCmFuZCB0
aGVyZSBhcmUgbm8gc2lnbnMgb2YgaXQgYmVpbmcgbWFpbmxpbmVkLgoKWzFdOiBodHRwczov
L2dpdGh1Yi5jb20vcmFzcGJlcnJ5cGkvbGludXgvY29tbWl0LzgxODFlNjgyZDZmNGVmMjA5
ODQ1ZWMyNGYwYTFlYjM3NzY0ZDY3MzEKWzJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvd2F5bGFuZC93ZXN0b24vLS9pc3N1ZXMvMTAzOQoKVXBzdHJlYW0tU3RhdHVzOiBQ
ZW5kaW5nCgpTaWduZWQtb2ZmLWJ5OiBHeW9yZ3kgU2FydmFyaSA8c2thbmRpZ3JhdW5AZ21h
aWwuY29tPgotLS0KIGxpYndlc3Rvbi9iYWNrZW5kLWRybS9kcm0taW50ZXJuYWwuaCAgfCAg
MiArLQogbGlid2VzdG9uL2JhY2tlbmQtZHJtL2RybS5jICAgICAgICAgICB8ICA0ICsrKysK
IGxpYndlc3Rvbi9iYWNrZW5kLWRybS9mYi5jICAgICAgICAgICAgfCAgMiArLQogbGlid2Vz
dG9uL2JhY2tlbmQtZHJtL3N0YXRlLXByb3Bvc2UuYyB8IDEwICsrKysrLS0tLS0KIDQgZmls
ZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9saWJ3ZXN0b24vYmFja2VuZC1kcm0vZHJtLWludGVybmFsLmggYi9saWJ3ZXN0b24v
YmFja2VuZC1kcm0vZHJtLWludGVybmFsLmgKaW5kZXggZTAwOGE4ZDEuLjMwNWFiYmNlIDEw
MDY0NAotLS0gYS9saWJ3ZXN0b24vYmFja2VuZC1kcm0vZHJtLWludGVybmFsLmgKKysrIGIv
bGlid2VzdG9uL2JhY2tlbmQtZHJtL2RybS1pbnRlcm5hbC5oCkBAIC00MTAsNyArNDEwLDcg
QEAgc3RydWN0IGRybV9mYiB7CiAJaW50IHdpZHRoLCBoZWlnaHQ7CiAJaW50IGZkOwogCi0J
dWludDMyX3QgcGxhbmVfbWFzazsKKwl1aW50NjRfdCBwbGFuZV9tYXNrOwogCiAJLyogVXNl
ZCBieSBnYm0gZmJzICovCiAJc3RydWN0IGdibV9ibyAqYm87CmRpZmYgLS1naXQgYS9saWJ3
ZXN0b24vYmFja2VuZC1kcm0vZmIuYyBiL2xpYndlc3Rvbi9iYWNrZW5kLWRybS9mYi5jCmlu
ZGV4IDM1MGFhZjYwLi43YmFhYTFiOSAxMDA2NDQKLS0tIGEvbGlid2VzdG9uL2JhY2tlbmQt
ZHJtL2ZiLmMKKysrIGIvbGlid2VzdG9uL2JhY2tlbmQtZHJtL2ZiLmMKQEAgLTc2MCw3ICs3
NjAsNyBAQCBkcm1fZmJfZ2V0X2Zyb21fcGFpbnRfbm9kZShzdHJ1Y3QgZHJtX291dHB1dF9z
dGF0ZSAqc3RhdGUsCiAJCQljb250aW51ZTsKIAogCQlpZiAoZHJtX2ZiX2NvbXBhdGlibGVf
d2l0aF9wbGFuZShmYiwgcGxhbmUpKQotCQkJZmItPnBsYW5lX21hc2sgfD0gMSA8PCAocGxh
bmUtPnBsYW5lX2lkeCk7CisJCQlmYi0+cGxhbmVfbWFzayB8PSAxVUwgPDwgKHBsYW5lLT5w
bGFuZV9pZHgpOwogCX0KIAlpZiAoZmItPnBsYW5lX21hc2sgPT0gMCkgewogCQlkcm1fZmJf
dW5yZWYoZmIpOwotLS0gLi9saWJ3ZXN0b24vYmFja2VuZC1kcm0vc3RhdGUtcHJvcG9zZS5j
Lm9laWcJMjAyNS0xMS0yNSAxMjo0OToxNS4yODAyNTk4OTIgKzAxMDAKKysrIC4vbGlid2Vz
dG9uL2JhY2tlbmQtZHJtL3N0YXRlLXByb3Bvc2UuYwkyMDI1LTExLTI1IDEyOjUwOjA4LjI0
NzgyMzI1NiArMDEwMApAQCAtMzkzLDcgKzM5Myw3IEBACiAJc3RydWN0IGRybV9mYiAqZmIg
PSBOVUxMOwogCiAJYm9vbCB2aWV3X21hdGNoZXNfZW50aXJlX291dHB1dCwgc2Nhbm91dF9o
YXNfdmlld19hc3NpZ25lZDsKLQl1aW50MzJfdCBwb3NzaWJsZV9wbGFuZV9tYXNrID0gMDsK
Kwl1aW50NjRfdCBwb3NzaWJsZV9wbGFuZV9tYXNrID0gMDsKIAogCXBub2RlLT50cnlfdmll
d19vbl9wbGFuZV9mYWlsdXJlX3JlYXNvbnMgPSBGQUlMVVJFX1JFQVNPTlNfTk9ORTsKIApA
QCAtNDM3LDcgKzQzNyw3IEBACiAJCQlyZXR1cm4gTlVMTDsKIAkJfQogCi0JCXBvc3NpYmxl
X3BsYW5lX21hc2sgPSAoMSA8PCBvdXRwdXQtPmN1cnNvcl9wbGFuZS0+cGxhbmVfaWR4KTsK
KwkJcG9zc2libGVfcGxhbmVfbWFzayA9ICgxVUwgPDwgb3V0cHV0LT5jdXJzb3JfcGxhbmUt
PnBsYW5lX2lkeCk7CiAJfSBlbHNlIHsKIAkJaWYgKG1vZGUgPT0gRFJNX09VVFBVVF9QUk9Q
T1NFX1NUQVRFX1JFTkRFUkVSX09OTFkpIHsKIAkJCWRybV9kZWJ1ZyhiLCAiXHRcdFx0XHRb
dmlld10gbm90IGFzc2lnbmluZyB2aWV3ICVwICIKQEAgLTQ1MCw3ICs0NTAsNyBAQAogCQkJ
CWNvbnRpbnVlOwogCiAJCQlpZiAoZHJtX3BhaW50X25vZGVfdHJhbnNmb3JtX3N1cHBvcnRl
ZChwbm9kZSwgcGxhbmUpKQotCQkJCXBvc3NpYmxlX3BsYW5lX21hc2sgfD0gMSA8PCBwbGFu
ZS0+cGxhbmVfaWR4OworCQkJCXBvc3NpYmxlX3BsYW5lX21hc2sgfD0gMVVMIDw8IHBsYW5l
LT5wbGFuZV9pZHg7CiAJCX0KIAogCQlpZiAoIXBvc3NpYmxlX3BsYW5lX21hc2spIHsKQEAg
LTQ4MywxMCArNDgzLDEwIEBACiAJCWlmIChwb3NzaWJsZV9wbGFuZV9tYXNrID09IDApCiAJ
CQlicmVhazsKIAotCQlpZiAoIShwb3NzaWJsZV9wbGFuZV9tYXNrICYgKDEgPDwgcGxhbmUt
PnBsYW5lX2lkeCkpKQorCQlpZiAoIShwb3NzaWJsZV9wbGFuZV9tYXNrICYgKDFVTCA8PCBw
bGFuZS0+cGxhbmVfaWR4KSkpCiAJCQljb250aW51ZTsKIAotCQlwb3NzaWJsZV9wbGFuZV9t
YXNrICY9IH4oMSA8PCBwbGFuZS0+cGxhbmVfaWR4KTsKKwkJcG9zc2libGVfcGxhbmVfbWFz
ayAmPSB+KDFVTCA8PCBwbGFuZS0+cGxhbmVfaWR4KTsKIAogCQlzd2l0Y2ggKHBsYW5lLT50
eXBlKSB7CiAJCWNhc2UgV0RSTV9QTEFORV9UWVBFX0NVUlNPUjoKLS0tIC4vbGlid2VzdG9u
L2JhY2tlbmQtZHJtL3N0YXRlLXByb3Bvc2UuYy5vcmlnCTIwMjUtMTEtMjUgMTM6MjY6NTgu
MTczODEwODM3ICswMTAwCisrKyAuL2xpYndlc3Rvbi9iYWNrZW5kLWRybS9zdGF0ZS1wcm9w
b3NlLmMJMjAyNS0xMS0yNSAxMzoyODoyMS41NzYyNTUyOTAgKzAxMDAKQEAgLTQzLDYgKzQz
LDggQEAKICNpbmNsdWRlICJwcmVzZW50YXRpb24tdGltZS1zZXJ2ZXItcHJvdG9jb2wuaCIK
ICNpbmNsdWRlICJsaW51eC1kbWFidWYtdW5zdGFibGUtdjEtc2VydmVyLXByb3RvY29sLmgi
CiAKKyNkZWZpbmUgTUFYX1BMQU5FX05SIDY0CisKIGVudW0gZHJtX291dHB1dF9wcm9wb3Nl
X3N0YXRlX21vZGUgewogCURSTV9PVVRQVVRfUFJPUE9TRV9TVEFURV9NSVhFRCwgLyoqPCBt
aXggcmVuZGVyZXIgJiBwbGFuZXMgKi8KIAlEUk1fT1VUUFVUX1BST1BPU0VfU1RBVEVfUkVO
REVSRVJfT05MWSwgLyoqPCBvbmx5IGFzc2lnbiB0byByZW5kZXJlciAmIGN1cnNvciAqLwpA
QCAtMzk1LDYgKzM5Nyw4IEBACiAJYm9vbCB2aWV3X21hdGNoZXNfZW50aXJlX291dHB1dCwg
c2Nhbm91dF9oYXNfdmlld19hc3NpZ25lZDsKIAl1aW50NjRfdCBwb3NzaWJsZV9wbGFuZV9t
YXNrID0gMDsKIAorCWFzc2VydChvdXRwdXQtPmN1cnNvcl9wbGFuZS0+cGxhbmVfaWR4IDwg
TUFYX1BMQU5FX05SKTsKKwogCXBub2RlLT50cnlfdmlld19vbl9wbGFuZV9mYWlsdXJlX3Jl
YXNvbnMgPSBGQUlMVVJFX1JFQVNPTlNfTk9ORTsKIAogCS8qIGNoZWNrIHZpZXcgZm9yIHZh
bGlkIGJ1ZmZlciwgZG9lc24ndCBtYWtlIHNlbnNlIHRvIGV2ZW4gdHJ5ICovCkBAIC00NDks
NiArNDUzLDcgQEAKIAkJCWlmIChwbGFuZS0+dHlwZSA9PSBXRFJNX1BMQU5FX1RZUEVfQ1VS
U09SKQogCQkJCWNvbnRpbnVlOwogCisJCQlhc3NlcnQocGxhbmUtPnBsYW5lX2lkeCA8IE1B
WF9QTEFORV9OUik7CiAJCQlpZiAoZHJtX3BhaW50X25vZGVfdHJhbnNmb3JtX3N1cHBvcnRl
ZChwbm9kZSwgcGxhbmUpKQogCQkJCXBvc3NpYmxlX3BsYW5lX21hc2sgfD0gMVVMIDw8IHBs
YW5lLT5wbGFuZV9pZHg7CiAJCX0K

--------------BXlmFCs2aWzHx7xXYa25AqW5--

