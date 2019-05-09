Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C82EFE00CD5; Wed,  8 May 2019 23:16:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 May 2019 23:16:54 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68AFE00A96
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 23:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557382613;
	bh=SSwo2UUdkyxzjkePfDwn2nJv6UsTplPTghS45Fb8VmQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=DoLs3Uxopp1fzTsGRTqhyRWLjljMrf/7T6MglSVZZLaI1fa3C5Z3BWqTGTWQsfmfY
	a73pH89Akj/0WwXgdoZ5a9wOpURuYOqFiugmTftZcDroXRDE0av2VgEeNtrIReDbjz
	IzFnZL9tzOjDXXNZTVKd7G2XtesxBct02yTS4Ggc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs36.server.lan [172.19.170.88]) (via HTTP); Thu, 9 May 2019
	08:11:50 +0200
MIME-Version: 1.0
Message-ID: <trinity-143cd2f7-2ec4-4bdd-b9b8-ec03b3c3f817-1557382310055@3c-app-gmx-bs36>
From: "Arno Steffens" <star@gmx.li>
To: "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
Date: Thu, 9 May 2019 08:11:50 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAGAf8Lz3xo8CKAQ_g5MVjaD5_5_4ytsFRiQPEn+-aH=ckFJ-6A@mail.gmail.com>
References: <trinity-ee79f97b-ae6e-4e44-bef7-07fa5c0e3085-1557313560088@3c-app-gmx-bs06>
	<CAGAf8Lz3xo8CKAQ_g5MVjaD5_5_4ytsFRiQPEn+-aH=ckFJ-6A@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ux/tLAELDxBnbsN75NUNm/L0JAd44oB8gyojJZMXYCDKzJuSzpKi4DD3+byuWg6ZlvklF
	M2jApBj4mSf1E8Wktia8IRdhZchCrW6/vmDP5cb8Imf6pIV1sTVr40kiGlzI1p7ZNC+0OJ707hjz
	PfmkXuoZ11T3WLb0y38RAL6racSgfLydleGiejift7EaVZzkuY3PCB9LaoctE3QA5u4BCs+e01Td
	v7vigTKj3I4W4hMFhDmKGnAVCJxl8UgtefvSPDP3ljbJL0oOpC/OfoYL7WGzziZwokGI2RACKdw1
	OA=
X-UI-Out-Filterresults: notjunk:1;V03:K0:RKYdhT7WSi4=:wZhml6IkTJ6HFQscFVE7lR
	VLO6qGt6jUneogX1OJHMa94BD8cgrrc9DziS/pDg+BpTGt3rmKFIt+WDlv9xT2BksobC9tB2v
	Y27KApMSjYvpT8YtdIIJXeAdOqvrIBLfbMh0dIxE1j0XEwbi3RRsrlN5APyfIHwz7tDX8LxZv
	EQ/Hb5GEcrrF8N40Q22HdyxA3yykNN79MbmqTLwO5TpswKvs7UW0IsrElMkyKY6K4NaOwzA/z
	TwnuP335YxkoJyGbQYph9ynyia9B/YSOaK8GByqOAclZ81pX4RnckjNXxgIMpC709EyKj4mwd
	rnCnBnntLu/Y+5eopp1qlmpyVq9yEmneLxRaD5UcF9OAiwDgEAfjWzotl6jmULb+RCKBwBPUi
	BNbdjGfO1Bz12dDoazF4GtnGH31hlDP4ioiOsG6SoeH4cStksgiGcbQPou5UbztBpIw9rt7sv
	PQcLhlUuPYLcu/ie77RWSb+/O+7VBU8Xbf+oDx/BkhbvQ1wmqZbs2Zf+sEQM9XCub/vIiEp62
	aRHJtaoAlv7PesksVYnEdCfRB0cVVSwhLWkJLdUpk7LRQFI/ts3AubJ2inED2wTYMuEr4kVm+
	vtp0wnX1fWfDW0+LiQ1ybOnWoXa2/Fz/mUpajEUVbsQG8MqAKR+CkAig==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Eclipse (plugin, settings)
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
X-List-Received-Date: Thu, 09 May 2019 06:16:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I always afraid of that, so don't wanna shot you.
But instead of a plugin, is there anywhere like a howto/manual what to do =
best?
Nowadays IDEs are so full off settings/adjustments that is hard to get an =
overview.
I found an "C/C++ GCC Cross Compiler Support" that might be useful.
Arno

> Gesendet: Mittwoch, 08. Mai 2019 um 15:36 Uhr
> Von: "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
> An: "Arno Steffens" <star@gmx.li>
> Cc: "Yocto Project" <yocto@yoctoproject.org>
> Betreff: Re: [yocto] Eclipse (plugin, settings)
>
> https://marc.info/?l=3Dopenembedded-core&m=3D155482339222316&w=3D2
>
> (do not shoot the messenger, thank you)
>
> Zoran
> _______
>
> On Wed, May 8, 2019 at 1:11 PM Arno Steffens <star@gmx.li> wrote:
> >
> > I want to use Eclipse as IDE for coding/debugging.
> > What do I have to set to get the proper compiler prefixes and pathes, =
libs and includes ?
> > Or any way to combine the environment setup with start of eclipse?
> >
> > I have seen there was a Eclipse plugin, but not for newer versions as =
2019.03.
> >
> > Here (https://www.yoctoproject.org/software-item/eclipse-ide-plug-in/)=
 is referenced to the eSDK manual, but no word about eclipse in it. Til no=
w I just use SDK.
> >
> > Thanks
> > Arno
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

