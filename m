Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C98FE00A16; Tue, 16 Dec 2014 06:07:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA0CE009F0;
	Tue, 16 Dec 2014 06:07:16 -0800 (PST)
Received: by mail-yh0-f49.google.com with SMTP id f10so6123376yha.22
	for <multiple recipients>; Tue, 16 Dec 2014 06:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type:content-transfer-encoding;
	bh=74rcins09OupsKDuSti0pl8nSiOMpeIpKxecAS2m53w=;
	b=CKpzltva6iW/dfwRA5PfA6FVmZ1kJ0gu/pxs6NmnLQAR6ovCu1CBv66P9nKbDxYW//
	EBK/teDA86ciUPTLlfZCL/nFGGusPXRwec6fnEQn/RC8kRZngLgQo3ca344YEDTUrYny
	EjWleHYw0wVELIOj11n236iZHQOetduOuhpuSxIPvjs1n0SdZeafxoQlBMxgZXFPYLdc
	abuiRB9HYEVAzECyaYrhc0JfmioMnT+Nfhm4MT19h7U7Bpz830Ft6a4kDsvOaOCPPeQ1
	kTXp8YieYDLiQqOzx8chp5Da9Mffl/io9VMMr5JZiYQGgzwdaorR0Ohk1B9GH3HQ6ae6
	JAzg==
MIME-Version: 1.0
X-Received: by 10.236.164.232 with SMTP id c68mr26656088yhl.102.1418738835983; 
	Tue, 16 Dec 2014 06:07:15 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.171.132 with HTTP; Tue, 16 Dec 2014 06:07:15 -0800 (PST)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
Date: Tue, 16 Dec 2014 12:07:15 -0200
X-Google-Sender-Auth: zKVDhMKq1WrBWnVUjP8IAB56Bxw
Message-ID: <CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: Re: meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Tue, 16 Dec 2014 14:07:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Sona,

On Tue, Dec 16, 2014 at 11:58 AM, Sona Sarmadi <sona.sarmadi@enea.com> wrot=
e:
>
> Is there any specific reason why openssl 1.0.1g is used by default? Yocto=
 is using 1.0.1j in master to address some security issues (SSLv3 protocol =
vulnerability). If there is a strong reason to stay on 1.0.1g, I suggest we=
 apply sslv3 patches  otherwise we just remove this line.
>
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine=
/include/qoriq-default-versions.inc
>
> PREFERRED_VERSION_openssl =3D "1.0.1g"

I agree; it should be removed in my opinion.

Could you prepare a patch and send? So it goes over the usual review
process while Luo enquire internally if there is any reason to not
upgrade?

--=20
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

