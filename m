Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BDD6E00D26; Fri, 18 Aug 2017 09:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25293E00AD0
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 09:37:46 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id g131so101639420oic.3
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 09:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:from:date:message-id:subject:to;
	bh=lFkLjsbEiPBzglXukHm/5QrCiHi1T2LBfLyV8H8lI0Y=;
	b=SQSiv4A8X2DwRj/6vOqzWFNS10N6FXRSwmv+d5/TZBs6lRVyly64LMgPTTfl01CGY+
	pDrY1mrchDh4LAaAGUViKB1hvrVzd8qyQJxfiD3O0CSlJAEj9alm/9Ytm4GBd1j92jnl
	Gwky3KjFiU6Btg3JsOCsbVNFhsI8O+wAu0Q6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lFkLjsbEiPBzglXukHm/5QrCiHi1T2LBfLyV8H8lI0Y=;
	b=JKAr4IH2tUZ3VzbQBnhjBtq+8suHQ4dz7zIQ5tmvdrl8bBWqyDFK9V+NRvaSEqu4+i
	dbCfdUwHFS2A3K2FAeWJTFZ+7idMo9zjVhMwXTp3Rk0+nSXj/yLuaAVeMCMhRFGJWLDQ
	O4JNPf3UZGUyEpoZRtx/4Aa1ixi4OfioyouCwL0kBv4zrcZrUmLz3uosdQetsVgdyZUd
	gJVMNJLDDNL3/3y1hpOWhmJL6TSt8fwYR9KL+tCh/vwQlnuJPgqEttk0dn2PKsge698W
	HlZeFIVenoiw0q2Pm8MoZN1o6GYQdCDDpP59g/k5Xn1ms2StHz1PBNzxVvKNQ+unqNPH
	kdWw==
X-Gm-Message-State: AHYfb5gwblwr8ygo7swWaalKrvPrTqHO8uU7BhKwQQ/3u5+fP7RbHiCa
	h/wRlc+9oXavpdkQCG8ABd7D+XjC6czXNPM=
X-Received: by 10.202.106.67 with SMTP id f64mr13335013oic.85.1503074265623;
	Fri, 18 Aug 2017 09:37:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.117.90 with HTTP; Fri, 18 Aug 2017 09:37:45 -0700 (PDT)
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Fri, 18 Aug 2017 12:37:45 -0400
Message-ID: <CAP3gWc9wu0_86_QjKQOyKXXOc-5pD4H61sU2i_WMY2=rooCT6g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Predictable network interface names without systemd?
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
X-List-Received-Date: Fri, 18 Aug 2017 16:37:47 -0000
Content-Type: multipart/alternative; boundary="001a1141b688ac885f055709bf24"

--001a1141b688ac885f055709bf24
Content-Type: text/plain; charset="UTF-8"

Does anybody here know of a way to get predictable network interface names
<https://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/>
without systemd?

I realize I could write a script to do it myself, but I was hoping there's
an easier solution that's ready to go (or close to it).

Thanks in advance!
Aaron

--001a1141b688ac885f055709bf24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anybody here know of a way to get <a href=3D"https://=
www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/=
">predictable network interface names</a> without systemd?<div><br></div><d=
iv>I realize I could write a script to do it myself, but I was hoping there=
&#39;s an easier solution that&#39;s ready to go (or close to it).</div><di=
v><br></div><div>Thanks in advance!</div><div>Aaron<div class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"></div>
</div></div>

--001a1141b688ac885f055709bf24--
