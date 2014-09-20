Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF3FBE006DB; Fri, 19 Sep 2014 17:26:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D3DE0056A
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 17:26:00 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id q107so666276qgd.8
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 17:26:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=ofBMHd+qnx9xzw5yvWR68OyBhRl6Q1DjDcjoFHtcIKs=;
	b=BhuHrXeHTbBrfFZZIR1PZ+3iOzAqNEJUKa/7P5Tb7cMYSj6RSQUnc64tLidCWQPpzP
	J9IWoFbBeisHeegl38iJz8ti74wKYdelsqzIP7fKrP7vCYFi5SMg95RiTNJmrlN3saXK
	GOkYfuCHwkdVVVbP5+uv9GUl5gopnQbAKJlM6O5mPZhzqhHlpAqapzxOHNTE+kpGoHzT
	lGzUdkC9V0MPFya0yot0byPcvvqOgSRE1pIl3MjqBU6wUDaak45v6Xd1gqMByo1kgzCi
	EqbsC2Kar8arPwonpVVoPEMlwgjTBFmZYFiafios765KpoAbGX992mkeXypn+8ket1BE
	mG4Q==
X-Gm-Message-State: ALoCoQlHLJEJQKnDhWnWHJQmJAv25xb2t9lZXSCDKNfucurm1dpxuOvdU2l70IkQZxcVxTgKR6bZ
X-Received: by 10.224.63.140 with SMTP id b12mr4109517qai.22.1411172760114;
	Fri, 19 Sep 2014 17:26:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Fri, 19 Sep 2014 17:25:40 -0700 (PDT)
In-Reply-To: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 20 Sep 2014 01:25:40 +0100
Message-ID: <CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Sat, 20 Sep 2014 00:26:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 19 September 2014 05:45, Joseph Andrew de la Pe=C3=B1a
<jdelapena@lexmark.com> wrote:
> ERROR: Nothing PROVIDES 'nativesdk-krb5' (but
> virtual:nativesdk:poky/meta/recipes-support/curl/curl_7.32.0.bb DEPENDS o=
r
> otherwise requires it).
>
> Haven't seen a DEPENDS for krb5 in curl and openssl recipe.
> Is there any update on curl recipe to fix this?

Well, something is adding a dependency on krb5 to your curl recipe...
if you have a recent poky (although that version of curl suggests that
you don't) then using bitbake -e nativesdk-curl should tell you what
is.

(the dependency on nativesdk-krb5 is failing because krb5 doesn't have
a manual -nativesdk recipe, or use BBCLASSEXTEND=3D"nativesdk" to
magically generate one).

Ross

