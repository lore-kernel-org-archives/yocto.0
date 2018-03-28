Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09347E00948; Wed, 28 Mar 2018 05:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5ECE00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 05:41:10 -0700 (PDT)
Received: by mail-ot0-f174.google.com with SMTP id h55-v6so942574ote.9
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 05:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tY/BvtYVC0Bsk4R1bejd2GR9dH//U1fQ0oa/MYKPuSo=;
	b=N/a8JARaucAwSOvxWIkPFTiioKi9rXGXRDbgs1t5kEzwRuVx6jvrJM5deY1nofPX1v
	n1gUT0zPwrBUHJRTw1mEwx6tUMUfs3HC3sqsbmNAD/9L/4oVy+B4mIZ6a3a7eKt3oVsS
	FSzK8Ex9iVnPXWogGOZ34xMxua4o9M0m8lWmGMkVFGw9SFmPzp1NNOnO5SOZeBbDm7Rs
	BQBY+Mtjb0GnzGDH7V+lwZbtdkuAtK148ZaiGkIUOckbGb4G9IB+AsnJHWyekOP/U/0K
	w8oskPi+nfTem6/wHE6q3LRKIhIo/DdbQEV80SVausnt5w/Dd0IvO4UA/lQ1PFHxTBAe
	TmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tY/BvtYVC0Bsk4R1bejd2GR9dH//U1fQ0oa/MYKPuSo=;
	b=VgHvBk3Y50ptlyOxWoZH8D9unNjBPoKErPORg1vUe4wVuh+8mES4TBVICnW9OnEBBJ
	h7voWV7UBYNfyUXuB+cuDBY8Fk6C/zuqzeBho80uQdfijprNUk0lFkryc09FsPYkMuVY
	6X1f2a00ZFiT4xOthd67uhgYO+f4uujFpak0rMkwuq+WFf1pQiuYghaM8J3kMrDg91No
	bS5labUnP2/SruDnn+zE/wsjmNsUZyLErA+1CWgtuSOypONwmbt7TsCFQqMCTrI+p9JM
	4ujT/dTaRlSBH8jxvJNFA0WxmIl+J2C+syW/uGQHEXOX5bUZpf+6Q+NiEO53oH0RL8E5
	bsUQ==
X-Gm-Message-State: AElRT7F9sD8Y6UUWbxodo7oFz+Ptd7AH0YepCVBwcVoGxwsHBXP9FqiC
	mlZwXuBJQrD1i6KCfNbPhWz2+oPDjVwK7wWtNfc=
X-Google-Smtp-Source: AIpwx49X7FIzVKSnW6vtnqP5086nJDh2MtiPb/bQ/4htFkQRte7AOz9tD6rkfmw5pR4Q6rtYJ09/hdMHMPts7/4qTI8=
X-Received: by 2002:a9d:509:: with SMTP id 9-v6mr2229874otw.342.1522240869774; 
	Wed, 28 Mar 2018 05:41:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Wed, 28 Mar 2018 05:41:09 -0700 (PDT)
In-Reply-To: <CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 28 Mar 2018 14:41:09 +0200
Message-ID: <CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 12:41:12 -0000
Content-Type: multipart/alternative; boundary="0000000000004e383d0568785280"

--0000000000004e383d0568785280
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks I will do that. But I have other layers that depend on the rocko of
meta-raspberrypi so I believe I will have to use the rocko at some point
but for testing I will try Morty. What is the reason for using Morty do you
know? Is rocko unstable?

BR
Mans Zigher

2018-03-28 14:38 GMT+02:00 Sherif Omran <sherifomran2000@gmail.com>:

> Please use Morty, it works fine.
>
> On Wed, Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher <mans.zigher@gmail.com=
>
> wrote:
>
>> Hi,
>>
>> I am using the meta-raspberrypi layer in my build currently on the rocko
>> branch. When powering on the rpi3 Model B+ the power led turns red then
>> when the green led is turned on the red is turned off and nothing is
>> booting the green continues to flash sporadically. My build works fine o=
n
>> rpi 3 but not on Model B+. When running raspbian on Model 3 it works fin=
e
>> so it is not a power supply issue nor an sdcard issue. Right now I canno=
t
>> use the master branch of meta-raspberrypi because of some patch issues b=
ut
>> is the rocko branch not supporting rpi 3 on model B+?
>>
>> BR
>> Mans Zigher
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--0000000000004e383d0568785280
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thanks I will do that. But I have o=
ther layers that depend on the rocko of meta-raspberrypi so I believe I wil=
l have to use the rocko at some point but for testing I will try Morty. Wha=
t is the reason for using Morty do you know? Is rocko unstable?</div><div><=
br></div><div>BR</div><div>Mans Zigher</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">2018-03-28 14:38 GMT+02:00 Sherif Omran <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"=
_blank">sherifomran2000@gmail.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">Please use Morty, it works fine.<br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">On Wed,=
 Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</=
a>&gt;</span> wrote:<br></span><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div cla=
ss=3D"h5"><div dir=3D"ltr">Hi,<div><br></div><div>I am using the meta-raspb=
errypi layer in my build currently on the rocko branch. When powering on th=
e rpi3 Model B+ the power led turns red then when the green led is turned o=
n the red is turned off and nothing is booting the green continues to flash=
 sporadically. My build works fine on rpi 3 but not on Model B+. When runni=
ng raspbian on Model 3 it works fine so it is not a power supply issue nor =
an sdcard issue. Right now I cannot use the master branch of meta-raspberry=
pi because of some patch issues but is the rocko branch not supporting rpi =
3 on model B+?</div><div><br></div><div>BR</div><div>Mans Zigher</div></div=
>
<br></div></div><span class=3D"">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>

--0000000000004e383d0568785280--
