Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F0A7E00E04; Fri,  8 Nov 2019 02:35:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11FADE00B65
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 02:35:14 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id f24so1046998lfh.10
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2019 02:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=fshJQZAag6DMMyd+olskGYzsFMkiA354HFrjxdw7lws=;
	b=s/ofbJR+9B550wPUZ6CCu9qMSYvaEfWot5iREM0546aCP1HCsndVKc+8ZgtXW2lZgN
	IC1GvK5+bpDtV4PaDhbdIqyB6ogUVjf9xzMCXnl+QO0fLFoPuYayvxeq1a6Ccbzoq9Ny
	o0ds8/wc/5ypyi01zIvt3jHyeMUzuYwdcbIhoQ4GZ1b+nfY4qRwU1/ZNATaJh5WXwSOx
	lT3M49yTmh4WNZ45EGN7MKJ02Ft1Nq+dXq6Xx62yIW6XQsr/Q77bX0XLda+Qip/fimuh
	nxLejIvxYl/QANpy3dheKdNGYtmLbZWnB/2EWAAyK7cqel0myiIhgtMT54F3VXolCzUL
	qBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=fshJQZAag6DMMyd+olskGYzsFMkiA354HFrjxdw7lws=;
	b=E3Tc8sJWY+O+uHCpnd/cCv5ftS7XVZDlWMY3HuTeht3nfE545oN18L3TvUq1zHwPSQ
	Ov5tdF1TaJhcdujSDylreIrev1BdOLSJ3I39PuHWKoM51goFMr7Ib3ue7PWTMcEwDYOV
	9oQoiY6oHbZfR6+jWzRgO8HyIDDGsK0oTCQlLtIvskLlMnFQQyIUhcOcB96dx+CPAKxH
	rlrq6ssDG8MKouIFFZ7S9qCR1M0HVhGnUG0T1y0bbI3kdZoBodPJ07wNULksS2aAGnvt
	d5Bkwou9YrRvJGXGzMA2qt39l8ONw/VCiVt9V194LFckoEY3WRGxhgXvkF80NhggDrpd
	9zpQ==
X-Gm-Message-State: APjAAAUJcgB3k3Z7tyC0WlvGDVVYeLyJqSDxIN0oFyD4oqcqALg08mtD
	/xdLoqHD+gRyPEgAmn+coVj7YQdB
X-Google-Smtp-Source: APXvYqzy5tNeUSrRvRyI7JumdiPOViJgIicpX0v2F83dm+FKKdoOVtgMjMXqGSQwibGT+jqHTMnnwQ==
X-Received: by 2002:a19:651b:: with SMTP id z27mr6000029lfb.117.1573209313538; 
	Fri, 08 Nov 2019 02:35:13 -0800 (PST)
Received: from [100.79.118.73] (94.191.132.85.mobile.tre.se. [94.191.132.85])
	by smtp.gmail.com with ESMTPSA id
	z17sm2727422ljz.30.2019.11.08.02.35.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Nov 2019 02:35:12 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Gmail <jonaskgandersson@gmail.com>
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <1539153415.198257.1573207176806.JavaMail.zimbra@savoirfairelinux.com>
Date: Fri, 8 Nov 2019 11:35:09 +0100
Message-Id: <B5E930E7-8561-4CC9-A5FE-37379C2C134A@gmail.com>
References: <CAKpuFddfD5SSeqXXPGP9jYC7Ha94R0XF30uRobkfQcaaeBRzMg@mail.gmail.com>
	<1380694921.198183.1573206406105.JavaMail.zimbra@savoirfairelinux.com>
	<1539153415.198257.1573207176806.JavaMail.zimbra@savoirfairelinux.com>
To: Jean-Marie LEMETAYER <jean-marie.lemetayer@savoirfairelinux.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: nodejs npm qemux86_64
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
X-List-Received-Date: Fri, 08 Nov 2019 10:35:18 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Great!

/Jonas Andersson

> 8 nov. 2019 kl. 10:59 skrev Jean-Marie LEMETAYER <jean-marie.lemetayer@sav=
oirfairelinux.com>:
>=20
> Actually I just update my patchset to use ${nonarch_libdir} instead of ${l=
ibdir}.
>=20
> This will be on the next patchset version.
>=20
> For your information you can check the meta/conf/bitbake.conf file for oth=
ers target filesystem paths.
>=20
> Best regards,
> Jean-Marie
>=20
>> On Nov 8, 2019, at 10:46 AM, Jean-Marie LEMETAYER jean-marie.lemetayer@sa=
voirfairelinux.com wrote:
>> Hi Jonas,
>>=20
>> I am currently refactoring / updating the npm handling in Yocto:
>> http://lists.openembedded.org/pipermail/openembedded-core/2019-October/28=
8352.html
>> http://lists.openembedded.org/pipermail/bitbake-devel/2019-October/020449=
.html
>>=20
>> Your point is very interesting, I will take it into account for the next
>> patchset version.
>>=20
>> Best regards,
>> Jean-Marie
>>=20
>>> On Nov 7, 2019, at 10:56 PM, Jonas Andersson jonaskgandersson@gmail.com w=
rote:
>>> Hi,
>>>=20
>>> I have installation problems for npm recipes.
>>> Using Yocto thud and machine=3Dqemux86_64(wrlinux-x), but as I can see i=
t this
>>> concerns all
>>> use of npm.bbclass for 64-bits system.
>>>=20
>>> The problem seems to be the use of ${libdir} in npm.bbclass, when 64 bit=
 is used
>>> this expands to lib64.
>>> npm install --prefix ${D}${prefix} installs to /usr/lib/node_modules whi=
ch is
>>> not
>>> in sync with the following mv ${D}${libdir}/node_modules ${D}${libdir}/n=
ode.
>>>=20
>>> I made an quick fix by replacing ${libdir} by ${prefix}/lib/, but as I s=
ee it
>>> nodejs packages never is installed to lib64 in any other system as I can=
 find
>>> information about.
>>>=20
>>> So the question is if the use of ${libdir} is bad and the path should al=
ways be
>>> to /lib/?
>>>=20
>>> Best regards
>>> Jonas

