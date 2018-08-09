Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B21B4E00B5E; Thu,  9 Aug 2018 14:42:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f48.google.com (mail-pl0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39063E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 14:42:10 -0700 (PDT)
Received: by mail-pl0-f48.google.com with SMTP id d5-v6so3100726pll.4
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 14:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=sVv1CB92bkzBiequkVS6yRNCWc50/HK+NsaEE/TZTEE=;
	b=VWKSspeGe70wVPLDZBm5ZKIDvLITn2qihC7QDB0mgxYiJJm/zA+4VSW448liKMBPtc
	7M5oGX0qLp2C3WB//Dq/zEW9WFU2TFGC1BYHkpX24ODO1RyRQnGu/051I8KOko2yEXyc
	/GnvO9KAwz1aqWiaTP4Gv/tn+1+4MlKLwLKZgcTGung5K2hgFzEOoSo50Shv4Z9wcIt0
	i7lCehW5OTRmkN0h7vrja6QGSsuEMYeIpC06ZyFEMsr68D7Cj/ugb88WiCMcLHkcqO6X
	Dklho4G5Jh8U8YjdEiZnfi3pqTAwSZAqhGLOx/GLxSiTS0yZwD0xSGHGIrehdkCOmPhj
	TNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=sVv1CB92bkzBiequkVS6yRNCWc50/HK+NsaEE/TZTEE=;
	b=KpUmL8aojQjLxRafawOVRMGZTeyJj2UN4E7MtrXuF5yTcNKw5GVKJmHsHqukIUmksE
	8uFLK8HhdEG+7FO9dv7x04ZJlVSmeE8riq8bGqrw0ZyXCbxB3kJtoYyP2aXdtnOxjJ3E
	F99xJvHsaMH7748ellzhED+fbQLJlymw35ctlVY40nHFhIncOFJrI6lPthcl5VKIFZW+
	vLGjDQNCk15Ib+KQy/2eCc3HkzqDs9y1kbtsan0dlFI+HfrvvAcx0nO5eVond9pAIPOM
	msHhBS/mboFezl3z+G+vhJ+EkyMkHegquLrJfXELZsEpEbkrTngqh/Xg9aUUyQTuXMRN
	wOQw==
X-Gm-Message-State: AOUpUlEcZkuwNmn4K0GrYuQt1mnLySh9ITSJmJVy+4sfssJb4DrEt2dA
	T+m206jiUBa+HYaKGSWHlR3PRGWK
X-Google-Smtp-Source: AA+uWPwRJOUmC8oJoMi6r1CocUymnaYpXWd7I8gNG212BRqI8fs63qAJZP25nGSXvzirrB3FFvzEQQ==
X-Received: by 2002:a17:902:b08d:: with SMTP id
	p13-v6mr3645487plr.0.1533850930529; 
	Thu, 09 Aug 2018 14:42:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:5de4:c93b:e6fb:e38d?
	([2601:202:4180:c33:5de4:c93b:e6fb:e38d])
	by smtp.gmail.com with ESMTPSA id
	q85-v6sm13788255pfa.151.2018.08.09.14.42.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Aug 2018 14:42:09 -0700 (PDT)
To: "Frazer, Will" <Will.Frazer@eurotech.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <ec4d265f-8924-82e4-f2e9-034f3e97d039@gmail.com>
Date: Thu, 9 Aug 2018 14:42:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com>
Subject: Re: Yocto userbase in numbers?
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
X-List-Received-Date: Thu, 09 Aug 2018 21:42:11 -0000
Content-Type: multipart/alternative;
	boundary="------------03A94DB5053A1FBB4BECF303"
Content-Language: en-US

--------------03A94DB5053A1FBB4BECF303
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 08/09/2018 10:19 AM, Frazer, Will wrote:
>
> I was asked recently what a ballpark figure for the number of systems
> running distributions built with yocto might be and I could not find
> anything.
>
> =A0
>
> I realise it=92s almost impossible to tell since technically everyone
> builds a different distro, but I don=92t suppose anyone has come across=

> any estimates anywhere ?
>

The Yocto Project does not have the ability to track which distributions
are created from the OpenEmbedded build framework nor who uses Poky as a
starting point. Even if we did, I believe we would violate someone's
privacy if we distributed that information outside the Yocto Project.

Kind regards,
Armin

> =A0
>
> Thanks,
>
> Will
>
> =A0
>
> =A0
>
>
>


--------------03A94DB5053A1FBB4BECF303
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 08/09/2018 10:19 AM, Frazer, Will
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">I was asked recently what a ballpark figure
          for the number of systems running distributions built with
          yocto might be and I could not find anything.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I realise it’s almost impossible to tell
          since technically everyone builds a different distro, but I
          don’t suppose anyone has come across any estimates anywhere ?
        </p>
      </div>
    </blockquote>
    <br>
    The Yocto Project does not have the ability to track which
    distributions are created from the OpenEmbedded build framework nor
    who uses Poky as a starting point. Even if we did, I believe we
    would violate someone's privacy if we distributed that information
    outside the Yocto Project.<br>
    <br>
    Kind regards,<br>
    Armin <br>
    <br>
    <blockquote type="cite"
cite="mid:AM6PR05MB4357C177898C18D4D17E2CC38A250@AM6PR05MB4357.eurprd05.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Will<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------03A94DB5053A1FBB4BECF303--
