Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D730E006DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 11:16:19 -0700 (PDT)
Received: by eaab16 with SMTP id b16so643668eaa.35
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 11:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=qxUaLpCp9klfiUZ+UiX80/rrGPJZXnE1wuAMroTkas8=;
	b=MndIaE21Fn9vIvyMJ+TmkvASAaTClRF9RXZJb1JbATFbtRF+zmrf+UHsbKxcJF81bZ
	WtWJVoZUsL5jD775zSdhX/sWD42eiLdcvbYGg9PQHe+oOK7sk7HZTMX+ANaDANsNAGPV
	nFK5qIQaJ2VnbfEfPLfLqvy5YnPiEnEcK12XbUcvj+aPUbv5z89wzVeX2AgBrVc1+JWf
	zF5IpqKEwoITkEvja3inbfyKzDH8SgVeOO+fNhEarmZ9B5mn66Qm/foMmqowhpaM1r5q
	NlHeKdpx2vPkPYZrLreynteVFQtoqTO2LS57hweFIymzEOPv0e131fvKxkTo9RN/myj8
	2gYA==
Received: by 10.213.105.196 with SMTP id u4mr2444114ebo.92.1337278577881; Thu,
	17 May 2012 11:16:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 17 May 2012 11:15:47 -0700 (PDT)
In-Reply-To: <CAPhnLPA-Jim7bHCOwcqzPfcxdD-zpsovb6YOqAvjLREYpit68w@mail.gmail.com>
References: <CAPhnLPA-Jim7bHCOwcqzPfcxdD-zpsovb6YOqAvjLREYpit68w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 17 May 2012 11:15:47 -0700
Message-ID: <CAMKF1sodOA9SrUcqHnTV7Ttw4=NkikenJAbF0P-CqcnhQTBRxA@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: florin.sarbu@windriver.com, yocto@yoctoproject.org, andrei@gherzan.ro
Subject: Re: Solution to fetching the linux-yocto-3.0 tarball
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 May 2012 18:16:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 17, 2012 at 10:37 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
>
>
> PREMIRRORS ?=3D "\
> bzr://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n \
> cvs://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n \
> git://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n \
> hg://.*/.* =C2=A0 =C2=A0http://autobuilder.yoctoproject.org/sources/ \n \
> osc://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n \
> p4://.*/.* =C2=A0 =C2=A0http://autobuilder.yoctoproject.org/sources/ \n \
> svk://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n \
> svn://.*/.* =C2=A0 http://autobuilder.yoctoproject.org/sources/ \n"
>
> MIRRORS =3D+ "\
> ftp://.*/.* =C2=A0 =C2=A0 =C2=A0http://autobuilder.yoctoproject.org/sourc=
es/ \n \
> http://.*/.* =C2=A0 =C2=A0 http://autobuilder.yoctoproject.org/sources/ \=
n \
> https://.*/.* =C2=A0 =C2=A0http://autobuilder.yoctoproject.org/sources/ \=
n"

is autobuilder.yoctoproject.org same as sources.yoctoproject.org

