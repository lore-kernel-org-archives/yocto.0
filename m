Return-Path: <jeremy.singy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02012E00D42; Tue, 25 Jun 2019 07:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeremy.singy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69C54E00D42
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:00:08 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id e5so414219iok.4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pwyvKHk6vtx35gSzfOHjsZUoKAEVyFL3ZYMm1uf8IHw=;
	b=oNDcRwCRwpzJHPm9a8Bjjf8hb19c/ActbXZMYfOdk4eesFX1fVWqBxd88Tw5U5U3c/
	jDoydTa/7ZEgUfcTdMIyEa9xRU7RApcPcSyThBjjDUH8Svxxy6/IXArqImrWj0LLNZvs
	KwtGYY24sczR4BvW+05Hgf+K9QHGmVGGIpOwnP1z0YVbh9O5Gp1qX9INeeHMBSlP4qMs
	TjKbegrCpL8BWt/VOut0xg8GFvEPDERazq+XJTBZEg8l1PH45+i8pc2RNHvqxQqPPdOS
	RwoKcz18sgKDXZvyqUW++LuoQ3Vwskz4bYp/Q4T+nVufPiA83a236/HhfuP0vqybYC3j
	1VQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pwyvKHk6vtx35gSzfOHjsZUoKAEVyFL3ZYMm1uf8IHw=;
	b=WSbuUwoQM3fdunitarF+WumdbxE9JxOAfy0/RPPJWblcmMCPf48wTUdV237aWbd1IK
	/Ucu+U2io0/KDInOVm1hIx4G9dOcvnkAtOO3tt8fAT5nkk+TjZT5YBvDxIsTHr9anbOt
	EtQBDtpL4Hr+DtubxwiToT17l3rXqeiX5LET+Bdtst0cMA+3dIGHOcJx2KrPN4U41YoM
	RDR0PEYH1gtZE93WHwiQcMyn2FTVPD2WKedb6CNiFDEvJjdvKgY/oQIJsh8o6ewxCWfa
	iMtog1CNemkKCUca56jPe6m7B11hUekgeGPTveFYMrWMiki2yP2pgOT/HVml8QBi64bc
	vHBQ==
X-Gm-Message-State: APjAAAW4HOPx2gKx28G1gZBbAuBbYyyltkNRqSibXfUpNKUbLmV18BIR
	wMtdwfgQ0zjC20DoW/YzDgSZ8XEofOqYwLgv4L4=
X-Google-Smtp-Source: APXvYqxnZvYjh9msrGqEybKHWqCXTJuFeyN2UxDJ4SvPs5w2e6zsXX6pA9T5OegOB5W/T9p9g3mVFP3fmfcTZjXzidI=
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr20735107iog.289.1561471207835; 
	Tue, 25 Jun 2019 07:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA42Xj5nygLnFp_ojTP5J59czFuG7f82c6bc_SLax+4+Ot2QVg@mail.gmail.com>
	<CAA42Xj5pNmu1BSVAd2FMTJvwO1fSbtckDfp+EOP9ELikG_=POw@mail.gmail.com>
	<CAMKF1spO50-WtUOinnWO9wSqohTUXjBng-z_mFVtf0mbwbRP_A@mail.gmail.com>
In-Reply-To: <CAMKF1spO50-WtUOinnWO9wSqohTUXjBng-z_mFVtf0mbwbRP_A@mail.gmail.com>
From: =?UTF-8?B?SsOpcsOpbXkgU2luZ3k=?= <jeremy.singy@gmail.com>
Date: Tue, 25 Jun 2019 15:59:56 +0200
Message-ID: <CAA42Xj4dm_QYKAQ+r-JfZ8k=_vj-N1H4WwLp131=MyMGQgcyvA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can't build SDK while shrinking shadow tools
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
X-List-Received-Date: Tue, 25 Jun 2019 14:00:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2019 at 10:03 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Fri, Jun 14, 2019 at 2:16 AM J=C3=A9r=C3=A9my Singy <jeremy.singy@gmai=
l.com> wrote:
>>
>> Hi,
>>
>> I'm facing a problem by trying to shrink the size of our root filesystem=
.
>> To avoid installing some unneeded tools such as adduser, groupadd,
>> nologin, etc. I just created as usual a shadow_%.bbappend in our layer
>> which removes the content using do_install_append:
>>
>>     # do not install alternatives
>>     ALTERNATIVE_${PN} =3D ""
>>     ALTERNATIVE_${PN}-base =3D ""
>
> This is most probably the reason for your issue
> You may want to remove the alternatives which you are deleting but not ev=
erything

In the meantime I could fix the problem. I had to remove the
alternative for nologin in the util-linux recipe as well (as hinted by
the error message, this was the offending recipe)

I just wrote a util-linux_%.bbappend to remove the alternatives for
nologin (which I don't need) and I could then build the SDK:

    ALTERNATIVE_${PN}_remove =3D "nologin"
    ALTERNATIVE_LINK_NAME[nologin] =3D ""
    do_install_append() {
      rm -f ${D}${base_sbindir}/nologin
    }

Thanks for your help,
Jeremy

