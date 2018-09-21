Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46AADE00AC8; Fri, 21 Sep 2018 13:35:55 -0700 (PDT)
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
	*      [209.85.215.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 648E0E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 13:35:54 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id r1-v6so6541464pgp.11
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=uIHSRJCC/fImXkcx3+NuPGAwcmZ33cFs0z602EJpY9w=;
	b=jJQ7+wha4G8LQ92BnT34a5OOtMstNTwhFvliAUUaXGlq5FBsNiaCHt9I3kslkXdhIK
	euz7MdXDX7WdZDzDhnudGNiRq58zzbh6lDBuEno8Cr7bPAaDQ4wYzDKg66VIl5/yD5bl
	X9x0tct/s+bueXdQb20OYBBYgBztU7Ai51hCmgwT+unuzBetdXpqXGTj6LzNHjG2LD71
	3Lzhf4yL/SHJwHmvlosEtIdQKR+deqPKHiiD3vtDO0xrPMgks/MIXX/oNouaOs+IyYdr
	Uxkc0g0b3ithmg2T2u6hul2XP+LGPO/2EbnylRj5MYkDB2tZUpSjogE0c8AbU4039anm
	iDLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=uIHSRJCC/fImXkcx3+NuPGAwcmZ33cFs0z602EJpY9w=;
	b=PWZT4nf7m9LrF7K3MEibscRjBAQNuWXFl3HqAOAu3lT1K/JrEoh4aTTBusiWk6VVBP
	f0DfTzdaiax0mUOJwY4YEgzA4T534f1fawUwYqaCLBWnf4sEyyByPG6WPf7hSttHY+8v
	OcSUuoH3KudGYtKRsGMo0zaFecdJUN3/sitOlIjA3y96OxVRe/AMaQ548eHP/TyW0wVm
	sgV9cBuxNfuTZ1AkqCP/886OdY4rOWIXuk3SSUq6kymL10yrkOQ7IX7SuV0+7EOI9aix
	qr3miz2HNGB1y5seF8123eCj/LAsemjywfTBmkHYHk31q43/YWAj/8OzqzhE1aJIkR83
	uzDw==
X-Gm-Message-State: APzg51Bijn8gXO2AfzO+Dd1qk1YTsObjm7eLcPbM1AwWC6jM2OQNRf48
	WaUo4/01G5hncGw5CinYUgM=
X-Google-Smtp-Source: ANB0VdYLWL4uJ4knRB4gaUeoP4XbE/dCdC7i0FcbLEmk+0QJ+PhRXIvtQHjcCtdWWYzDgdcqp6w4rw==
X-Received: by 2002:a63:5f03:: with SMTP id t3-v6mr9098413pgb.68.1537562153809;
	Fri, 21 Sep 2018 13:35:53 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:b034:f66c:882b:644?
	([2601:202:4180:c33:b034:f66c:882b:644])
	by smtp.gmail.com with ESMTPSA id
	t23-v6sm7629712pfl.109.2018.09.21.13.35.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 13:35:53 -0700 (PDT)
To: Sinan Kaya <okaya@kernel.org>, yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
Date: Fri, 21 Sep 2018 13:35:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
Cc: Sasha Levin <Alexander.Levin@microsoft.com>
Subject: Re: [RFC] CVEs on sumo branch
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
X-List-Received-Date: Fri, 21 Sep 2018 20:35:55 -0000
Content-Type: multipart/alternative;
	boundary="------------83B1391E81A5182B2FF46856"
Content-Language: en-US

--------------83B1391E81A5182B2FF46856
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sinan,


On 09/21/2018 12:43 PM, Sinan Kaya wrote:
> I'm sure this has been discussed recently but I wanted to raise this
> question
> one more time as I have seen a lot of CVEs patches getting pulled into
> the sumo
> branch recently.
>
> We started enabling the cve-check feature and are triaging the results
> of CVE
> reports. We think that the following CVEs need attention and need to
> be pulled
> into the sumo branch.
Nice to see another user of this tool.

>
> There are two approaches to solve this problem:
> 1. upgrade these packages to the respective versions:
>
> CVE-2018-13785:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D3b847972b8=
c6135a695b4a16c836ad2dd1cbb350
> CVE-2018-8740:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da6646df0ca=
b4bd191974fde33ed8a87b9720557e
> CVE-2017-15874:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D29108755c1=
c5a23855ab4dda59ea728781b9d75e
> CVE-2017-14501:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D381f016dcc=
b78a8cf52ffde05459ff084b2f15fd
> CVE-2018-11237:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dfb535ac046=
697db5923575bb23ee419fe7cfbab2
> CVE-2017-7960:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D26d1f90625=
8e1d5a933830ee0e4f051d29ee7585

Typically we do not upgrade packages in stable unless the upgrade is a
bug fix only and it does not break things and it is at the desecration
of the stable branch maintainer.

>
> 2. Apply the attached patches to sumo branch.

I already have in my sumo-next
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dstable/su=
mo-next
libcroco: patch for CVE-2017-7960
<http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dstabl=
e/sumo-nmut&id=3Dc02364a464d2e96ca663018d5266c68751f2c335>

libarchive: CVE-2017-14501
<http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dstabl=
e/sumo-nmut&id=3D8d7f5e76cad2127e477056ce42d1be06b4df5b5c>

For the rest can you sent them to the proper mailing list
openembedded-core@lists.openembedded.org via git send-patch.

I noticed a few of the patches for recipes need some addition information=
:
please review
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

In general, we need to make sure Master is not affected before I can
take them into Sumo.

Thank you for backporting fixes.

regards,
Armin
>
> We'd like to hear the community opinion.
>
> Sinan
>
>
>
>


--------------83B1391E81A5182B2FF46856
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Sinan,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 09/21/2018 12:43 PM, Sinan Kaya
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org">I'm
      sure this has been discussed recently but I wanted to raise this
      question
      <br>
      one more time as I have seen a lot of CVEs patches getting pulled
      into the sumo
      <br>
      branch recently.
      <br>
      <br>
      We started enabling the cve-check feature and are triaging the
      results of CVE
      <br>
      reports. We think that the following CVEs need attention and need
      to be pulled
      <br>
      into the sumo branch.
      <br>
    </blockquote>
    Nice to see another user of this tool.<br>
    <br>
    <blockquote type="cite"
      cite="mid:36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org">
      <br>
      There are two approaches to solve this problem:
      <br>
      1. upgrade these packages to the respective versions:
      <br>
      <br>
      CVE-2018-13785:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3b847972b8c6135a695b4a16c836ad2dd1cbb350">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3b847972b8c6135a695b4a16c836ad2dd1cbb350</a><br>
      CVE-2018-8740:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=a6646df0cab4bd191974fde33ed8a87b9720557e">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=a6646df0cab4bd191974fde33ed8a87b9720557e</a><br>
      CVE-2017-15874:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=29108755c1c5a23855ab4dda59ea728781b9d75e">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=29108755c1c5a23855ab4dda59ea728781b9d75e</a><br>
      CVE-2017-14501:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=381f016dccb78a8cf52ffde05459ff084b2f15fd">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=381f016dccb78a8cf52ffde05459ff084b2f15fd</a><br>
      CVE-2018-11237:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=fb535ac046697db5923575bb23ee419fe7cfbab2">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=fb535ac046697db5923575bb23ee419fe7cfbab2</a><br>
      CVE-2017-7960:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=26d1f906258e1d5a933830ee0e4f051d29ee7585">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=26d1f906258e1d5a933830ee0e4f051d29ee7585</a><br>
    </blockquote>
    <br>
    Typically we do not upgrade packages in stable unless the upgrade is
    a bug fix only and it does not break things and it is at the
    desecration of the stable branch maintainer.<br>
    <br>
    <blockquote type="cite"
      cite="mid:36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org">
      <br>
      2. Apply the attached patches to sumo branch.
      <br>
    </blockquote>
    <br>
    I already have in my sumo-next
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=stable/sumo-next">http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=stable/sumo-next</a><br>
    <a
href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&amp;id=c02364a464d2e96ca663018d5266c68751f2c335">libcroco:
      patch for CVE-2017-7960</a><br>
    <br>
    <a
href="http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&amp;id=8d7f5e76cad2127e477056ce42d1be06b4df5b5c">libarchive:
      CVE-2017-14501</a><br>
    <br>
    For the rest can you sent them to the proper mailing list
    <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a> via git send-patch.<br>
    <br>
    I noticed a few of the patches for recipes need some addition
    information:<br>
    please review
    <a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines">https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a><br>
    <br>
    In general, we need to make sure Master is not affected before I can
    take them into Sumo.<br>
    <br>
    Thank you for backporting fixes.<br>
    <br>
    regards,<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org">
      <br>
      We'd like to hear the community opinion.
      <br>
      <br>
      Sinan
      <br>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------83B1391E81A5182B2FF46856--
