Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDD9DE00BE9; Fri, 13 Jun 2014 07:34:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767FAE0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:34:11 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ij19so2376095vcb.37
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=1G+OGCLn3apV9S1QNeDgMoRT1MXZ6nPQWccrpsBWEMc=;
	b=p0t6mQoiUPRedni2bGA44Jl/UYjzvq4XsvFUhaoR2EbqnOWBzoFeF5jRawly+smbzW
	VDo7lyWH7o+I3lmsyeQLmqeeMem63UM+C1gI+I804/dm2hLBsMQjB/5tYf6+BEwPuu2Y
	eJ9logMulYSuuZRMCrfT2PnRS4jXgzU3QQMTtajAxlnMjJOaxUBzBSgRjKKwKPp3IPDu
	U/b62hj0Jy3Z32MVquRE3LORy4sIlEqlc30wTkgD8k187yKsMLVt+kxcvU6RclU9dOjA
	2v3JsW5tvk745sxX1XjPPi0Ftm4SHmBXSa0pdqU3sXMsp+M/E7vWXOtoQQTdDCFuymZL
	K2fw==
X-Received: by 10.220.68.83 with SMTP id u19mr613538vci.52.1402670050857; Fri,
	13 Jun 2014 07:34:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Fri, 13 Jun 2014 07:33:40 -0700 (PDT)
In-Reply-To: <539B071F.9020908@mlbassoc.com>
References: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
	<539B0100.5090603@mlbassoc.com>
	<CAF_dkJDSGM_CF34KF-+McY7S=ZvM+htzD1k0HMUDhRZHsdaOvQ@mail.gmail.com>
	<539B071F.9020908@mlbassoc.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 13 Jun 2014 10:33:40 -0400
Message-ID: <CAF_dkJAbYfNres9jbndQXEnbyeSU+qsc=+rkm0nU_zgta=fDsQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to specify a default value for a variable in a recipe
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
X-List-Received-Date: Fri, 13 Jun 2014 14:34:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2014 at 10:13 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Any time you need to set the variable outside of the recipe itself (.bb* =
or
> .inc),
> then you need the _pn-${recipe} syntax.
Ahhh=E2=80=A6. that's good to know.

I keep wanting to understand the scope rules of bitbake.  This helps.

Thanks Gary.

--wpd

