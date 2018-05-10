Return-Path: <piotr.piwko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA5C6E00E23; Thu, 10 May 2018 00:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (piotr.piwko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6B6E00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 00:37:53 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id j193-v6so1565664lfg.6
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 00:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=G7w5otgzc5pJNwh9OFism3BMaxPTmqKobPY5VL4cRdM=;
	b=rMZb5dBMNDu2iAnSxLHfNhYLl2beAXsoB1o+z94lFeFHNE6KNmaQZpr9L6dosM/Iv2
	3MLZPrPUdjcEzaEMFRiGqRLJhlQCacYJpFrVZX4snq6c2ghf6mqeipt6ChT7mBOuuZ/f
	To1Jk21KLZ6ueliOYPj7eyLIKmYmckL8lfjyLsvtjimjqLK/jnE4z5ATKUwL2sJ733pW
	lclcYFQYIgGaEPonNvB2kX2h+3om+w7WUQEGjfPN2SAH0zHIOsPMVT/5TXV44O8yZ+ko
	/zFh7dyLUTDjhcL8oq1qbW05PZPFid5vt9EfMbRJHkyUDYdJIXR+89KmjZzRPYQcknvX
	crBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G7w5otgzc5pJNwh9OFism3BMaxPTmqKobPY5VL4cRdM=;
	b=Ug47guvw12JMZ7KCUYjmPgGYZzOBQiYoKo265fq2XlUcEpGnLvZHxsyfN/jjehMXWi
	faQwEYh1ZJJCjsbduP3nnKO1MLHkhlQpfYJCHfA6A7ker475pxehMFxXMb07YUNd3Bki
	/+5/mLEqrbzO7nJiahSn+1uaMkD+Qsr4w3uQVFcSzcuBGYoli4uLzIlsr2vdzySeCPop
	i1q7eOPvrOjwsWkLRNFAE76AkfJu1k/PvOePZliyjC8F/wvRTgemsGBT9h6Iu8+OM+q0
	ws9ATK3rj/SLEtxO7BkF2UaRBluHk/HrZw27zUl+6vCSGXIpSRUe+Ewcg1MavkIa0zmk
	bVoQ==
X-Gm-Message-State: ALKqPwcxE9A4O8BGejy/4u0RzIPO6d+QzmcHN3RFIYn16Cbs2k8jmTXX
	hgfkhtNv/WIEBX7+lkO6oxmhKUGXhIku6q9iAA7+ng==
X-Google-Smtp-Source: AB8JxZpzAuZHCLa/R9Ltpmg5ej7tAniCPLlm0VLqaoI6kX+mLizm8zghblZyAJ7RmFhAiBMArYw9CP4n19HVcis5Hag=
X-Received: by 2002:a19:4ed1:: with SMTP id u78-v6mr286256lfk.40.1525937872081;
	Thu, 10 May 2018 00:37:52 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Piwko <piotr.piwko@gmail.com>
Date: Thu, 10 May 2018 07:37:41 +0000
Message-ID: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 07:37:55 -0000
Content-Type: multipart/alternative; boundary="000000000000d09b31056bd5189d"

--000000000000d09b31056bd5189d
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to check in my recipe if created image is read-only or not. In
order to do so, I use the following condition which I would inside poky
sources:

if ${@bb.utils.contains('IMAGE_FEATURES', 'read-only-rootfs', 'true',
'false', d)}; then

However it seems that IMAGE_FEATURES variable is not exported to the higher
recipes. I also confirmed it's content by executing:

bitbake my-image -e | grep IMAGE_FEATURES

Is there any possibility to export this variable to my recipe or somehow
check the particular image feature?

Thank you in advance for help.

-- 
Piotr Piwko
http://www.embedded-engineering.pl/

--000000000000d09b31056bd5189d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I would like to check in my r=
ecipe if created image is read-only or not. In order to do so, I use the fo=
llowing condition which I would inside poky sources:</div><div><br></div><d=
iv><div>if ${@bb.utils.contains(&#39;IMAGE_FEATURES&#39;, &#39;read-only-ro=
otfs&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then</div></div><div><br><=
/div><div>However it seems that IMAGE_FEATURES variable is not exported to =
the higher recipes. I also confirmed it&#39;s content by executing:</div><d=
iv><br></div><div>bitbake my-image -e | grep IMAGE_FEATURES</div><div><br><=
/div><div>Is there any possibility to export this variable to my recipe or =
somehow check the particular image feature?</div><div><br></div><div>Thank =
you in advance for help.</div><div><div><br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature">Piotr Piwko<br><a href=3D"http://www.embedded-engi=
neering.pl/" target=3D"_blank">http://www.embedded-engineering.pl/</a></div=
></div></div>

--000000000000d09b31056bd5189d--
