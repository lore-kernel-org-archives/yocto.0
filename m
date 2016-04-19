Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB5D2E00D7F; Tue, 19 Apr 2016 10:14:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0B66E0077E
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 10:14:17 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id x7so6479408qkd.3
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 10:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=hjhQNdZQkdFGLDjVIIC091pzkNKEVNP+YusqQsfjzZU=;
	b=s3rTyAIy7+iFH/HkinLotFDxOCQ7UcdhP5v6w8dTIWLO3nXpVIBkiprwKe1IU3hBwd
	6n07E/f3uIlc0b+XStrABMsq7NmL0YM06TuLunlqxF7+Hec8JEeFpJ/IMFYlePXitVLx
	2MBLPeJlzdCX+kWK0Mt2lE42rUrOtTeM0kEDr5er/oUsQ9O6o1l16ORPK+tyT5H0A931
	SY4IvMJ/SgbSSje6mky0zwSOSNYwg/IkLOFniG3OUQVKMTjm2VUP2wwSN8JhXTpVUw9Y
	3nwJ2diW6V2Rv/k1gKWKOytPeskwPKF/jAp9wu4x+/uQFAFWi/aMSl9MeP5B6QWUgphk
	MpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=hjhQNdZQkdFGLDjVIIC091pzkNKEVNP+YusqQsfjzZU=;
	b=AszJ90Ksmd+vecfY4V7/O6Qte/Fh6JwSg9MfAAWBguXaN6Z4AkmjaygzLf/bdUqg/b
	I+i7B3dCWkxz+z41m9rHrJkPSeNPcjMmVtCrBhcFUprFI6SZxV+krTcclWgCMcLzqMRa
	IBsypLk/gxu7JxoyIVXn2MSlDDa0i9CSA8dsD/U68cXgqYKVhWk2kGUG5PpbZeytn9GU
	8DgnrU/LngYhVU/XOxWbZl9kCSBM1bA0beKA1VXIgkH0A6JVrdj66gXMzGgE0m07hq1p
	2YEwZ/BRdzvaPYh2xczL/mACna7RRrOvHre5ylHPXNh+u6t2pxk6qPimdOqMQg37yaxH
	s9bw==
X-Gm-Message-State: AOPr4FVLS3Xh2tZZBJ0POx1fnKFdB8e2EOS3LNjvyuxGUsrMuOJ/YYCDQZ+uPC4D+lCBqzYv12l2yRO6U4E7gw==
MIME-Version: 1.0
X-Received: by 10.55.155.76 with SMTP id d73mr5309017qke.26.1461086056585;
	Tue, 19 Apr 2016 10:14:16 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Tue, 19 Apr 2016 10:14:15 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Tue, 19 Apr 2016 10:14:15 -0700 (PDT)
In-Reply-To: <CAJTo0LZ+xC=STKFwa2J4Kv1Pw4ruLeG2HhAZnxrQV5aJN56XOg@mail.gmail.com>
References: <CAJTo0LZtDL-hbxXmYWdgf7HTZtSA4D2FgRKtx1+n6Rqxq50n=g@mail.gmail.com>
	<CAMKF1spGMHQMVP_-mrHYmDnjM+DPk0mktK_e+9G1bekuP6PnUA@mail.gmail.com>
	<1461019868.9308.224.camel@linuxfoundation.org>
	<CAMKF1spKB=HXLipbo_qFBY6mo67LOWAB-uQxRA25ghZTwD=i5Q@mail.gmail.com>
	<CABcZANm7+ewyU8d2iMkMM6uNB7ZSBhcToE3g=rKWkAxrGCP85w@mail.gmail.com>
	<CAJTo0LZ+xC=STKFwa2J4Kv1Pw4ruLeG2HhAZnxrQV5aJN56XOg@mail.gmail.com>
Date: Tue, 19 Apr 2016 10:14:15 -0700
Message-ID: <CAMKF1soyXLG=66eEnSNKby_BmZCsHM62Ua-9qgCxh23Su-gXiQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org, Christopher Larson <clarson@kergoth.com>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] bugzilla.yoctoproject.org policy for bugs against multiple releases
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
X-List-Received-Date: Tue, 19 Apr 2016 17:14:22 -0000
Content-Type: multipart/alternative; boundary=94eb2c073c3e63a2d80530d99ba6

--94eb2c073c3e63a2d80530d99ba6
Content-Type: text/plain; charset=UTF-8

See how gcc project manages it. May be that is sufficient for us too
On Apr 19, 2016 9:41 AM, "Burton, Ross" <ross.burton@intel.com> wrote:

>
> On 19 April 2016 at 03:17, Christopher Larson <clarson@kergoth.com> wrote:
>
>> There may be something better out there, and if we can find it, great,
>> but I think separate issues is better than not addressing the issue at all,
>> but only if the tooling is good enough to help reduce overhead on the part
>> of the devs dealing with it. Issue tracker overhead gets pretty frustrating
>> at times.
>>
>
> There may be a way of dealing with this using flags.  If we had a flag for
> each release then we could add a flag for each release which is impacted by
> the bug, and track when they're resolved by changing flag state.
>
> Ross
>

--94eb2c073c3e63a2d80530d99ba6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">See how gcc project manages it. May be that is sufficient fo=
r us too</p>
<div class=3D"gmail_quote">On Apr 19, 2016 9:41 AM, &quot;Burton, Ross&quot=
; &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt=
; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 April=
 2016 at 03:17, Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:=
clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmai=
l_quote"><div>There may be something better out there, and if we can find i=
t, great, but I think separate issues is better than not addressing the iss=
ue at all, but only if the tooling is good enough to help reduce overhead o=
n the part of the devs dealing with it. Issue tracker overhead gets pretty =
frustrating at times.</div></div></div>
</blockquote></div><br>There may be a way of dealing with this using flags.=
=C2=A0 If we had a flag for each release then we could add a flag for each =
release which is impacted by the bug, and track when they&#39;re resolved b=
y changing flag state.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>
</blockquote></div>

--94eb2c073c3e63a2d80530d99ba6--
