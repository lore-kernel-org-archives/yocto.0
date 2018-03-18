Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FCAE00CD2; Sun, 18 Mar 2018 14:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0ADE00AF2
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 14:54:40 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id m68so6248765pfm.11
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 14:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mu+Dfeurrb5l9Tlw3JGGMXnufSK00BfJ4WM8ygmsOjc=;
	b=XL8IcbtyPGEqGpBfBHPsoHKLgidvETpfdy/D36MeCiLeWSl/sWqOta11yzND45SvB/
	7v0Woz+EvQJPsUD/0ODpsmjsN+ZkYPnGvDOe35gCP/6J09H1uT//6/BHuOgzyDH1SDWY
	wAVuylvklpRfxbfmi12YLb6z4H8TA9iLTNtQPV10iXEW08Ioux4RgvWkRf1otNJs4Tmp
	2e/eFGMCkucCZUoRVFH+59mY0pLT3KSN+yJmAJAUjNtYyp+su9ui/Mbq9+vYbA9JT3Vf
	H+X1jgs9AO+XCUues4ixw66pdMbOpp79cYuCh37GgCFMTBmJzHf3btNNN/baOwEo+W7L
	EOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mu+Dfeurrb5l9Tlw3JGGMXnufSK00BfJ4WM8ygmsOjc=;
	b=FZHURgRJl7AxhEASwMxhwl6HWbO0zgPG+BRQAMRJ5OqF/W9/5RPJVsqcq0kijkU2qI
	eJ8RqKw6I3Rnm8X6G3vFirt0o5z2YAwphQ8sko87kidyXmgfswWK03v26Dl7k7h0Ogce
	K9esTv2UzUq4z0nWIOgISIQb5ZU0dRk5I74THcW1xXXcrfuUA2yeEu7vddAydPRkh+kj
	8KM82S7OEsAn2QJg6Kz1W+wNtmbUs+GnQ3opWUPDnMx3jyyIkbBUN59jtoLNGly0DDUh
	Tc83OPRsHFQOb+bv7PG/9dXCdK+U53cyVKbAi0t/RrEPzp14abVvhxVAJL4f1bA4e1cX
	Sj/A==
X-Gm-Message-State: AElRT7EMZ9AgMq7i2j8Tj3XzSTOLvBLNgCQrYi4v+nMm6MPrDkMcQ3hy
	ttwrY3SQTvotZzXG7CCvSFMhAm02u/PnJztfmDY=
X-Google-Smtp-Source: AG47ELtCQBKt9/+IVNrLsvoUSyR2/770zz+LXFmB7uJahJznjGaXCkRHdAQBrztuFyTkTjJrElpw6vrm1m7WXsWAxBs=
X-Received: by 10.101.99.66 with SMTP id p2mr7189184pgv.384.1521410080032;
	Sun, 18 Mar 2018 14:54:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.241.68 with HTTP; Sun, 18 Mar 2018 14:54:09 -0700 (PDT)
In-Reply-To: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 18 Mar 2018 14:54:09 -0700
Message-ID: <CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
To: Kosta Zertsekel <KZertsekel@advaoptical.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Li Zhou <li.zhou@windriver.com>,
	Catalin Enache <catalin.enache@windriver.com>
Subject: Re: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Sun, 18 Mar 2018 21:54:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 17, 2018 at 11:46 PM, Kosta Zertsekel
<KZertsekel@advaoptical.com> wrote:
> Hi guys,
>
>
> As for now (master branch) 'PACKAGES' variable in net-snmp equals to:
>
> ```
>
> $ bitbake -e net-snmp | grep "^PACKAGES="
>
> PACKAGES="net-snmp-dbg net-snmp-staticdev net-snmp-dev net-snmp-doc
> net-snmp-locale  net-snmp net-snmp-libs net-snmp-mibs net-snmp-server
> net-snmp-client net-snmp-server-snmpd net-snmp-server-snmptrapd "
> ```
>
> This seems to be wrong as many built packages from 'packages-split'
> directory of net-snmp are empty:
>
> ```
> $ du -a --max-depth=1 . | sort -n
> 4    ./net-snmp
> 4    ./net-snmp-client.shlibdeps
> 4    ./net-snmp-doc
> 4    ./net-snmp-libs.shlibdeps
> 4    ./net-snmp-locale
> 4    ./net-snmp-server
> 4    ./net-snmp-server-snmpd.shlibdeps
> 4    ./net-snmp-server-snmptrapd.shlibdeps
> 4    ./net-snmp-staticdev
> 48    ./net-snmp-server-snmptrapd
> 72    ./net-snmp-server-snmpd
> 1208    ./net-snmp-dev
> 1480    ./net-snmp-client
> 1812    ./net-snmp-mibs
> 2872    ./net-snmp-libs
> 15308    ./net-snmp-dbg
> ```
>
> Well, the culprit commit is 5eec0615e548f58ecdfadfc45af5805eeb58f69c where
> the below change has happened:
> ```
> -PACKAGES = "${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-static
> ${PN}-libs \
> -            ${PN}-mibs ${PN}-server ${PN}-client ${PN}-server-snmpd
> ${PN}-server-snmptrapd"
> +PACKAGES += "${PN}-libs ${PN}-mibs ${PN}-server ${PN}-client
> ${PN}-server-snmpd ${PN}-server-snmptrapd"
> ```
>
> This new 'PACKAGES' variable is wrong IMHO, because it contains
> the 'net-snmp' package and other empty packages.
>
>
> Please review (and apply if ok) the attached commit that fixes it.
>

are there specific issue you are seeing besides the packages being empty ?
I would suggest to apply _remove operation to remove the empty packages
if needed from PACKAGES variable

>
> Thanks,
>
> --- Kosta Z.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

