Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE330E00D1B; Thu, 31 Jan 2019 02:11:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9911AE00D16
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:11:48 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id m62so2896425ith.5
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6RD4Aevahgn53oSXr7VWKOF+32TRXXdJg+Z37R/YTts=;
	b=CkqPlgBlMsU0ntSFTnN+LAfgDVBcJgom+8JtOD1dch1vtbnmqeVvl6riF6NYhqxMlZ
	CRBYCuHX10Nu5dmeRW5/3MuxwxuCcYDWlNabbdEiIhNByn2fWWWkC+q2BsuSmblbk6w9
	WxCoGWXZXH8Gc+wnsO0JXtfSF26jEcJukRa4FOSaL3iXzGDJC3hgUe3iMcQkfi1sYErZ
	VIXD5WKAPKa2guc7zmujZct1FvdvX2DbqnQwGo6OJYr7CZhlCoIRhnGBGNliy2IL7UaU
	sIHQLGYkz0WlfRtxFCco0mB/FytuzgpzQMMbt0dZ3tj7+3Om6bI0/l2aHkKz2VFCGh0k
	QuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6RD4Aevahgn53oSXr7VWKOF+32TRXXdJg+Z37R/YTts=;
	b=H0VTq588ViBB4mUHKjY/wjiPxVwbKRB5ZirbSxVFzHIRO00FdRfsrqH9y7uPkjNvb0
	1w++LvpMsLtHwWXQdhd7DaUoHRDBDmvowbtV+1dktOlCjb7OSzvT5xPLrCoM6HUdK+Ey
	eZlS/zXT+j2IPIs13yEdNp7EVG+kacBepHLLggPci1b/nu/4u40fP19arwEhwNeHqrUD
	Y/Yct2OnuydSK8EmWYLCv5sU1PCPuQqeDF6QoLUFt4h42fyD68OP8otn5FBiAx3S3HE4
	3MofzcWKG7TTUpKxh9H26j9JSLG4AFQOy8B8733oyEGdsSOKZNQQfdfoQgAJcWXgFNmQ
	7crg==
X-Gm-Message-State: AJcUukc2YtC4SeFqwHiI8bAlkdQBj2vGHdaAVFeY3Jin5rtpkdy1ujYw
	cnKKYYV+D16V/bQobifABLlHVk5n2wEeeipMsKpKFg==
X-Google-Smtp-Source: ALg8bN4UTKoOOBBvwuvvo9j4fsImctBl9grIAJ4dE9dgYF7p51FStNshBnz10m3j6/CRFEk6YGL7wzH/BSz1/iqcyOk=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr21983237jal.31.1548929507969; 
	Thu, 31 Jan 2019 02:11:47 -0800 (PST)
MIME-Version: 1.0
References: <7289CA52-0B42-4481-93B7-350AE353DC1C@yellowtec.com>
In-Reply-To: <7289CA52-0B42-4481-93B7-350AE353DC1C@yellowtec.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 10:11:36 +0000
Message-ID: <CAJTo0LY=A+4CRLoQnxyOYz-=UkbUOxd=ax7FRRDSM1vXXcDX0w@mail.gmail.com>
To: David Zimmermann <dzimmermann@yellowtec.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to archive only packages contained in a certain image
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
X-List-Received-Date: Thu, 31 Jan 2019 10:11:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does it not just contain the packages used to build the entire image,
so build-time dependents.  Can you give an example of a recipe that is
archived but shouldn't be?

Ross

On Thu, 31 Jan 2019 at 08:46, David Zimmermann
<dzimmermann@yellowtec.com> wrote:
>
> Hi List,
>
> I use Yocto Krogoth and the following configuration for the archiver:
>
> INHERIT +=3D =E2=80=9Earchiver=E2=80=9C
> COPYLEFT_RECIPE_TYPES =3D =E2=80=99target=E2=80=99
>
> But the =E2=80=9Atmp/deploy/sources/=E2=80=A6/=E2=80=9A folder for my tar=
get architecture contains much more packages then those =E2=80=9Aused=E2=80=
=98 to build my image.
> Is there a way to extract / archive / isolate only those package sources =
used for a certain image (kernel + rootfs) ?
>
> Thanks for your help,
> David
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

