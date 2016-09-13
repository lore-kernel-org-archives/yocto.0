Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8A18E006D2; Tue, 13 Sep 2016 13:10:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f179.google.com (mail-yb0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FE34E00563
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:10:23 -0700 (PDT)
Received: by mail-yb0-f179.google.com with SMTP id u125so66630133ybg.3
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 13:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1uxY6pmQ4ScMXS7FE8ptW1NWfRUVnFBgIXZLoB0DCfI=;
	b=l2d38nwmUmKCHrfIpY38/VJ4vnPHOwilQ5DZvsGsI0PpjG2wuNqMFu6tv6PEWN1Z4Q
	Il1oQXlD/vBqqOE0AFiEirgI0x1/XrEJMpm73FcEKPLkJK2QtCD76mtWUuBlTewTgdJ9
	bFx/wVlhIM8+abwaJ2B1TnKg5OAoNWG+iFimQoQ0Ui2gbg86fvnRCnNisDVDPPaEYVot
	yuV4ZPV4fsP39777/CW5RH2pFsick2t49q0zjfm8AlMcoSlwRNcKGgPN+EZBhyQR7JLn
	aIKct2IqXyq6KZeIKqfMNxYxo0jWXwglIY9BmCAUP/dS/PixbxnfIqgtUHhuX/kejlGM
	8r9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1uxY6pmQ4ScMXS7FE8ptW1NWfRUVnFBgIXZLoB0DCfI=;
	b=iLHW+GuafXhYczqx81lRIKYa7333ubhElpCSoTBxkw1O6qfx+ZpS6wXLyxczTxSLCe
	SvGxwzECrNQ1YqZA9uFmVaiohL9QaJvqNfAIAR/gY0qAAIZNm7MDJLL43ctHCLTKGlEi
	2s1y7OZ/6aBtWt61Jo22+5FlzmqAmWxDthpjl3XWJ25rr4jr6zzaTQ1yIV6kvlqKAHcu
	+F9LHSNmHEy5t9jWN3UjywjHVncKYOT3B2WWW4chexQRjjVazTABgwGewssq2OZErne8
	uYKgCt8pYdPjt2z81ylJqTi0RLpw5f1ls29OPl2m4EDwTvkdPwVhww7LsU6bbU/YAqAp
	wkyw==
X-Gm-Message-State: AE9vXwMk7LfcZ7pcjMKzGWVFcEXzYbLQHEjFituk7tMDdpGOdnbSc4HK5oPBOB5r6vm26K9rFEXuiTwRHR2Www==
X-Received: by 10.37.87.10 with SMTP id l10mr2953449ybb.133.1473797422985;
	Tue, 13 Sep 2016 13:10:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.34.120 with HTTP; Tue, 13 Sep 2016 13:09:52 -0700 (PDT)
In-Reply-To: <DB6PR0601MB26638DB2BE028C31DBEBFB48CFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
References: <DB6PR0601MB26638DB2BE028C31DBEBFB48CFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 13 Sep 2016 13:09:52 -0700
Message-ID: <CAMKF1srFtioXXmsfULkqfH=hLyKh9Z4oCdZ4EKyXEDf8TE6nYQ@mail.gmail.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Modify fetch URL in BBappend file
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
X-List-Received-Date: Tue, 13 Sep 2016 20:10:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 12, 2016 at 7:02 AM, Gujulan Elango, Hari Prasath (H.)
<hgujulan@visteon.com> wrote:
> Hello All
>
> We are including the meta-ivi layer in our custom distribution. There is =
a package 'dlt-daemon' whose fetch URL got modified upstream in the recipe =
file due to some corruption in the repositories. I want to modify this URL =
in the corresponding bbappend file in my custom BSP layer. I tried specifyi=
ng the new URL using the SRC_URI+, but when I built the package it ends up =
with error as it tries to fetch the URL in the original .bb file and doesn'=
t take the fixed URL from the bbappend file.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/commit/?h=3D10.0&id=3D=
2aaa1d7bdd2f112bb4fa9f5e55f9966f4deb4679
>
> The link above shows the commit that fixed the URL change in upstream whi=
ch I am trying to bring in my bbappend file. I am not sure if I am missing =
something here.

Its better to cherry-pick the above commit into your meta-ivi layer.
Managing it via bbappend will be clunky, since you have to redefine
complete SRC_URI including patches and so on.

>
> Regards,
> Hari Prasath
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

