Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B69BE004F1; Wed,  5 Oct 2016 08:35:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E5A1E0044F
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 08:35:06 -0700 (PDT)
Received: by mail-ua0-f196.google.com with SMTP id p25so4537253uaa.3
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 08:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Rr3GXQjY7l5D7VYYCKvt6Lx4ujz6OIjWFAnSMFohQzQ=;
	b=zd5TOyXSRJnxk84GFMWMNxQta0Ops4y8SNYM/eNjSN8uRQjVWI8rvthUIyTGsnuuxJ
	Oz/l9xOizyqfvMi2hnG05/DcqQ1SJ+Bpe2JF5CwK+2UivgeNgwseEbGa99+DjY4IdzLi
	W+mT/U0tJOcp722vs2msehUbD5X+LwpkQTbrkxVJqyd3WpSzSS/RARVM9rCaVpZWIlNU
	iEUXOfIlLaG9p2jf+XgojpSixL2iWYVp2PARYGFqgj7mJ2NJncDoy3TeKIC8T7Aj4E/k
	uhZ/Si42HJ3eL7csfMqCeUQkXsVHL/WPr9UGCKkiO/FbeMEnlkq13B2RvDpaV7+/aEwC
	agQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Rr3GXQjY7l5D7VYYCKvt6Lx4ujz6OIjWFAnSMFohQzQ=;
	b=bVWlO9YqZB5/1A4ZVoURPmP0oEZSnj2Yji9uK6nplbgXMRFVWcm5A4KuL3uHz75HdL
	iLl0UEtD5C4NIkF0u7GhOAVdG4q3YIPey/wjiITunFi84ElPydkVrMLaU3c9FzE0++GX
	ZenM/oaQDPB6Pdbp/6D87ya7/bwUputDDOw9Yt2CKz7aeid8Y/fxUVkMtfD7P86F+z25
	15eQp0NlUvjREnPQTiqhKSsoCGz0xqQmYsT07KsiZ5a9p6Hcq904W/b4zgPNglaYTKVb
	qI4FpLKRp0+dih4qu/jpe/FqzZHzIjgvNcj6nUa9j0wDfskNO7sKKkhk5G5Qhu7SqOjM
	gdcA==
X-Gm-Message-State: AA6/9RmIMFCinB5rhn0nbgwahBdSv0DIcpnUCPSnx5qV8uNPJkWVOaEm+3DCNcW2Y4kaVLV/QKh1NsahxGFM/Q==
X-Received: by 10.176.64.229 with SMTP id i92mr7201285uad.32.1475681705557;
	Wed, 05 Oct 2016 08:35:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Wed, 5 Oct 2016 08:34:35 -0700 (PDT)
In-Reply-To: <1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Oct 2016 08:34:35 -0700
Message-ID: <CAMKF1soSLUCxQvf0fgKotA+Tvahs8jKZGOZ7AuB8=_9x3ZW+Gw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 15:35:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I wonder why do we want to override default PACKAGES here. If we can leave
that alone things would work out on its own.

On Tue, Oct 4, 2016 at 11:55 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wed, 05 Oct 2016 05:12:27 Dinh Nguyen wrote:
>> Thanks much Paul.
>>
>> >>>> PACKAGES =3D "${PN}" should work
>>
>> It solved the early error =E2=80=9C c-mlib listed in PACKAGES multiple t=
imes, this
>> leads to packaging errors=E2=80=9D =E2=80=94 Thanks again.
>>
>>
>> But running into other issue. Below is my do_install
>>
>> do_install () {
>>       oe_runmake all
>>       install -d ${D}${libdir}
>>       install -d ${D}${bindir}
>>       install -m 0644 ${S}/target/libmlib.so ${D}${libdir}
>>       install -m 0644 ${S}/target/datamodel_cache ${D}${bindir}
>>       install -m 0644 ${S}/target/invoke ${D}${bindir}
>>       install -m 0644 ${S}/target/invoke_b ${D}${bindir}
>>       install -m 0644 ${S}/target/protocol_infra ${D}${bindir}
>>       install -m 0644 ${S}/target/publisher ${D}${bindir}
>>       install -m 0644 ${S}/target/rpc-register ${D}${bindir}
>>       install -m 0644 ${S}/target/service ${D}${bindir}
>>       install -m 0644 ${S}/target/subscriber ${D}${bindir}
>> }
>>
>> PACKAGES =3D "${PN}"
>> FILES_${PN} =3D "/usr/bin/datamodel_cache \
>>               /usr/bin/invoke \
>>               /usr/bin/invoke_b \
>>               /usr/lib/libmlib.so \
>>               /usr/bin/protocol_infra \
>>               /usr/bin/publisher \
>>               /usr/bin/rpc-register \
>>               /usr/bin/service \
>>               /usr/bin/subscriber"
>>
>>
>>
>> And under ${S}/target, it has the libmlib.so and other binaries built,
>> And I intended to copy the .so to ${D}${libdir} and binarires to
>> ${D}${bindir}. I am able to build the c-mlib package as shown below:
>
>> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ find
>> tmp/deploy | grep c-mlib
>> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
>>
>>
>> The problem is that, after "bitbake c-mlib=E2=80=9D, it moved all source=
s under ${S}
>> to /usr/src/debug etc..
>> I googled but unable to find the root cause.
>> Would you and other can help to identify the issue?
>> NOTE: Executing RunQueue Tasks
>> ERROR: QA Issue: c-mlib: Files/directories were installed but not shippe=
d
>>   /usr/src
>>   /usr/lib/.debug
>>   /usr/lib/.debug/libmlib.so
>>   /usr/src/debug
>>   /usr/src/debug/c-mlib
>>   /usr/src/debug/c-mlib/1.1-r0
>>   /usr/src/debug/c-mlib/1.1-r0/git
>>   /usr/src/debug/c-mlib/1.1-r0/git/src
>>   /usr/src/debug/c-mlib/1.1-r0/git/include
>>   /usr/src/debug/c-mlib/1.1-r0/git/deps
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_metrics.c
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_util.c
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_local_metrics.c
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/utils
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/service_sdk
>>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_service_cach=
e.c
>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_wrapper.c
>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_dsa.c
>> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/include
>> =E2=80=A6.
>
> This is what I suspected would happen - these files would normally be par=
t of
> the ${PN}-dbg package, but since you've removed that from PACKAGES, they =
are
> ending up unpackaged and that is not allowed.
>
> Like the other responder I would suggest you not set PACKAGES - instead y=
ou
> just need to take steps so that the .so file doesn't end up in the ${PN}-=
dev
> package. You could do something like this:
>
> FILES_${PN}-dev =3D "${includedir}"
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

