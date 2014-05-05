Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E159E00B7C; Mon,  5 May 2014 10:50:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E992E00B62
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 10:50:36 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id hq16so8837073vcb.25
	for <yocto@yoctoproject.org>; Mon, 05 May 2014 10:50:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=F6C2FacRK7cfabj0S+9lwkN9+zzCD+r92LU4LddmtUo=;
	b=Oeta279vIgkGggCOP0Cwrb3QQ7m0SnKXgzFqU+3hxni1fLCudQGyND4s1uhffPXqwd
	uLvV0PvQiCC52CG24mCNfRL3NG1+NzpDgeBG8HocIjZSlRMaisEgosUPRJg4gcwn5E/5
	HUDOpKMQ0zeSxUYRMjRP+g5XUHKRXyPRcdRKvwKZDI3MMIQGCUu4S8HAbIydeDhDAt4Q
	VCpI2m/rF2aVVMDEvN5/fH04mEhzA6q3EfTHsJwu79NC6fEd2Ig6KY+CrnocwpZXKgtd
	qJ6jvoJ4TxNGTQMonUHDQFrdamrEJQWXIMPpdnoHVnqtuiUrOyssB13z1dN5I1CkUjDI
	Q4Og==
X-Gm-Message-State: ALoCoQnW80l4HlMvi/poRmqm6nhp7RAt2uSrJ2/cy71DBncjOrsHeV7J2+M3Wc3n+pP7R4vC+lLP
MIME-Version: 1.0
X-Received: by 10.220.59.65 with SMTP id k1mr4193414vch.22.1399312235406; Mon,
	05 May 2014 10:50:35 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Mon, 5 May 2014 10:50:35 -0700 (PDT)
In-Reply-To: <CABcZANm6aOq19bag-1oWNs_88BhaN-dq6hS=PZ8EqPvJQveTFg@mail.gmail.com>
References: <CF8CE2C0.8C7E%seth.bollinger@digi.com>
	<CABcZANm6aOq19bag-1oWNs_88BhaN-dq6hS=PZ8EqPvJQveTFg@mail.gmail.com>
Date: Mon, 5 May 2014 10:50:35 -0700
Message-ID: <CAPhnLPDCn6-stkBr2rSvYNQbgg6Z7+ijmZLFHkiJHuXs8WL-Rw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Bollinger,
	Seth" <Seth.Bollinger@digi.com>
Subject: Re: DL_DIR problems
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
X-List-Received-Date: Mon, 05 May 2014 17:50:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2014 at 10:41 AM, Christopher Larson <clarson@kergoth.com> w=
rote:
> On Mon, May 5, 2014 at 4:40 AM, Bollinger, Seth <Seth.Bollinger@digi.com>
> wrote:
>>
>> We=E2=80=99re trying to share a DL_DIR over NFS so all developers don=E2=
=80=99t have to
>> re-download source files every time they want to do a clean build.
>> Unfortunately we=E2=80=99re running into problems with lock files that a=
re left
>> behind by (sometimes) terminated processes.  This will block users who a=
re
>> trying subsequent builds.  How are others approaching this problem?
>
>
> One option would be to maintain an internal downloads mirror, either
> populated by an autobuilder or by an rsync after engineer builds to the
> server hosting it. There'd be duplication in local disk space, but you'd
> avoid the NFS locking issues.

This is similar how the project infrastructure works.

nfs:/dl_dir
nfs:/rsynced_dl_dir

autobuilder uses the nfs:/dl_dir and a period rsync syncs to
rsync_dl_dir. We can then use the rsync dir as our mirror. It ends up
solving a few issues. If you don't want to run a full autobuilder,
just a bitbake universe -c fetch on a cron job with all your layers
would do it.

-b


> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

