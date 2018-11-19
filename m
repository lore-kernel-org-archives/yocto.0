Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E3CE00BBD; Sun, 18 Nov 2018 19:08:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27045E00B43
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 19:08:16 -0800 (PST)
Received: by mail-pl1-f194.google.com with SMTP id b5-v6so13851119pla.6
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 19:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cq6eBP/u+PxuPuybeW/3vNYy4UmStrPzr4M0BJdNZyQ=;
	b=Ju5TAvULIPNJyWz+WJqQgfjwqPUS3sN2L9+5Y8R6VyxVPvRo7tCm+9syuHPWxn1S+Q
	MUDXLAdFN53xBlao4dHBwwchHHGKFWzg81DwjyizhzI2Cwn04OJzLS84+Xy2CSIJC/LK
	gcWybuRXlUpS8gcCqpgrJRUHfRs1J/OfCmf8BNltorgs/u5Pv82KWj68T6znLOGe8a/L
	vxFX91iAq/9q+D7caOlouDHEuY6iI+LvonG9zFbXe3Tv7y0CUS03FacgEdTq3K39N3BA
	KKnnQJjnk8zEPpilS93IZsDDxt2DsanahKUaWSShJtMPGGY5rSz7d/FmJ1e1Dl6QlwMu
	iAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=cq6eBP/u+PxuPuybeW/3vNYy4UmStrPzr4M0BJdNZyQ=;
	b=FRtWj9eltJX/u1Og5dhGAPuT3TpY0lwYA8ebco3OH/yNMhpPHdeTCt+Bv2/Ng40KCF
	rnUp0cnKjM3k7qnht1FjeDXg9xOifDeifdsKzzYg7r110TsS4p4peoH8XqYpgfN8xIk5
	qmxdpmJRtwrMhtI+DSpmqoAJM3i6RXtEt5iTE7aSnSJ150bz8vCA1VTbjNOB7lyL1ku9
	dHGe3/76L8gv0NL18ea2IVsGgVeKjHjaCLrd6tWC7N4g5ASyH/ZMJ26dURKj4zPxmxit
	4tK1mNnFknrK4O/sMYxn3g6oHBw4vzv2XXvN/mPBjEhK9fdZ0jSbPLP05lZrpxIZ8uVo
	Ublw==
X-Gm-Message-State: AGRZ1gIT1/x/1gtx+0sz1WtsKXz5gsRK4ly4pHmByvSz2fTtev5PLD7c
	Jrh0RV4M1zbsnDVn3zQg2z8=
X-Google-Smtp-Source: AJdET5daukaW4PuohOkK6Bt/AaheX/qD8OWcEluINCXRnProCWTbuX83Zcj6jlNw/FHs9XCo2SwTNw==
X-Received: by 2002:a17:902:5a4:: with SMTP id
	f33-v6mr20214553plf.324.1542596895580; 
	Sun, 18 Nov 2018 19:08:15 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:8599:3a91:5ee0:9f77?
	([2601:202:4180:c33:8599:3a91:5ee0:9f77])
	by smtp.gmail.com with ESMTPSA id
	l6-v6sm35049421pff.147.2018.11.18.19.08.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Nov 2018 19:08:15 -0800 (PST)
To: "Ang, Chin Huat" <chin.huat.ang@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"srifenbark@gmail.com" <srifenbark@gmail.com>
References: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
	<08E361F78D55674EADC52186A78684A534DC385E@PGSMSX110.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <94e8df4b-7bc9-4968-9a1e-8b6dc79576ab@gmail.com>
Date: Sun, 18 Nov 2018 19:08:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <08E361F78D55674EADC52186A78684A534DC385E@PGSMSX110.gar.corp.intel.com>
Subject: Re: [[yocto-docs][thud][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 03:08:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 11/18/18 6:53 PM, Ang, Chin Huat wrote:
> There's a minor typo where Ubuntu 16.10 is not LTS.
thanks,
v2 out shortly.

>
> ________________________________________
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on behalf of Armin Kuster [akuster808@gmail.com]
> Sent: Monday, November 19, 2018 10:15 AM
> To: akuster808@gmail.com; yocto@yoctoproject.org; srifenbark@gmail.com
> Subject: [yocto] [[yocto-docs][thud][PATCH] ref-system-requirements: sync       with thud poky.conf
>
> poky.conf
>     ubuntu-16.04
>     ubuntu-16.10
>     ubuntu-17.04
>     fedora-26
>     centos-7
>     debian-8
>     debian-9
>     opensuse-42.1
>     opensuse-42.2
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  documentation/ref-manual/ref-system-requirements.xml | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documentation/ref-manual/ref-system-requirements.xml
> index 9298e84..0abc47e 100644
> --- a/documentation/ref-manual/ref-system-requirements.xml
> +++ b/documentation/ref-manual/ref-system-requirements.xml
> @@ -93,19 +93,22 @@
>                  <listitem><para>Ubuntu 11.10</para></listitem>
>                  <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 13.10</para></listitem>
> -                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem> -->
> +                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>
>                  <listitem><para>Ubuntu 14.10</para></listitem>
>                  <listitem><para>Ubuntu 15.04</para></listitem>
> -                <listitem><para>Ubuntu 15.10</para></listitem>
> +                <listitem><para>Ubuntu 15.10</para></listitem> -->
>                  <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
> +                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>
> +                <listitem><para>Ubuntu 17.04 </para></listitem>
>  <!--                <listitem><para>Fedora 16 (Verne)</para></listitem>
>                  <listitem><para>Fedora 17 (Spherical)</para></listitem>
>                  <listitem><para>Fedora release 19 (Schrödinger's Cat)</para></listitem>
> -                <listitem><para>Fedora release 20 (Heisenbug)</para></listitem> -->
> +                <listitem><para>Fedora release 20 (Heisenbug)</para></listitem>
>                  <listitem><para>Fedora release 22</para></listitem>
>                  <listitem><para>Fedora release 23</para></listitem>
> -<!--                <listitem><para>Fedora release 24</para></listitem>
> -                <listitem><para>CentOS release 5.6 (Final)</para></listitem>
> +                <listitem><para>Fedora release 24</para></listitem> -->
> +                <listitem><para>Fedora release 26</para></listitem>
> +<!--                <listitem><para>CentOS release 5.6 (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.7 (Final)</para></listitem>
>                  <listitem><para>CentOS release 5.8 (Final)</para></listitem>
>                  <listitem><para>CentOS release 6.3 (Final)</para></listitem>
> @@ -121,13 +124,14 @@
>                  <listitem><para>Debian GNU/Linux 7.4 (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.5 (Wheezy)</para></listitem>
>                  <listitem><para>Debian GNU/Linux 7.6 (Wheezy)</para></listitem> -->
> -<!--                <listitem><para>openSUSE 11.4</para></listitem>
> +<!--                <listitem><para>openSUSE 11.4</para></listitem>
>                  <listitem><para>openSUSE 12.1</para></listitem>
>                  <listitem><para>openSUSE 12.2</para></listitem>
>                  <listitem><para>openSUSE 12.3</para></listitem>
> -                <listitem><para>openSUSE 13.1</para></listitem> -->
> -                <listitem><para>openSUSE 13.2</para></listitem>
> +                <listitem><para>openSUSE 13.1</para></listitem>
> +                <listitem><para>openSUSE 13.2</para></listitem> -->
>                  <listitem><para>openSUSE 42.1</para></listitem>
> +                <listitem><para>openSUSE 42.2</para></listitem>
>              </itemizedlist>
>          </para>
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


