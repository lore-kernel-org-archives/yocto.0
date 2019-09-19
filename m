Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64F7CE009E2; Thu, 19 Sep 2019 06:40:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0B4E003E1
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 06:39:58 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id o12so4263410qtf.3
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 06:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hR7eXteGej41toGDNKLloO4fagK4ktr0Q/t3eif/Ax0=;
	b=OFOY/Tjm+pgrnQVE49mUq78lMBwmB4vThJVhQITnryqqWddqLQazGwjEUy3vxn3prF
	w3y7rwFT8n95n5od7NDoZ4n5DQ0DMUVi5luAv7yED0uYkZheFzCGZ/+79gclnZqPs0FF
	PmVqO2jETNBBGPQaYxKKq37hViQO3Ch88B0SBzAIk1Cveyy/0/WrCg7TISMZwCu4FrKU
	uW5U/so7b9LN1yKkzwJH0SSdeNjWdfkHskSxDgJ+NPeY1JSUQ7RkJB+QbY/ryS6molx/
	k/k4FrN3WD8zA1MgQ079TfgrDJ34j9x+yTU69iViDtBSpycS9dbjq1n0wwVnwqbK9TJt
	banQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hR7eXteGej41toGDNKLloO4fagK4ktr0Q/t3eif/Ax0=;
	b=s+/ohe6M1MdJhKH1G9pMRp/KMvUR/RvJS7euShmFRgGg+eK6hO1RfPMit1PDH0NuIC
	b4Naa7xiXPNEVfgo8nJEqTRbJ8X3rCERo8hvuk31NZqeFXYbxR1zOdPEvXNwRQ/J0ovs
	sZDbABGRhRWJ+tDEdNjHVKH2aSMZHdOcxU+PtSzUwJLiQDtjZkACa6P1VeuC8GeiRIhy
	N/n/JWkhfWDf7ri74g5ujdBJsF2kmpOlkhUzavdZMNqr0zqs/tOSCtbKtqHQ6p6fKqLh
	0m/3ZLfFhErnANxg2xg0tUKqG6ejecoFULOJITtfQOPigZUwM/2gB8PQsf9gf9UJcDOm
	2uGA==
X-Gm-Message-State: APjAAAWORAEShMnTRsp21ovdrexLnMXLX97QBYcRjSbQrEHZLbF9A4UP
	R361e0jbNk9HQQL7RghIgKci0xq0zhrB2MM5SawPxSDT
X-Google-Smtp-Source: APXvYqy5NNHW4DGVS6OZAapVa6sSKW0vyNWVT8sJAHMC+AIIs0TjOfim9rUX98SHNiI6CgoFsqXvM+WXElNi94lPSJ0=
X-Received: by 2002:a0c:9289:: with SMTP id b9mr7905431qvb.211.1568900398144; 
	Thu, 19 Sep 2019 06:39:58 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 19 Sep 2019 09:39:32 -0400
Message-ID: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to share files between recipes?
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
X-List-Received-Date: Thu, 19 Sep 2019 13:40:00 -0000
Content-Type: text/plain; charset="UTF-8"

I have a set of data files (cryptographic keys) that I would like to
share among several recipes in my build.  They won't go into the
rootfs, but they will be used by multiple recipes that construct the
rootfs.  So, to the best of my understanding, it seems like I should
put them in sysroot and somehow access them from there.

I constructed the following recipe:
SUMMARY = "Development keys used by my image"
DESCRIPTION = "Install the development keys in the sysroot so that they \
can be referenced by other recipes."

LICENSE = "Proprietary"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/Proprietary;md5=0557f9d92cf58f2ccdd50f62f8ac0b28"

SRC_URI = "file://keys"

do_install() {
    install -d ${D}/${datadir}
    install -m 755 -d ${WORKDIR}/keys ${D}/${datadir}
}

FILES_${PN} += "${datadir}/keys/"

But when I attempt to bitbake this recipe, I get the following error:
ERROR: development-keys-1.0-r0 do_package: QA Issue: development-keys:
Files/directories were installed but not shipped in any package:
  /usr
  /usr/share

Ummm.... I don't put anything in /usr or /usr/share.
I don't inherit from anything (other than base.bbclass) that puts
anything in /usr or /usr/share.

Does base.bbclass put anything in /usr or /usr/share?
Why?
I suppose I could follow the advice given in the error message and

rm -rf ${D}/usr

in my do_install() task, but I'd like to understand why and how those
directories are being created in the first place?

--wpd

