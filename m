Return-Path: <anders@openpuma.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41947E00D35; Tue, 13 Dec 2016 20:59:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA4CE00D26
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 20:59:44 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id y198so9242596oia.1
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 20:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=openpuma-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=YgkilKSj2cxIxZq5Few/oEbcmrUvuqfK6O9uGCkX5g4=;
	b=yijcj3Zj+hT4YnAldtMy3g9cO4tvTrNVKVBvy3Gph9AHhOEuWMTa6LA6yc/bQOJd7r
	6Tkcu+BNV46L4szQ9xNJzehU/zcOphJ0gqdrjSFgBrvtDlnGcmS8wY54lC8MW0pj3d0T
	NwRxEzkPXeh5beMb0JMb/+yIYq9teI4kedE383WOVqcVYNh++xRD2IXRR689LKt2LWrn
	ztv9aL0d8Kr8raegKRXXqNYXYEziDO5/45LzSGNDP3gnyI2r8I6aUrnk4LLCcpJD4t1+
	JuPHhorADxgtPp6aVEuodw6jAaig8rLF4VO9pIyNQdrGe/Syfg2KW6zqLN+445Cqj6VF
	03qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YgkilKSj2cxIxZq5Few/oEbcmrUvuqfK6O9uGCkX5g4=;
	b=BPMSPZYL2DF1GxatVcWmTRLQB050IYzoMBAmalmtY/gAjp1nF7lKAeFv7eda4g29Ab
	sS47Il5PEuAKVdS/1Em6Xb4FBo8Cw43DXzUodVWQW5OZmNnDd87C7wR/iyIFkfMKhxfP
	ywW9trrlgh6/twWGl6fw0++yssINxM55svHToPXK2xvr/5uEhXz/DEzGylNjigWEOK/B
	4M3GnnjeX+HmM0UNrMwIjzZm804kUrBkKHcMHk/tW/MED2sh9nZa02YVGkJElIOx2eAN
	yKKj/wo+ewKzINX/dUkHs2nP1xsXo75XNVTRc434wsdF+lD9WWZdGsz1svGV1dqdPz0f
	BF4g==
X-Gm-Message-State: AKaTC008JvY236fRgip//NumWxpPieYc33TTd1wOyqs4pF1u6SnSCR1CfaUmn+D8ETI3PKnlPsj7dNW4ZEJc0A==
X-Received: by 10.157.15.154 with SMTP id d26mr61965243otd.85.1481691583424;
	Tue, 13 Dec 2016 20:59:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.236.83 with HTTP; Tue, 13 Dec 2016 20:59:42 -0800 (PST)
X-Originating-IP: [172.88.176.4]
From: Anders Oleson <anders@openpuma.org>
Date: Tue, 13 Dec 2016 20:59:42 -0800
Message-ID: <CAKTo2En3PRxQ2wsANGF8k+Zt8n4tp7choWqdu8yrbct996YQdA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: possible bug with dpkg-native with sstate-cache
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
X-List-Received-Date: Wed, 14 Dec 2016 04:59:47 -0000
X-Groupsio-MsgNum: 33469
Content-Type: multipart/mixed; boundary=001a113cf2067f951105439734b5

--001a113cf2067f951105439734b5
Content-Type: text/plain; charset=UTF-8

I have found what I think is a sneaky nasty bug when using package_deb with
SSTATE_MIRRORS on RPM based build hosts. Below is a short description of what
I found and our workaround. A patch that adds a patch that is applied to the
packager that packages the real packager.  To avoid this sneaking failure mode
when building without building when using the cache (its all so very
meta, btw.).

Don't ask how we found this; it wasn't pretty.

Note: the fix approach below actually patches dpkg on the target too,
but I do not
know how to easily make the patch only apply to dpkg-native and not also dpkg.
But in this case it should be fine anyhow; there is no reason that dpkg on the
target should not behave this way too. I have checked the upstream and the
lines in question have never been touched - it is possible they may want to
eventually upstream this too (???).

For future knowledge, is there an easy way to have a SRC_URI list that is
different for dpkg-native than for dpkg?

Also, this is my first post to the group, so apologies if this is not the
right place or way to upload a potential patch; set me straight if so.

Thanks, guys.

Anders.

    The dpkg binary contains a hard-coded CONFIGDIR path which normally points
    to /etc/dpkg. However, if /etc/dpkg/dpkg.cfg.d doesn't exist (ENOTDIR) it
    fails with an error, even though it does not fail when the directory exists
    but is empty (ENOENT).

    Normally this is not an issue, but when dpkg-native is built, CONFIGDIR
    points to a directory in the sysroot under work. If that binary is later
    cached in the sstate-cache and mirrored to another host that does not
    contain the same work directory, the dpkg binary fails due to this missing
    directory during certain packaging steps involving apt-get. This "leaks"
    information about the build host into the sstate-cache in an unintended way
    that causes a failure.

    The dpkg utility does not currently allow a command line or environment
    override of CONFIGDIR, so this patches dpkg so that a missing directory is
    the same as an empty one and the failure is avoided. The dpkg-native is
    always passed command line arguments and does not need, nor contain, any
    configuration data in this directory in the first place

