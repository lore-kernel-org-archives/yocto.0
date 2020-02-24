Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.21867.1582556247482216526
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 06:57:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KshAIrz7;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C6B2E00C77; Mon, 24 Feb 2020 06:57:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com [209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1909E0073D
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2020 06:57:23 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id v25so6705010qto.7
        for <yocto@yoctoproject.org>; Mon, 24 Feb 2020 06:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pEKGWFSOAK/u199QIUuuEzlRLGGapLzaGZl017Zrnkg=;
        b=KshAIrz7sL3aB13+efTGbtPauqcc0/7P3pSH6RKuGyrb4yX5asPmLThw+q5KHt+ncb
         +rSlzLKN5NllT1aDaku/oiWDLCt9OeH6u5zNxDMIF7Cnix7M9ClEjj0pYuPjtLonLlKP
         OFpWbKJNvGkzV6vhxkS7alyE8CcSWyXPvyHqyxAQpF40zt0Yc0e6/rSoli+MJ/oQ30MX
         9sCgYpE7fB/wYgMQc9mB2FpZvGvl7W4ivPIzoHC02KQOU5ki8LfJR685bVfTay2lnHnr
         0pR2+daYS6Nhd5pz9aGGt2etjeG6AdlfRtnnfPmjXoB9dY5t6h3hB5u2vAOU5qxYGrsd
         9qlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pEKGWFSOAK/u199QIUuuEzlRLGGapLzaGZl017Zrnkg=;
        b=HdBtKWRxfny7ce/KtPRXaGDA7XVYyL+salQkHBP5BkVjBWzjydMX+AWJV8dN00jN64
         bfhxjE+SVyrtQAP6/MX7oe2ljnA+fp95bW2lHNESlVk1pzYf+IoNw6Km06zLtJEX0d/q
         McVJKTEpkyWpoqxPtrDsr1AIWh/HZJRN/H0c4q6kpZ0U4oHQxSH5zkuY5+Scna27hN93
         0tPRzTnAGdmxNzFRjCtFqhrBP/Uj8JK56JhHCdljuC5Vx6Kkk7eqJKvIQW8uEhPG2una
         HWF0eanHcAQIWwWDGsufPfo/VYq4j9DCA8pWRwxHX9uhWhzpAap7T5c1elVltC3wJ4/R
         Qjhg==
X-Gm-Message-State: APjAAAXJ3Yeg0wtvIxR3jaGkkKv0hS4cc2x/TU63MoOwt+ALQKCwYpJ+
	yw1QeDtoP86qe4eXeuc60LZLSlJInrUMfraLnBw=
X-Google-Smtp-Source: APXvYqz5ulgwNoYiWNs1ltitMmPI6s5sMYVpaGWJ/IgR3pA5yz3yKKLiHlbwVdRDSfFTc2+i5KMTub2lFuX8jLjicmQ=
X-Received: by 2002:ac8:4c89:: with SMTP id j9mr49700509qtv.29.1582556242874;
 Mon, 24 Feb 2020 06:57:22 -0800 (PST)
MIME-Version: 1.0
References: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
 <2c0fedf92f8a5cf805cc9908b438dab40ffd72ec.camel@linuxfoundation.org>
 <CAF_dkJAHqGUHi-W-bW6+69=89SCfxNB6yP7Ws+JjhOwRTjPxMw@mail.gmail.com> <0a93546525e6afdd05ee7320a7f0972951d96856.camel@gmail.com>
In-Reply-To: <0a93546525e6afdd05ee7320a7f0972951d96856.camel@gmail.com>
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Mon, 24 Feb 2020 09:56:56 -0500
Message-ID: <CAF_dkJBtKuVr+X5Gs5N_LPg3e_cpUw7J1AgArqcqD=g=pOoqGg@mail.gmail.com>
Subject: Re: [yocto] Debugging gdb built by Yocto
To: Khem Raj <raj.khem@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
X-Groupsio-MsgNum: 48584
Content-Type: multipart/mixed; boundary="000000000000b1aed1059f5396c1"

--000000000000b1aed1059f5396c1
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 20, 2020 at 4:18 PM Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, 2020-02-20 at 08:52 -0500, Patrick Doyle wrote:
> > I am trying to understand why I can't get stack traces from cores
> > file
> > on a mipsel system.  At the moment (after strategic additions of
> > breakpoints, printf statements, and more breakpoints, and lots of
> > internet combing), I am chasing down a rabbit hole related to the
> > facts that the MIPS build uses/produces PIE code (Position
> > Independent
> > Executables, which is somehow different than Position Independent
> > Code), a new ELF tag (MIPS_RLD_MAP_REL) was added 5 years ago to
> > binutils, gdb looks for that tag, but the musl dynamic loader is not
> > aware of it.  I don't know if this is the root cause of my problem or
> > just (another) rabbit hole.  If anybody has any suggestions, I'm all
> > ears.
>
> You must be on to something here, since musl does not do anything with
> MIPS_RLD_MAP*, does this all work well with glibc/mips in same settings
> ?
I haven't tried this with glibc/mips with the same settings, but I
expect it would work in that scenario, as I see support for
MIPS_RLD_MAP_REL in the glibc sources.

If anybody is interested, I have attached the two patches we applied
to get core dumps to work.  I am planning to clean them up a bit and
submit them upstream and/or to Yocto/OE's repo, but, in case I don't
(or I forget), and since you expressed an interest in this, I am
including them here.

I'm not sure if my email will make it to the list with attachments or
not.  We'll see.

--wpd

--000000000000b1aed1059f5396c1
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0007-Teach-dynlink.c-about-DT_MIPS_RLD_MAP_REL.patch"
Content-Disposition: attachment; 
	filename="0007-Teach-dynlink.c-about-DT_MIPS_RLD_MAP_REL.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k70l0fq20>
X-Attachment-Id: f_k70l0fq20

RnJvbSAyNjE3MmEyNWFlYzY0MzRmNzhhMWFjMjFkNTU4N2RjODE5MmU2YmE2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXRyaWNrIERveWxlIDxwZG95bGVAaXJvYm90LmNvbT4KRGF0
ZTogVGh1LCAyMCBGZWIgMjAyMCAxNzowMzozMCAtMDUwMApTdWJqZWN0OiBbUEFUQ0hdIFRlYWNo
IGR5bmxpbmsuYyBhYm91dCBEVF9NSVBTX1JMRF9NQVBfUkVMCgpSZWNvcmQgdGhlIGFkZHJlc3Mg
b2YgdGhlIGRlYnVnIHN0cnVjdHVyZSBpbiBhIGxvY2F0aW9uIGluZGljYXRlZCBieQpEVF9NSVBT
X1JMRF9NQVBfUkVMIHNvIHRoYXQgZGVidWdnZXJzIGNhbiBwcm9wZXJseSBkZWJ1ZyBjb3JlIGZp
bGVzIHdpdGgKZHluYW1pYyBsaWJyYXJpZXMuCgpTZWUgaHR0cHM6Ly9iaW51dGlscy5zb3VyY2V3
YXJlLm5hcmtpdmUuY29tL2FUYjFvZlhOL3BhdGNoLW1pcHMtc3VwcG9ydC1zaGFyZWQtbGlicmFy
eS1kZWJ1Zy13aXRoLW1pcHMtcGllCmZvciB0aGUgZGVmaW5pdGlvbiBvZiBEVF9NSVBTX1JMRF9N
QVBfUkVMLgotLS0KIGxkc28vZHlubGluay5jIHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbGRzby9keW5saW5rLmMg
Yi9sZHNvL2R5bmxpbmsuYwppbmRleCA2MzI1ZDhlYi4uODQyZTdiMzQgMTAwNjQ0Ci0tLSBhL2xk
c28vZHlubGluay5jCisrKyBiL2xkc28vZHlubGluay5jCkBAIC0xODY2LDYgKzE4NjYsMjMgQEAg
X05vcmV0dXJuIHZvaWQgX19kbHMzKHNpemVfdCAqc3ApCiAJCQlzaXplX3QgKnB0ciA9IChzaXpl
X3QgKikgYXBwLmR5bnZbaSsxXTsKIAkJCSpwdHIgPSAoc2l6ZV90KSZkZWJ1ZzsKIAkJfQorCQkv
KiBBY2NvcmRpbmcgdG8KKwkJICogaHR0cHM6Ly9iaW51dGlscy5zb3VyY2V3YXJlLm5hcmtpdmUu
Y29tL2FUYjFvZlhOL3BhdGNoLW1pcHMtc3VwcG9ydC1zaGFyZWQtbGlicmFyeS1kZWJ1Zy13aXRo
LW1pcHMtcGllCisJCSAqIFRoZSBkZWZpbml0aW9uIG9mIERUX01JUFNfUkxEX01BUF9SRUwgaXM6
CisJCSAqCisJCSAqIFRoaXMgbWVtYmVyIGlzIHVzZWQgYnkgZGVidWdnaW5nLiBJdCBjb250YWlu
cyBhIHJlbGF0aXZlIG9mZnNldCBmcm9tIHRoZSB0YWcncyBydW50aW1lCisJCSAqIGxvY2F0aW9u
IG9mIGEgMzItYml0IHdvcmQgaW4gdGhlIC5kYXRhIHNlY3Rpb24gd2hpY2ggaXMgc3VwcGxpZWQg
YnkgdGhlIGNvbXBpbGF0aW9uCisJCSAqIGVudmlyb25tZW50LiBUaGUgd29yZCdzIGNvbnRlbnRz
IGFyZSBub3Qgc3BlY2lmaWVkIGFuZCBwcm9ncmFtcyB1c2luZyB0aGlzIHZhbHVlIGFyZSBub3QK
KwkJICogQUJJIC0gY29tcGxpYW50LgorCQkgKgorCQkgKiBXZSBuZWVkIHRvIHN1cHBseSB0aGUg
YWRkcmVzcyBvZiB0aGUgYGRlYnVnYCBzdHJ1Y3R1cmUsIHJlbGF0aXZlIHRvIHRoZSBhZGRyZXNz
IG9mIHRoZQorCQkgKiBEVF9NSVBTX1JMRF9NQVBfUkVMIHRhZywgaW4gb3JkZXIgZm9yIGdkYiB0
byBzdWNjZXNzZnVsbHkgbG9hZCB0aGUgc2hhcmUgbGlicmFyaWVzCisJCSAqIHJlZmVyZW5jZWQg
YnkgYSBjb3JlIGZpbGUuCisJCSAqLworCQlpZiAoYXBwLmR5bnZbaV09PURUX01JUFNfUkxEX01B
UF9SRUwpIHsKKwkJCXZvaWQgKipwdHIgPSAodm9pZCAqKikoKGNoYXIgKikmYXBwLmR5bnZbaV0g
KyAodW5zaWduZWQpYXBwLmR5bnZbaSsxXSk7CisJCQkqcHRyID0gJmRlYnVnOworCQl9CiAJfQog
CiAJLyogVGhpcyBtdXN0IGJlIGRvbmUgYmVmb3JlIGZpbmFsIHJlbG9jYXRpb25zLCBzaW5jZSBp
dCBjYWxscwotLSAKMi4yNC4xCgo=

--000000000000b1aed1059f5396c1
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0006-Add-some-CFI-directives-to-MIPS-asm-sources.patch"
Content-Disposition: attachment; 
	filename="0006-Add-some-CFI-directives-to-MIPS-asm-sources.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k70l0fqb1>
X-Attachment-Id: f_k70l0fqb1

RnJvbSA4NGNmZGQ2M2NhYzc5MTc2ODljYjMwODA1NzU3MDcwYjUwYjliZjE5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYW5pZWxlIFRhbWlubyA8ZHRhbWlub0Bpcm9ib3QuY29tPgpE
YXRlOiBXZWQsIDI5IEphbiAyMDIwIDE4OjQzOjIyIC0wODAwClN1YmplY3Q6IFtQQVRDSF0gQWRk
IHNvbWUgQ0ZJIGRpcmVjdGl2ZXMgdG8gTUlQUyBhc20gc291cmNlcwoKLS0tCiBzcmMvaW50ZXJu
YWwvbWlwcy9zeXNjYWxsLnMgIHwgNCArKysrCiBzcmMvbGRzby9taXBzL2Rsc3ltLnMgICAgICAg
IHwgNiArKysrKysKIHNyYy90aHJlYWQvbWlwcy9zeXNjYWxsX2NwLnMgfCA5ICsrKysrKysrKwog
MyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3JjL2ludGVy
bmFsL21pcHMvc3lzY2FsbC5zIGIvc3JjL2ludGVybmFsL21pcHMvc3lzY2FsbC5zCmluZGV4IDVk
MGRlZjUyLi5mOWJjNTk5ZCAxMDA2NDQKLS0tIGEvc3JjL2ludGVybmFsL21pcHMvc3lzY2FsbC5z
CisrKyBiL3NyYy9pbnRlcm5hbC9taXBzL3N5c2NhbGwucwpAQCAtNCw2ICs0LDcgQEAKIC5oaWRk
ZW4gX19zeXNjYWxsCiAudHlwZSAgIF9fc3lzY2FsbCxAZnVuY3Rpb24KIF9fc3lzY2FsbDoKKyAg
ICAuY2ZpX3N0YXJ0cHJvYwogCW1vdmUgICAgJDIsICQ0CiAJbW92ZSAgICAkNCwgJDUKIAltb3Zl
ICAgICQ1LCAkNgpAQCAtMTMsNiArMTQsNyBAQCBfX3N5c2NhbGw6CiAJbHcgICAgICAkOSwgMjQo
JHNwKQogCWx3ICAgICAgJDEwLDI4KCRzcCkKIAlzdWJ1ICAgICRzcCwgJHNwLCAzMgorCS5jZmlf
YWRqdXN0X2NmYV9vZmZzZXQgMzIKIAlzdyAgICAgICQ4LCAxNigkc3ApCiAJc3cgICAgICAkOSwg
MjAoJHNwKQogCXN3ICAgICAgJDEwLDI0KCRzcCkKQEAgLTIxLDYgKzIzLDggQEAgX19zeXNjYWxs
OgogCXN5c2NhbGwKIAliZXEgICAgICQ3LCAkMCwgMWYKIAlhZGR1ICAgICRzcCwgJHNwLCAzMgor
ICAgIC5jZmlfYWRqdXN0X2NmYV9vZmZzZXQgLTMyCiAJc3VidSAgICAkMiwgJDAsICQyCiAxOglq
ciAgICAgICRyYQogCW5vcAorCS5jZmlfZW5kcHJvYwpkaWZmIC0tZ2l0IGEvc3JjL2xkc28vbWlw
cy9kbHN5bS5zIGIvc3JjL2xkc28vbWlwcy9kbHN5bS5zCmluZGV4IDE1NzNlNTE5Li5mMTAzNjYy
MSAxMDA2NDQKLS0tIGEvc3JjL2xkc28vbWlwcy9kbHN5bS5zCisrKyBiL3NyYy9sZHNvL21pcHMv
ZGxzeW0ucwpAQCAtMywxNSArMywyMSBAQAogLmhpZGRlbiBfX2Rsc3ltCiAudHlwZSBkbHN5bSxA
ZnVuY3Rpb24KIGRsc3ltOgorICAgIC5jZmlfc3RhcnRwcm9jCiAJbHVpICRncCwgJWhpKF9ncF9k
aXNwKQogCWFkZGl1ICRncCwgJWxvKF9ncF9kaXNwKQogCWFkZHUgJGdwLCAkZ3AsICQyNQogCW1v
dmUgJDYsICRyYQogCWx3ICQyNSwgJWNhbGwxNihfX2Rsc3ltKSgkZ3ApCiAJYWRkaXUgJHNwLCAk
c3AsIC0xNgorCS5jZmlfYWRqdXN0X2NmYV9vZmZzZXQgMTYKIAlzdyAkcmEsIDEyKCRzcCkKKyAg
ICAuY2ZpX3JlbF9vZmZzZXQgJHJhLCAxMgogCWphbHIgJDI1CiAJbm9wCiAJbHcgJHJhLCAxMigk
c3ApCisgICAgLmNmaV9yZXN0b3JlICRyYQogCWpyICRyYQogCWFkZGl1ICRzcCwgJHNwLCAxNgor
CS5jZmlfYWRqdXN0X2NmYV9vZmZzZXQgLTE2CisJLmNmaV9lbmRwcm9jCmRpZmYgLS1naXQgYS9z
cmMvdGhyZWFkL21pcHMvc3lzY2FsbF9jcC5zIGIvc3JjL3RocmVhZC9taXBzL3N5c2NhbGxfY3Au
cwppbmRleCBkMjg0NjI2NC4uYWIxNzM0OTYgMTAwNjQ0Ci0tLSBhL3NyYy90aHJlYWQvbWlwcy9z
eXNjYWxsX2NwLnMKKysrIGIvc3JjL3RocmVhZC9taXBzL3N5c2NhbGxfY3AucwpAQCAtMTQsOSAr
MTQsMTIgQEAKIC5oaWRkZW4gX19zeXNjYWxsX2NwX2FzbQogLnR5cGUgICBfX3N5c2NhbGxfY3Bf
YXNtLEBmdW5jdGlvbgogX19zeXNjYWxsX2NwX2FzbToKKyAgICAuY2ZpX3N0YXJ0cHJvYwogCXN1
YnUgICAgJHNwLCAkc3AsIDMyCisJLmNmaV9hZGp1c3RfY2ZhX29mZnNldCAzMgogX19jcF9iZWdp
bjoKIAlsdyAgICAgICQ0LCAwKCQ0KQorCS5jZmlfcmVtZW1iZXJfc3RhdGUKIAlibmUgICAgICQ0
LCAkMCwgX19jcF9jYW5jZWwKIAltb3ZlICAgICQyLCAkNQogCW1vdmUgICAgJDQsICQ2CkBAIC0z
NSwxNCArMzgsMTggQEAgX19jcF9iZWdpbjoKIF9fY3BfZW5kOgogCWJlcSAgICAgJDcsICQwLCAx
ZgogCWFkZHUgICAgJHNwLCAkc3AsIDMyCisJLmNmaV9hZGp1c3RfY2ZhX29mZnNldCAtMzIKIAlz
dWJ1ICAgICQyLCAkMCwgJDIKIDE6CWpyICAgICAgJHJhCiAJbm9wCiAKIF9fY3BfY2FuY2VsOgor
ICAgIC5jZmlfcmVzdG9yZV9zdGF0ZQogCW1vdmUgICAgJDIsICRyYQorCS5jZmlfcmVnaXN0ZXIg
JHJhLCAkMgogCWJhbCAgICAgMWYKIAlhZGR1ICAgICRzcCwgJHNwLCAzMgorCS5jZmlfYWRqdXN0
X2NmYV9vZmZzZXQgLTMyCiAJLmdwd29yZCAuCiAJLmdwd29yZCBfX2NhbmNlbAogMToJbHcgICAg
ICAkMywgKCRyYSkKQEAgLTUxLDMgKzU4LDUgQEAgX19jcF9jYW5jZWw6CiAJYWRkdSAgICAkMjUs
ICQyNSwgJDMKIAlqciAgICAgICQyNQogCW1vdmUgICAgJHJhLCAkMgorCS5jZmlfcmVzdG9yZSAk
cmEKKwkuY2ZpX2VuZHByb2MKLS0gCjIuMjQuMAoK

--000000000000b1aed1059f5396c1--
