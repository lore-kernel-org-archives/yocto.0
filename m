Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65458E00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:39:36 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id dq12so1667854wgb.0
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:39:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=rXwGu1hsV1Io6ZOGvWRG1YSyGMNxnZJBvtP+N4QAnXo=;
	b=mDZYMqPwfqJoT+tIIt/Ok9ANgrI6nyhIB3KOMiojl8pceDwL5lEkCC4WibRs0wJIv1
	kI/G8uGTCFGy6dZZAd9eefAIw++cE7ILAGaDLTvGgJh14etJRM/ow6lBfFyiA9nkePCR
	wiFaDG3fXcwJ0P6Y1DOu0JXAvtuwvU9IusnbZoVSF3OnwGeNcMOz/Gq7kL8wpUgGELjm
	p4Sr+ws0Z9pqydnm7XabdKTvGZimr8trnisvaQBcRN+gXm9g/Yw8FGOj4nMP6OJJf77n
	l+nMbA7ZlRktKjz9ztsmAg0khhqWiDtf3zqJSvF3Di5k0BrA0bSA4Lol3JSH0Q6mK18r
	EnoA==
X-Received: by 10.194.58.202 with SMTP id t10mr13217870wjq.4.1363811975198;
	Wed, 20 Mar 2013 13:39:35 -0700 (PDT)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id q13sm5205967wie.0.2013.03.20.13.39.31
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 20 Mar 2013 13:39:33 -0700 (PDT)
Date: Wed, 20 Mar 2013 20:40:03 +0000
From: Ross Burton <ross.burton@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <D6081CD6470747D1803B8A19E552149F@intel.com>
In-Reply-To: <207F72914E4C4014A2C1124BBADDD244@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
	<603BDC00C3D14F51BF551A28572660E3@PAULD>
	<CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
	<B85484ED80754E0D8F82ECCA688762AF@PAULD>
	<CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
	<9331786F4D074BCCAB63AE3E10152262@PAULD>
	<F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
	<207F72914E4C4014A2C1124BBADDD244@PAULD>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQn9LU/Z4WVCWADNnQA8WgyKRF/NJfJYr4XkuMbsd0hus7yF0E3pCta33tPpzUqg8lvhPdsg
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 20:39:36 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Wednesday, 20 March 2013 at 20:35, Paul D. DeRocco wrote:
> They're both current within the last few weeks. However, a bit of histo=
ry:
> My goal was to add Samba, which is contained in the meta-oe layer of
> meta-openembedded, which also required adding the meta layer of
> openembedded-core. But I initially used the master branch, got errors, =
and
> someone else told me I needed to use the danny branch. So it is possibl=
e
> that something is lying around from when I first tried the master branc=
h.


Right.  Probably easiest to blow away your tmp/ as it will have bits of m=
aster in, and downgrading isn't supported.
> By the way, since you're from Intel, why the hell are they discontinuin=
g the
> Atom D2700=3F

Wish I knew=E2=80=A6  Cedar Trail wasn't great, but it's certainly better=
 than waiting for Valleyview.  That's the hardware group, nothing to do w=
ith me=21 :)

Ross =20



