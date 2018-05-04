Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0622E00C50; Fri,  4 May 2018 06:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF77E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 06:22:10 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id y14-v6so30544696lfy.12
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 06:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5W7bFw+TKR6/hpPN/WSCIU/C/Zh3KtlUpi850n+Va+g=;
	b=aMHpTDUUogvZPfhw9noX6GkwxNI4r7gUZoldtGGsEBBGlRtmP25w85PmZBrE+A9kmM
	mkH+jWQSl/Z5e+fTuQ28T/dM4mgx7bvXruE6ZTy+KX9qNQPgtsqGkT1HxGJSQ2SuWLhQ
	ARdPKzyCBXQ4k2o4HAxNPosJq+jgSosG7F/An3RdMkGUI3Cz7lH8n6gRoSDQ9HaFtZf9
	bmMHc2iABFto0QF2vemGHyTILPVuLvKzDBSBxqjgWBZsa3E39NlTirBHRG61ANK5hspq
	4a+iGLKWYyIYX9h7rGp1owKC2cQxzVNSUJzJdB5wUDtJdn58s1oe1oHk2P7cXGnn3lps
	Efbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5W7bFw+TKR6/hpPN/WSCIU/C/Zh3KtlUpi850n+Va+g=;
	b=SBbZlBxe9qrXXf8bW1f+0lX2S0u4F9R6whzuE80rFPZW8dqHxKXBzNSlZNEIK1VHrv
	vHhm43nGOVlkbml3tm+Iw50CFHTSnvgz7o4Az1BehthnCZAnOTVRPM3M2GZWUqMapazd
	QBKeg1YdN/b5oqxE9XXkrmm6KCTeKMuzKXf7BSEFtR8oOxKMewUdqRDSHlQnV1wBallt
	tKE2lPMtZWVH/EcddSUpqXzhUfsiCXHQjHgru8NFR1qSAo8gkpKcfS0e9JH8SgTzG5jj
	JC15X4CQWeYYwuNppQ6UlCO2UBtVHvMeQ6dfT88eE7GNvDGBjKfkLPP0TcSkh/d2+xOF
	gO6w==
X-Gm-Message-State: ALQs6tBzq5vFEGgd5g3vywQzDM86jNuPXIt/QX0ubcsgFW5S/khOYpGk
	6Wzap9Vg5Lk/fq5+JBOnJwW/78Cz/Crtyn19mRw=
X-Google-Smtp-Source: AB8JxZpdhOy0rdM2VXAtJ3eTbHUDeyxszSrXs4c4cdWtwBtD8yePU/8mGGbtTTtkAesf53mNQ0XFQ2kT+QcB9xz1NJE=
X-Received: by 2002:a19:1142:: with SMTP id g63-v6mr1037169lfi.6.1525440129766;
	Fri, 04 May 2018 06:22:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:c9:0:0:0:0:0 with HTTP;
	Fri, 4 May 2018 06:22:08 -0700 (PDT)
In-Reply-To: <AM5PR0902MB2034E7A84703702D64ED675E87820@AM5PR0902MB2034.eurprd09.prod.outlook.com>
References: <AM5PR0902MB2034E7A84703702D64ED675E87820@AM5PR0902MB2034.eurprd09.prod.outlook.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 4 May 2018 09:22:08 -0400
Message-ID: <CAHUNapTZacynMZ+WQBreKYrSP_cmzhHdHDypzh97R6YuxhagnA@mail.gmail.com>
To: Luis Martins <luis_martins_5@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with Bitbake: (bitbake-layers show-recipes)
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
X-List-Received-Date: Fri, 04 May 2018 13:22:11 -0000
Content-Type: multipart/alternative; boundary="0000000000000f9c2b056b6135b8"

--0000000000000f9c2b056b6135b8
Content-Type: text/plain; charset="UTF-8"

*$ git clone git://git.linaro.org/openembedded/jenkins-setup.git
<http://git.linaro.org/openembedded/jenkins-setup.git>*

Since the repository from which you're working comes from Linaro, maybe
you'll have better luck getting support from their mailing list?
openembedded-core@lists.openembedded.org

--0000000000000f9c2b056b6135b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,111,201)"><b>$ git clone git://=
<a href=3D"http://git.linaro.org/openembedded/jenkins-setup.git" target=3D"=
_blank">git.linaro.org/<wbr>openembedded/jenkins-setup.git</a></b></span><d=
iv class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></div><div>Sin=
ce the repository from which you&#39;re working comes from Linaro, maybe yo=
u&#39;ll have better luck getting support from their mailing list?<br><span=
 class=3D"gmail-gI"><span><a href=3D"mailto:openembedded-core@lists.openemb=
edded.org">openembedded-core@lists.openembedded.org</a></span></span></div>=
</div><br></div></div>

--0000000000000f9c2b056b6135b8--
