Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67594E00B66; Sat, 24 Oct 2015 13:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW, URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ajlennon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C0AAE00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:46:44 -0700 (PDT)
Received: by wikq8 with SMTP id q8so117375292wik.1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=EYkZ17SW06ovre5VdSMfd/8XuvTbq94NqY5x6RFetu4=;
	b=ln/OT10qlXd5CGbGAcs0DTbrA3rx66v3AOu1KTg8rl97GsmqIHQ8/MWm5x5pt3tKIH
	njRCp4ejoLzv5wZvUI/wAr0P6Y+fkFttHBypySGV+JpI0kW+RnTYnG/RTtxaPvxGaet+
	pZFUWo8dv1UqL79M9A1vwkJvSnFD8q93XWrdUjOKdjQ5mSxVb9BeZZ4ixfumY6iJgsFK
	8xLb9RezZde59uIo2/XHLkBDBAQoAISU8HcAfT2jDUbJKIyjreiQQ6vBMw7XYmBZyo2g
	imylStD2nY50w+cb/zvP4k9xtEOYA3mvPzGqYNRznT8XSwN4D5ZJAX2kKVsO+JxgAkEj
	dzNQ==
X-Received: by 10.180.189.41 with SMTP id gf9mr10711433wic.95.1445719604011;
	Sat, 24 Oct 2015 13:46:44 -0700 (PDT)
Received: from [10.150.69.210] (92.40.249.12.threembb.co.uk. [92.40.249.12])
	by smtp.gmail.com with ESMTPSA id j3sm4256830wib.13.2015.10.24.13.46.42
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Oct 2015 13:46:42 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alex J Lennon <ajlennon@gmail.com>
X-Mailer: iPhone Mail (13A452)
In-Reply-To: <20151024201300.GG4459@resin>
Date: Sat, 24 Oct 2015 21:46:41 +0100
Message-Id: <F491BE1B-5731-4EBC-8484-6C291EE73C16@gmail.com>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
	<20151024201300.GG4459@resin>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 24 Oct 2015 20:46:48 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


>> On 24 Oct 2015, at 21:13, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>=20
>>> On Sat, Oct 24, 2015 at 09:58:42PM +0200, Nicolas Aguirre wrote:
>>> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
>>> Hi all,
>>=20
>> Hi Andrei,
>>=20
>>> Have a C.H.I.P. 9$ computer? It works with Yocto now.
>>>=20
>>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-chi=
p/
>> Good job.
>> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think=
 ?
>>=20
>> https://github.com/linux-sunxi/meta-sunxi
>=20
> Well. Temporary it is a separate layer. And this is mainly because of th=
e
> overhead you need for flashing the board. So I do see a benefit in keepi=
ng it
> separately. We will see in time.
>=20
> Thanks for feedback.

Great work Andrei. I have a couple of CHiPs here and was trying to decide =
whether meta-sunxi would provide what was needed or whether we needed a cus=
tom layer.

I've been hugely impressed with what Docker+Resin gives me for application=
 deployment management so I'd like to look at how easy it is to take your L=
inux/u-boot CHiP support and deploy via Resin.=20

Are you at the point you have a base OS image for CHiP with Resin support?=
 If not I would be interested in having a look at this with you.

Cheers,

Alex

> --
> Andrei Gherzan
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

