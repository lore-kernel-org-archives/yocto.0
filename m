Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDFC5E00D54; Wed,  4 Oct 2017 03:51:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C61CE00D50
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 03:51:22 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id f72so3687074ioj.5
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 03:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JYvVYdFc1HDDwuqMjW17dquBp/YLhfr496P7QbhjHE8=;
	b=zzRFXiYI//dK1vIGeZS95hQKl9rCp6fCeCQlK9nz15nYyaz1Qqlo3T7gObChK0qjWn
	Xw3f8LkuNtZHdwAivkZ0sn0cCKcwD+NhRqcv4PYfCgtA3R/KQEFZuouD01S6xCDerVQ5
	cksvmmkvtLfQadEe96CDZnp+5mIpnjOa124yS8n8IT04Ix/SscoPspif99pbFTPBwNNI
	K6Yz47NGA0kWhIrNJ4mcWk6Vie1kl4syXPcjO+8gZDOZZ1PGrpptAVF5SJguKLi3PW33
	iOqYQwByDgNRDr/xRLT62hvd+P2BJKpTxZLIBLCpVnaTBXOnl3tRLva/O8A0ZiEYcy90
	iwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JYvVYdFc1HDDwuqMjW17dquBp/YLhfr496P7QbhjHE8=;
	b=LmnxmD1NIwEiGZFMV3581ItfvwwnEkQAtZsaLustg2f47ESkQB2bFvMWmPofSsr9O3
	YMi6SmIdk5Haw5uxlMSDZw4Tc4zeS23vvyLY0S+f123c5Od22GlvfNgJnmbETiN4GlMj
	dixarZtZHi+tgjh/2JJ+8vCDt7Bu2TuQYkU+3921uycfpN//rVYBuF0G9I+82k+t6W2A
	7bpR2Mt49PioduRaTJEl7G0j5yjk+BXHLQlBDbe0EtzFVNeQgfg/v1uxnFwBudyToer8
	MPIVyKp6SSjI9CO1HVxYWGdf/cizPgWUbGDcADwSoXKfn69mLWA/+uBI3WzaTrTwnXt9
	ETYA==
X-Gm-Message-State: AMCzsaVD8vpWMFHDU6JJ+00MmByINATIc0JTekRMVhve/58MBPxpFWBl
	bR21U6drz8hVl460pIocs7EiCZPx1NNUw0zg3gpNFQ==
X-Google-Smtp-Source: AOwi7QAvbSJrRHrwoQiMrnBEuCOr21hOAT5kvSMRWHThBKIgE349sza7csS6pfHtVvVtbUQsbWk9ozzywqG4iW+d4OI=
X-Received: by 10.107.164.28 with SMTP id n28mr31009474ioe.175.1507114281546; 
	Wed, 04 Oct 2017 03:51:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.134 with HTTP; Wed, 4 Oct 2017 03:51:01 -0700 (PDT)
In-Reply-To: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
References: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Oct 2017 11:51:01 +0100
Message-ID: <CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Wed, 04 Oct 2017 10:51:22 -0000
Content-Type: multipart/alternative; boundary="001a114223ac63564d055ab66345"

--001a114223ac63564d055ab66345
Content-Type: text/plain; charset="UTF-8"

On 3 October 2017 at 18:15, Eric Schwarz <eas@sw-optimization.com> wrote:

>  DEPENDS += "bc-native dtc-native"
> +DEPENDS_append = " python-native"
> +DEPENDS_append_x86-64 = " iasl-native swig-native"
>

Don't _append when you can just extend the assignment above.

Depending on python-native does nothing as the binary isn't in $PATH still.

Can you provide a configuration to make u-boot build on x86 for testing?

Ross

--001a114223ac63564d055ab66345
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 October 2017 at 18:15, Eric Schwarz <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:eas@sw-optimization.com" target=3D"_blank">eas@sw-op=
timization.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">=C2=A0DEPENDS +=3D &quot;=
bc-native dtc-native&quot;<br>
+DEPENDS_append =3D &quot; python-native&quot;<br>
+DEPENDS_append_x86-64 =3D &quot; iasl-native swig-native&quot;<br></blockq=
uote><div><br></div><div>Don&#39;t _append when you can just extend the ass=
ignment above.</div><div><br></div><div>Depending on python-native does not=
hing as the binary isn&#39;t in $PATH still.</div><div><br></div><div>Can y=
ou provide a configuration to make u-boot build on x86 for testing?</div><d=
iv><br></div><div>Ross=C2=A0</div></div></div></div>

--001a114223ac63564d055ab66345--