--001a113cf2067f951105439734b5
Content-Type: text/plain; charset=US-ASCII; name="patch.txt"
Content-Disposition: attachment; filename="patch.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iwogtyjo0

Y29tbWl0IDQ4NDQxMzE4Y2VkMjk4ZTU4YmEyZWE0YWUxZTIzMzIyNTlkY2I2ZjgKQXV0aG9yOiBB
bmRlcnMgPGFuZGVyc0BvcGVucHVtYS5vcmc+CkRhdGU6ICAgVHVlIERlYyAxMyAyMDoxMDoyNSAy
MDE2IC0wODAwCgogICAgcGF0Y2ggdG8gd29ya2Fyb3VuZCBzc3RhdGUtY2FjaGUgYnVnIGluIGRw
a2cKICAgIAogICAgVGhlIGRwa2cgYmluYXJ5IGNvbnRhaW5zIGEgaGFyZC1jb2RlZCBDT05GSUdE
SVIgcGF0aCB3aGljaCBub3JtYWxseSBwb2ludHMgdG8KICAgIC9ldGMvZHBrZy4gSG93ZXZlciwg
aWYgL2V0Yy9kcGtnL2Rwa2cuY2ZnLmQgZG9lc24ndCBleGlzdCAoRU5PVERJUikgaXQgZmFpbHMK
ICAgIHdpdGggYW4gZXJyb3IsIGV2ZW4gdGhvdWdoIGl0IGRvZXMgbm90IGZhaWwgd2hlbiB0aGUg
ZGlyZWN0b3J5IGV4aXN0cyBidXQgaXMKICAgIGVtcHR5IChFTk9FTlQpLgogICAgCiAgICBOb3Jt
YWxseSB0aGlzIGlzIG5vdCBhbiBpc3N1ZSwgYnV0IHdoZW4gZHBrZy1uYXRpdmUgaXMgYnVpbHQs
IENPTkZJR0RJUiBwb2ludHMKICAgIHRvIGEgZGlyZWN0b3J5IGluIHRoZSBzeXNyb290IHVuZGVy
IHdvcmsuIElmIHRoYXQgYmluYXJ5IGlzIGxhdGVyIGNhY2hlZCBpbgogICAgdGhlIHNzdGF0ZS1j
YWNoZSBhbmQgbWlycm9yZWQgdG8gYW5vdGhlciBob3N0IHRoYXQgZG9lcyBub3QgY29udGFpbiB0
aGUgc2FtZQogICAgd29yayBkaXJlY3RvcnksIHRoZSBkcGtnIGJpbmFyeSBmYWlscyBkdWUgdG8g
dGhpcyBtaXNzaW5nIGRpcmVjdG9yeSBkdXJpbmcKICAgIGNlcnRhaW4gcGFja2FnaW5nIHN0ZXBz
IGludm9sdmluZyBhcHQtZ2V0LiBUaGlzICJsZWFrcyIgaW5mb3JtYXRpb24gYWJvdXQgdGhlCiAg
ICBidWlsZCBob3N0IGludG8gdGhlIHNzdGF0ZS1jYWNoZSBpbiBhbiB1bmludGVuZGVkIHdheSB0
aGF0IGNhdXNlcyBhIGZhaWx1cmUuCiAgICAKICAgIFRoZSBkcGtnIHV0aWxpdHkgZG9lcyBub3Qg
Y3VycmVudGx5IGFsbG93IGEgY29tbWFuZCBsaW5lIG9yIGVudmlyb25tZW50CiAgICBvdmVycmlk
ZSBvZiBDT05GSUdESVIsIHNvIHRoaXMgcGF0Y2hlcyBkcGtnIHNvIHRoYXQgYSBtaXNzaW5nIGRp
cmVjdG9yeSBpcyB0aGUKICAgIHNhbWUgYXMgYW4gZW1wdHkgb25lIGFuZCB0aGUgZmFpbHVyZSBp
cyBhdm9pZGVkLiBUaGUgZHBrZy1uYXRpdmUgaXMgYWx3YXlzCiAgICBwYXNzZWQgY29tbWFuZCBs
aW5lIGFyZ3VtZW50cyBhbmQgZG9lcyBub3QgbmVlZCwgbm9yIGNvbnRhaW4sIGFueQogICAgY29u
ZmlndXJhdGlvbiBkYXRhIGluIHRoaXMgZGlyZWN0b3J5IGluIHRoZSBmaXJzdCBwbGFjZS4KCmRp
ZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZHBrZy9kcGtnL2FsbG93LW1pc3Npbmct
Y29uZmlnLWRpci5wYXRjaCBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9kcGtnL2Rwa2cvYWxsb3ct
bWlzc2luZy1jb25maWctZGlyLnBhdGNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAuLjhhNTIwNjUKLS0tIC9kZXYvbnVsbAorKysgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZHBr
Zy9kcGtnL2FsbG93LW1pc3NpbmctY29uZmlnLWRpci5wYXRjaApAQCAtMCwwICsxLDE2IEBACitJ
bmRleDogZHBrZy0xLjE4LjcvbGliL2Rwa2cvb3B0aW9ucy5jCis9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CistLS0gZHBr
Zy0xLjE4Ljcub3JpZy9saWIvZHBrZy9vcHRpb25zLmMKKysrKyBkcGtnLTEuMTguNy9saWIvZHBr
Zy9vcHRpb25zLmMKK0BAIC0xNzIsMTEgKzE3Miw4IEBAIGRwa2dfb3B0aW9uc19sb2FkX2Rpcihj
b25zdCBjaGFyICpwcm9nLAorIAorICAgZGxpc3RfbiA9IHNjYW5kaXIoZGlybmFtZSwgJmRsaXN0
LCB2YWxpZF9jb25maWdfZmlsZW5hbWUsIGFscGhhc29ydCk7CisgICBpZiAoZGxpc3RfbiA8IDAp
IHsKKy0gICAgaWYgKGVycm5vID09IEVOT0VOVCkgeworICAgICAgIGZyZWUoZGlybmFtZSk7Cisg
ICAgICAgcmV0dXJuOworLSAgICB9IGVsc2UKKy0gICAgICBvaHNoaXRlKF8oImVycm9yIG9wZW5p
bmcgY29uZmlndXJhdGlvbiBkaXJlY3RvcnkgJyVzJyIpLCBkaXJuYW1lKTsKKyAgIH0KKyAKKyAg
IGZvciAoaSA9IDA7IGkgPCBkbGlzdF9uOyBpKyspIHsKZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBl
cy1kZXZ0b29scy9kcGtnL2Rwa2dfMS4xOC43LmJiIGIvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2Rw
a2cvZHBrZ18xLjE4LjcuYmIKaW5kZXggMjhmZGMxMy4uOTgxZmM2YiAxMDA2NDQKLS0tIGEvbWV0
YS9yZWNpcGVzLWRldnRvb2xzL2Rwa2cvZHBrZ18xLjE4LjcuYmIKKysrIGIvbWV0YS9yZWNpcGVz
LWRldnRvb2xzL2Rwa2cvZHBrZ18xLjE4LjcuYmIKQEAgLTcsNiArNyw3IEBAIFNSQ19VUkkgPSAi
aHR0cDovL3NuYXBzaG90LmRlYmlhbi5vcmcvYXJjaGl2ZS9kZWJpYW4vMjAxNjA1MDlUMTAwMDQy
Wi9wb29sL21haW4vCiAgICAgICAgICAgIGZpbGU6Ly9hcmNoX3BtLnBhdGNoIFwKICAgICAgICAg
ICAgZmlsZTovL2Rwa2ctY29uZmlndXJlLnNlcnZpY2UgXAogICAgICAgICAgICBmaWxlOi8vYWRk
X2FybWViX3RyaXBsZXRfZW50cnkucGF0Y2ggXAorICAgICAgICAgICBmaWxlOi8vYWxsb3ctbWlz
c2luZy1jb25maWctZGlyLnBhdGNoIFwKICAgICAgICAgICAgZmlsZTovLzAwMDItQWRhcHQtdG8t
bGludXgtd3JzLWtlcm5lbC12ZXJzaW9uLXdoaWNoLWhhcy1jaGFyYWN0ZS5wYXRjaCBcCiAgICAg
ICAgICAgIGZpbGU6Ly8wMDAzLU91ci1wcmUtcG9zdGluc3RzLWV4cGVjdC1ELXRvLWJlLXNldC13
aGVuLXJ1bm5pbmctaW4ucGF0Y2ggXAogICAgICAgICAgICBmaWxlOi8vMDAwNC1UaGUtbHV0aW1l
cy1mdW5jdGlvbi1kb2Vzbi10LXdvcmstcHJvcGVybHktZm9yLWFsbC1zLnBhdGNoIFwK

--001a113cf2067f951105439734b5--
