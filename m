Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D7F4E00C25; Tue,  6 Aug 2019 06:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05B85E00BAA
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 06:54:55 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id b13so41556659pfo.1
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 06:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=P7cEx34FlSKVZ+0ESIBv3BHVD6ife85I4yTvh42i8oQ=;
	b=mt6FozKdAvWnXEr1nLZCd3R4EuEAbJxvNTgdm9aimhWOG1xFbglsJmN4jM+90o0K3z
	Af2my0wJAV4ZKDXayBQZJehkHpfEqimN1ReKJ6qGexFmtvtx5wOnivvrAWyilYMxEz8B
	kUBKHIWlwJDoNoAmhywLELXRGhPJouQ7neYTeUZbXtJuzGNVQq6+G6VGF7HmJm0ilp5j
	PK3aQgYdWdK8kPUSP+5U+Q6n27Fs3yAUxWxKLYOVHBzZVG2StG31hCTorJGPetTsYV8T
	9snP55JVLVhl1qbY2MZLneP8y3YJHTfQFDUvMuiPeFu52pVbTGii1PjIo0kya3sTW1j/
	eVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=P7cEx34FlSKVZ+0ESIBv3BHVD6ife85I4yTvh42i8oQ=;
	b=cz9e87zXQ6E6VUzUaveYrn+2azuY6IlOkLzYpM+ILuA21Y9MsEhhfW95K+GwWOl8Lo
	Y8mwUZhRNurhGpDXR2pKNIaWeObCngtOEEu2hSHfe4PC/8ovrLlUWU1CkLQ5Rt87yAAb
	0vdzpFZzGuLGv4dSW6vHgbrrUYYx8qbjqoD+p4CJfwXve+2Uqz0HijOiqBIkjJ/wlVJb
	WsQaE6kyLYM+Ed516vvBbtn+sbQnmlNNbxTUAc901D/a5T7iy6pMhbSb67IQJPy94KNN
	WFIRITsty1HIUl0UB9jxK91NS+Ran+KtmozhTaE4ONuItWZ4bGPtFnj7EUWWulqLzfld
	fuCw==
X-Gm-Message-State: APjAAAVs/HYmregC5qvtgdMvpNGjT8P31hn+Yj3PBFXapRwmsTfw+/EY
	1wUf6i+i+x/1IXtXY3QS0ObH2fgScCft6buNG7RlaQ==
X-Google-Smtp-Source: APXvYqz8lfeVJ4xh1kOYVgeR+91bdwzj6fjFPTIZnzIITiii/O1m6cNQR14HsjsKCRBevX06HL1rOmdnXGiCt0YZQ2Q=
X-Received: by 2002:a63:4c21:: with SMTP id z33mr3185896pga.418.1565099695052; 
	Tue, 06 Aug 2019 06:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190729104547.20894-1-dbaryshkov@gmail.com>
In-Reply-To: <20190729104547.20894-1-dbaryshkov@gmail.com>
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Date: Tue, 6 Aug 2019 16:54:43 +0300
Message-ID: <CALT56yMky0LbcDdJEiYn5L7hfd_KggtERt7=G-3ECU3mm9R87w@mail.gmail.com>
To: yocto@yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Subject: Re: [meta-integrity] layer.conf: switch to keyutils from meta-oe
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
X-List-Received-Date: Tue, 06 Aug 2019 13:54:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 29 =D0=B8=D1=8E=D0=BB. 2019 =D0=B3. =D0=B2 13:45, <dbaryshkov=
@gmail.com>:
>
> From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
>
> As pointer by Martin Jansa, keyutils package is now a part of meta-oe,
> so switch to using keyutils from that layer.
>
> Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.co=
m>

This patch is still necessary.

--=20
With best wishes
Dmitry

