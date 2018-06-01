Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E24E00C5B; Fri,  1 Jun 2018 04:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0849E007D4
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 04:17:54 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id e15-v6so20878905iog.1
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 04:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L/l4ECddvJuR9CGlrZytRJnUs/Cy+PfWZ12Dic16NA0=;
	b=mJFZaR7f/pGbxGlCmoY4zejuwmn3v/dvNr8WN05vdE1A/W4zj1IrRvta23J44RdkOC
	ubFehcPM8ArP83u80zRTp/m8FEhAY3PAHcSK4fwHLdo/OsHkwXxzJNR/t5K6zRP3jSbR
	4l3DXj5zMho7kuXZYBu8kWnUWfXpMido0AddtYNmQo08SYGSc5BBm8Id4NsRRS4e9EOq
	LX9dzkD5VFid3VkZYL1HGrMc3KGhL7m1CylIc9607TFCT9Db/Uqkg0JQARgQWBEmkOuY
	pNsV7pOJknEa6xDtVRL+BTe1IkxVigtOZ8T73Vpe9Q0I64rPubApoxWrhuPc7oqK8sCW
	PFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L/l4ECddvJuR9CGlrZytRJnUs/Cy+PfWZ12Dic16NA0=;
	b=mVwBc//Rvt/R1HLWTzrrhf7VrWfGf0cKS8cIibo7qwblxPNEWX7wWUCKQMtfd3vPT/
	nkdyJyVr53sEPqJcaDMEkNph3a50jUmoRkdSRywLdnU4GksHaRh6TFCjn+mbO5rEP2XO
	j5aFJNKLSlCftO1ZLAW671fawMCt7bekmWMtO7duMTm8OLHAeYweESVGI0NSUL2YRkAx
	Q0Ph2km9/8txKnd70kAiq1TVGMnm+nG4kexHR1cSiAUfxd0XwaKvva4+e+uo0ibMxrTk
	6Gee9KXcxmzFaSr0klJ2c6IV5N2PZmE9kLh0m78LWDngGjN2t3bbKtiozlWIFL9NcsgL
	k5fw==
X-Gm-Message-State: ALKqPwehUelpZQWrBrwbGnLVEobk0T0DJGxAUMtGKDijfIHlmVuqcQo6
	s5REYvhKMCXHFg8cEpzz4RgcU7xi0Zx9sDpg9w==
X-Google-Smtp-Source: ADUXVKKjOZjNwGSNmAZraenNDarhYigxotbKNq5KMkTeMNxx/cp7FPPJOkQs67amHLRRQdDe4p/+tLLS8sLLFIYkDPo=
X-Received: by 2002:a6b:284b:: with SMTP id
	o72-v6mr9971921ioo.168.1527851874042; 
	Fri, 01 Jun 2018 04:17:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7a4d:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 04:17:53 -0700 (PDT)
In-Reply-To: <CAALXFYyuV7AXr=GSS3SAsVUHM42HyS8vfzWvRJY07R5ryieLAQ@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAALXFYyuV7AXr=GSS3SAsVUHM42HyS8vfzWvRJY07R5ryieLAQ@mail.gmail.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 1 Jun 2018 14:17:53 +0300
Message-ID: <CA+FhBv8-GJLBQyMxAsFpjJMfQ3PbmT-yoCNFNwig7A+2wwk3jw@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 01 Jun 2018 11:17:55 -0000
Content-Type: multipart/alternative; boundary="00000000000038c6b8056d92bc81"

--00000000000038c6b8056d92bc81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot everyone, this is very helpful =3D)

On Fri, Jun 1, 2018 at 2:14 PM, Iv=C3=A1n Castell <icastell@nayarsystems.co=
m>
wrote:

>
>
> 2018-06-01 11:24 GMT+02:00 Alexander Kanavin <alex.kanavin@gmail.com>:
>
>> I have to say defining multiple distros and then tweaking recipes
>> according to those definitions is not a good practice, as recipes should
>> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. =
The
>> above iptables scenario should be handled with different image recipes,
>> which pull in (via packages) or create different configurations.
>>
>
>
> That has sense. We will refactorize our Yocto repo as suggested. Always
> very helpfull with all your comments Mr Alexander. Thank you very much! :=
)
>
>
>

--00000000000038c6b8056d92bc81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot everyone, this is very helpful =3D)<br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 20=
18 at 2:14 PM, Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:ic=
astell@nayarsystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">2018=
-06-01 11:24 GMT+02:00 Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I have =
to say defining multiple distros and then tweaking recipes according to tho=
se definitions is not a good practice, as recipes should generally only acc=
ess DISTRO_FEATURES and otherwise be distro-agnostic. The above iptables sc=
enario should be handled with different image recipes, which pull in (via p=
ackages) or create different configurations.</div></div></blockquote><div><=
br></div><div><br></div></span><div><span style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">That has sens=
e. W</span>e will refactorize our Yocto repo as suggested. Always very help=
full with all your comments Mr Alexander. Thank you very much! :)</div><div=
><br></div><div>=C2=A0</div></div>
</div></div>
</blockquote></div><br></div>

--00000000000038c6b8056d92bc81--
