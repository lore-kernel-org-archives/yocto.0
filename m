Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F520E00D48; Fri,  1 Jun 2018 04:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DF3E00D44
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 04:14:21 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id e20-v6so29248057iof.4
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 04:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k5zWTZNpFljsX0qqXz6+Yd2lGdixr9eN1F8ygMFagpc=;
	b=cqG9yu0V9PQQOuw7w/s3SLzx/iSyCRNl89hXzCgPN3e43m45WO3Yd4QHQKlt8Y37Ma
	3S8Q1KWD0hTxnb1DGejmNrY+w0IYJhBAcsxfsU+YX/19l3Sb+tMoTNKr/tZbEJW1Y33N
	kn9zeYrOZRMOuaZo41l3DZ3vidWJPBQ7T07+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k5zWTZNpFljsX0qqXz6+Yd2lGdixr9eN1F8ygMFagpc=;
	b=sJ2ktrpgojT6Utc6dqF3Qn74ESIvQw8zwALSusc16iv5npkLUh8/QBfs2tzY2H2uNY
	mcOavp1O8dcKMKfNgH/N36Q/klMX/5CvNOW/+rrmbVs2G2F07nu9ZXPoHFYGNnomeD+w
	EQOTWd6DUVrafa3XwWIpgjToAGoTLsgMoPIpnOXWPaKZaRrQ9YG4oB/r7H8yAALN1f18
	oqL5/tZBqIEbt9tHrNd8TOllNInyFN0YRR1Y4BVQByFyM+HVTAItpkAjxv+U+BJ5ROSP
	KXBpJsPKz12mz9ayFkrow9hXO7KJfQIQssdmAhqKQ4r0VDzYvOXTVy1mvTnop3y1dEsN
	YXZA==
X-Gm-Message-State: APt69E1902VOE1zaQSswSLVWMIczVVN6nLjL5QtG3ixu9B4k8CoTC1nG
	Ww1gXAfNcqYQaT+ylTpQarv+145KinhMMLUFe2JSqw==
X-Google-Smtp-Source: ADUXVKImTtUmrlpvxVDiCzeqRESP3z5LHdOB7BAagtPk35rwoCNTM9eioo31G1tf+2fnSKcR51hb8FVZ+m8jAYSQ5XU=
X-Received: by 2002:a6b:1fc2:: with SMTP id
	f185-v6mr10590929iof.74.1527851661379; 
	Fri, 01 Jun 2018 04:14:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 04:14:20 -0700 (PDT)
In-Reply-To: <CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 1 Jun 2018 13:14:20 +0200
Message-ID: <CAALXFYyuV7AXr=GSS3SAsVUHM42HyS8vfzWvRJY07R5ryieLAQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Damien LEFEVRE <lefevre.da@gmail.com>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Fri, 01 Jun 2018 11:14:23 -0000
Content-Type: multipart/alternative; boundary="0000000000008bded9056d92af38"

--0000000000008bded9056d92af38
Content-Type: text/plain; charset="UTF-8"

2018-06-01 11:24 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com>:

> I have to say defining multiple distros and then tweaking recipes
> according to those definitions is not a good practice, as recipes should
> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. The
> above iptables scenario should be handled with different image recipes,
> which pull in (via packages) or create different configurations.
>


That has sense. We will refactorize our Yocto repo as suggested. Always
very helpfull with all your comments Mr Alexander. Thank you very much! :)

--0000000000008bded9056d92af38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-06-01 11:24 GMT+02:00 Alexander Kanavin <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.=
com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
>I have to say defining multiple distros and then tweaking recipes accordin=
g to those definitions is not a good practice, as recipes should generally =
only access DISTRO_FEATURES and otherwise be distro-agnostic. The above ipt=
ables scenario should be handled with different image recipes, which pull i=
n (via packages) or create different configurations.</div></div></blockquot=
e><div><br></div><div><br></div><div><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">That has sen=
se. W</span>e will refactorize our Yocto repo as suggested. Always very hel=
pfull with all your comments Mr Alexander. Thank you very much! :)</div><di=
v><br></div><div>=C2=A0</div></div>
</div></div>

--0000000000008bded9056d92af38--
