Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DEF5E00747
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 20:17:29 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id c10so2056412ieb.3
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 20:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=awwCX4h00GJ+RXDJQAOXphylWAGwMnusYKkE1m1t6X8=;
	b=iZ1Bg1RLTBU4zH3JRhuQmLskw3NYWXZGPh4uQQqmoaJ+D9N8lEvPZXeQ0jHMNFdQKJ
	n03dTr5sQA15CniF4APXi04EvwqR5ANypCSs54bxpgVF6ZTwsRRhUA/ZulY9u8yyvey9
	4s5NhvDP/6nz/YHhUuA1+U4ShEaLsT5Oi/qX7oTZl4L2M412cVfXpOJ/w7o5EK7TYgO2
	X+hOb9eNMdrTpkkRJECr0PAbXW3czvm7odaMVHUZRTAJOWRk+on2/bDwQyDrRa5awsAZ
	VgAlpJh3hTzXAadn9rSd9B+Ie3K6hw4vfpCdwg810ig/CE2wwgLEmkJsc3bcIkCdDs+0
	WrIw==
MIME-Version: 1.0
X-Received: by 10.50.73.194 with SMTP id n2mr705047igv.6.1377832648532; Thu,
	29 Aug 2013 20:17:28 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.64.19.79 with HTTP; Thu, 29 Aug 2013 20:17:28 -0700 (PDT)
In-Reply-To: <CAPhnLPDoyyB-W2=Qr_4Ek61itAYZ2dAt60vAaSLzzPAVKvH+Fg@mail.gmail.com>
References: <CAPhnLPDx0iC4Gp0dn4b5deQ7przwNOLtGZgVAMydVnQ_=8vx5g@mail.gmail.com>
	<CAPhnLPDoyyB-W2=Qr_4Ek61itAYZ2dAt60vAaSLzzPAVKvH+Fg@mail.gmail.com>
Date: Fri, 30 Aug 2013 00:17:28 -0300
X-Google-Sender-Auth: YwOALosl35LxgUqnUw2aH-kJbPg
Message-ID: <CAP9ODKpHzXA4-KbimfGu5z+a8LMtXCxz=ptTgyc-GMuYS+n49A@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Status of 1.5_M4 release candidate.
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
X-List-Received-Date: Fri, 30 Aug 2013 03:17:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 29, 2013 at 1:42 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> An update on where we are at:
>
> rc1 is still churning. There was one autobuilder issue with regards to
> genericx86 in nightly-x86-lsb. I've built this out by hand and
> populated the release with it as well as corrected the ab issue. We're
> seeing a lot of sanity issues, but so far no build failures (other
> than the above known issue).

http://autobuilder.yoctoproject.org/pub/releases/CURRENT/machines/

The imx6*q*sabresd machine has its name mistyped so the built images
are not copied.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

