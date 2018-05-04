Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18658E00BAD; Thu,  3 May 2018 20:26:23 -0700 (PDT)
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
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01F8E009DF
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 20:26:21 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id g12-v6so28901773lfb.10
	for <yocto@yoctoproject.org>; Thu, 03 May 2018 20:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xzSCphcx8Gi6z+y43iFME4pfCz12RA1JI30+Jf9Z/cY=;
	b=fVcT86yb0RP37r6GuDV94M0LWH+IdbQTeuZaiXv9RbBO6+C/CSpG5bLy3qmkoiY/tw
	ZOrniF0SxnRCYIH+70cWpt1YI0kW2rpg1KcG0jlKY9/RGnhAgQf5YbQPUlWG5t3EOyMq
	5r/ac+EdbIC2blnj6sv6MgUktMxuLhrAQnZ30FGsfHmu2TXbsvwR/pjL2YvbKNc7xPg5
	bMS9daUaSSZJFJgbyHDBRoQPFG5N9W1xASjJuArl6iAVyZgNFXX8GSwzvj3CZ8FAdbig
	ZnOWLlCN5NY47VzCmtPVFbnfWDWVhFIEcm96pfUXfkxDAL0KFMdBUuf/FqkFGWwjGlrO
	d4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xzSCphcx8Gi6z+y43iFME4pfCz12RA1JI30+Jf9Z/cY=;
	b=cNopREmtwhSaGRc3exjaWeO0hgKeWfb9k6nyPlXGS8MPZ1TNtrWcG2bFCISVoibpre
	9podgrdTB2KJeK+imE4YqotWAJwb+iI53989YeXi+xC0Twfm3ku5R/Jm0+6N7+fjSbIx
	6rtaxyxBeMoEseGQFkYppI12rNogwacS/uqs1ZjasmdFCU49w1fSQb/VM5134vFDdh7D
	ph+hNmvsnTbKfRh6IkHq4/gz4EEZKyIWTb0ykOGxTpNCh1UoyRZLKdRnsc2Tu5RcM3rX
	6tYv4gW0cdAa8LEWupxzN7q3PZfb9BePV9JCmwHW3FqY8f+r5QP56DibJZXBBcp7UqCQ
	4uBA==
X-Gm-Message-State: ALQs6tA3APU+yeGV96DBPu1/booaX3H/qf+1eFHT2PXz34Z9cTPddWaa
	dHX+sAiPVvRRrOkGdpwzN+IrDqmcN3aQHJszm0M=
X-Google-Smtp-Source: AB8JxZrAPKC/o56s8/AH/4Way1A6Y+bCUgOX9L13ICOaoAxBUHQEC5HiUyQffj+7n2eArLImMtAR9ykeBRSJMkuADbE=
X-Received: by 2002:a19:cc11:: with SMTP id
	c17-v6mr142141lfg.135.1525404379712; 
	Thu, 03 May 2018 20:26:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:c9:0:0:0:0:0 with HTTP;
	Thu, 3 May 2018 20:26:18 -0700 (PDT)
In-Reply-To: <2272489.8VKhpn1Y3m@peggleto-mobl.ger.corp.intel.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<AM5PR0402MB27213A743A419B0D00E4AD63C4800@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
	<2272489.8VKhpn1Y3m@peggleto-mobl.ger.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 3 May 2018 23:26:18 -0400
Message-ID: <CAHUNapQTzyyQf4_x82uy30Ww2ThUYnzjr8tQeCCYto9bgmOV3w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Fri, 04 May 2018 03:26:23 -0000
Content-Type: multipart/alternative; boundary="000000000000311082056b58e276"

--000000000000311082056b58e276
Content-Type: text/plain; charset="UTF-8"

On Wed, May 2, 2018 at 5:19 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> 1) If you want the cppzmq development files to be available *within* the
> eSDK
> (so you can write code to use them using the eSDK), even if they are not
> brought in by way of the image containing a package from the cppzmq
> recipe,
> you can install them into the eSDK by running this within the eSDK
> environment:
>
> devtool sdk-install -s cppzmq
>

Is sdk-install new? It doesn't show up when I run "devtool help"

--000000000000311082056b58e276
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, May 2, 2018 at 5:19 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux=
.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">1) If yo=
u want the cppzmq development files to be available *within* the eSDK <br>
(so you can write code to use them using the eSDK), even if they are not <b=
r>
brought in by way of the image containing a package from the cppzmq recipe,=
 <br>
you can install them into the eSDK by running this within the eSDK <br>
environment:<br>
<br>
devtool sdk-install -s cppzmq<br></blockquote><div><br></div><div>Is sdk-in=
stall new? It doesn&#39;t show up when I run &quot;devtool help&quot; <br><=
/div></div></div></div>

--000000000000311082056b58e276--
